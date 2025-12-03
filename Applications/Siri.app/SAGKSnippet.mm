@interface SAGKSnippet
- (BOOL)_isWikiSnippet;
- (BOOL)_sr_objects:(id)_sr_objects matchClassOrder:(id)order;
- (id)sr_sirilandShim;
@end

@implementation SAGKSnippet

- (BOOL)_sr_objects:(id)_sr_objects matchClassOrder:(id)order
{
  _sr_objectsCopy = _sr_objects;
  orderCopy = order;
  v7 = [orderCopy count];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008E45C;
  v10[3] = &unk_100168948;
  v8 = orderCopy;
  v11 = v8;
  v12 = v19;
  v13 = &v15;
  v14 = v7;
  [_sr_objectsCopy enumerateObjectsUsingBlock:v10];
  LOBYTE(v7) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(v19, 8);

  return v7;
}

- (BOOL)_isWikiSnippet
{
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v6[2] = objc_opt_class();
  v6[3] = objc_opt_class();
  v3 = [NSArray arrayWithObjects:v6 count:4];
  pods = [(SAGKSnippet *)self pods];
  LOBYTE(self) = sub_10007847C(pods, v3);

  return self;
}

- (id)sr_sirilandShim
{
  if ([(SAGKSnippet *)self _isWikiSnippet])
  {
    v3 = objc_alloc_init(SFCard);
    title = [(SAGKSnippet *)self title];
    [v3 setTitle:title];

    [v3 setType:1];
    aceId = [(SAGKSnippet *)self aceId];
    [v3 setCardId:aceId];

    [v3 setSource:2];
    v6 = objc_alloc_init(NSMutableArray);
    title2 = [(SAGKSnippet *)self title];

    if (title2)
    {
      v8 = objc_alloc_init(SFRichTitleCardSection);
      title3 = [(SAGKSnippet *)self title];
      [v8 setTitle:title3];

      subtitle = [(SAGKSnippet *)self subtitle];
      [v8 setSubtitle:subtitle];

      [v8 setIsCentered:1];
      [v8 setSeparatorStyle:5];
      [v6 addObject:v8];
    }

    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x2020000000;
    v45[3] = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    pods = [(SAGKSnippet *)self pods];
    v34 = _NSConcreteStackBlock;
    v35 = 3221225472;
    v36 = sub_10008EB30;
    v37 = &unk_100168D08;
    v12 = v6;
    v38 = v12;
    v39 = v45;
    v40 = &v41;
    [pods enumerateObjectsUsingBlock:&v34];

    appPunchOut = [(SAGKSnippet *)self appPunchOut];
    if (appPunchOut && (v42[3] & 1) == 0)
    {
      v14 = objc_alloc_init(SFRowCardSection);
      v15 = [SFURLImage alloc];
      appIcon = [appPunchOut appIcon];
      resourceUrl = [appIcon resourceUrl];
      v18 = [v15 initWithURL:resourceUrl];

      [v14 setImage:v18];
      [v18 setIsTemplate:1];
      v19 = objc_alloc_init(SFRichText);
      punchOutName = [appPunchOut punchOutName];
      [v19 setText:punchOutName];

      [v14 setLeadingText:v19];
      [v14 setImageIsRightAligned:1];
      _convertedPunchout = [appPunchOut _convertedPunchout];
      v22 = _convertedPunchout;
      if (_convertedPunchout)
      {
        v46 = _convertedPunchout;
        v23 = [NSArray arrayWithObjects:&v46 count:1];
        [v14 setPunchoutOptions:v23];
      }

      [v12 addObject:v14];
    }

    v24 = [v12 copy];
    [v3 setCardSections:v24];

    selfCopy = objc_alloc_init(SACardSnippet);
    v26 = [[_SFPBCard alloc] initWithFacade:v3];
    data = [v26 data];
    [(SAGKSnippet *)selfCopy setCardData:data];

    v28 = objc_alloc_init(SAUISash);
    [v28 setApplicationBundleIdentifier:@"com.apple.siri"];
    if (AFIsInternalInstall())
    {
      v29 = +[AFPreferences sharedPreferences];
      debugButtonIsEnabled = [v29 debugButtonIsEnabled];

      if (debugButtonIsEnabled)
      {
        v31 = sub_100078408(@"KNOWLEDGE");
        v32 = [NSString stringWithFormat:@"%@ (INTERNAL ONLY: LEGACY FLOW)", v31, v34, v35, v36, v37];
        [v28 setTitle:v32];
      }
    }

    [(SAGKSnippet *)selfCopy setSash:v28];
    [(SAGKSnippet *)selfCopy sr_applySnippetProperties:self];
    [(SAGKSnippet *)selfCopy setTitle:0];

    _Block_object_dispose(&v41, 8);
    _Block_object_dispose(v45, 8);
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end