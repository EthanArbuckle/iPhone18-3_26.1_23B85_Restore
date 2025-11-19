@interface URLHandlingTask
+ (id)taskForURL:(id)a3 referringURL:(id)a4 sourceApplication:(id)a5 sceneOptions:(id)a6 mkOptions:(id)a7 windowSize:(CGSize)a8;
- (CGSize)windowSize;
- (NSString)sourceApplication;
- (URLHandlingTask)initWithURL:(id)a3 referringURL:(id)a4 sourceApplication:(id)a5 sceneOptions:(id)a6 mkOptions:(id)a7;
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
    v4 = sourceApplication;
  }

  else
  {
    v4 = [(UISceneOpenURLOptions *)self->_sceneOptions sourceApplication];
  }

  v5 = self->_sourceApplication;
  self->_sourceApplication = v4;

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
  v2 = [(NSURL *)self->_url scheme];
  v3 = [v2 lowercaseString];

  return v3;
}

- (void)_populateSessionAnalytics
{
  v3 = [(URLHandlingTask *)self referringURL];
  v12 = [v3 host];

  v4 = [v12 componentsSeparatedByString:@"."];
  if ([v4 count] < 2)
  {
    v6 = 0;
  }

  else
  {
    v5 = [v4 subarrayWithRange:{objc_msgSend(v4, "count") - 2, 2}];
    v6 = [v5 componentsJoinedByString:@"."];
  }

  v7 = [(URLHandlingTask *)self sourceApplication];
  v8 = +[GEOAPSharedStateData sharedData];
  [v8 setMapLaunchSourceAppId:v7];

  v9 = [(URLHandlingTask *)self urlScheme];
  v10 = +[GEOAPSharedStateData sharedData];
  [v10 setMapLaunchLaunchUri:v9];

  v11 = +[GEOAPSharedStateData sharedData];
  [v11 setMapLaunchReferringWebsite:v6];
}

- (URLHandlingTask)initWithURL:(id)a3 referringURL:(id)a4 sourceApplication:(id)a5 sceneOptions:(id)a6 mkOptions:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = URLHandlingTask;
  v17 = [(URLHandlingTask *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_url, a3);
    objc_storeStrong(&v18->_referringURL, a4);
    objc_storeStrong(&v18->_sourceApplication, a5);
    objc_storeStrong(&v18->_sceneOptions, a6);
    objc_storeStrong(&v18->_mkOptions, a7);
    [(URLHandlingTask *)v18 _populateSessionAnalytics];
  }

  return v18;
}

+ (id)taskForURL:(id)a3 referringURL:(id)a4 sourceApplication:(id)a5 sceneOptions:(id)a6 mkOptions:(id)a7 windowSize:(CGSize)a8
{
  height = a8.height;
  width = a8.width;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = sub_100005610();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v47 = v14;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "taskForURL %{private}@", buf, 0xCu);
  }

  v20 = [v14 scheme];
  v21 = [v20 lowercaseString];

  v22 = [v14 query];
  v23 = [v22 isEqualToString:@"reset=1"];

  if (v23)
  {
    v24 = off_1015F6710;
LABEL_11:
    v25 = [objc_alloc(*v24) initWithURL:v14 referringURL:v15 sourceApplication:v16 sceneOptions:v17 mkOptions:v18];
LABEL_12:
    [(URLHandlingTask *)v25 setWindowSize:width, height];
    v26 = v25;
    goto LABEL_13;
  }

  if ([v21 isEqualToString:@"x-maps-ac-auth"])
  {
    v24 = off_1015F66E0;
    goto LABEL_11;
  }

  if ([v21 isEqualToString:@"x-maps-reopen"])
  {
    v24 = off_1015F6718;
    goto LABEL_11;
  }

  if ([v21 isEqualToString:@"x-maps-punchinhint"])
  {
    v24 = off_1015F6720;
    goto LABEL_11;
  }

  if ([MKDirectionsRequest isDirectionsRequestURL:v14])
  {
    v28 = [[MKDirectionsRequest alloc] initWithContentsOfURL:v14];
    v29 = [v28 source];
    v30 = [v28 destination];
    if (!v30)
    {

      v26 = 0;
      goto LABEL_13;
    }

    v40 = v29;
    v41 = v30;
    if (v29)
    {
      v44[0] = v29;
      v44[1] = v30;
      v31 = v44;
      v32 = 2;
    }

    else
    {
      v45 = v30;
      v31 = &v45;
      v32 = 1;
    }

    v39 = [NSArray arrayWithObjects:v31 count:v32];
    v42 = MKLaunchOptionsDirectionsModeKey;
    v43 = MKLaunchOptionsDirectionsModeDefault;
    v37 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v38 = [MKMapItem urlForMapItems:v39 options:v37];

    v26 = [[_MKHandlerURLHandlingTask alloc] initWithURL:v38 referringURL:v15 sourceApplication:v16 sceneOptions:v17 mkOptions:v18];
    goto LABEL_29;
  }

  if ([v21 isEqualToString:@"x-maps-bulletin"])
  {
    v24 = off_1015F66E8;
    goto LABEL_11;
  }

  v33 = [v14 absoluteString];
  v34 = [v33 containsString:@"add-license-plate"];

  if (v34)
  {
    v24 = off_1015F6700;
    goto LABEL_11;
  }

  v35 = [v14 absoluteString];
  v36 = [v35 containsString:@"vehicles"];

  if (v36)
  {
    v24 = off_1015F6708;
    goto LABEL_11;
  }

  if (![v21 caseInsensitiveCompare:@"file"])
  {
    v24 = off_1015F66F8;
    goto LABEL_11;
  }

  if (![v21 caseInsensitiveCompare:@"x-maps-category"])
  {
    v24 = off_1015F66F0;
    goto LABEL_11;
  }

  if ([_MKURLHandler canHandleURL:v14])
  {
    v26 = [[_MKHandlerURLHandlingTask alloc] initWithURL:v14 referringURL:v15 sourceApplication:v16 sceneOptions:v17 mkOptions:v18];
LABEL_29:
    [(URLHandlingTask *)v26 setWindowSize:width, height];
    [MKSiriInteraction generateHashForNavigationURL:v14];
    goto LABEL_13;
  }

  v25 = 0;
  v26 = 0;
  if (([v21 isEqualToString:@"test"] & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v26;
}

@end