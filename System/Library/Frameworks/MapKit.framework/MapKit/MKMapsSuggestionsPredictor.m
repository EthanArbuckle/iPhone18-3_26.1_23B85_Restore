@interface MKMapsSuggestionsPredictor
+ (id)sharedPredictor;
- (BOOL)_openConnectionIfNecessary;
- (BOOL)transportModeForDestinationEntryData:(id)a3 originCoordinateData:(id)a4 handler:(id)a5;
- (BOOL)transportModeForDestinationMapItemData:(id)a3 originCoordinateData:(id)a4 handler:(id)a5;
- (MKMapsSuggestionsPredictor)init;
- (id)NSDataToMKMapsSuggestionsTransportModes:(id)a3 error:(id *)a4;
- (void)_closeConnection;
- (void)_initCloseTimerIfNecessary;
- (void)_scheduleCloseConnection;
- (void)_unscheduleCloseConnection;
- (void)dealloc;
@end

@implementation MKMapsSuggestionsPredictor

+ (id)sharedPredictor
{
  if (sharedPredictor_s_onceToken != -1)
  {
    dispatch_once(&sharedPredictor_s_onceToken, &__block_literal_global_11547);
  }

  v3 = sharedPredictor_s_sharedPredictor;

  return v3;
}

void __45__MKMapsSuggestionsPredictor_sharedPredictor__block_invoke()
{
  v0 = objc_alloc_init(MKMapsSuggestionsPredictor);
  v1 = sharedPredictor_s_sharedPredictor;
  sharedPredictor_s_sharedPredictor = v0;
}

- (MKMapsSuggestionsPredictor)init
{
  v9.receiver = self;
  v9.super_class = MKMapsSuggestionsPredictor;
  v2 = [(MKMapsSuggestionsPredictor *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("MKMapsSuggestionsPredictorQueue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    closeTimer = v2->_closeTimer;
    v2->_closeTimer = 0;

    connection = v2->_connection;
    v2->_connection = 0;
  }

  return v2;
}

- (void)_unscheduleCloseConnection
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_DEBUG, "_unscheduleCloseConnection", v6, 2u);
  }

  closeTimer = self->_closeTimer;
  if (closeTimer)
  {
    dispatch_source_set_timer(closeTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_cancel(self->_closeTimer);
    v5 = self->_closeTimer;
    self->_closeTimer = 0;
  }
}

- (void)_scheduleCloseConnection
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_DEBUG, "_scheduleCloseConnection", v10, 2u);
  }

  [(MKMapsSuggestionsPredictor *)self _initCloseTimerIfNecessary];
  GEOConfigGetDouble();
  v5 = v4;
  GEOConfigGetDouble();
  v7 = v6;
  closeTimer = self->_closeTimer;
  v9 = dispatch_time(0, (v5 * 1000000000.0));
  dispatch_source_set_timer(closeTimer, v9, 0xFFFFFFFFFFFFFFFFLL, (v7 * 1000000000.0));
}

- (void)_initCloseTimerIfNecessary
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_closeTimer)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_DEBUG, "Re-initializing the _closeTimer", buf, 2u);
    }

    objc_initWeak(buf, self);
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
    closeTimer = self->_closeTimer;
    self->_closeTimer = v4;

    dispatch_source_set_timer(self->_closeTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v6 = self->_closeTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __56__MKMapsSuggestionsPredictor__initCloseTimerIfNecessary__block_invoke;
    handler[3] = &unk_1E76CD1C0;
    objc_copyWeak(&v8, buf);
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(self->_closeTimer);
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

void __56__MKMapsSuggestionsPredictor__initCloseTimerIfNecessary__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _closeConnection];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[MKMapsSuggestionsPredictor _initCloseTimerIfNecessary]_block_invoke";
      v6 = 1024;
      v7 = 360;
      _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v4, 0x12u);
    }
  }
}

- (void)_closeConnection
{
  connection = self->_connection;
  if (connection)
  {
    self->_connection = 0;
    v4 = connection;

    [(NSXPCConnection *)v4 setInterruptionHandler:0];
    [(NSXPCConnection *)v4 setInvalidationHandler:0];
    [(NSXPCConnection *)v4 invalidate];
  }

  [(MKMapsSuggestionsPredictor *)self _unscheduleCloseConnection];
}

- (BOOL)_openConnectionIfNecessary
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_connection)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F16E4F58];
    v4 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [v3 setClasses:v4 forSelector:sel_predictedTransportModeForDestinationEntryData_originCoordinateData_handler_ argumentIndex:0 ofReply:1];

    v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [v3 setClasses:v5 forSelector:sel_predictedTransportModeForDestinationEntryData_originCoordinateData_handler_ argumentIndex:1 ofReply:1];

    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [v3 setClasses:v6 forSelector:sel_predictedTransportModeForDestinationEntryData_originCoordinateData_handler_ argumentIndex:2 ofReply:1];

    v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [v3 setClasses:v7 forSelector:sel_predictedTransportModeForDestinationEntryData_originCoordinateData_handler_ argumentIndex:3 ofReply:1];

    v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [v3 setClasses:v8 forSelector:sel_predictedTransportModeForDestinationEntryData_originCoordinateData_handler_ argumentIndex:0 ofReply:0];

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [v3 setClasses:v9 forSelector:sel_predictedTransportModeForDestinationEntryData_originCoordinateData_handler_ argumentIndex:1 ofReply:0];

    v10 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [v3 setClasses:v10 forSelector:sel_predictedTransportModeForDestinationMapItemData_originCoordinateData_handler_ argumentIndex:0 ofReply:1];

    v11 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [v3 setClasses:v11 forSelector:sel_predictedTransportModeForDestinationMapItemData_originCoordinateData_handler_ argumentIndex:1 ofReply:1];

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [v3 setClasses:v12 forSelector:sel_predictedTransportModeForDestinationMapItemData_originCoordinateData_handler_ argumentIndex:2 ofReply:1];

    v13 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [v3 setClasses:v13 forSelector:sel_predictedTransportModeForDestinationMapItemData_originCoordinateData_handler_ argumentIndex:3 ofReply:1];

    v14 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [v3 setClasses:v14 forSelector:sel_predictedTransportModeForDestinationMapItemData_originCoordinateData_handler_ argumentIndex:0 ofReply:0];

    v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [v3 setClasses:v15 forSelector:sel_predictedTransportModeForDestinationMapItemData_originCoordinateData_handler_ argumentIndex:1 ofReply:0];

    v16 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.maps.destinationd.predictions" options:0];
    [v16 setRemoteObjectInterface:v3];
    objc_initWeak(&location, self);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __56__MKMapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke;
    v23[3] = &unk_1E76CD1C0;
    objc_copyWeak(&v24, &location);
    [v16 setInvalidationHandler:v23];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __56__MKMapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke_29;
    v21[3] = &unk_1E76CD1C0;
    objc_copyWeak(&v22, &location);
    [v16 setInterruptionHandler:v21];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __56__MKMapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke_31;
    v19[3] = &unk_1E76C9CC0;
    objc_copyWeak(&v20, &location);
    v17 = [v16 remoteObjectProxyWithErrorHandler:v19];
    objc_storeStrong(&self->_connection, v16);
    [v16 resume];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return 1;
}

void __56__MKMapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__MKMapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke_28;
    block[3] = &unk_1E76CD1C0;
    objc_copyWeak(&v7, (a1 + 32));
    dispatch_async(v4, block);
    objc_destroyWeak(&v7);
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "[MKMapsSuggestionsPredictor _openConnectionIfNecessary]_block_invoke";
      v10 = 1024;
      v11 = 292;
      _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }
}

void __56__MKMapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke_29(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__MKMapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke_30;
    block[3] = &unk_1E76CD1C0;
    objc_copyWeak(&v7, (a1 + 32));
    dispatch_async(v4, block);
    objc_destroyWeak(&v7);
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "[MKMapsSuggestionsPredictor _openConnectionIfNecessary]_block_invoke";
      v10 = 1024;
      v11 = 302;
      _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }
}

void __56__MKMapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke_31(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__MKMapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke_32;
    v8[3] = &unk_1E76C87B8;
    objc_copyWeak(&v10, (a1 + 32));
    v9 = v3;
    dispatch_async(v6, v8);

    objc_destroyWeak(&v10);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[MKMapsSuggestionsPredictor _openConnectionIfNecessary]_block_invoke";
      v13 = 1024;
      v14 = 311;
      _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }
}

void __56__MKMapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke_32(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = WeakRetained[2];
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_DEBUG, "XPC connection {%@} got error: %@", &v7, 0x16u);
    }

    [WeakRetained _closeConnection];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[MKMapsSuggestionsPredictor _openConnectionIfNecessary]_block_invoke";
      v9 = 1024;
      LODWORD(v10) = 313;
      _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_ERROR, "innerStrongSelf went away in %s line %d", &v7, 0x12u);
    }
  }
}

void __56__MKMapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke_30(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = GEOFindOrCreateLog();
  v3 = v2;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = WeakRetained[2];
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_DEBUG, "XPC connection {%@} got interrupted", &v5, 0xCu);
    }

    [WeakRetained _closeConnection];
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[MKMapsSuggestionsPredictor _openConnectionIfNecessary]_block_invoke";
      v7 = 1024;
      v8 = 304;
      _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_ERROR, "innerStrongSelf went away in %s line %d", &v5, 0x12u);
    }
  }
}

void __56__MKMapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke_28(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = GEOFindOrCreateLog();
  v3 = v2;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = WeakRetained[2];
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_DEBUG, "XPC connection {%@} became invalid", &v6, 0xCu);
    }

    v5 = WeakRetained[2];
    WeakRetained[2] = 0;

    [WeakRetained _unscheduleCloseConnection];
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[MKMapsSuggestionsPredictor _openConnectionIfNecessary]_block_invoke";
      v8 = 1024;
      v9 = 294;
      _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_ERROR, "innerStrongSelf went away in %s line %d", &v6, 0x12u);
    }
  }
}

- (BOOL)transportModeForDestinationEntryData:(id)a3 originCoordinateData:(id)a4 handler:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8)
  {
    v14 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *location = 136446722;
    *&location[4] = "[MKMapsSuggestionsPredictor transportModeForDestinationEntryData:originCoordinateData:handler:]";
    v22 = 2082;
    v23 = "entryData == nil";
    v24 = 2082;
    v25 = "Requires MSg Entry NSData";
LABEL_11:
    _os_log_impl(&dword_1A2EA0000, v14, OS_LOG_TYPE_ERROR, "%{public}s forbids: %{public}s. %{public}s", location, 0x20u);
    goto LABEL_12;
  }

  if (!v9)
  {
    v14 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *location = 136446722;
    *&location[4] = "[MKMapsSuggestionsPredictor transportModeForDestinationEntryData:originCoordinateData:handler:]";
    v22 = 2082;
    v23 = "coordinateData == nil";
    v24 = 2082;
    v25 = "Requires coordinates NSData";
    goto LABEL_11;
  }

  if (!v10)
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *location = 136446722;
      *&location[4] = "[MKMapsSuggestionsPredictor transportModeForDestinationEntryData:originCoordinateData:handler:]";
      v22 = 2082;
      v23 = "handler == nil";
      v24 = 2082;
      v25 = "Handler cannot be nil";
      goto LABEL_11;
    }

LABEL_12:

    v13 = 0;
    goto LABEL_13;
  }

  objc_initWeak(location, self);
  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __96__MKMapsSuggestionsPredictor_transportModeForDestinationEntryData_originCoordinateData_handler___block_invoke;
  v16[3] = &unk_1E76C8140;
  objc_copyWeak(&v20, location);
  v17 = v8;
  v18 = v9;
  v19 = v11;
  dispatch_async(queue, v16);

  objc_destroyWeak(&v20);
  objc_destroyWeak(location);
  v13 = 1;
LABEL_13:

  return v13;
}

void __96__MKMapsSuggestionsPredictor_transportModeForDestinationEntryData_originCoordinateData_handler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _openConnectionIfNecessary];
    v4 = [v3[2] remoteObjectProxy];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __96__MKMapsSuggestionsPredictor_transportModeForDestinationEntryData_originCoordinateData_handler___block_invoke_23;
    v8[3] = &unk_1E76C8118;
    objc_copyWeak(&v11, (a1 + 56));
    v10 = *(a1 + 48);
    v9 = *(a1 + 32);
    [v4 predictedTransportModeForDestinationEntryData:v5 originCoordinateData:v6 handler:v8];

    [v3 _scheduleCloseConnection];
    objc_destroyWeak(&v11);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[MKMapsSuggestionsPredictor transportModeForDestinationEntryData:originCoordinateData:handler:]_block_invoke";
      v14 = 1024;
      v15 = 246;
      _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }
}

void __96__MKMapsSuggestionsPredictor_transportModeForDestinationEntryData_originCoordinateData_handler___block_invoke_23(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v18 = 0;
    v13 = [WeakRetained NSDataToMKMapsSuggestionsTransportModes:v8 error:&v18];
    v14 = v18;
    if (!v14)
    {
      v15 = [v12 signalPackCacheInterface];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = [v12 signalPackCacheInterface];
        [v17 storeSignalPackData:v9 forEntryData:*(a1 + 32)];
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[MKMapsSuggestionsPredictor transportModeForDestinationEntryData:originCoordinateData:handler:]_block_invoke";
      v21 = 1024;
      v22 = 250;
      _os_log_impl(&dword_1A2EA0000, v14, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", buf, 0x12u);
    }
  }
}

- (BOOL)transportModeForDestinationMapItemData:(id)a3 originCoordinateData:(id)a4 handler:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *location = 136446722;
      *&location[4] = "[MKMapsSuggestionsPredictor transportModeForDestinationMapItemData:originCoordinateData:handler:]";
      v21 = 2082;
      v22 = "handler == nil";
      v23 = 2082;
      v24 = "Requires a handler";
LABEL_8:
      _os_log_impl(&dword_1A2EA0000, v13, OS_LOG_TYPE_ERROR, "%{public}s forbids: %{public}s. %{public}s", location, 0x20u);
    }

LABEL_9:

    v12 = 0;
    goto LABEL_10;
  }

  if (!v8)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *location = 136446722;
      *&location[4] = "[MKMapsSuggestionsPredictor transportModeForDestinationMapItemData:originCoordinateData:handler:]";
      v21 = 2082;
      v22 = "mapItemData == nil";
      v23 = 2082;
      v24 = "Requires a mapItem data object";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  objc_initWeak(location, self);
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98__MKMapsSuggestionsPredictor_transportModeForDestinationMapItemData_originCoordinateData_handler___block_invoke;
  v15[3] = &unk_1E76C8140;
  objc_copyWeak(&v19, location);
  v16 = v8;
  v17 = v9;
  v18 = v10;
  dispatch_async(queue, v15);

  objc_destroyWeak(&v19);
  objc_destroyWeak(location);
  v12 = 1;
LABEL_10:

  return v12;
}

void __98__MKMapsSuggestionsPredictor_transportModeForDestinationMapItemData_originCoordinateData_handler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _openConnectionIfNecessary];
    v4 = [v3[2] remoteObjectProxy];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __98__MKMapsSuggestionsPredictor_transportModeForDestinationMapItemData_originCoordinateData_handler___block_invoke_15;
    v8[3] = &unk_1E76C8118;
    objc_copyWeak(&v11, (a1 + 56));
    v10 = *(a1 + 48);
    v9 = *(a1 + 32);
    [v4 predictedTransportModeForDestinationMapItemData:v5 originCoordinateData:v6 handler:v8];

    [v3 _scheduleCloseConnection];
    objc_destroyWeak(&v11);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[MKMapsSuggestionsPredictor transportModeForDestinationMapItemData:originCoordinateData:handler:]_block_invoke";
      v14 = 1024;
      v15 = 208;
      _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }
}

void __98__MKMapsSuggestionsPredictor_transportModeForDestinationMapItemData_originCoordinateData_handler___block_invoke_15(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v18 = 0;
    v13 = [WeakRetained NSDataToMKMapsSuggestionsTransportModes:v8 error:&v18];
    v14 = v18;
    if (!v14)
    {
      v15 = [v12 signalPackCacheInterface];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = [v12 signalPackCacheInterface];
        [v17 storeSignalPackData:v9 forMapItemData:*(a1 + 32)];
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[MKMapsSuggestionsPredictor transportModeForDestinationMapItemData:originCoordinateData:handler:]_block_invoke";
      v21 = 1024;
      v22 = 212;
      _os_log_impl(&dword_1A2EA0000, v14, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", buf, 0x12u);
    }
  }
}

- (void)dealloc
{
  [(MKMapsSuggestionsPredictor *)self _unscheduleCloseConnection];
  [(MKMapsSuggestionsPredictor *)self _closeConnection];
  queue = self->_queue;
  self->_queue = 0;

  v4.receiver = self;
  v4.super_class = MKMapsSuggestionsPredictor;
  [(MKMapsSuggestionsPredictor *)&v4 dealloc];
}

- (id)NSDataToMKMapsSuggestionsTransportModes:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v8 fromData:v6 error:a4];

  return v9;
}

@end