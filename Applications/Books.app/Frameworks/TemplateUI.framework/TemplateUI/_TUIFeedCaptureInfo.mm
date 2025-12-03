@interface _TUIFeedCaptureInfo
- (_TUIFeedCaptureInfo)initWithURL:(id)l packagesURL:(id)rL;
- (void)dealloc;
- (void)updateSectionsFromJSON:(id)n;
@end

@implementation _TUIFeedCaptureInfo

- (void)dealloc
{
  [(NSURL *)self->_url stopAccessingSecurityScopedResource];
  v3.receiver = self;
  v3.super_class = _TUIFeedCaptureInfo;
  [(_TUIFeedCaptureInfo *)&v3 dealloc];
}

- (_TUIFeedCaptureInfo)initWithURL:(id)l packagesURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v136.receiver = self;
  v136.super_class = _TUIFeedCaptureInfo;
  v8 = [(_TUIFeedCaptureInfo *)&v136 init];
  v9 = v8;
  if (v8)
  {
    url = v8->_url;
    v8->_url = lCopy;
    v11 = lCopy;

    objc_storeStrong(&v9->_packagesURL, rL);
    [(NSURL *)v9->_url startAccessingSecurityScopedResource];
    v12 = [NSURLComponents componentsWithURL:v11 resolvingAgainstBaseURL:1];

    path = [v12 path];
    stringByStandardizingPath = [path stringByStandardizingPath];
    [v12 setPath:stringByStandardizingPath];

    v15 = [v12 URL];

    v16 = objc_alloc_init(TUIManager);
    manager = v9->_manager;
    v9->_manager = v16;

    v18 = objc_alloc_init(TUIViewRegistry);
    [(TUIManager *)v9->_manager setViewRegistry:v18];

    v19 = objc_alloc_init(TUIElementRegistry);
    [(TUIManager *)v9->_manager setElementRegistry:v19];

    v20 = objc_alloc_init(TUIFilterRegistry);
    [(TUIManager *)v9->_manager setFilterRegistry:v20];

    v21 = objc_alloc_init(TUIDynamicRegistry);
    [(TUIManager *)v9->_manager setDynamicRegistry:v21];

    v22 = objc_alloc_init(TUIResourceRegistry);
    [(TUIManager *)v9->_manager setResourceRegistry:v22];

    v23 = [[TUIResourceLoader alloc] initWithProtocolClasses:0];
    [(TUIManager *)v9->_manager setResourceLoader:v23];

    v24 = [TUIImageResourceCache alloc];
    resourceLoader = [(TUIManager *)v9->_manager resourceLoader];
    filterRegistry = [(TUIManager *)v9->_manager filterRegistry];
    v27 = +[NSBundle mainBundle];
    v28 = [(TUIImageResourceCache *)v24 initWithLoader:resourceLoader filters:filterRegistry customImageBundle:v27];
    [(TUIManager *)v9->_manager setImageResourceCache:v28];

    v29 = [TUITemplateFactory alloc];
    elementRegistry = [(TUIManager *)v9->_manager elementRegistry];
    v31 = [(TUITemplateFactory *)v29 initWithRegistry:elementRegistry];
    factory = v9->_factory;
    v9->_factory = v31;

    v33 = objc_alloc_init(BCULayerRenderer);
    v34 = [[BCUCoverEffects alloc] initWithRenderer:v33];
    filterRegistry2 = [(TUIManager *)v9->_manager filterRegistry];
    v115 = v34;
    templateImageFilters = [v34 templateImageFilters];
    [filterRegistry2 registerImageFilters:templateImageFilters];

    v37 = [(NSURL *)v15 URLByAppendingPathComponent:@"feed.json"];
    v38 = [NSData dataWithContentsOfURL:v37];
    v39 = [NSJSONSerialization JSONObjectWithData:v38 options:0 error:0];

    v40 = objc_opt_class();
    v41 = [v39 objectForKeyedSubscript:@"title"];
    v42 = TUIDynamicCast(v40, v41);
    title = v9->_title;
    v9->_title = v42;

    v44 = objc_opt_class();
    v45 = [v39 objectForKeyedSubscript:@"packages"];
    v46 = TUIDynamicCast(v44, v45);

    v112 = v46;
    if (v46)
    {
      v47 = [NSURL URLWithString:v46 relativeToURL:v37];

      rLCopy = v47;
    }

    v114 = v37;
    if (!rLCopy)
    {
      v48 = [(NSURL *)v15 URLByAppendingPathComponent:@"packages" isDirectory:1];
      rLCopy = [v48 URLByResolvingSymlinksInPath];
    }

    v135 = 0;
    v49 = +[NSFileManager defaultManager];
    path2 = [rLCopy path];
    v51 = [v49 fileExistsAtPath:path2 isDirectory:&v135];

    v116 = v33;
    if ((v51 & 1) == 0)
    {
      stringByExpandingTildeInPath = [@"~/Library/FeedViewer/Packages" stringByExpandingTildeInPath];
      v53 = [NSURL fileURLWithPath:stringByExpandingTildeInPath];

      rLCopy = v53;
    }

    v54 = [rLCopy copy];
    packagesURL = v9->_packagesURL;
    v9->_packagesURL = v54;

    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v56 = +[NSFileManager defaultManager];
    v117 = rLCopy;
    v57 = [v56 enumeratorAtURL:rLCopy includingPropertiesForKeys:0 options:1 errorHandler:0];

    v58 = [v57 countByEnumeratingWithState:&v131 objects:v139 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v132;
      do
      {
        for (i = 0; i != v59; i = i + 1)
        {
          if (*v132 != v60)
          {
            objc_enumerationMutation(v57);
          }

          v62 = [TUITemplateBundle bundleWithURL:*(*(&v131 + 1) + 8 * i) requireInfoPlist:0];
          v63 = v62;
          if (v62)
          {
            [v62 registerPackagesWithFactory:v9->_factory];
          }
        }

        v59 = [v57 countByEnumeratingWithState:&v131 objects:v139 count:16];
      }

      while (v59);
    }

    v64 = objc_opt_class();
    v113 = v39;
    v65 = [v39 objectForKeyedSubscript:@"sections"];
    v66 = TUIDynamicCast(v64, v65);

    v67 = objc_opt_new();
    v68 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v66, "count")}];
    v127[0] = _NSConcreteStackBlock;
    v127[1] = 3221225472;
    v127[2] = sub_74520;
    v127[3] = &unk_25F900;
    v69 = v9;
    v128 = v69;
    v110 = v68;
    v129 = v110;
    v109 = v67;
    v130 = v109;
    v111 = v66;
    [v66 enumerateObjectsUsingBlock:v127];
    v118 = v15;
    v70 = [(NSURL *)v15 URLByAppendingPathComponent:@"dynamic-state" isDirectory:1];
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v71 = +[NSFileManager defaultManager];
    v108 = v70;
    v72 = [v71 enumeratorAtURL:v70 includingPropertiesForKeys:0 options:1 errorHandler:0];

    v73 = [v72 countByEnumeratingWithState:&v123 objects:v138 count:16];
    if (v73)
    {
      v74 = v73;
      v75 = *v124;
      do
      {
        for (j = 0; j != v74; j = j + 1)
        {
          if (*v124 != v75)
          {
            objc_enumerationMutation(v72);
          }

          v77 = [_TUIFeedCaptureDynamicStateProvider imageResourceProviderWithURL:*(*(&v123 + 1) + 8 * j)];
          if (v77)
          {
            dynamicRegistry = [(TUIManager *)v9->_manager dynamicRegistry];
            kind = [v77 kind];
            [dynamicRegistry registerStateProvider:v77 forKind:kind];
          }
        }

        v74 = [v72 countByEnumeratingWithState:&v123 objects:v138 count:16];
      }

      while (v74);
    }

    v80 = [(NSURL *)v118 URLByAppendingPathComponent:@"images" isDirectory:1];
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v81 = +[NSFileManager defaultManager];
    v107 = v80;
    v82 = [v81 enumeratorAtURL:v80 includingPropertiesForKeys:0 options:1 errorHandler:0];

    v83 = [v82 countByEnumeratingWithState:&v119 objects:v137 count:16];
    if (v83)
    {
      v84 = v83;
      v85 = *v120;
      do
      {
        for (k = 0; k != v84; k = k + 1)
        {
          if (*v120 != v85)
          {
            objc_enumerationMutation(v82);
          }

          v87 = [_TUIFeedCaptureImageResourceProvider imageResourceProviderWithURL:*(*(&v119 + 1) + 8 * k)];
          if (v87)
          {
            resourceRegistry = [(TUIManager *)v9->_manager resourceRegistry];
            kind2 = [v87 kind];
            [resourceRegistry registerImageProvider:v87 forKind:kind2];
          }
        }

        v84 = [v82 countByEnumeratingWithState:&v119 objects:v137 count:16];
      }

      while (v84);
    }

    v90 = [TUIFeedContent feedContentWithEntries:v110 stackName:0];
    content = v69->_content;
    v69->_content = v90;

    v92 = [v109 copy];
    sectionLoaders = v69->_sectionLoaders;
    v69->_sectionLoaders = v92;

    v94 = objc_opt_class();
    v95 = [v113 objectForKeyedSubscript:@"wait-for-section"];
    v96 = TUIDynamicCast(v94, v95);

    if (v96)
    {
      unsignedIntegerValue = [v96 unsignedIntegerValue];
      entries = [(TUIFeedContent *)v69->_content entries];
      v99 = [entries count];

      if (unsignedIntegerValue < v99)
      {
        entries2 = [(TUIFeedContent *)v69->_content entries];
        v101 = [entries2 objectAtIndexedSubscript:{objc_msgSend(v96, "unsignedIntegerValue")}];
        waitForLoadEntry = v69->_waitForLoadEntry;
        v69->_waitForLoadEntry = v101;
      }
    }

    v103 = objc_opt_class();
    v104 = [v113 objectForKeyedSubscript:@"suspend-updates-until-exceeding-height"];
    v105 = TUIDynamicCast(v103, v104);
    v69->_suspendUpdatesUntilExceedingHeight = [v105 BOOLValue];

    rLCopy = v117;
    lCopy = v118;
  }

  return v9;
}

- (void)updateSectionsFromJSON:(id)n
{
  url = self->_url;
  nCopy = n;
  v6 = [(NSURL *)url URLByAppendingPathComponent:@"feed.json"];
  v7 = [NSData dataWithContentsOfURL:v6];
  v8 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:0];

  v9 = objc_opt_class();
  v10 = [v8 objectForKeyedSubscript:@"sections"];
  v11 = TUIDynamicCast(v9, v10);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_747FC;
  v13[3] = &unk_25F928;
  v13[4] = self;
  v14 = v11;
  v12 = v11;
  [nCopy enumerateIndexesUsingBlock:v13];
}

@end