@interface SystemAppLookupTask
- (void)main;
@end

@implementation SystemAppLookupTask

- (void)main
{
  selfCopy = self;
  v3 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self->_bundleIDs, "count")}];
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    bundleIDs = selfCopy->_bundleIDs;
    LODWORD(buf) = 138543362;
    *(&buf + 4) = bundleIDs;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Looking up system apps for bundle IDs: %{public}@", &buf, 0xCu);
  }

  v6 = MGGetStringAnswer();
  v7 = MGGetStringAnswer();
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1002D6884;
  v47[3] = &unk_1005219D0;
  v8 = v6;
  v48 = v8;
  v39 = v7;
  v49 = v39;
  v9 = objc_retainBlock(v47);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v10 = selfCopy->_bundleIDs;
  v42 = [(NSArray *)v10 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (!v42)
  {

    v11 = 0;
LABEL_40:
    [(Task *)selfCopy lock];
    v35 = [v3 copy];
    lookupResults = selfCopy->_lookupResults;
    selfCopy->_lookupResults = v35;

    [(Task *)selfCopy unlock];
    [(Task *)selfCopy completeWithSuccess];
    goto LABEL_41;
  }

  v37 = v8;
  v38 = selfCopy;
  v11 = 0;
  v12 = 0;
  obj = v10;
  v41 = *v44;
  do
  {
    for (i = 0; i != v42; i = i + 1)
    {
      if (*v44 != v41)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v43 + 1) + 8 * i);
      v15 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.SystemApp"];
      v16 = (v9[2])(v9, v15, v14);
      v17 = v16;
      if (v12)
      {
        v12 = 1;
        goto LABEL_18;
      }

      if (v16 != 2)
      {
        results = [v15 results];
        if ([results count])
        {
          v19 = [v15 isCatalogFetchedWithinThePastFewDays:1];

          if (v19)
          {
            v12 = 0;
            goto LABEL_18;
          }
        }

        else
        {
        }
      }

      v20 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Downloading MobileAsset catalog", &buf, 2u);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v53 = 0x3032000000;
      v54 = sub_1002D5F44;
      v55 = sub_1002D5F54;
      v56 = 0;
      v21 = dispatch_get_global_queue(25, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1002D5F5C;
      block[3] = &unk_10051E318;
      block[4] = &buf;
      dispatch_sync(v21, block);

      v22 = *(*(&buf + 1) + 40);
      _Block_object_dispose(&buf, 8);

      v23 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.SystemApp"];
      v17 = (v9[2])(v9, v23, v14);
      v12 = 1;
      v15 = v23;
      v11 = v22;
LABEL_18:
      v24 = ASDLogHandleForCategory();
      firstObject = v24;
      if (v17)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v17;
          _os_log_error_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_ERROR, "MAAssetQuery failed with error %ld", &buf, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          results2 = [v15 results];
          v27 = [results2 count];
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v27;
          _os_log_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_INFO, "Received %lu system app asset(s)", &buf, 0xCu);
        }

        results3 = [v15 results];
        firstObject = [results3 firstObject];

        v29 = ASDLogHandleForCategory();
        assetServerUrl = v29;
        if (firstObject)
        {
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = firstObject;
            _os_log_debug_impl(&_mh_execute_header, assetServerUrl, OS_LOG_TYPE_DEBUG, "Discovered matching asset: %{public}@", &buf, 0xCu);
          }

          v31 = [SystemAppLookupItem alloc];
          assetServerUrl = [firstObject assetServerUrl];
          attributes = [firstObject attributes];
          v33 = sub_100281388(&v31->super.isa, assetServerUrl, attributes);
          [v3 addObject:v33];
        }

        else if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v14;
          _os_log_error_impl(&_mh_execute_header, assetServerUrl, OS_LOG_TYPE_ERROR, "Asset for %{public}@ not found in catalog.", &buf, 0xCu);
        }
      }
    }

    v42 = [(NSArray *)obj countByEnumeratingWithState:&v43 objects:v51 count:16];
  }

  while (v42);

  if (!v11)
  {
    selfCopy = v38;
    goto LABEL_39;
  }

  selfCopy = v38;
  if ([v3 count])
  {
LABEL_39:
    v8 = v37;
    goto LABEL_40;
  }

  v34 = ASDLogHandleForCategory();
  v8 = v37;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v11;
    _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Failed to lookup system app asset(s): %{public}@", &buf, 0xCu);
  }

  [(Task *)v38 completeWithError:v11];
LABEL_41:
}

@end