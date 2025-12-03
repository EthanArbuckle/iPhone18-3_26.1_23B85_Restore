@interface BEContentBlockingRules
+ (BEContentBlockingRules)sharedInstance;
- (BEContentBlockingRules)init;
- (void)applyContentBlockingRule:(unint64_t)rule toWebView:(id)view completion:(id)completion;
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

- (void)applyContentBlockingRule:(unint64_t)rule toWebView:(id)view completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  if ([viewCopy be_appliedContentBlockingRule] == rule)
  {
    v10 = objc_retainBlock(completionCopy);
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
    systemVersion = [v15 systemVersion];
    [v14 addObject:systemVersion];

    if (BEIsInternalInstall())
    {
      v17 = +[UIDevice currentDevice];
      buildVersion = [v17 buildVersion];
      [v14 addObject:buildVersion];
    }

    v19 = [v14 componentsJoinedByString:@"_"];

    lastObject = [v13 lastObject];
    v21 = [lastObject URLByAppendingPathComponent:v19];

    v22 = [WKContentRuleListStore storeWithURL:v21];

    if (rule >= 3)
    {
      v24 = _BookEPUBLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = [NSNumber numberWithUnsignedInteger:rule];
        *buf = 138412290;
        v43 = v25;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "Unsupported content blocking rule '%@'", buf, 0xCu);
      }

      v23 = @"RemoteContentBlocked";
    }

    else
    {
      v23 = off_327F40[rule];
    }

    configuration = [viewCopy configuration];
    userContentController = [configuration userContentController];

    objc_initWeak(buf, self);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_2E40;
    v36[3] = &unk_327EF8;
    v28 = userContentController;
    v37 = v28;
    v38 = viewCopy;
    v41[1] = rule;
    objc_copyWeak(v41, buf);
    v39 = v23;
    v40 = completionCopy;
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
      ruleCopy = rule;
      v32 = v22;
      v33 = v23;
      [v32 lookUpContentRuleListForIdentifier:v23 completionHandler:v31];
    }

    objc_destroyWeak(v41);
    objc_destroyWeak(buf);
  }
}

@end