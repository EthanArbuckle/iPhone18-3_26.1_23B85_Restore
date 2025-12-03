@interface ODRClient
+ (void)initialize;
- (void)beginODRSessionWithBundleURL:(id)l completionHandler:(id)handler;
- (void)beginWithBundleURL:(id)l completionHandler:(id)handler;
- (void)conditionallyPinTags:(id)tags inBundle:(id)bundle completionHandler:(id)handler;
- (void)hello:(id)hello;
- (void)okToPurgeAssetPacks:(id)packs;
- (void)pinTags:(id)tags inBundle:(id)bundle priority:(double)priority completionHandler:(id)handler;
- (void)setAlwaysPreserved:(BOOL)preserved forTags:(id)tags inBundle:(id)bundle;
- (void)setLoadingPriority:(double)priority forTags:(id)tags inBundle:(id)bundle;
- (void)setPreservationPriority:(double)priority forTags:(id)tags inBundle:(id)bundle;
- (void)tagStateInBundle:(id)bundle completionHandler:(id)handler;
- (void)unpinTags:(id)tags inBundle:(id)bundle completionHandler:(id)handler;
@end

@implementation ODRClient

+ (void)initialize
{
  if (qword_1005AA998 != -1)
  {
    dispatch_once(&qword_1005AA998, &stru_10051F280);
  }
}

- (void)hello:(id)hello
{
  helloCopy = hello;
  helloCopy[2]();
  if (!self->_isUnsupportedApp)
  {
    [(NSLock *)self->_readyLock lock];
    v5 = objc_getProperty(self, v6, 72, 1);
    if (!v5)
    {
      goto LABEL_18;
    }

    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Doing the initial handshake with Application [%{public}@]", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v19 = 0x2020000000;
    v20 = 1;
    v8 = sub_100208FBC();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10026B380;
    v15[3] = &unk_10051DC00;
    v15[4] = self;
    v15[5] = &buf;
    [v8 readUsingSession:v15];

    v9 = *(*(&buf + 1) + 24);
    if ((v9 - 2) < 2)
    {
      v10 = sub_100338694([ODRApplicationImportTask alloc], self->_application);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10026B5F8;
      v14[3] = &unk_10051AF98;
      v14[4] = self;
      [v10 setCompletionBlock:v14];
      sub_10023EDE4(ODRTaskQueue, v10, 25);
    }

    else
    {
      if (v9 != 4)
      {
        if (v9 == 5)
        {
          sub_10026B3C0(self);
        }

        else
        {
          v11 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            application = self->_application;
            *v16 = 138543362;
            v17 = application;
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Connected application does not support ODR: %{public}@", v16, 0xCu);
          }

          sub_10026B608(self);
        }

        goto LABEL_17;
      }

      v10 = sub_100253964([ODRApplicationRepairTask alloc], self->_application);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10026B600;
      v13[3] = &unk_10051AF98;
      v13[4] = self;
      [v10 setCompletionBlock:v13];
      sub_10023EDE4(ODRTaskQueue, v10, 25);
    }

LABEL_17:
    _Block_object_dispose(&buf, 8);
    goto LABEL_18;
  }

  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "[ODRClient hello:]";
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Ignoring call from unsupported app (%{public}s)", &buf, 0xCu);
  }

LABEL_18:
}

- (void)beginODRSessionWithBundleURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if (self->_isUnsupportedApp)
  {
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v29) = 136446210;
      *(&v29 + 4) = "[ODRClient beginODRSessionWithBundleURL:completionHandler:]";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Ignoring call from unsupported app (%{public}s)", &v29, 0xCu);
    }

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v10 = objc_getProperty(self, v7, 72, 1);
    if (v10)
    {
      *&v29 = 0;
      *(&v29 + 1) = &v29;
      v30 = 0x3032000000;
      v31 = sub_10026ACD4;
      v32 = sub_10026ACE4;
      v33 = 0;
      v11 = sub_100208FBC();
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10026BA78;
      v24[3] = &unk_10051DC00;
      v24[4] = self;
      v24[5] = &v29;
      [v11 readUsingSession:v24];

      v12 = *(*(&v29 + 1) + 40);
      if (v12)
      {
        v13 = sub_100280C74(v12);
        if (v13)
        {
          v14 = sub_1003DC0F4();
          v15 = v14;
          if (v14)
          {
            v16 = *(v14 + 32);
          }

          else
          {
            v16 = 0;
          }

          v17 = v16;

          v18 = [v17 stringByAppendingPathComponent:v13];
          v19 = sub_10026BAD0(self, v18);
          sandboxExtension = self->_sandboxExtension;
          self->_sandboxExtension = v19;

          v21 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = self->_sandboxExtension;
            *buf = 138543618;
            v26 = v10;
            v27 = 2112;
            v28 = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Granted sandbox extension to: %{public}@ %@", buf, 0x16u);
          }
        }

        else
        {
          v17 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v26 = v10;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "No storage ID found in manifest for bundle ID %{public}@", buf, 0xCu);
          }
        }
      }

      else
      {
        v13 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v26 = v10;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "No manifest found for bundle ID %{public}@", buf, 0xCu);
        }
      }

      _Block_object_dispose(&v29, 8);
    }

    else
    {
      v23 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v29) = 0;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Application handshake failed with no applicationID. No sandbox extensions will be granted.", &v29, 2u);
      }
    }

    (handlerCopy)[2](handlerCopy, self->_sandboxExtension);
  }
}

- (void)beginWithBundleURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if (self->_isUnsupportedApp)
  {
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v41) = 136446210;
      *(&v41 + 4) = "[ODRClient beginWithBundleURL:completionHandler:]";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Ignoring call from unsupported app (%{public}s)", &v41, 0xCu);
    }

    v46 = NSDebugDescriptionErrorKey;
    v47 = @"On-Demand Resources are not available to this app";
    v10 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v11 = [NSError errorWithDomain:NSCocoaErrorDomain code:4099 userInfo:v10];
    handlerCopy[2](handlerCopy, 0, v11);
  }

  else
  {
    v10 = objc_getProperty(self, v7, 72, 1);
    if (v10)
    {
      *&v41 = 0;
      *(&v41 + 1) = &v41;
      v42 = 0x3032000000;
      v43 = sub_10026ACD4;
      v44 = sub_10026ACE4;
      v45 = 0;
      v12 = sub_100208FBC();
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10026C200;
      v30[3] = &unk_10051DC00;
      v30[4] = self;
      v30[5] = &v41;
      [v12 readUsingSession:v30];

      v13 = *(*(&v41 + 1) + 40);
      if (v13)
      {
        v14 = sub_100280C74(v13);
        if (v14)
        {
          v15 = sub_1003DC0F4();
          v16 = v15;
          if (v15)
          {
            v17 = *(v15 + 32);
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;

          v19 = [v18 stringByAppendingPathComponent:v14];
          v20 = sub_10026BAD0(self, v19);
          sandboxExtension = self->_sandboxExtension;
          self->_sandboxExtension = v20;

          v22 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = self->_sandboxExtension;
            *buf = 138543618;
            v38 = v10;
            v39 = 2112;
            v40 = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Granted sandbox extension to: %{public}@ %@", buf, 0x16u);
          }

          v11 = 0;
        }

        else
        {
          v18 = [NSString stringWithFormat:@"No storage ID found in manifest for bundle ID %@", v10];
          v27 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v38 = v18;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          v35 = NSLocalizedFailureReasonErrorKey;
          v36 = v18;
          v19 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
          v11 = [NSError errorWithDomain:_NSBundleResourceRequestErrorDomain code:101 userInfo:v19];
        }
      }

      else
      {
        v14 = [NSString stringWithFormat:@"No manifest found for bundle ID %@", v10];
        v26 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v38 = v14;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        v33 = NSLocalizedFailureReasonErrorKey;
        v34 = v14;
        v18 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v11 = [NSError errorWithDomain:_NSBundleResourceRequestErrorDomain code:100 userInfo:v18];
      }

      _Block_object_dispose(&v41, 8);
    }

    else
    {
      v24 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v41) = 138543362;
        *(&v41 + 4) = @"Application handshake failed with no application bundle ID. No sandbox extensions will be granted.";
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}@", &v41, 0xCu);
      }

      v31 = NSLocalizedFailureReasonErrorKey;
      v32 = @"Application handshake failed with no application bundle ID. No sandbox extensions will be granted.";
      v25 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v11 = [NSError errorWithDomain:_NSBundleResourceRequestErrorDomain code:100 userInfo:v25];
    }

    v28 = self->_sandboxExtension;
    v29 = [_TtC9appstored21ODRPublicErrorMapping publicErrorForError:v11];
    (handlerCopy)[2](handlerCopy, v28, v29);
  }
}

- (void)tagStateInBundle:(id)bundle completionHandler:(id)handler
{
  bundleCopy = bundle;
  handlerCopy = handler;
  if (bundleCopy)
  {
    if (self->_isUnsupportedApp)
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        *&buf[4] = "[ODRClient tagStateInBundle:completionHandler:]";
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Ignoring call from unsupported app (%{public}s)", buf, 0xCu);
      }

      v40 = NSDebugDescriptionErrorKey;
      v41 = @"On-Demand Resources are not available to this app";
      v9 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v10 = [NSError errorWithDomain:NSCocoaErrorDomain code:4099 userInfo:v9];
      handlerCopy[2](handlerCopy, 0, v10);
    }

    else
    {
      context = objc_autoreleasePoolPush();
      uRLByResolvingSymlinksInPath = [bundleCopy URLByResolvingSymlinksInPath];

      v13 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "[ODRClient tagStateInBundle:completionHandler:]";
        *&buf[12] = 2114;
        *&buf[14] = uRLByResolvingSymlinksInPath;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}s BundleURL [%{public}@]", buf, 0x16u);
      }

      v28 = self->_readyLock;
      [(NSLock *)v28 lock];
      [NSBundle bundleWithURL:uRLByResolvingSymlinksInPath];
      v26 = v34[6] = 0;
      v14 = [NSBundleResourceRequest _manifestWithBundle:"_manifestWithBundle:error:" error:?];
      v15 = 0;
      v25 = v15;
      if (v14)
      {
        v16 = +[NSMutableDictionary dictionary];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v37 = sub_10026ACD4;
        v38 = sub_10026ACE4;
        v39 = 0;
        v17 = sub_100208FBC();
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_10026C850;
        v34[3] = &unk_10051DC00;
        v34[4] = self;
        v34[5] = buf;
        [v17 readUsingSession:v34];

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v18 = *(*&buf[8] + 40);
        v19 = [v18 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v19)
        {
          v20 = *v31;
          do
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v31 != v20)
              {
                objc_enumerationMutation(v18);
              }

              v22 = *(*(&v30 + 1) + 8 * i);
              v23 = objc_opt_new();
              [v23 setAlwaysPreserved:sub_1002C0028(v22)];
              [v23 setPreservationPriority:sub_1002C00A8(v22)];
              v24 = sub_1002C0070(v22);
              [v16 setObject:v23 forKeyedSubscript:v24];
            }

            v19 = [v18 countByEnumeratingWithState:&v30 objects:v35 count:16];
          }

          while (v19);
        }

        (handlerCopy)[2](handlerCopy, v16, 0);
        _Block_object_dispose(buf, 8);
      }

      else
      {
        v16 = [_TtC9appstored21ODRPublicErrorMapping publicErrorForError:v15];
        handlerCopy[2](handlerCopy, 0, v16);
      }

      [(NSLock *)v28 unlock];
      objc_autoreleasePoolPop(context);
      bundleCopy = uRLByResolvingSymlinksInPath;
    }
  }

  else
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Ignoring call with nil bundle URL", buf, 2u);
    }

    v42 = NSDebugDescriptionErrorKey;
    v43 = @"Required argument was missing";
    bundleCopy = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v12 = [NSError errorWithDomain:NSCocoaErrorDomain code:4099 userInfo:bundleCopy];
    handlerCopy[2](handlerCopy, 0, v12);
  }
}

- (void)pinTags:(id)tags inBundle:(id)bundle priority:(double)priority completionHandler:(id)handler
{
  tagsCopy = tags;
  bundleCopy = bundle;
  handlerCopy = handler;
  if (self->_isUnsupportedApp)
  {
    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v26 = "[ODRClient pinTags:inBundle:priority:completionHandler:]";
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Ignoring call from unsupported app (%{public}s)", buf, 0xCu);
    }

    v23 = NSDebugDescriptionErrorKey;
    v24 = @"On-Demand Resources are not available to this app";
    v14 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v15 = [NSError errorWithDomain:NSCocoaErrorDomain code:4099 userInfo:v14];
    handlerCopy[2](handlerCopy, 0, v15);
  }

  else
  {
    uRLByResolvingSymlinksInPath = [bundleCopy URLByResolvingSymlinksInPath];

    v14 = self->_readyLock;
    [(NSLock *)v14 lock];
    v17 = sub_100220330();
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10026CB14;
    v18[3] = &unk_10051F320;
    v18[4] = self;
    v19 = tagsCopy;
    bundleCopy = uRLByResolvingSymlinksInPath;
    v20 = bundleCopy;
    v21 = handlerCopy;
    priorityCopy = priority;
    sub_100221660(v17, v18);

    [(NSLock *)v14 unlock];
  }
}

- (void)conditionallyPinTags:(id)tags inBundle:(id)bundle completionHandler:(id)handler
{
  tagsCopy = tags;
  bundleCopy = bundle;
  handlerCopy = handler;
  if (self->_isUnsupportedApp)
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "[ODRClient conditionallyPinTags:inBundle:completionHandler:]";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Ignoring call from unsupported app (%{public}s)", &buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, 0, &__NSDictionary0__struct);
  }

  else
  {
    uRLByResolvingSymlinksInPath = [bundleCopy URLByResolvingSymlinksInPath];

    v13 = self->_readyLock;
    [(NSLock *)v13 lock];
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v39 = 0x3032000000;
    v40 = sub_10026ACD4;
    v41 = sub_10026ACE4;
    v42 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v14 = sub_10026D960(self, tagsCopy);
    if (![v14 count])
    {
      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v34 = 138543618;
        v35 = uRLByResolvingSymlinksInPath;
        v36 = 2114;
        v37 = tagsCopy;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Conditional pin failed with no tags fetched from set for bundleURL: %{public}@, tags in set: %{public}@", v34, 0x16u);
      }

      *(v31 + 24) = 1;
    }

    v16 = sub_100220330();
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10026E2C4;
    v20[3] = &unk_10051F370;
    v17 = v14;
    v23 = &v30;
    v24 = &v26;
    p_buf = &buf;
    v21 = v17;
    selfCopy = self;
    v19 = objc_getProperty(self, v18, 72, 1);
    sub_1002213A0(v16, v20, v19);

    handlerCopy[2](handlerCopy, *(v27 + 24), *(*(&buf + 1) + 40));
    [(NSLock *)v13 unlock];

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(&v30, 8);
    bundleCopy = uRLByResolvingSymlinksInPath;
  }
}

- (void)setLoadingPriority:(double)priority forTags:(id)tags inBundle:(id)bundle
{
  tagsCopy = tags;
  if (self->_isUnsupportedApp)
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v14 = "[ODRClient setLoadingPriority:forTags:inBundle:]";
      _os_log_error_impl(&_mh_execute_header, &v8->super, OS_LOG_TYPE_ERROR, "Ignoring call from unsupported app (%{public}s)", buf, 0xCu);
    }
  }

  else
  {
    v8 = self->_readyLock;
    [(NSLock *)v8 lock];
    v9 = sub_100220330();
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10026EE20;
    v10[3] = &unk_10051F4B0;
    v10[4] = self;
    v11 = tagsCopy;
    priorityCopy = priority;
    sub_100221660(v9, v10);

    [(NSLock *)v8 unlock];
  }
}

- (void)unpinTags:(id)tags inBundle:(id)bundle completionHandler:(id)handler
{
  tagsCopy = tags;
  bundleCopy = bundle;
  handlerCopy = handler;
  if (self->_isUnsupportedApp)
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v27 = "[ODRClient unpinTags:inBundle:completionHandler:]";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Ignoring call from unsupported app (%{public}s)", buf, 0xCu);
    }

    v24 = NSDebugDescriptionErrorKey;
    v25 = @"On-Demand Resources are not available to this app";
    v12 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v13 = [NSError errorWithDomain:NSCocoaErrorDomain code:4099 userInfo:v12];
    handlerCopy[2](handlerCopy, 0, v13);
  }

  else
  {
    uRLByResolvingSymlinksInPath = [bundleCopy URLByResolvingSymlinksInPath];

    v12 = self->_readyLock;
    [(NSLock *)v12 lock];
    v15 = sub_100220330();
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_10026F298;
    v19 = &unk_10051C7A8;
    selfCopy = self;
    v21 = tagsCopy;
    bundleCopy = uRLByResolvingSymlinksInPath;
    v22 = bundleCopy;
    v23 = handlerCopy;
    sub_100221660(v15, &v16);

    [(NSLock *)v12 unlock:v16];
  }
}

- (void)okToPurgeAssetPacks:(id)packs
{
  packsCopy = packs;
  if (self->_isUnsupportedApp)
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v14 = "[ODRClient okToPurgeAssetPacks:]";
      _os_log_error_impl(&_mh_execute_header, &v5->super, OS_LOG_TYPE_ERROR, "Ignoring call from unsupported app (%{public}s)", buf, 0xCu);
    }
  }

  else
  {
    v5 = self->_readyLock;
    [(NSLock *)v5 lock];
    v6 = sub_100220330();
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10026FBE8;
    v10 = &unk_10051B570;
    v11 = packsCopy;
    selfCopy = self;
    sub_100221660(v6, &v7);

    [(NSLock *)v5 unlock:v7];
  }
}

- (void)setPreservationPriority:(double)priority forTags:(id)tags inBundle:(id)bundle
{
  tagsCopy = tags;
  if (self->_isUnsupportedApp)
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v15 = "[ODRClient setPreservationPriority:forTags:inBundle:]";
      _os_log_error_impl(&_mh_execute_header, &v8->super, OS_LOG_TYPE_ERROR, "Ignoring call from unsupported app (%{public}s)", buf, 0xCu);
    }
  }

  else
  {
    v8 = self->_readyLock;
    [(NSLock *)v8 lock];
    v9 = sub_100208FBC();
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10026FEF0;
    v10[3] = &unk_10051F3C0;
    v11 = tagsCopy;
    selfCopy = self;
    priorityCopy = priority;
    [v9 modifyUsingTransaction:v10];

    [(NSLock *)v8 unlock];
  }
}

- (void)setAlwaysPreserved:(BOOL)preserved forTags:(id)tags inBundle:(id)bundle
{
  tagsCopy = tags;
  if (self->_isUnsupportedApp)
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v15 = "[ODRClient setAlwaysPreserved:forTags:inBundle:]";
      _os_log_error_impl(&_mh_execute_header, &v8->super, OS_LOG_TYPE_ERROR, "Ignoring call from unsupported app (%{public}s)", buf, 0xCu);
    }
  }

  else
  {
    v8 = self->_readyLock;
    [(NSLock *)v8 lock];
    v9 = sub_100208FBC();
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100270434;
    v10[3] = &unk_10051F3E8;
    v11 = tagsCopy;
    selfCopy = self;
    preservedCopy = preserved;
    [v9 modifyUsingTransaction:v10];

    [(NSLock *)v8 unlock];
  }
}

@end