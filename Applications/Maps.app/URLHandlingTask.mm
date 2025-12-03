@interface URLHandlingTask
+ (id)taskForURL:(id)l referringURL:(id)rL sourceApplication:(id)application sceneOptions:(id)options mkOptions:(id)mkOptions windowSize:(CGSize)size;
- (CGSize)windowSize;
- (NSString)sourceApplication;
- (URLHandlingTask)initWithURL:(id)l referringURL:(id)rL sourceApplication:(id)application sceneOptions:(id)options mkOptions:(id)mkOptions;
- (id)urlScheme;
- (void)_populateSessionAnalytics;
@end

@implementation URLHandlingTask

- (CGSize)windowSize
{
  width = self->_windowSize.width;
  height = self->_windowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (NSString)sourceApplication
{
  sourceApplication = self->_sourceApplication;
  if (sourceApplication)
  {
    sourceApplication = sourceApplication;
  }

  else
  {
    sourceApplication = [(UISceneOpenURLOptions *)self->_sceneOptions sourceApplication];
  }

  v5 = self->_sourceApplication;
  self->_sourceApplication = sourceApplication;

  v6 = self->_sourceApplication;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [MKMapItem _sourceAppIdFromLaunchURL:self->_url];
  }

  v8 = self->_sourceApplication;
  self->_sourceApplication = v7;

  v9 = self->_sourceApplication;

  return v9;
}

- (id)urlScheme
{
  scheme = [(NSURL *)self->_url scheme];
  lowercaseString = [scheme lowercaseString];

  return lowercaseString;
}

- (void)_populateSessionAnalytics
{
  referringURL = [(URLHandlingTask *)self referringURL];
  host = [referringURL host];

  v4 = [host componentsSeparatedByString:@"."];
  if ([v4 count] < 2)
  {
    v6 = 0;
  }

  else
  {
    v5 = [v4 subarrayWithRange:{objc_msgSend(v4, "count") - 2, 2}];
    v6 = [v5 componentsJoinedByString:@"."];
  }

  sourceApplication = [(URLHandlingTask *)self sourceApplication];
  v8 = +[GEOAPSharedStateData sharedData];
  [v8 setMapLaunchSourceAppId:sourceApplication];

  urlScheme = [(URLHandlingTask *)self urlScheme];
  v10 = +[GEOAPSharedStateData sharedData];
  [v10 setMapLaunchLaunchUri:urlScheme];

  v11 = +[GEOAPSharedStateData sharedData];
  [v11 setMapLaunchReferringWebsite:v6];
}

- (URLHandlingTask)initWithURL:(id)l referringURL:(id)rL sourceApplication:(id)application sceneOptions:(id)options mkOptions:(id)mkOptions
{
  lCopy = l;
  rLCopy = rL;
  applicationCopy = application;
  optionsCopy = options;
  mkOptionsCopy = mkOptions;
  v21.receiver = self;
  v21.super_class = URLHandlingTask;
  v17 = [(URLHandlingTask *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_url, l);
    objc_storeStrong(&v18->_referringURL, rL);
    objc_storeStrong(&v18->_sourceApplication, application);
    objc_storeStrong(&v18->_sceneOptions, options);
    objc_storeStrong(&v18->_mkOptions, mkOptions);
    [(URLHandlingTask *)v18 _populateSessionAnalytics];
  }

  return v18;
}

+ (id)taskForURL:(id)l referringURL:(id)rL sourceApplication:(id)application sceneOptions:(id)options mkOptions:(id)mkOptions windowSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  lCopy = l;
  rLCopy = rL;
  applicationCopy = application;
  optionsCopy = options;
  mkOptionsCopy = mkOptions;
  v19 = sub_100005610();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v47 = lCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "taskForURL %{private}@", buf, 0xCu);
  }

  scheme = [lCopy scheme];
  lowercaseString = [scheme lowercaseString];

  query = [lCopy query];
  v23 = [query isEqualToString:@"reset=1"];

  if (v23)
  {
    v24 = off_1015F6710;
LABEL_11:
    v25 = [objc_alloc(*v24) initWithURL:lCopy referringURL:rLCopy sourceApplication:applicationCopy sceneOptions:optionsCopy mkOptions:mkOptionsCopy];
LABEL_12:
    [(URLHandlingTask *)v25 setWindowSize:width, height];
    v26 = v25;
    goto LABEL_13;
  }

  if ([lowercaseString isEqualToString:@"x-maps-ac-auth"])
  {
    v24 = off_1015F66E0;
    goto LABEL_11;
  }

  if ([lowercaseString isEqualToString:@"x-maps-reopen"])
  {
    v24 = off_1015F6718;
    goto LABEL_11;
  }

  if ([lowercaseString isEqualToString:@"x-maps-punchinhint"])
  {
    v24 = off_1015F6720;
    goto LABEL_11;
  }

  if ([MKDirectionsRequest isDirectionsRequestURL:lCopy])
  {
    v28 = [[MKDirectionsRequest alloc] initWithContentsOfURL:lCopy];
    source = [v28 source];
    destination = [v28 destination];
    if (!destination)
    {

      v26 = 0;
      goto LABEL_13;
    }

    v40 = source;
    v41 = destination;
    if (source)
    {
      v44[0] = source;
      v44[1] = destination;
      v31 = v44;
      v32 = 2;
    }

    else
    {
      v45 = destination;
      v31 = &v45;
      v32 = 1;
    }

    v39 = [NSArray arrayWithObjects:v31 count:v32];
    v42 = MKLaunchOptionsDirectionsModeKey;
    v43 = MKLaunchOptionsDirectionsModeDefault;
    v37 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v38 = [MKMapItem urlForMapItems:v39 options:v37];

    v26 = [[_MKHandlerURLHandlingTask alloc] initWithURL:v38 referringURL:rLCopy sourceApplication:applicationCopy sceneOptions:optionsCopy mkOptions:mkOptionsCopy];
    goto LABEL_29;
  }

  if ([lowercaseString isEqualToString:@"x-maps-bulletin"])
  {
    v24 = off_1015F66E8;
    goto LABEL_11;
  }

  absoluteString = [lCopy absoluteString];
  v34 = [absoluteString containsString:@"add-license-plate"];

  if (v34)
  {
    v24 = off_1015F6700;
    goto LABEL_11;
  }

  absoluteString2 = [lCopy absoluteString];
  v36 = [absoluteString2 containsString:@"vehicles"];

  if (v36)
  {
    v24 = off_1015F6708;
    goto LABEL_11;
  }

  if (![lowercaseString caseInsensitiveCompare:@"file"])
  {
    v24 = off_1015F66F8;
    goto LABEL_11;
  }

  if (![lowercaseString caseInsensitiveCompare:@"x-maps-category"])
  {
    v24 = off_1015F66F0;
    goto LABEL_11;
  }

  if ([_MKURLHandler canHandleURL:lCopy])
  {
    v26 = [[_MKHandlerURLHandlingTask alloc] initWithURL:lCopy referringURL:rLCopy sourceApplication:applicationCopy sceneOptions:optionsCopy mkOptions:mkOptionsCopy];
LABEL_29:
    [(URLHandlingTask *)v26 setWindowSize:width, height];
    [MKSiriInteraction generateHashForNavigationURL:lCopy];
    goto LABEL_13;
  }

  v25 = 0;
  v26 = 0;
  if (([lowercaseString isEqualToString:@"test"] & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v26;
}

@end