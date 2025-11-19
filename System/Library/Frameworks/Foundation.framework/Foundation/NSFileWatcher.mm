@interface NSFileWatcher
- (NSFileWatcher)initWithQueue:(id)a3 auditToken:(id *)a4;
- (void)_coalesceSubitemObservations;
- (void)dealloc;
- (void)handleFSEventPath:(id)a3 flags:(unsigned int)a4 id:(unint64_t)a5;
- (void)setObserver:(id)a3;
- (void)setURL:(id)a3;
- (void)settle;
- (void)stop;
- (void)unsettle;
- (void)watchItem;
@end

@implementation NSFileWatcher

- (void)watchItem
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = _NSFCFSEventsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    url = self->_url;
    LODWORD(buf) = 138477827;
    *(&buf + 4) = url;
    _os_log_debug_impl(&dword_18075C000, v3, OS_LOG_TYPE_DEBUG, "Starting to watch %{private}@", &buf, 0xCu);
  }

  self->_fileReferenceURL = 0;
  self->_formerPath = 0;
  if (self->_eventStream)
  {
    off_1ED440250();
    off_1ED440258(self->_eventStream);
    off_1ED440248(self->_eventStream);
    self->_eventStream = 0;
  }

  eventSource = self->_eventSource;
  if (eventSource)
  {
    dispatch_source_cancel(eventSource);
    dispatch_release(self->_eventSource);
    self->_eventSource = 0;
  }

  if ([(NSURL *)self->_url isFileURL])
  {
    v5 = [(NSURL *)self->_url path];
    if (v5)
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = 0;
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      *&buf = 0;
      *(&buf + 1) = &buf;
      v39 = 0x3052000000;
      v40 = __Block_byref_object_copy__32;
      v41 = __Block_byref_object_dispose__32;
      v42 = 0;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __26__NSFileWatcher_watchItem__block_invoke;
      v17[3] = &unk_1E69FA060;
      v17[4] = self;
      v17[5] = &buf;
      v17[6] = &v26;
      v17[7] = &v22;
      v17[8] = &v18;
      v6 = [v17 copy];
      *(*(&buf + 1) + 40) = v6;
      self->_eventSource = (*(v6 + 16))(v6, v5, 0);

      if (*(v23 + 24) == 1)
      {
        v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v5, 0}];
        *&v34 = 0;
        *(&v34 + 1) = self;
        v35 = MEMORY[0x1E695D7C8];
        v36 = MEMORY[0x1E695D7C0];
        v37 = MEMORY[0x1E695D768];
        self->_eventStream = off_1ED440260(0, eventStreamCallback, &v34, v7, self->_lastObservedEventID, 19, 0.0);

        if (self->_eventStream)
        {
          v8 = _NSFCFSEventsLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            lastObservedEventID = self->_lastObservedEventID;
            *v30 = 138478083;
            v31 = v5;
            v32 = 2048;
            v33 = lastObservedEventID;
            _os_log_debug_impl(&dword_18075C000, v8, OS_LOG_TYPE_DEBUG, "#fsevents Starting stream for %{private}@ with event ID %llx", v30, 0x16u);
          }

          off_1ED440268(self->_eventStream, self->_queue);
          if (off_1ED440270(self->_eventStream))
          {
            self->_eventsAreAboutDirectory = *(v27 + 24);
            goto LABEL_20;
          }

          off_1ED440248(self->_eventStream);
          self->_eventStream = 0;
          v12 = _NSFCFSEventsLog();
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }

          *v30 = 138477827;
          v31 = v5;
          v13 = "#fsevents FSEventStreamStart() returned NO. Path: %{private}@";
        }

        else
        {
          v12 = _NSFCFSEventsLog();
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }

          *v30 = 138477827;
          v31 = v5;
          v13 = "#fsevents FSEventStreamCreate() returned NULL. Path: %{private}@";
        }

        _os_log_error_impl(&dword_18075C000, v12, OS_LOG_TYPE_ERROR, v13, v30, 0xCu);
      }

LABEL_20:
      if (*(v19 + 24) == 1)
      {
        v14 = _NSFCFSEventsLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v34) = 138477827;
          *(&v34 + 4) = v5;
          _os_log_error_impl(&dword_18075C000, v14, OS_LOG_TYPE_ERROR, "Using fileReferenceURL for  FSEventStreamCreate() returned NULL. Path: %{private}@", &v34, 0xCu);
        }

        CFURLClearResourcePropertyCache(self->_url);
        v15 = [[(NSURL *)self->_url fileReferenceURL] copy];
        self->_fileReferenceURL = v15;
        self->_formerPath = [-[NSURL path](v15 "path")];
      }

      _Block_object_dispose(&buf, 8);
      _Block_object_dispose(&v18, 8);
      _Block_object_dispose(&v22, 8);
      _Block_object_dispose(&v26, 8);
      return;
    }

    v9 = _NSFCFSEventsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = self->_url;
      LODWORD(buf) = 138477827;
      *(&buf + 4) = v10;
      _os_log_error_impl(&dword_18075C000, v9, OS_LOG_TYPE_ERROR, "No file watcher could be started. URL: %{private}@", &buf, 0xCu);
    }
  }
}

uint64_t __26__NSFileWatcher_watchItem__block_invoke_2(uint64_t a1, void *a2)
{
  if ([objc_msgSend(a2 "stringByDeletingLastPathComponent")])
  {
    return 0;
  }

  v5 = [a2 lastPathComponent];
  if (*(a1 + 32))
  {
    [v5 stringByAppendingPathComponent:?];
  }

  v6 = *(*(*(*(a1 + 40) + 8) + 40) + 16);

  return v6();
}

uint64_t __26__NSFileWatcher_watchItem__block_invoke(void *a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v26 = __26__NSFileWatcher_watchItem__block_invoke_2;
  v27 = &unk_1E69F9FC0;
  v6 = a1[5];
  v28 = a3;
  v29 = v6;
  v7 = [_NSFileWatcherFileHandleInfo openFileWithPath:a2];
  if (!v7)
  {
    return v26(v25, a2);
  }

  v8 = v7;
  v9 = v7[2];
  if (a3)
  {
    v10 = 32;
  }

  else
  {
    *(*(a1[6] + 8) + 24) = [v7 isDirectory];
    v15 = a1[4];
    v16 = *(v15 + 32);
    *&buf.f_bsize = *(v15 + 16);
    *&buf.f_bfree = v16;
    if (([v8 verifyAccessByAuditToken:&buf] & 1) == 0)
    {
      v18 = _NSFCFSEventsLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        buf.f_bsize = 138477827;
        *&buf.f_iosize = a2;
        _os_log_impl(&dword_18075C000, v18, OS_LOG_TYPE_DEFAULT, "Refused to register file watcher for file at path %{private}@ on behalf of an NSFilePresenter because the requesting process does not have access to it", &buf, 0xCu);
      }

      v17 = 1;
LABEL_13:
      v19 = _NSFCFSEventsLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_error_impl(&dword_18075C000, v19, OS_LOG_TYPE_ERROR, "NSFileCoordinator: dispatch_source_create() returned NULL, which is a surprise.", &buf, 2u);
      }

      [v8 close];
      if (v17)
      {
        return 0;
      }

      return v26(v25, a2);
    }

    if (*(*(a1[6] + 8) + 24) == 1)
    {
      *(*(a1[7] + 8) + 24) = 1;
      v10 = 41;
    }

    else
    {
      memset(&buf, 0, 512);
      if (!fstatfs(v9, &buf) && (buf.f_flags & 0x1000) == 0)
      {
        *(*(a1[7] + 8) + 24) = 1;
        *(*(a1[8] + 8) + 24) = 1;
        [v8 close];
        return v26(v25, a2);
      }

      v10 = 111;
    }
  }

  v11 = dispatch_source_create(MEMORY[0x1E69E9728], v9, v10, *(a1[4] + 8));
  if (!v11)
  {
    v17 = 0;
    goto LABEL_13;
  }

  v12 = v11;
  v13 = *(*(a1[5] + 8) + 40);
  *&buf.f_bsize = 0;
  buf.f_blocks = &buf;
  buf.f_bfree = 0x3052000000;
  buf.f_bavail = __Block_byref_object_copy__77;
  buf.f_files = __Block_byref_object_dispose__78;
  buf.f_ffree = 0;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __26__NSFileWatcher_watchItem__block_invoke_79;
  handler[3] = &unk_1E69F9FE8;
  handler[5] = v25;
  handler[6] = &buf;
  handler[4] = a2;
  dispatch_source_set_registration_handler(v12, handler);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __26__NSFileWatcher_watchItem__block_invoke_2_80;
  v22[3] = &unk_1E69FA010;
  v22[4] = v12;
  v22[5] = a2;
  v14 = a1[4];
  v23 = v9;
  v22[8] = v25;
  v22[9] = &buf;
  v22[6] = v14;
  v22[7] = a3;
  dispatch_source_set_event_handler(v12, v22);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __26__NSFileWatcher_watchItem__block_invoke_81;
  v21[3] = &unk_1E69FA038;
  v21[4] = v8;
  v21[5] = &buf;
  v21[6] = a1[5];
  dispatch_source_set_cancel_handler(v12, v21);
  dispatch_resume(v12);
  _Block_object_dispose(&buf, 8);
  return v12;
}

uint64_t __26__NSFileWatcher_watchItem__block_invoke_79(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (NSFileWatcher)initWithQueue:(id)a3 auditToken:(id *)a4
{
  v12 = *MEMORY[0x1E69E9840];
  if (initializeFSEvents_predicate != -1)
  {
    dispatch_once(&initializeFSEvents_predicate, &__block_literal_global_135);
  }

  v11.receiver = self;
  v11.super_class = NSFileWatcher;
  v7 = [(NSFileWatcher *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_queue = a3;
    dispatch_retain(a3);
    v9 = *&a4->var0[4];
    *v8->_auditToken.val = *a4->var0;
    *&v8->_auditToken.val[4] = v9;
    v8->_lastObservedEventID = -1;
  }

  return v8;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_isWatching)
  {
    v3 = _NSFCLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18075C000, v3, OS_LOG_TYPE_DEFAULT, "A file watcher that has been started but not stopped is being deallocated", buf, 2u);
    }
  }

  eventStream = self->_eventStream;
  if (eventStream)
  {
    off_1ED440248(eventStream);
  }

  eventSource = self->_eventSource;
  if (eventSource)
  {
    dispatch_release(eventSource);
  }

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  v7.receiver = self;
  v7.super_class = NSFileWatcher;
  [(NSFileWatcher *)&v7 dealloc];
}

- (void)handleFSEventPath:(id)a3 flags:(unsigned int)a4 id:(unint64_t)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = a4 & 0xFF80FFFF;
  v10 = _NSFCFSEventsLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138478595;
    v17 = a3;
    v18 = 1024;
    v19 = v9;
    v20 = 1024;
    v21 = a4 & 0x7F0000;
    v22 = 2048;
    v23 = a5;
    _os_log_debug_impl(&dword_18075C000, v10, OS_LOG_TYPE_DEBUG, "#fsevents path: %{private}@, flags: %x (ignored: %x), id: %llx", &v16, 0x22u);
  }

  if (self->_isWatching)
  {
    lastObservedEventID = self->_lastObservedEventID;
    if (lastObservedEventID == -1)
    {
      if (!v9)
      {
        return;
      }
    }

    else if (!v9 || (a4 & 0x10) != 0 || lastObservedEventID >= a5)
    {
      return;
    }

    if (!self->_isUnsettled)
    {
      v12 = _NSFCFSEventsLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        url = self->_url;
        v16 = 138477827;
        v17 = url;
        _os_log_debug_impl(&dword_18075C000, v12, OS_LOG_TYPE_DEBUG, "Unsettling watcher for %{private}@ in response to event", &v16, 0xCu);
      }

      self->_isUnsettled = 1;
    }

    if (self->_eventsAreAboutDirectory)
    {
      v13 = [(NSMutableDictionary *)self->_subitemObservationsByEventPath objectForKey:a3];
      if (!v13)
      {
        if (!self->_subitemObservationsByEventPath)
        {
          self->_subitemObservationsByEventPath = objc_alloc_init(MEMORY[0x1E695DF90]);
          (*(self->_observer + 2))();
        }

        v13 = [[NSFileWatcherObservations alloc] initWithPath:a3];
        [(NSMutableDictionary *)self->_subitemObservationsByEventPath setObject:v13 forKey:a3];
      }

      [(NSFileWatcherObservations *)v13 addContentsChange];
    }

    else
    {
      itemObservations = self->_itemObservations;
      if (!itemObservations)
      {
        self->_itemObservations = [[NSFileWatcherObservations alloc] initWithPath:[(NSURL *)self->_url path]];
        (*(self->_observer + 2))();
        itemObservations = self->_itemObservations;
      }

      [(NSFileWatcherObservations *)itemObservations addAttributeChange];
    }

    self->_lastObservedEventID = a5;
  }
}

void __26__NSFileWatcher_watchItem__block_invoke_2_80(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  data = dispatch_source_get_data(*(a1 + 32));
  v3 = _NSFCFSEventsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    *buf = 138478083;
    v16 = v10;
    v17 = 2048;
    v18 = data;
    _os_log_debug_impl(&dword_18075C000, v3, OS_LOG_TYPE_DEBUG, "#vnode path: %{private}@, flags: %p", buf, 0x16u);
  }

  v4 = *(a1 + 48);
  if (*(v4 + 64) == 1)
  {
    if ((*(v4 + 97) & 1) == 0)
    {
      v5 = _NSFCFSEventsLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(*(a1 + 48) + 48);
        *buf = 138477827;
        v16 = v11;
        _os_log_debug_impl(&dword_18075C000, v5, OS_LOG_TYPE_DEBUG, "Unsettling watcher for %{private}@ in response to event", buf, 0xCu);
      }

      *(*(a1 + 48) + 97) = 1;
      v4 = *(a1 + 48);
    }

    if (*(v4 + 104))
    {
      if ((data & 0x20) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *(*(a1 + 48) + 104) = -[NSFileWatcherObservations initWithPath:]([NSFileWatcherObservations alloc], "initWithPath:", [*(*(a1 + 48) + 48) path]);
      (*(*(*(a1 + 48) + 56) + 16))();
      if ((data & 0x20) == 0)
      {
        goto LABEL_20;
      }
    }

    if (fcntl(*(a1 + 80), 50, buf) != -1)
    {
      v6 = [[NSString alloc] initWithUTF8String:buf];
      v7 = *(*(*(a1 + 72) + 8) + 40);
      if (v7)
      {
        dispatch_source_cancel(v7);
        dispatch_release(*(*(*(a1 + 72) + 8) + 40));
      }

      *(*(*(a1 + 72) + 8) + 40) = (*(*(a1 + 64) + 16))();
      v8 = v6;
      if (*(a1 + 56))
      {
        v8 = [(NSString *)v6 stringByAppendingPathComponent:*(a1 + 56)];
      }

      [*(*(a1 + 48) + 104) addDetectedMoveToPath:v8];

      if ((data & 8) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v9 = _NSFCFSEventsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = *__error();
      *v13 = 67109120;
      v14 = v12;
      _os_log_error_impl(&dword_18075C000, v9, OS_LOG_TYPE_ERROR, "A presented file was moved but its new name couldn't be gotten. Error: %i", v13, 8u);
      if ((data & 8) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

LABEL_20:
    if ((data & 8) == 0)
    {
LABEL_22:
      if ((data & 6) != 0)
      {
        [*(*(a1 + 48) + 104) addContentsChange];
      }

      if (data)
      {
        [*(*(a1 + 48) + 104) addDeletion];
      }

      return;
    }

LABEL_21:
    [*(*(a1 + 48) + 104) addAttributeChange];
    goto LABEL_22;
  }
}

void __26__NSFileWatcher_watchItem__block_invoke_81(uint64_t a1)
{
  [*(a1 + 32) close];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(*(*(a1 + 40) + 8) + 40));
    *(*(*(a1 + 40) + 8) + 40) = 0;
  }

  v3 = *(*(*(a1 + 48) + 8) + 40);
}

- (void)setURL:(id)a3
{
  v4 = [a3 filePathURL];
  url = self->_url;
  if (v4 != url)
  {
    v6 = v4;
    if (self->_isUnsettled)
    {
      [(NSFileWatcherObservations *)self->_itemObservations addAnnouncedMoveToPath:[(NSURL *)v4 path]];
      url = self->_url;
      if (!self->_formerURL)
      {
        self->_formerURL = url;
        url = self->_url;
      }
    }

    self->_url = [(NSURL *)v6 copy];
    if (!self->_isUnsettled && self->_isWatching)
    {

      [(NSFileWatcher *)self watchItem];
    }
  }
}

- (void)setObserver:(id)a3
{
  observer = self->_observer;
  if (observer != a3)
  {

    self->_observer = [a3 copy];
  }
}

- (void)unsettle
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _NSFCFSEventsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    url = self->_url;
    v5 = 138477827;
    v6 = url;
    _os_log_debug_impl(&dword_18075C000, v3, OS_LOG_TYPE_DEBUG, "Manually unsettling watcher for %{private}@", &v5, 0xCu);
  }

  self->_isUnsettled = 1;
  if (!self->_itemObservations)
  {
    self->_itemObservations = [[NSFileWatcherObservations alloc] initWithPath:[(NSURL *)self->_url path]];
    (*(self->_observer + 2))();
  }
}

- (void)_coalesceSubitemObservations
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__77;
  v9 = __Block_byref_object_dispose__78;
  v10 = 0;
  subitemObservationsByEventPath = self->_subitemObservationsByEventPath;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__NSFileWatcher__coalesceSubitemObservations__block_invoke;
  v4[3] = &unk_1E69FA088;
  v4[4] = self;
  v4[5] = &v5;
  [(NSMutableDictionary *)subitemObservationsByEventPath enumerateKeysAndObjectsUsingBlock:v4];
  if (v6[5])
  {
    [(NSMutableDictionary *)self->_subitemObservationsByEventPath setDictionary:?];
  }

  _Block_object_dispose(&v5, 8);
}

void __45__NSFileWatcher__coalesceSubitemObservations__block_invoke(uint64_t a1, const __CFString *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = CFURLCreateWithFileSystemPath(0, a2, kCFURLPOSIXPathStyle, 0);
  if (v3)
  {
    v4 = v3;
    if (_CFURLIsItemPromiseAtURL())
    {
      v5 = _CFURLCopyLogicalURLOfPromiseAtURL();
      if (v5)
      {
        v6 = v5;
        v7 = [v5 path];
        if ([*(*(a1 + 32) + 112) objectForKey:v7])
        {
          v8 = _NSFCFSEventsLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v10 = 138477827;
            v11 = v7;
            _os_log_debug_impl(&dword_18075C000, v8, OS_LOG_TYPE_DEBUG, "Coalescing observations for both the logical URL %{private}@ and its promise URL", &v10, 0xCu);
          }

          v9 = *(*(*(a1 + 40) + 8) + 40);
          if (!v9)
          {
            *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 112) mutableCopy];
            v9 = *(*(*(a1 + 40) + 8) + 40);
          }

          [v9 removeObjectForKey:v7];
        }

        CFRelease(v6);
      }
    }

    CFRelease(v4);
  }
}

- (void)settle
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_isUnsettled)
  {
    v3 = _NSFCFSEventsLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      url = self->_url;
      *buf = 138477827;
      v20 = url;
      _os_log_debug_impl(&dword_18075C000, v3, OS_LOG_TYPE_DEBUG, "Settling watcher for %{private}@", buf, 0xCu);
    }

    fileReferenceURL = self->_fileReferenceURL;
    if (fileReferenceURL)
    {
      formerPath = self->_formerPath;
      if (!formerPath)
      {
LABEL_15:
        itemObservations = self->_itemObservations;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __23__NSFileWatcher_settle__block_invoke;
        v17[3] = &unk_1E69FA0B0;
        v18 = formerPath;
        v17[4] = self;
        v17[5] = @"/private";
        [(NSFileWatcherObservations *)itemObservations notifyObserver:v17];

        self->_itemObservations = 0;
        [(NSFileWatcher *)self _coalesceSubitemObservations];
        v10 = [(NSURL *)self->_url path];
        v11 = [(NSURL *)self->_formerURL path];
        subitemObservationsByEventPath = self->_subitemObservationsByEventPath;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __23__NSFileWatcher_settle__block_invoke_90;
        v16[3] = &unk_1E69FA100;
        v16[4] = v10;
        v16[5] = v11;
        v16[6] = @"/private";
        v16[7] = self;
        [(NSMutableDictionary *)subitemObservationsByEventPath enumerateKeysAndObjectsUsingBlock:v16];

        self->_subitemObservationsByEventPath = 0;
        (*(self->_observer + 2))();

        self->_formerURL = 0;
        self->_isUnsettled = 0;
        return;
      }

      CFURLClearResourcePropertyCache(fileReferenceURL);
      v6 = [(NSURL *)self->_fileReferenceURL path];
      v7 = _NSFCFSEventsLog();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
      if (v6)
      {
        if (v8)
        {
          v14 = self->_formerPath;
          *buf = 138478083;
          v20 = v14;
          v21 = 2113;
          v22 = v6;
          _os_log_debug_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEBUG, "#filereference Detected move from %{private}@ to %{private}@", buf, 0x16u);
        }

        if (([v6 isEqualToString:self->_formerPath] & 1) == 0)
        {
          [(NSFileWatcherObservations *)self->_itemObservations addDetectedMoveToPath:v6];
          LOBYTE(formerPath) = 1;
          goto LABEL_15;
        }
      }

      else
      {
        if (v8)
        {
          v15 = self->_formerPath;
          *buf = 138477827;
          v20 = v15;
          _os_log_debug_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEBUG, "#filereference Detected deletion of %{private}@", buf, 0xCu);
        }

        [(NSFileWatcherObservations *)self->_itemObservations addDeletion];
      }
    }

    LOBYTE(formerPath) = 0;
    goto LABEL_15;
  }
}

void __23__NSFileWatcher_settle__block_invoke(uint64_t a1, int a2, unsigned int a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 48) & 1) != 0 || a2)
  {
    v7 = _NSFCFSEventsLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10) = 0;
      _os_log_debug_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEBUG, "Re-watching for new or moved file", &v10, 2u);
    }

    [*(a1 + 32) watchItem];
  }

  v8 = _NSFCFSEventsLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134218243;
    v11 = a3;
    v12 = 2113;
    v13 = a4;
    _os_log_debug_impl(&dword_18075C000, v8, OS_LOG_TYPE_DEBUG, "Notifying the observer. Subitem path: <none>, event kind: %p, event path: %{private}@", &v10, 0x16u);
  }

  if ([a4 hasPrefix:*(a1 + 40)])
  {
    a4 = [a4 substringFromIndex:{objc_msgSend(*(a1 + 40), "length")}];
  }

  v9 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:a4];
  (*(*(*(a1 + 32) + 56) + 16))();
}

uint64_t __23__NSFileWatcher_settle__block_invoke_90(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3[4];
  result = [v5 caseInsensitiveCompare:*(a1 + 32)];
  if (result)
  {
    if (!*(a1 + 40) || (result = [v5 caseInsensitiveCompare:?]) != 0)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __23__NSFileWatcher_settle__block_invoke_2;
      v7[3] = &unk_1E69FA0D8;
      v8 = *(a1 + 48);
      return [a3 notifyObserver:v7];
    }
  }

  return result;
}

void __23__NSFileWatcher_settle__block_invoke_2(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = _NSFCFSEventsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412802;
    v10 = a4;
    v11 = 2048;
    v12 = a3;
    v13 = 2112;
    v14 = a4;
    _os_log_debug_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEBUG, "Notifying the observer. Subitem path: %@, event kind: %p, event path: %@", &v9, 0x20u);
  }

  if ([a4 hasPrefix:*(a1 + 32)])
  {
    a4 = [a4 substringFromIndex:{objc_msgSend(*(a1 + 32), "length")}];
  }

  v8 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:a4];
  (*(*(*(a1 + 40) + 56) + 16))();
}

- (void)stop
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _NSFCFSEventsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    url = self->_url;
    v6 = 138477827;
    v7 = url;
    _os_log_debug_impl(&dword_18075C000, v3, OS_LOG_TYPE_DEBUG, "Stopping watcher for %{private}@", &v6, 0xCu);
  }

  if (self->_isUnsettled)
  {

    self->_itemObservations = 0;
    self->_subitemObservationsByEventPath = 0;
    (*(self->_observer + 2))();

    self->_formerURL = 0;
    self->_isUnsettled = 0;
  }

  self->_formerPath = 0;
  self->_fileReferenceURL = 0;
  if (self->_eventStream)
  {
    off_1ED440250();
    off_1ED440258(self->_eventStream);
    off_1ED440248(self->_eventStream);
    self->_eventStream = 0;
  }

  eventSource = self->_eventSource;
  if (eventSource)
  {
    dispatch_source_cancel(eventSource);
    dispatch_release(self->_eventSource);
    self->_eventSource = 0;
  }

  self->_isWatching = 0;
}

@end