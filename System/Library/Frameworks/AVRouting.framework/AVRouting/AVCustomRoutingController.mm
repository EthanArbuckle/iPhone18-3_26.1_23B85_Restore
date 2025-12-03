@interface AVCustomRoutingController
- (AVCustomRoutingController)init;
- (id)_routeForDADevice:(id)device;
- (void)_addAuthorizedRoute:(id)route;
- (void)_informClientOfEventReason:(int64_t)reason forRoute:(id)route;
- (void)_removeAuthorizedRoute:(id)route;
- (void)_resumeSessionUpdates;
- (void)_setAuthorizedRoutes:(id)routes;
- (void)_setPendingEvents:(id)events;
- (void)_startSession;
- (void)_stopSession;
- (void)_storeRecordForEvent:(id)event;
- (void)_suspendSessionUpdates;
- (void)_updateSessionForEvent:(id)event;
- (void)_updateSessionFromEventRecords;
- (void)_updateSessionStateToMatchRoute:(id)route;
- (void)_updateSessionToReflectCurrentlyActiveRoutes;
- (void)dealloc;
- (void)handleCustomActionItemSelected:(id)selected;
- (void)invalidateAuthorizationForRoute:(AVCustomDeviceRoute *)route;
- (void)setCustomActionItems:(NSArray *)customActionItems;
- (void)setKnownRouteIPs:(NSArray *)knownRouteIPs;
- (void)setSession:(id)session;
@end

@implementation AVCustomRoutingController

- (AVCustomRoutingController)init
{
  v4.receiver = self;
  v4.super_class = AVCustomRoutingController;
  v2 = [(AVCustomRoutingController *)&v4 init];
  if (v2)
  {
    v2->_pendingEvents = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v2->_authorizedRoutes = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v2->_routeEventRecords = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v2->_customActionItems = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v2->_knownRouteIPs = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v2->_session = objc_alloc_init(getDADaemonSessionClass());
    [(AVCustomRoutingController *)v2 _startSession];
  }

  return v2;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [(AVCustomRoutingController *)self _stopSession];

  self->_pendingEvents = 0;
  self->_authorizedRoutes = 0;

  self->_routeEventRecords = 0;
  self->_customActionItems = 0;

  self->_knownRouteIPs = 0;
  [(AVCustomRoutingController *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = AVCustomRoutingController;
  [(AVCustomRoutingController *)&v3 dealloc];
}

- (void)setKnownRouteIPs:(NSArray *)knownRouteIPs
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(DADaemonSession *)[(AVCustomRoutingController *)self session] appIsUsingDeviceAccess])
  {

    self->_knownRouteIPs = knownRouteIPs;
    array = [MEMORY[0x1E695DF70] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = knownRouteIPs;
    v6 = [(NSArray *)knownRouteIPs countByEnumeratingWithState:&v14 objects:v25 count:16];
    if (v6)
    {
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v19 = 0;
          v20 = &v19;
          v21 = 0x3052000000;
          v22 = __Block_byref_object_copy_;
          v10 = getDAPartialIPClass_softClass;
          v23 = __Block_byref_object_dispose_;
          v24 = getDAPartialIPClass_softClass;
          if (!getDAPartialIPClass_softClass)
          {
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v18[2] = __getDAPartialIPClass_block_invoke;
            v18[3] = &unk_1E794E728;
            v18[4] = &v19;
            __getDAPartialIPClass_block_invoke(v18);
            v10 = v20[5];
          }

          _Block_object_dispose(&v19, 8);
          v11 = [[v10 alloc] initWithAddress:objc_msgSend(v9 mask:{"address"), objc_msgSend(v9, "mask")}];
          [array addObject:v11];
        }

        v6 = [(NSArray *)obj countByEnumeratingWithState:&v14 objects:v25 count:16];
      }

      while (v6);
    }

    [getDADaemonSessionClass() setPartialIPsForAppBundleID:-[DADaemonSession bundleID](-[AVCustomRoutingController session](self partialIPs:"session") error:{"bundleID"), array, 0}];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setCustomActionItems:(NSArray *)customActionItems
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(DADaemonSession *)[(AVCustomRoutingController *)self session] appIsUsingDeviceAccess])
  {

    self->_customActionItems = customActionItems;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = *MEMORY[0x1E69E9840];

    [defaultCenter postNotificationName:@"AVCustomRoutingControllerCustomActionItemsDidChangeNotification" object:self];
  }

  else
  {
    v7 = _AVRoutingLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[AVCustomRoutingController setCustomActionItems:]";
      _os_log_impl(&dword_1AB586000, v7, OS_LOG_TYPE_DEFAULT, "%s Ignoring custom action items. Only support when app provides discovery extension.", &v9, 0xCu);
    }

    v8 = *MEMORY[0x1E69E9840];
  }
}

- (void)handleCustomActionItemSelected:(id)selected
{
  [(AVCustomRoutingController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(AVCustomRoutingController *)self delegate];

    [delegate customRoutingController:self didSelectItem:selected];
  }
}

- (void)invalidateAuthorizationForRoute:(AVCustomDeviceRoute *)route
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = _AVRoutingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[AVCustomRoutingController invalidateAuthorizationForRoute:]";
    v10 = 2112;
    v11 = route;
    _os_log_impl(&dword_1AB586000, v5, OS_LOG_TYPE_DEFAULT, "%s invalidateAuthorizationForRoute: %@", &v8, 0x16u);
  }

  v6 = objc_alloc_init(AVCustomRoutingEvent);
  [(AVCustomRoutingEvent *)v6 setReason:1];
  [(AVCustomRoutingEvent *)v6 setRoute:route];
  [(AVCustomRoutingEvent *)v6 setSucceeded:1];
  if ([(AVCustomRoutingController *)self isSessionSuspended])
  {
    [(AVCustomRoutingController *)self _storeRecordForEvent:v6];
  }

  else
  {
    [(AVCustomRoutingController *)self _updateSessionForEvent:v6];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setSession:(id)session
{
  [(DADaemonSession *)self->_session invalidate];

  self->_session = session;
  if (session)
  {

    [(AVCustomRoutingController *)self _startSession];
  }
}

- (void)_startSession
{
  -[DADaemonSession setBundleID:](-[AVCustomRoutingController session](self, "session"), "setBundleID:", [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")]);
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69E9820];
  objc_copyWeak(&v4, &location);
  [(DADaemonSession *)[(AVCustomRoutingController *)self session:v3] setEventHandler:&v3];
  [(DADaemonSession *)[(AVCustomRoutingController *)self session] activate];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __42__AVCustomRoutingController__startSession__block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  if (!Weak)
  {
    goto LABEL_45;
  }

  v4 = Weak;
  v5 = [a2 eventType];
  if (v5 <= 30)
  {
    if (v5 <= 19)
    {
      if (v5)
      {
        if (v5 == 10)
        {
          v6 = _AVRoutingLog();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
            _os_log_impl(&dword_1AB586000, v6, OS_LOG_TYPE_DEFAULT, "%s DAEventTypeActivated", buf, 0xCu);
          }

          [v4 _resumeSessionUpdates];
          goto LABEL_45;
        }

        goto LABEL_46;
      }

      v7 = _AVRoutingLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_45;
      }

      *buf = 136315138;
      *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
      v8 = "%s DAEventTypeUnknown";
      goto LABEL_43;
    }

    if (v5 != 20)
    {
      if (v5 == 30)
      {
        v7 = _AVRoutingLog();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_45;
        }

        *buf = 136315138;
        *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
        v8 = "%s DAEventTypeSessionStarted";
        goto LABEL_43;
      }

LABEL_46:
      if ([a2 eventType] == 60)
      {
        v21 = _AVRoutingLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
          _os_log_impl(&dword_1AB586000, v21, OS_LOG_TYPE_DEFAULT, "%s DAEventTypeXPCInterrupted", buf, 0xCu);
        }

        [v4 _suspendSessionUpdates];
      }

      goto LABEL_45;
    }

    v7 = _AVRoutingLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_45;
    }

    *buf = 136315138;
    *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
    v8 = "%s DAEventTypeInvalidated";
LABEL_43:
    v18 = v7;
    v19 = 12;
LABEL_44:
    _os_log_impl(&dword_1AB586000, v18, OS_LOG_TYPE_DEFAULT, v8, buf, v19);
    goto LABEL_45;
  }

  if (v5 > 40)
  {
    if (v5 == 41)
    {
      v7 = _AVRoutingLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_45;
      }

      *buf = 136315138;
      *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
      v8 = "%s DAEventTypeDeviceLost";
      goto LABEL_43;
    }

    if (v5 != 42)
    {
      goto LABEL_46;
    }
  }

  else
  {
    if (v5 == 31)
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v14 = [v4 authorizedRoutes];
      v15 = [v14 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v15)
      {
        v16 = *v42;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v42 != v16)
            {
              objc_enumerationMutation(v14);
            }

            [v4 _informClientOfEventReason:1 forRoute:*(*(&v41 + 1) + 8 * i)];
          }

          v15 = [v14 countByEnumeratingWithState:&v41 objects:v47 count:16];
        }

        while (v15);
      }

      goto LABEL_45;
    }

    if (v5 != 40)
    {
      goto LABEL_46;
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3052000000;
  v49 = __Block_byref_object_copy_;
  v50 = __Block_byref_object_dispose_;
  v51 = getDAEventDeviceClass_softClass;
  if (!getDAEventDeviceClass_softClass)
  {
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __getDAEventDeviceClass_block_invoke;
    v45[3] = &unk_1E794E728;
    v45[4] = buf;
    __getDAEventDeviceClass_block_invoke(v45);
    v9 = *(*&buf[8] + 40);
  }

  _Block_object_dispose(buf, 8);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_45;
  }

  v10 = [a2 device];
  v11 = _AVRoutingLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_1AB586000, v11, OS_LOG_TYPE_DEFAULT, "%s DAEventTypeDeviceChanged/DAEventTypeDeviceFound for device: %@", buf, 0x16u);
  }

  v12 = [v4 _routeForDADevice:v10];
  if ([v10 state] == 10)
  {
    if (v12)
    {
      v13 = _AVRoutingLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v12;
        _os_log_impl(&dword_1AB586000, v13, OS_LOG_TYPE_DEFAULT, "%s DAEventTypeDeviceChanged --> DADeviceStateActivating: Route %@ authorized. Firing AVCustomRoutingEventReasonReactivate.", buf, 0x16u);
      }

      [v4 _informClientOfEventReason:2 forRoute:v12];
    }

    else
    {
      v24 = objc_alloc_init(AVCustomDeviceRoute);
      [(AVCustomDeviceRoute *)v24 setDevice:v10];
      v25 = _AVRoutingLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v24;
        _os_log_impl(&dword_1AB586000, v25, OS_LOG_TYPE_DEFAULT, "%s DAEventTypeDeviceChanged --> DADeviceStateActivating: Route %@ not authorized. Firing AVCustomRoutingEventReasonActivate.", buf, 0x16u);
      }

      [v4 _informClientOfEventReason:0 forRoute:v24];
    }

    goto LABEL_45;
  }

  if ([v10 state] != 30)
  {
    if ([v10 state] != 25)
    {
      v26 = _AVRoutingLog();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_45;
      }

      v27 = soft_DADeviceStateToString([v10 state]);
      *buf = 136315650;
      *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v12;
      *&buf[22] = 2112;
      v49 = v27;
      v8 = "%s DAEventTypeDeviceFound / DAEventTypeDeviceChanged for route %@ but state = %@. Ignoring.";
      v18 = v26;
      v19 = 32;
      goto LABEL_44;
    }

    if (!v12)
    {
      v35 = objc_alloc_init(AVCustomDeviceRoute);
      [(AVCustomDeviceRoute *)v35 setDevice:v10];
      v36 = _AVRoutingLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v35;
        _os_log_impl(&dword_1AB586000, v36, OS_LOG_TYPE_DEFAULT, "%s DAEventTypeDeviceChanged --> DADeviceStateAuthorized: Route %@ not authorized. Adding to authorized routes.", buf, 0x16u);
      }

      [v4 _addAuthorizedRoute:v35];

      goto LABEL_45;
    }

    v23 = _AVRoutingLog();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_45;
    }

    *buf = 136315394;
    *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v12;
    v8 = "%s DAEventTypeDeviceChanged --> DADeviceStateAuthorized: Route %@ authorized. Ignoring.";
LABEL_79:
    v18 = v23;
    v19 = 22;
    goto LABEL_44;
  }

  if (v12)
  {
    v22 = _AVRoutingLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v12;
      _os_log_impl(&dword_1AB586000, v22, OS_LOG_TYPE_DEFAULT, "%s DAEventTypeDeviceChanged --> DADeviceStateInvalidating: Route %@ authorized. Firing AVCustomRoutingEventReasonDeactivate.", buf, 0x16u);
    }

    [v4 _informClientOfEventReason:1 forRoute:v12];
    goto LABEL_45;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v28 = [v4 pendingEvents];
  v29 = [v28 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (!v29)
  {
LABEL_77:
    v23 = _AVRoutingLog();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_45;
    }

    *buf = 136315394;
    *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = 0;
    v8 = "%s DAEventTypeDeviceChanged --> DADeviceStateInvalidating: Route %@ not authorized and not pending events. Ignoring.";
    goto LABEL_79;
  }

  v30 = *v38;
LABEL_66:
  v31 = 0;
  while (1)
  {
    if (*v38 != v30)
    {
      objc_enumerationMutation(v28);
    }

    v32 = *(*(&v37 + 1) + 8 * v31);
    if ([objc_msgSend(objc_msgSend(objc_msgSend(v32 "route")])
    {
      break;
    }

    if (v29 == ++v31)
    {
      v29 = [v28 countByEnumeratingWithState:&v37 objects:v46 count:16];
      if (v29)
      {
        goto LABEL_66;
      }

      goto LABEL_77;
    }
  }

  if (!v32)
  {
    goto LABEL_77;
  }

  v33 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(v4, "pendingEvents")}];
  [v33 removeObject:v32];
  [v4 _setPendingEvents:v33];
  v34 = _AVRoutingLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = 0;
    _os_log_impl(&dword_1AB586000, v34, OS_LOG_TYPE_DEFAULT, "%s DAEventTypeDeviceChanged --> DADeviceStateInvalidating: Route %@ not authorized but activation event pending. Firing AVCustomRoutingEventReasonDeactivate.", buf, 0x16u);
  }

  [v4 _informClientOfEventReason:1 forRoute:{objc_msgSend(v32, "route")}];
LABEL_45:
  v20 = *MEMORY[0x1E69E9840];
}

- (void)_stopSession
{
  [(DADaemonSession *)self->_session invalidate];

  self->_session = 0;
}

- (void)_addAuthorizedRoute:(id)route
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)[(AVCustomRoutingController *)self authorizedRoutes] containsObject:route])
  {
    v5 = _AVRoutingLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[AVCustomRoutingController _addAuthorizedRoute:]";
      v11 = 2112;
      routeCopy = route;
      _os_log_impl(&dword_1AB586000, v5, OS_LOG_TYPE_DEFAULT, "%s AVVSRC.authorizedRoutes already contains route: %@. Ignoring.", &v9, 0x16u);
    }

    v6 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v7 = [(NSArray *)[(AVCustomRoutingController *)self authorizedRoutes] arrayByAddingObject:route];
    v8 = *MEMORY[0x1E69E9840];

    [(AVCustomRoutingController *)self _setAuthorizedRoutes:v7];
  }
}

- (void)_removeAuthorizedRoute:(id)route
{
  v5 = [MEMORY[0x1E695DF70] arrayWithArray:{-[AVCustomRoutingController authorizedRoutes](self, "authorizedRoutes")}];
  [v5 removeObject:route];

  [(AVCustomRoutingController *)self _setAuthorizedRoutes:v5];
}

- (void)_setAuthorizedRoutes:(id)routes
{
  v13 = *MEMORY[0x1E69E9840];
  if (![(NSArray *)[(AVCustomRoutingController *)self authorizedRoutes] isEqualToArray:routes])
  {
    v5 = _AVRoutingLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[AVCustomRoutingController _setAuthorizedRoutes:]";
      v11 = 2112;
      routesCopy = routes;
      _os_log_impl(&dword_1AB586000, v5, OS_LOG_TYPE_DEFAULT, "%s AVVSRC.authorizedRoutes = %@", &v9, 0x16u);
    }

    routesCopy2 = routes;
    if (!routesCopy2)
    {
      routesCopy2 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    }

    self->_authorizedRoutes = routesCopy2;
    v7 = _AVRoutingLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[AVCustomRoutingController _setAuthorizedRoutes:]";
      _os_log_impl(&dword_1AB586000, v7, OS_LOG_TYPE_DEFAULT, "%s Posting AVCustomRoutingControllerAuthorizedRoutesDidChangeNotification.", &v9, 0xCu);
    }

    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_setPendingEvents:(id)events
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = _AVRoutingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[AVCustomRoutingController _setPendingEvents:]";
    v10 = 2112;
    eventsCopy = events;
    _os_log_impl(&dword_1AB586000, v5, OS_LOG_TYPE_DEFAULT, "%s AVVSRC.pendingEvents = %@", &v8, 0x16u);
  }

  eventsCopy2 = events;
  if (!eventsCopy2)
  {
    eventsCopy2 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  }

  self->_pendingEvents = eventsCopy2;
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_informClientOfEventReason:(int64_t)reason forRoute:(id)route
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(AVCustomRoutingEvent);
  [(AVCustomRoutingEvent *)v7 setRoute:route];
  [(AVCustomRoutingEvent *)v7 setReason:reason];
  [(AVCustomRoutingController *)self _setPendingEvents:[(NSArray *)[(AVCustomRoutingController *)self pendingEvents] arrayByAddingObject:v7]];
  v8 = _AVRoutingLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[AVCustomRoutingController _informClientOfEventReason:forRoute:]";
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1AB586000, v8, OS_LOG_TYPE_DEFAULT, "%s Informing delegate of route event: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  delegate = [(AVCustomRoutingController *)self delegate];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__AVCustomRoutingController__informClientOfEventReason_forRoute___block_invoke;
  v11[3] = &unk_1E794E688;
  objc_copyWeak(&v12, buf);
  v11[4] = v7;
  [delegate customRoutingController:self handleEvent:v7 completionHandler:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
  v10 = *MEMORY[0x1E69E9840];
}

void __65__AVCustomRoutingController__informClientOfEventReason_forRoute___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 40));
  if (Weak)
  {
    v5 = Weak;
    v6 = _AVRoutingLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v11 = 136315650;
      v12 = "[AVCustomRoutingController _informClientOfEventReason:forRoute:]_block_invoke";
      v13 = 2112;
      v14 = v7;
      v15 = 1024;
      v16 = a2;
      _os_log_impl(&dword_1AB586000, v6, OS_LOG_TYPE_DEFAULT, "%s Route event: %@ completed with success: %d", &v11, 0x1Cu);
    }

    [*(a1 + 32) setSucceeded:a2];
    v8 = [v5 isSessionSuspended];
    v9 = *(a1 + 32);
    if (v8)
    {
      [v5 _storeRecordForEvent:v9];
    }

    else
    {
      [v5 _updateSessionForEvent:v9];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_updateSessionForEvent:(id)event
{
  v47 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  reason = [event reason];
  route = [event route];
  succeeded = [event succeeded];
  v8 = reason == 0;
  v9 = reason == 1;
  v10 = reason == 2;
  v11 = _AVRoutingLog();
  v27 = v9 & succeeded;
  v12 = v9 & (succeeded ^ 1);
  v28 = v10 & succeeded;
  v13 = v10 & (succeeded ^ 1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316674;
    v36 = "[AVCustomRoutingController _updateSessionForEvent:]";
    v37 = 1024;
    *v38 = v8 & succeeded;
    *&v38[4] = 1024;
    *&v38[6] = v8 & (succeeded ^ 1);
    v39 = 1024;
    v40 = v27;
    v41 = 1024;
    v42 = v12;
    v43 = 1024;
    v44 = v28;
    v45 = 1024;
    v46 = v13;
    _os_log_impl(&dword_1AB586000, v11, OS_LOG_TYPE_DEFAULT, "%s activateSucceeded: %d, activateFailed: %d, deactivateSucceeded: %d, deactivateFailed: %d, reactivateSucceeded: %d, reactivateFailed: %d", buf, 0x30u);
  }

  v14 = [MEMORY[0x1E695DF70] arrayWithArray:{-[AVCustomRoutingController pendingEvents](self, "pendingEvents")}];
  [v14 removeObject:event];
  [(AVCustomRoutingController *)self _setPendingEvents:v14];
  v15 = v28;
  if (!reason)
  {
    v15 = succeeded;
  }

  if (v15 == 1)
  {
    v16 = _AVRoutingLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      device = [route device];
      *buf = 136315394;
      v36 = "[AVCustomRoutingController _updateSessionForEvent:]";
      v37 = 2112;
      *v38 = device;
    }

    session = [(AVCustomRoutingController *)self session];
    device2 = [route device];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __52__AVCustomRoutingController__updateSessionForEvent___block_invoke;
    v31[3] = &unk_1E794E6B0;
    v20 = &v32;
    objc_copyWeak(&v32, &location);
    v31[4] = route;
    v33 = v28;
    [(DADaemonSession *)session setState:20 device:device2 completionHandler:v31];
LABEL_16:
    objc_destroyWeak(v20);
    goto LABEL_17;
  }

  if (reason)
  {
    v21 = v13;
  }

  else
  {
    v21 = succeeded ^ 1;
  }

  if ((v21 | v12 | v27))
  {
    [(AVCustomRoutingController *)self _removeAuthorizedRoute:route];
    [(AVCustomRoutingController *)self _setActive:0 forRoute:route];
    v22 = _AVRoutingLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      device3 = [route device];
      *buf = 136315394;
      v36 = "[AVCustomRoutingController _updateSessionForEvent:]";
      v37 = 2112;
      *v38 = device3;
    }

    session2 = [(AVCustomRoutingController *)self session];
    device4 = [route device];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __52__AVCustomRoutingController__updateSessionForEvent___block_invoke_19;
    v29[3] = &unk_1E794E6D8;
    v20 = &v30;
    objc_copyWeak(&v30, &location);
    v29[4] = route;
    [(DADaemonSession *)session2 setState:0 device:device4 completionHandler:v29];
    goto LABEL_16;
  }

LABEL_17:
  objc_destroyWeak(&location);
  v26 = *MEMORY[0x1E69E9840];
}

void __52__AVCustomRoutingController__updateSessionForEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 40));
  if (Weak)
  {
    v5 = Weak;
    v6 = _AVRoutingLog();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v7)
      {
        v8 = [*(a1 + 32) device];
        v11 = 136315650;
        v12 = "[AVCustomRoutingController _updateSessionForEvent:]_block_invoke";
        v13 = 2112;
        v14 = v8;
        v15 = 2112;
        v16 = a2;
      }
    }

    else
    {
      if (v7)
      {
        v9 = [*(a1 + 32) device];
        v11 = 136315394;
        v12 = "[AVCustomRoutingController _updateSessionForEvent:]_block_invoke";
        v13 = 2112;
        v14 = v9;
      }

      if ((*(a1 + 48) & 1) == 0)
      {
        [v5 _addAuthorizedRoute:*(a1 + 32)];
      }

      [v5 _setActive:1 forRoute:*(a1 + 32)];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __52__AVCustomRoutingController__updateSessionForEvent___block_invoke_19(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_loadWeak((a1 + 40)))
  {
    v4 = _AVRoutingLog();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v5)
      {
        v6 = [*(a1 + 32) device];
        v12 = 136315650;
        v13 = "[AVCustomRoutingController _updateSessionForEvent:]_block_invoke";
        v14 = 2112;
        v15 = v6;
        v16 = 2112;
        v17 = a2;
        v8 = v4;
        v9 = 32;
LABEL_7:
        _os_log_impl(&dword_1AB586000, v8, OS_LOG_TYPE_DEFAULT, v7, &v12, v9);
      }
    }

    else if (v5)
    {
      v10 = [*(a1 + 32) device];
      v12 = 136315394;
      v13 = "[AVCustomRoutingController _updateSessionForEvent:]_block_invoke";
      v14 = 2112;
      v15 = v10;
      v8 = v4;
      v9 = 22;
      goto LABEL_7;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_routeForDADevice:(id)device
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  authorizedRoutes = [(AVCustomRoutingController *)self authorizedRoutes];
  v5 = [(NSArray *)authorizedRoutes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(authorizedRoutes);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if ([objc_msgSend(objc_msgSend(v9 "device")])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSArray *)authorizedRoutes countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)_updateSessionStateToMatchRoute:(id)route
{
  v17 = *MEMORY[0x1E69E9840];
  if (![(AVCustomRoutingController *)self isSessionSuspended])
  {
    if ([route isActive])
    {
      v5 = 20;
    }

    else
    {
      v5 = 25;
    }

    v6 = _AVRoutingLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v12 = "[AVCustomRoutingController _updateSessionStateToMatchRoute:]";
      v13 = 2112;
      v14 = soft_DADeviceStateToString(v5);
      v15 = 2112;
      routeCopy = route;
      _os_log_impl(&dword_1AB586000, v6, OS_LOG_TYPE_DEFAULT, "%s Setting DA state: %@ for route: %@.", buf, 0x20u);
    }

    session = [(AVCustomRoutingController *)self session];
    device = [route device];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__AVCustomRoutingController__updateSessionStateToMatchRoute___block_invoke;
    v10[3] = &unk_1E794E700;
    v10[4] = route;
    v10[5] = v5;
    [(DADaemonSession *)session setState:v5 device:device completionHandler:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __61__AVCustomRoutingController__updateSessionStateToMatchRoute___block_invoke(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = _AVRoutingLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = soft_DADeviceStateToString(*(a1 + 40));
      v7 = [*(a1 + 32) device];
      v14 = 136315906;
      v15 = "[AVCustomRoutingController _updateSessionStateToMatchRoute:]_block_invoke";
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      v20 = 2112;
      v21 = a2;
      v8 = "%s Setting state: %@ for device: %@ failed with error: %@.";
      v9 = v4;
      v10 = 42;
LABEL_6:
      _os_log_impl(&dword_1AB586000, v9, OS_LOG_TYPE_DEFAULT, v8, &v14, v10);
    }
  }

  else if (v5)
  {
    v11 = soft_DADeviceStateToString(*(a1 + 40));
    v12 = [*(a1 + 32) device];
    v14 = 136315650;
    v15 = "[AVCustomRoutingController _updateSessionStateToMatchRoute:]_block_invoke";
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    v8 = "%s Setting state: %@ for device: %@ succeeded.";
    v9 = v4;
    v10 = 32;
    goto LABEL_6;
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_suspendSessionUpdates
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _AVRoutingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[AVCustomRoutingController _suspendSessionUpdates]";
    _os_log_impl(&dword_1AB586000, v3, OS_LOG_TYPE_DEFAULT, "%s Suspending session updates.", &v5, 0xCu);
  }

  [(AVCustomRoutingController *)self setSessionSuspended:1];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_resumeSessionUpdates
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _AVRoutingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[AVCustomRoutingController _resumeSessionUpdates]";
    _os_log_impl(&dword_1AB586000, v3, OS_LOG_TYPE_DEFAULT, "%s Resuming session updates.", &v5, 0xCu);
  }

  [(AVCustomRoutingController *)self setSessionSuspended:0];
  [(AVCustomRoutingController *)self _updateSessionFromEventRecords];
  [(AVCustomRoutingController *)self _updateSessionToReflectCurrentlyActiveRoutes];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_updateSessionFromEventRecords
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = _AVRoutingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSArray *)self->_routeEventRecords count];
    *buf = 136315394;
    v22 = "[AVCustomRoutingController _updateSessionFromEventRecords]";
    v23 = 2048;
    v24 = v4;
    _os_log_impl(&dword_1AB586000, v3, OS_LOG_TYPE_DEFAULT, "%s %lu stored event records.", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  routeEventRecords = self->_routeEventRecords;
  v6 = [(NSArray *)routeEventRecords countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v17;
    *&v7 = 136315394;
    v15 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(routeEventRecords);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = _AVRoutingLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v15;
          v22 = "[AVCustomRoutingController _updateSessionFromEventRecords]";
          v23 = 2112;
          v24 = v11;
          _os_log_impl(&dword_1AB586000, v12, OS_LOG_TYPE_DEFAULT, "%s Updating session from event record: %@", buf, 0x16u);
        }

        [(AVCustomRoutingController *)self _updateSessionForEvent:v11, v15];
      }

      v8 = [(NSArray *)routeEventRecords countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = _AVRoutingLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[AVCustomRoutingController _updateSessionFromEventRecords]";
    _os_log_impl(&dword_1AB586000, v13, OS_LOG_TYPE_DEFAULT, "%s Clearing event records.", buf, 0xCu);
  }

  self->_routeEventRecords = objc_alloc_init(MEMORY[0x1E695DEC8]);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)_storeRecordForEvent:(id)event
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = _AVRoutingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[AVCustomRoutingController _storeRecordForEvent:]";
    v10 = 2112;
    eventCopy = event;
    _os_log_impl(&dword_1AB586000, v5, OS_LOG_TYPE_DEFAULT, "%s Storing event record: %@", &v8, 0x16u);
  }

  v6 = [(NSArray *)self->_routeEventRecords arrayByAddingObject:event];

  self->_routeEventRecords = v6;
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_updateSessionToReflectCurrentlyActiveRoutes
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  authorizedRoutes = [(AVCustomRoutingController *)self authorizedRoutes];
  v4 = [(NSArray *)authorizedRoutes countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(authorizedRoutes);
        }

        [(AVCustomRoutingController *)self _updateSessionStateToMatchRoute:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [(NSArray *)authorizedRoutes countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end