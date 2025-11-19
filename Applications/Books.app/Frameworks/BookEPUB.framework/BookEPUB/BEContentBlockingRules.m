@interface BEContentBlockingRules
+ (BEContentBlockingRules)sharedInstance;
- (BEContentBlockingRules)init;
- (void)applyContentBlockingRule:(unint64_t)a3 toWebView:(id)a4 completion:(id)a5;
@end

@implementation BEContentBlockingRules

+ (BEContentBlockingRules)sharedInstance
{
  if (qword_36AA48 != -1)
  {
    sub_2638E0();
  }

  v3 = qword_36AA40;

  return v3;
}

- (BEContentBlockingRules)init
{
  v6.receiver = self;
  v6.super_class = BEContentBlockingRules;
  v2 = [(BEContentBlockingRules *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    cachedRules = v2->_cachedRules;
    v2->_cachedRules = v3;
  }

  return v2;
}

- (void)applyContentBlockingRule:(unint64_t)a3 toWebView:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([v8 be_appliedContentBlockingRule] == a3)
  {
    v10 = objc_retainBlock(v9);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0);
    }
  }

  else
  {
    v12 = +[NSFileManager defaultManager];
    v13 = [v12 URLsForDirectory:13 inDomains:1];

    v14 = objc_alloc_init(NSMutableArray);
    [v14 addObject:@"BEContentRuleLists"];
    v15 = +[UIDevice currentDevice];
    v16 = [v15 systemVersion];
    [v14 addObject:v16];

    if (BEIsInternalInstall())
    {
      v17 = +[UIDevice currentDevice];
      v18 = [v17 buildVersion];
      [v14 addObject:v18];
    }

    v19 = [v14 componentsJoinedByString:@"_"];

    v20 = [v13 lastObject];
    v21 = [v20 URLByAppendingPathComponent:v19];

    v22 = [WKContentRuleListStore storeWithURL:v21];

    if (a3 >= 3)
    {
      v24 = _BookEPUBLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = [NSNumber numberWithUnsignedInteger:a3];
        *buf = 138412290;
        v43 = v25;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "Unsupported content blocking rule '%@'", buf, 0xCu);
      }

      v23 = @"RemoteContentBlocked";
    }

    else
    {
      v23 = off_327F40[a3];
    }

    v26 = [v8 configuration];
    v27 = [v26 userContentController];

    objc_initWeak(buf, self);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_2E40;
    v36[3] = &unk_327EF8;
    v28 = v27;
    v37 = v28;
    v38 = v8;
    v41[1] = a3;
    objc_copyWeak(v41, buf);
    v39 = v23;
    v40 = v9;
    v29 = objc_retainBlock(v36);
    v30 = [(NSMutableDictionary *)self->_cachedRules objectForKeyedSubscript:v23];
    if (v30)
    {
      (v29[2])(v29, v30, 0);
    }

    else
    {
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_2F90;
      v31[3] = &unk_327F20;
      v34 = v29;
      v35 = a3;
      v32 = v22;
      v33 = v23;
      [v32 lookUpContentRuleListForIdentifier:v23 completionHandler:v31];
    }

    objc_destroyWeak(v41);
    objc_destroyWeak(buf);
  }
}

@end