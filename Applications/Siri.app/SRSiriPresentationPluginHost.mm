@interface SRSiriPresentationPluginHost
+ (id)_defaultURL;
+ (id)sharedSiriPresentationPluginHost;
- (SRSiriPresentationPluginHost)init;
- (SRSiriPresentationPluginHost)initWithURL:(id)l;
- (id)_builtInPresentationWithIdentifier:(id)identifier delegate:(id)delegate dataSource:(id)source;
- (id)_cachedURLForBundleWithIdentifier:(id)identifier;
- (id)_classNameForBuiltInPresentationWithIdentifier:(id)identifier;
- (id)_propertyListRepresentation;
- (id)_siriPresentationPluginBundleWithIdentifier:(id)identifier;
- (id)presentationWithIdentifier:(id)identifier delegate:(id)delegate dataSource:(id)source;
- (void)_load;
- (void)_loadFromPropertyListRepresentation:(id)representation;
- (void)_rescanBundles;
- (void)_save;
- (void)preloadPresentationBundleWithIdentifier:(id)identifier;
@end

@implementation SRSiriPresentationPluginHost

+ (id)sharedSiriPresentationPluginHost
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000773A4;
  block[3] = &unk_100167A30;
  block[4] = self;
  if (qword_10018F200 != -1)
  {
    dispatch_once(&qword_10018F200, block);
  }

  v2 = qword_10018F1F8;

  return v2;
}

+ (id)_defaultURL
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  firstObject = [v2 firstObject];

  v4 = [firstObject stringByAppendingPathComponent:@"com.apple.siri.PresentationPluginCache.plist"];
  v5 = [NSURL fileURLWithPath:v4 isDirectory:0];

  return v5;
}

- (SRSiriPresentationPluginHost)initWithURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = SRSiriPresentationPluginHost;
  v5 = [(SRSiriPresentationPluginHost *)&v11 init];
  if (v5)
  {
    v6 = [lCopy copy];
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = +[NSMutableDictionary dictionary];
    bundleURLsByBundleIdentifier = v5->_bundleURLsByBundleIdentifier;
    v5->_bundleURLsByBundleIdentifier = v8;
  }

  return v5;
}

- (SRSiriPresentationPluginHost)init
{
  _defaultURL = [objc_opt_class() _defaultURL];
  v4 = [(SRSiriPresentationPluginHost *)self initWithURL:_defaultURL];

  return v4;
}

- (id)_classNameForBuiltInPresentationWithIdentifier:(id)identifier
{
  v3 = qword_10018F210;
  identifierCopy = identifier;
  if (v3 != -1)
  {
    sub_1000CE930();
  }

  v5 = [qword_10018F208 objectForKey:identifierCopy];

  return v5;
}

- (id)_builtInPresentationWithIdentifier:(id)identifier delegate:(id)delegate dataSource:(id)source
{
  delegateCopy = delegate;
  sourceCopy = source;
  v10 = [(SRSiriPresentationPluginHost *)self _classNameForBuiltInPresentationWithIdentifier:identifier];
  v11 = objc_alloc(NSClassFromString(v10));

  if ([v11 conformsToProtocol:&OBJC_PROTOCOL___SiriUIPresentation])
  {
    v12 = v11;
    if (objc_opt_respondsToSelector())
    {
      v13 = [v12 initWithDelegate:delegateCopy dataSource:sourceCopy];
      goto LABEL_6;
    }
  }

  v13 = [v11 init];
LABEL_6:
  v14 = v13;

  return v14;
}

- (void)_rescanBundles
{
  _bundleURLsByBundleIdentifier = [(SRSiriPresentationPluginHost *)self _bundleURLsByBundleIdentifier];
  [_bundleURLsByBundleIdentifier removeAllObjects];

  v4 = AFPresentationPluginsURL();
  v5 = objc_alloc_init(NSFileManager);
  v30 = NSURLNameKey;
  v6 = [NSArray arrayWithObjects:&v30 count:1];
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1000778AC;
  v27 = &unk_1001688D0;
  v28 = v4;
  v19 = v28;
  v7 = [v5 enumeratorAtURL:? includingPropertiesForKeys:? options:? errorHandler:?];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        pathExtension = [v13 pathExtension];
        v15 = [pathExtension isEqualToString:@"siriUIPresentationBundle"];

        if (v15)
        {
          v16 = [NSBundle bundleWithURL:v13];
          _bundleURLsByBundleIdentifier2 = [(SRSiriPresentationPluginHost *)self _bundleURLsByBundleIdentifier];
          bundleIdentifier = [v16 bundleIdentifier];
          [_bundleURLsByBundleIdentifier2 setObject:v13 forKey:bundleIdentifier];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v10);
  }

  [(SRSiriPresentationPluginHost *)self _save];
}

- (id)_cachedURLForBundleWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(SRSiriPresentationPluginHost *)self _load];
  _bundleURLsByBundleIdentifier = [(SRSiriPresentationPluginHost *)self _bundleURLsByBundleIdentifier];
  v6 = [_bundleURLsByBundleIdentifier objectForKey:identifierCopy];

  if (!v6)
  {
    [(SRSiriPresentationPluginHost *)self _rescanBundles];
    _bundleURLsByBundleIdentifier2 = [(SRSiriPresentationPluginHost *)self _bundleURLsByBundleIdentifier];
    v6 = [_bundleURLsByBundleIdentifier2 objectForKey:identifierCopy];
  }

  return v6;
}

- (id)_siriPresentationPluginBundleWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(SRSiriPresentationPluginHost *)self _cachedURLForBundleWithIdentifier:identifierCopy];
  if (v5)
  {
    [NSBundle bundleWithURL:v5];
  }

  else
  {
    [NSBundle bundleWithIdentifier:identifierCopy];
  }
  v6 = ;

  return v6;
}

- (void)preloadPresentationBundleWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[SRSiriPresentationPluginHost preloadPresentationBundleWithIdentifier:]";
    v9 = 2112;
    v10 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
  }

  v6 = [(SRSiriPresentationPluginHost *)self _siriPresentationPluginBundleWithIdentifier:identifierCopy];
  if (([v6 isLoaded] & 1) == 0)
  {
    [v6 load];
  }
}

- (id)presentationWithIdentifier:(id)identifier delegate:(id)delegate dataSource:(id)source
{
  identifierCopy = identifier;
  delegateCopy = delegate;
  sourceCopy = source;
  v11 = [(SRSiriPresentationPluginHost *)self _builtInPresentationWithIdentifier:identifierCopy delegate:delegateCopy dataSource:sourceCopy];
  if (!v11)
  {
    v12 = [(SRSiriPresentationPluginHost *)self _siriPresentationPluginBundleWithIdentifier:identifierCopy];
    v13 = objc_alloc([v12 principalClass]);
    if (objc_opt_respondsToSelector())
    {
      v14 = [v13 initWithDelegate:delegateCopy dataSource:sourceCopy];
    }

    else
    {
      v14 = [v13 init];
    }

    v11 = v14;
  }

  return v11;
}

- (id)_propertyListRepresentation
{
  _bundleURLsByBundleIdentifier = [(SRSiriPresentationPluginHost *)self _bundleURLsByBundleIdentifier];
  v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [_bundleURLsByBundleIdentifier count]);

  _bundleURLsByBundleIdentifier2 = [(SRSiriPresentationPluginHost *)self _bundleURLsByBundleIdentifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100077D98;
  v8[3] = &unk_1001688F8;
  v6 = v4;
  v9 = v6;
  [_bundleURLsByBundleIdentifier2 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

- (void)_loadFromPropertyListRepresentation:(id)representation
{
  representationCopy = representation;
  +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [representationCopy count]);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100077EE8;
  v8 = v7[3] = &unk_100168920;
  v5 = v8;
  [representationCopy enumerateKeysAndObjectsUsingBlock:v7];

  _bundleURLsByBundleIdentifier = [(SRSiriPresentationPluginHost *)self _bundleURLsByBundleIdentifier];
  [_bundleURLsByBundleIdentifier setDictionary:v5];
}

- (void)_load
{
  if (![(SRSiriPresentationPluginHost *)self _isLoaded])
  {
    _URL = [(SRSiriPresentationPluginHost *)self _URL];
    v13 = 0;
    v4 = [NSData dataWithContentsOfURL:_URL options:1 error:&v13];
    v5 = v13;

    if (v4)
    {
      v12 = 0;
      v6 = [NSPropertyListSerialization propertyListWithData:v4 options:0 format:0 error:&v12];
      v7 = v12;

      if (v6)
      {
        [(SRSiriPresentationPluginHost *)self _loadFromPropertyListRepresentation:v6];
      }

      else
      {
        v10 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
        {
          sub_1000CEA8C(self, v10);
        }
      }

      goto LABEL_15;
    }

    domain = [v5 domain];
    if ([domain isEqualToString:NSCocoaErrorDomain])
    {
      code = [v5 code];

      if (code == 260)
      {
LABEL_14:
        v7 = v5;
LABEL_15:
        [(SRSiriPresentationPluginHost *)self _setLoaded:1];

        return;
      }
    }

    else
    {
    }

    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CEB3C(self, v11);
    }

    goto LABEL_14;
  }
}

- (void)_save
{
  _propertyListRepresentation = [(SRSiriPresentationPluginHost *)self _propertyListRepresentation];
  v12 = 0;
  v4 = [NSPropertyListSerialization dataWithPropertyList:_propertyListRepresentation format:200 options:0 error:&v12];
  v5 = v12;
  if (v4)
  {
    _URL = [(SRSiriPresentationPluginHost *)self _URL];
    v11 = v5;
    v7 = [v4 writeToURL:_URL options:1 error:&v11];
    v8 = v11;

    if ((v7 & 1) == 0)
    {
      v9 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v14 = "[SRSiriPresentationPluginHost _save]";
        v15 = 2112;
        selfCopy2 = self;
        v17 = 2112;
        v18 = _URL;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s %@ unable to write property list representation data to %@: %@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v14 = "[SRSiriPresentationPluginHost _save]";
      v15 = 2114;
      selfCopy2 = self;
      v17 = 2112;
      v18 = _propertyListRepresentation;
      v19 = 2114;
      v20 = v5;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s %{public}@ unable to create property list data from property list representation %@: %{public}@", buf, 0x2Au);
    }

    v8 = v5;
  }
}

@end