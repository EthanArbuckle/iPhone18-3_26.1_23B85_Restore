@interface MapsRadarController
+ (id)sharedInstance;
+ (void)_processAttachments:(id)attachments logFolderPath:(id)path;
- (MapsRadarController)init;
- (void)_collectAndPersistAttachmentsWithRadarDraft:(id)draft logFolderPath:(id)path completion:(id)completion;
- (void)_collectAttachmentsWithRadarDraft:(id)draft completion:(id)completion;
- (void)addAttachmentProvider:(id)provider;
- (void)collectAttachmentsWithCompletion:(id)completion;
- (void)dealloc;
- (void)launchTTRWithRadar:(id)radar promptTitle:(id)title fromViewController:(id)controller;
- (void)removeAttachmentProvider:(id)provider;
@end

@implementation MapsRadarController

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008970;
  block[3] = &unk_1016611D0;
  block[4] = self;
  if (qword_10195CB80 != -1)
  {
    dispatch_once(&qword_10195CB80, block);
  }

  v2 = qword_10195CB78;

  return v2;
}

- (MapsRadarController)init
{
  v3 = +[GEOPlatform sharedPlatform];
  isInternalInstall = [v3 isInternalInstall];

  if (isInternalInstall)
  {
    v39.receiver = self;
    v39.super_class = MapsRadarController;
    v5 = [(MapsRadarController *)&v39 init];
    if (v5)
    {
      v6 = sub_100008F18();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v41 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
      }

      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = [NSString stringWithFormat:@"%@.%@.isolationQueue.%p", v7, objc_opt_class(), v5];

      v9 = v8;
      uTF8String = [v8 UTF8String];
      v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v12 = dispatch_queue_create(uTF8String, v11);
      isolationQueue = v5->_isolationQueue;
      v5->_isolationQueue = v12;

      v14 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___MapsRadarAttachmentProvider queue:v5->_isolationQueue];
      observers = v5->_observers;
      v5->_observers = v14;

      objc_initWeak(buf, v5);
      v16 = [NSBundle bundleForClass:objc_opt_class()];
      v17 = [NSString stringWithFormat:@"%@.%@.DiagnosticExtensionDarwinQueue.%p", v16, objc_opt_class(), v5];

      v18 = v17;
      uTF8String2 = [v17 UTF8String];
      v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v21 = dispatch_queue_create(uTF8String2, v20);
      diagnosticExtensionDarwinQueue = v5->_diagnosticExtensionDarwinQueue;
      v5->_diagnosticExtensionDarwinQueue = v21;

      v5->_diagnosticExtensionDarwinToken = -1;
      v23 = v5->_diagnosticExtensionDarwinQueue;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1005CCCA4;
      handler[3] = &unk_101658C08;
      objc_copyWeak(&v38, buf);
      notify_register_dispatch("com.apple.Maps.DEMapsExtension.CollectionRequest", &v5->_diagnosticExtensionDarwinToken, v23, handler);
      v24 = [NSBundle bundleForClass:objc_opt_class()];
      v25 = [NSString stringWithFormat:@"%@.%@.CarPlayDarwinQueue.%p", v24, objc_opt_class(), v5];

      v26 = v25;
      uTF8String3 = [v25 UTF8String];
      v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v29 = dispatch_queue_create(uTF8String3, v28);
      carplayDarwinQueue = v5->_carplayDarwinQueue;
      v5->_carplayDarwinQueue = v29;

      v5->_carplayDarwinToken = -1;
      uTF8String4 = [@"com.apple.carkit.maps-diagnostics-starting" UTF8String];
      v32 = v5->_carplayDarwinQueue;
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1005CCD6C;
      v35[3] = &unk_101658C08;
      objc_copyWeak(&v36, buf);
      notify_register_dispatch(uTF8String4, &v5->_carplayDarwinToken, v32, v35);
      objc_destroyWeak(&v36);

      objc_destroyWeak(&v38);
      objc_destroyWeak(buf);
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  v3 = sub_100008F18();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  diagnosticExtensionDarwinToken = self->_diagnosticExtensionDarwinToken;
  if (diagnosticExtensionDarwinToken != -1)
  {
    notify_cancel(diagnosticExtensionDarwinToken);
  }

  carplayDarwinToken = self->_carplayDarwinToken;
  if (carplayDarwinToken != -1)
  {
    notify_cancel(carplayDarwinToken);
  }

  v6.receiver = self;
  v6.super_class = MapsRadarController;
  [(MapsRadarController *)&v6 dealloc];
}

- (void)_collectAndPersistAttachmentsWithRadarDraft:(id)draft logFolderPath:(id)path completion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1005CADD4;
  v11[3] = &unk_1016605F8;
  draftCopy = draft;
  pathCopy = path;
  completionCopy = completion;
  v8 = completionCopy;
  v9 = pathCopy;
  v10 = draftCopy;
  [(MapsRadarController *)self _collectAttachmentsWithRadarDraft:v10 completion:v11];
}

- (void)_collectAttachmentsWithRadarDraft:(id)draft completion:(id)completion
{
  draftCopy = draft;
  completionCopy = completion;
  if (!completionCopy)
  {
    v20 = sub_10006D178();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "[MapsRadarController _collectAttachmentsWithRadarDraft:completion:]";
      *&buf[12] = 2080;
      *&buf[14] = "MapsRadarController.m";
      *&buf[22] = 1024;
      LODWORD(v34) = 191;
      WORD2(v34) = 2080;
      *(&v34 + 6) = "completion != nil";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v21 = sub_10006D178();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = +[NSThread callStackSymbols];
        *buf = 138412290;
        *&buf[4] = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v8 = sub_100008F18();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Collecting attachments", buf, 0xCu);
  }

  v9 = +[NSUserDefaults standardUserDefaults];
  [v9 setBool:1 forKey:@"kMapsRadarControllerAttachmentGenerationInProgressKey"];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v34 = sub_1005CB28C;
  *(&v34 + 1) = sub_1005CB29C;
  v10 = +[NSBundle mainBundle];
  bundleIdentifier = [v10 bundleIdentifier];
  v12 = [NSString stringWithFormat:@"%@.%@.%p.attachments", bundleIdentifier, objc_opt_class(), self];
  v13 = v12;
  [v12 UTF8String];
  v35 = os_transaction_create();

  v14 = dispatch_group_create();
  objc_initWeak(&location, self);
  observers = [(MapsRadarController *)self observers];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1005CB2A4;
  v28[3] = &unk_101623000;
  objc_copyWeak(&v31, &location);
  v16 = v14;
  v29 = v16;
  v17 = draftCopy;
  v30 = v17;
  [observers enumerateObserversWithGroup:v16 visitor:v28];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005CB4C8;
  block[3] = &unk_101626730;
  objc_copyWeak(&v27, &location);
  v24 = v17;
  v25 = completionCopy;
  v26 = buf;
  v18 = completionCopy;
  v19 = v17;
  dispatch_group_notify(v16, &_dispatch_main_q, block);

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);

  _Block_object_dispose(buf, 8);
}

- (void)collectAttachmentsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_opt_new();
  v6 = NSTemporaryDirectory();
  v7 = +[NSUUID UUID];
  uUIDString = [v7 UUIDString];
  v9 = [v6 stringByAppendingPathComponent:uUIDString];
  v10 = [v9 stringByAppendingPathComponent:@"MapsDiagnostics/"];
  v11 = [NSURL fileURLWithPath:v10];

  path = [v11 path];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1005CBF1C;
  v15[3] = &unk_101661090;
  v16 = v11;
  v17 = completionCopy;
  v13 = v11;
  v14 = completionCopy;
  [(MapsRadarController *)self _collectAndPersistAttachmentsWithRadarDraft:v5 logFolderPath:path completion:v15];
}

- (void)launchTTRWithRadar:(id)radar promptTitle:(id)title fromViewController:(id)controller
{
  radarCopy = radar;
  titleCopy = title;
  controllerCopy = controller;
  v11 = sub_100008F18();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134349826;
    selfCopy = self;
    v58 = 2112;
    v59 = radarCopy;
    v60 = 2112;
    *v61 = titleCopy;
    *&v61[8] = 2112;
    *&v61[10] = controllerCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Launching TTR with radar: %@ promptTitle: %@ viewController: %@", buf, 0x2Au);
  }

  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_1005CB28C;
  v54 = sub_1005CB29C;
  if (radarCopy)
  {
    v12 = radarCopy;
    v13 = &v50;
  }

  else
  {
    v12 = objc_opt_new();
    v13 = v51;
  }

  v55 = v12;
  [v13[5] addDiagnosticExtensionKey:@"MapsRadarDiagnosticCollectionExtensionParameterInitiatedFromMapsKey" value:&__kCFBooleanTrue];
  objc_initWeak(&location, self);
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1005CC760;
  v46[3] = &unk_101661600;
  v48 = &v50;
  v14 = titleCopy;
  v47 = v14;
  v41 = objc_retainBlock(v46);
  if (v14)
  {
    label = dispatch_queue_get_label(&_dispatch_main_q);
    v16 = dispatch_queue_get_label(0);
    if (label != v16 && (!label || !v16 || strcmp(label, v16)))
    {
      v30 = sub_10006D178();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = dispatch_queue_get_label(&_dispatch_main_q);
        v32 = dispatch_queue_get_label(0);
        *buf = 136316418;
        selfCopy = "[MapsRadarController launchTTRWithRadar:promptTitle:fromViewController:]";
        v58 = 2080;
        v59 = "MapsRadarController.m";
        v60 = 1024;
        *v61 = 156;
        *&v61[4] = 2080;
        *&v61[6] = "dispatch_get_main_queue()";
        *&v61[14] = 2080;
        *&v61[16] = v31;
        v62 = 2080;
        v63 = v32;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v33 = sub_10006D178();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = +[NSThread callStackSymbols];
          *buf = 138412290;
          selfCopy = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    if (!controllerCopy)
    {
      v17 = +[UIApplication _maps_keyMapsSceneDelegate];
      if (!v17)
      {
        v35 = sub_10006D178();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          selfCopy = "[MapsRadarController launchTTRWithRadar:promptTitle:fromViewController:]";
          v58 = 2080;
          v59 = "MapsRadarController.m";
          v60 = 1024;
          *v61 = 159;
          *&v61[4] = 2080;
          *&v61[6] = "mapsKeySceneDelegate != nil";
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
        }

        if (sub_100E03634())
        {
          v36 = sub_10006D178();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = +[NSThread callStackSymbols];
            *buf = 138412290;
            selfCopy = v37;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }
      }

      controllerCopy = [v17 topMostPresentedViewController];
      if (!controllerCopy)
      {
        v38 = sub_10006D178();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          selfCopy = "[MapsRadarController launchTTRWithRadar:promptTitle:fromViewController:]";
          v58 = 2080;
          v59 = "MapsRadarController.m";
          v60 = 1024;
          *v61 = 161;
          *&v61[4] = 2080;
          *&v61[6] = "viewController != nil";
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
        }

        if (sub_100E03634())
        {
          v39 = sub_10006D178();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v40 = +[NSThread callStackSymbols];
            *buf = 138412290;
            selfCopy = v40;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }
      }
    }
  }

  if ([v14 length])
  {
    v18 = [v14 substringToIndex:1];
    uppercaseString = [v18 uppercaseString];
    v20 = [v14 stringByReplacingCharactersInRange:0 withString:{1, uppercaseString}];
    v21 = [v20 stringByAppendingString:@". Would you like to file a Radar?"];

    v22 = [UIAlertController alertControllerWithTitle:@"[Internal only]\nTap-to-Radar" message:v21 preferredStyle:1];
    v23 = +[UIImage _maps_radar_symbolFilled];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1005CCA90;
    v42[3] = &unk_101631A58;
    objc_copyWeak(&v45, &location);
    v44 = &v50;
    v43 = v41;
    v24 = [UIAlertAction _actionWithTitle:@"OK" image:v23 style:0 handler:v42 shouldDismissHandler:0];
    [v22 addAction:v24];

    v25 = [UIAlertAction actionWithTitle:@"Not now" style:1 handler:0];
    [v22 addAction:v25];

    v26 = +[MapsInternalAlertPresentationController sharedInstance];
    view = [controllerCopy view];
    window = [view window];
    windowScene = [window windowScene];
    [v26 presentAlertController:v22 fromWindowScene:windowScene];

    objc_destroyWeak(&v45);
  }

  else
  {
    [(MapsRadarController *)self _collectAttachmentsWithRadarDraft:v51[5] completion:v41];
  }

  objc_destroyWeak(&location);
  _Block_object_dispose(&v50, 8);
}

- (void)removeAttachmentProvider:(id)provider
{
  providerCopy = provider;
  v5 = sub_100008F18();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134349314;
    selfCopy = self;
    v8 = 2112;
    v9 = providerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Removing attachment provider: %@", &v6, 0x16u);
  }

  [(GEOObserverHashTable *)self->_observers unregisterObserver:providerCopy];
}

- (void)addAttachmentProvider:(id)provider
{
  providerCopy = provider;
  v5 = sub_100008F18();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134349314;
    selfCopy = self;
    v8 = 2112;
    v9 = providerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Adding attachment provider: %@", &v6, 0x16u);
  }

  [(GEOObserverHashTable *)self->_observers registerObserver:providerCopy queue:&_dispatch_main_q];
}

+ (void)_processAttachments:(id)attachments logFolderPath:(id)path
{
  attachmentsCopy = attachments;
  pathCopy = path;
  attachments = [attachmentsCopy attachments];
  v33 = attachmentsCopy;
  screenshots = [attachmentsCopy screenshots];
  v9 = [attachments arrayByAddingObjectsFromArray:screenshots];

  v10 = +[NSFileManager defaultManager];
  v40 = 0;
  LOBYTE(screenshots) = [v10 removeItemAtPath:pathCopy error:&v40];
  v11 = v40;

  if ((screenshots & 1) == 0)
  {
    v12 = sub_100008F18();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v42 = pathCopy;
      v43 = 2112;
      v44 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error removing folder at path: %@ (%@)", buf, 0x16u);
    }
  }

  v32 = v11;
  v13 = +[NSFileManager defaultManager];
  v39 = 0;
  v14 = [v13 createDirectoryAtPath:pathCopy withIntermediateDirectories:1 attributes:0 error:&v39];
  v15 = v39;

  if ((v14 & 1) == 0)
  {
    v16 = sub_100008F18();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v42 = pathCopy;
      v43 = 2112;
      v44 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error creating folder at path: %@ (%@)", buf, 0x16u);
    }
  }

  v31 = v15;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = v9;
  v18 = [v17 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v36;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v35 + 1) + 8 * i);
        temporaryFileURL = [v22 temporaryFileURL];

        if (temporaryFileURL)
        {
          temporaryFileURL2 = [v22 temporaryFileURL];
          fileName = [v22 fileName];
          v26 = [NSString stringWithFormat:@"%@/%@", pathCopy, fileName];
          v27 = [NSURL fileURLWithPath:v26];

          v28 = +[NSFileManager defaultManager];
          v34 = 0;
          LOBYTE(v26) = [v28 moveItemAtURL:temporaryFileURL2 toURL:v27 error:&v34];
          v29 = v34;

          if ((v26 & 1) == 0)
          {
            v30 = sub_100008F18();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v42 = temporaryFileURL2;
              v43 = 2112;
              v44 = v27;
              v45 = 2112;
              v46 = v29;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Error moving attachment from %@ to %@: %@", buf, 0x20u);
            }
          }
        }

        else
        {
          v29 = sub_100008F18();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v42 = v22;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Invalid attachment: %@", buf, 0xCu);
          }
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v19);
  }
}

@end