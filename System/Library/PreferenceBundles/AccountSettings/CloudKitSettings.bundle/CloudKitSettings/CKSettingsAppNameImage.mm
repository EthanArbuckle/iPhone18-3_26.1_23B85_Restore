@interface CKSettingsAppNameImage
+ (id)_cachedDisplayNameForBundleID:(id)d;
+ (id)_cachedImageForBundleID:(id)d;
+ (id)_displayNameCache;
+ (id)_imageCache;
+ (void)_setCachedDisplayName:(id)name forBundleID:(id)d;
+ (void)_setCachedImage:(id)image forBundleID:(id)d;
+ (void)lookUpAppNameImagesForApplicationBundleIDs:(id)ds completionHandler:(id)handler;
@end

@implementation CKSettingsAppNameImage

+ (id)_imageCache
{
  if (qword_19820 != -1)
  {
    dispatch_once(&qword_19820, &stru_14778);
  }

  v3 = qword_19818;

  return v3;
}

+ (id)_cachedImageForBundleID:(id)d
{
  dCopy = d;
  _imageCache = [self _imageCache];
  objc_sync_enter(_imageCache);
  v6 = [_imageCache objectForKeyedSubscript:dCopy];
  objc_sync_exit(_imageCache);

  return v6;
}

+ (void)_setCachedImage:(id)image forBundleID:(id)d
{
  imageCopy = image;
  dCopy = d;
  _imageCache = [self _imageCache];
  objc_sync_enter(_imageCache);
  if (imageCopy)
  {
    [_imageCache setObject:imageCopy forKeyedSubscript:dCopy];
  }

  objc_sync_exit(_imageCache);
}

+ (id)_displayNameCache
{
  if (qword_19830 != -1)
  {
    dispatch_once(&qword_19830, &stru_14798);
  }

  v3 = qword_19828;

  return v3;
}

+ (id)_cachedDisplayNameForBundleID:(id)d
{
  dCopy = d;
  _displayNameCache = [self _displayNameCache];
  objc_sync_enter(_displayNameCache);
  v6 = [_displayNameCache objectForKeyedSubscript:dCopy];
  objc_sync_exit(_displayNameCache);

  return v6;
}

+ (void)_setCachedDisplayName:(id)name forBundleID:(id)d
{
  nameCopy = name;
  dCopy = d;
  _displayNameCache = [self _displayNameCache];
  objc_sync_enter(_displayNameCache);
  if (nameCopy)
  {
    [_displayNameCache setObject:nameCopy forKeyedSubscript:dCopy];
  }

  objc_sync_exit(_displayNameCache);
}

+ (void)lookUpAppNameImagesForApplicationBundleIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v36 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = dsCopy;
  v7 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v49;
    v37 = kISImageDescriptorTableUIName;
    do
    {
      v10 = 0;
      do
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v48 + 1) + 8 * v10);
        v12 = [self _cachedDisplayNameForBundleID:v11];
        if (!v12)
        {
          v13 = [LSApplicationRecord alloc];
          v47 = 0;
          v14 = [v13 initWithBundleIdentifier:v11 allowPlaceholder:0 error:&v47];
          v15 = v47;
          if (v15)
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v16 = ck_log_facility_ck;
            if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v53 = v11;
              v54 = 2112;
              v55 = v15;
              _os_log_error_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "Failed to initialize LSApplicationRecord for app image lookup with bundle id %@: %@", buf, 0x16u);
            }

LABEL_15:

            [v36 addObject:v11];
            v12 = 0;
          }

          else
          {
            applicationState = [v14 applicationState];
            isInstalled = [applicationState isInstalled];

            if (!isInstalled)
            {
              goto LABEL_15;
            }

            localizedName = [v14 localizedName];
            if (!localizedName)
            {
              goto LABEL_15;
            }

            v12 = localizedName;
            [self _setCachedDisplayName:localizedName forBundleID:v11];
          }
        }

        v20 = [self _cachedImageForBundleID:v11];
        if (!v20)
        {
          v21 = [[ISIcon alloc] initWithBundleIdentifier:v11];
          v22 = [ISImageDescriptor imageDescriptorNamed:v37];
          v23 = [v21 prepareImageForDescriptor:v22];

          v24 = [UIImage alloc];
          cGImage = [v23 CGImage];
          [v23 scale];
          v20 = [v24 initWithCGImage:cGImage scale:0 orientation:?];
          if (v20)
          {
            [self _setCachedImage:v20 forBundleID:v11];
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v8);
  }

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_8670;
  v43[3] = &unk_147C0;
  v26 = obj;
  v44 = v26;
  selfCopy = self;
  v27 = handlerCopy;
  v45 = v27;
  v28 = objc_retainBlock(v43);
  if ([v36 count])
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v29 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v53 = v36;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "Going to the AMS for info on these bundle ids: %{public}@", buf, 0xCu);
    }

    v30 = +[AMSLookup createBagForSubProfile];
    v31 = [AMSLookup alloc];
    v32 = [v31 initWithBag:v30 caller:@"com.apple.Cloudkit" keyProfile:AMSLookupKeyProfileLockup];
    allObjects = [v36 allObjects];
    v34 = [v32 performLookupWithBundleIdentifiers:allObjects itemIdentifiers:0];

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_8810;
    v39[3] = &unk_147E8;
    selfCopy2 = self;
    v40 = v36;
    v41 = v28;
    [v34 addFinishBlock:v39];
  }

  else
  {
    (v28[2])(v28);
  }
}

@end