@interface BuddyFundamentalFlow
+ (id)allowedFlowItems;
- (BuddyFundamentalFlow)initWithFlowProvider:(id)provider featureFlags:(id)flags;
- (BuddyFundamentalFlowProvider)flowProvider;
- (Class)_initialFlowItemClass;
- (Class)debutFlowItemClass;
- (Class)initialFlowItemClass;
- (Class)potentialNextFlowItemClassFollowingFlowItemClass:(Class)class;
- (id)_flowMapByClass;
- (void)_addItems:(id)items toFlow:(id)flow;
- (void)configureFlowItem:(id)item;
- (void)prepareWithCompletion:(id)completion;
@end

@implementation BuddyFundamentalFlow

- (BuddyFundamentalFlow)initWithFlowProvider:(id)provider featureFlags:(id)flags
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  obj = 0;
  objc_storeStrong(&obj, flags);
  v5 = selfCopy;
  selfCopy = 0;
  v8.receiver = v5;
  v8.super_class = BuddyFundamentalFlow;
  selfCopy = [(BuddyFundamentalFlow *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(selfCopy + 2, obj);
    objc_storeWeak(selfCopy + 3, location[0]);
  }

  v6 = selfCopy;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (id)_flowMapByClass
{
  selfCopy = self;
  v85[1] = a2;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v112[0] = v3;
  v113[0] = objc_opt_class();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v112[1] = v5;
  v113[1] = objc_opt_class();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v112[2] = v7;
  v113[2] = objc_opt_class();
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v112[3] = v9;
  v113[3] = objc_opt_class();
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v112[4] = v11;
  v113[4] = objc_opt_class();
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v112[5] = v13;
  v113[5] = objc_opt_class();
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v112[6] = v15;
  v113[6] = objc_opt_class();
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v112[7] = v17;
  v113[7] = objc_opt_class();
  v18 = [NSDictionary dictionaryWithObjects:v113 forKeys:v112 count:8];
  v85[0] = [NSMutableDictionary dictionaryWithDictionary:v18];

  v111[0] = objc_opt_class();
  v111[1] = objc_opt_class();
  v111[2] = objc_opt_class();
  v111[3] = objc_opt_class();
  v111[4] = objc_opt_class();
  v111[5] = objc_opt_class();
  v111[6] = objc_opt_class();
  v111[7] = objc_opt_class();
  v111[8] = objc_opt_class();
  v111[9] = objc_opt_class();
  v111[10] = objc_opt_class();
  v111[11] = objc_opt_class();
  v84 = [NSArray arrayWithObjects:v111 count:12];
  [(BuddyFundamentalFlow *)selfCopy _addItems:v84 toFlow:v85[0]];
  flowProvider = [(BuddyFundamentalFlow *)selfCopy flowProvider];
  hasCloudConfiguration = [(BuddyFundamentalFlowProvider *)flowProvider hasCloudConfiguration];

  v83 = (hasCloudConfiguration & 1) == 0;
  featureFlags = [(BuddyFundamentalFlow *)selfCopy featureFlags];
  isMDMEnrollmentFlowControllerAdoptionEnabled = [(BuddyFeatureFlags *)featureFlags isMDMEnrollmentFlowControllerAdoptionEnabled];

  v82 = isMDMEnrollmentFlowControllerAdoptionEnabled & 1;
  v110[0] = objc_opt_class();
  v110[1] = objc_opt_class();
  v110[2] = objc_opt_class();
  v110[3] = objc_opt_class();
  v110[4] = objc_opt_class();
  v110[5] = objc_opt_class();
  v110[6] = objc_opt_class();
  v110[7] = objc_opt_class();
  v110[8] = objc_opt_class();
  v110[9] = objc_opt_class();
  v110[10] = objc_opt_class();
  v110[11] = objc_opt_class();
  v110[12] = objc_opt_class();
  v110[13] = objc_opt_class();
  v110[14] = objc_opt_class();
  v110[15] = objc_opt_class();
  v110[16] = objc_opt_class();
  v110[17] = objc_opt_class();
  v110[18] = objc_opt_class();
  v110[19] = objc_opt_class();
  v110[20] = objc_opt_class();
  v110[21] = objc_opt_class();
  v110[22] = objc_opt_class();
  v110[23] = objc_opt_class();
  location = [NSArray arrayWithObjects:v110 count:24];
  if (isMDMEnrollmentFlowControllerAdoptionEnabled)
  {
    oslog = _BYLoggingFacility();
    v79 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v23 = oslog;
      v24 = v79;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v23, v24, "FlowControllerAdoption feature flag is on...", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    obj = [location mutableCopy];
    v76 = [obj indexOfObject:objc_opt_class()];
    v92 = v76;
    v91 = 2;
    v93 = v76;
    v94 = 2;
    v75[2] = 2;
    v75[1] = v76;
    v109 = objc_opt_class();
    v25 = [NSArray arrayWithObjects:&v109 count:1];
    [obj replaceObjectsInRange:v76 withObjectsFromArray:{2, v25}];

    objc_storeStrong(&location, obj);
    objc_storeStrong(&obj, 0);
  }

  if (!v83)
  {
    v75[0] = [location mutableCopy];
    [v75[0] removeObject:objc_opt_class()];
    [v75[0] removeObject:objc_opt_class()];
    objc_storeStrong(&location, v75[0]);
    objc_storeStrong(v75, 0);
  }

  [(BuddyFundamentalFlow *)selfCopy _addItems:location toFlow:v85[0]];
  v108[0] = objc_opt_class();
  v108[1] = objc_opt_class();
  v108[2] = objc_opt_class();
  v74 = [NSArray arrayWithObjects:v108 count:3];
  [(BuddyFundamentalFlow *)selfCopy _addItems:v74 toFlow:v85[0]];
  flowProvider2 = [(BuddyFundamentalFlow *)selfCopy flowProvider];
  remoteManagementProvider = [(BuddyFundamentalFlowProvider *)flowProvider2 remoteManagementProvider];
  v28 = [remoteManagementProvider mdmEnrollmentChannel] == 2;

  v73 = v28;
  flowProvider3 = [(BuddyFundamentalFlow *)selfCopy flowProvider];
  restoreProvider = [(BuddyFundamentalFlowProvider *)flowProvider3 restoreProvider];
  v70 = 0;
  v68 = 0;
  v31 = 1;
  if ([restoreProvider intendedRestoreType] != 1)
  {
    flowProvider4 = [(BuddyFundamentalFlow *)selfCopy flowProvider];
    v70 = 1;
    restoreProvider2 = [flowProvider4 restoreProvider];
    v68 = 1;
    v31 = [restoreProvider2 restoreType] == 1;
  }

  if (v68)
  {
  }

  if (v70)
  {
  }

  v72 = v31;
  if (v73)
  {
    v67 = _BYLoggingFacility();
    v66 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v67;
      v33 = v66;
      sub_10006AA68(v65);
      _os_log_impl(&_mh_execute_header, v32, v33, "Postpone restore...", v65, 2u);
    }

    objc_storeStrong(&v67, 0);
    v34 = selfCopy;
    v107[0] = objc_opt_class();
    v107[1] = objc_opt_class();
    v35 = [NSArray arrayWithObjects:v107 count:2];
    [(BuddyFundamentalFlow *)v34 _addItems:v35 toFlow:v85[0]];
  }

  else
  {
    v106[0] = objc_opt_class();
    v106[1] = objc_opt_class();
    v106[2] = objc_opt_class();
    v64 = [NSArray arrayWithObjects:v106 count:3];
    [(BuddyFundamentalFlow *)selfCopy _addItems:v64 toFlow:v85[0]];
    v36 = selfCopy;
    if (v72)
    {
      v105[0] = objc_opt_class();
      v105[1] = objc_opt_class();
      v105[2] = objc_opt_class();
      v105[3] = objc_opt_class();
      v37 = [NSArray arrayWithObjects:v105 count:4];
    }

    else
    {
      v104[0] = objc_opt_class();
      v104[1] = objc_opt_class();
      v37 = [NSArray arrayWithObjects:v104 count:2];
    }

    [(BuddyFundamentalFlow *)v36 _addItems:v37 toFlow:v85[0]];

    objc_storeStrong(&v64, 0);
  }

  v38 = selfCopy;
  v103[0] = objc_opt_class();
  v103[1] = objc_opt_class();
  v39 = [NSArray arrayWithObjects:v103 count:2];
  [(BuddyFundamentalFlow *)v38 _addItems:v39 toFlow:v85[0]];

  v61 = 0;
  v59 = 0;
  if (v82)
  {
    v102[0] = objc_opt_class();
    v102[1] = objc_opt_class();
    v40 = [NSArray arrayWithObjects:v102 count:2];
    v62 = v40;
    v61 = 1;
  }

  else
  {
    v101[0] = objc_opt_class();
    v101[1] = objc_opt_class();
    v40 = [NSArray arrayWithObjects:v101 count:2];
    v60 = v40;
    v59 = 1;
  }

  v63 = [(NSArray *)v40 mutableCopy];
  if (v59)
  {
  }

  if (v61)
  {
  }

  v100[0] = objc_opt_class();
  v100[1] = objc_opt_class();
  v100[2] = objc_opt_class();
  v100[3] = objc_opt_class();
  v100[4] = objc_opt_class();
  v100[5] = objc_opt_class();
  v100[6] = objc_opt_class();
  v41 = [NSArray arrayWithObjects:v100 count:7];
  [v63 addObjectsFromArray:v41];

  if (v73)
  {
    v58 = +[NSMutableArray array];
    [v58 addObject:objc_opt_class()];
    if (v72)
    {
      [v58 addObject:objc_opt_class()];
      [v58 addObject:objc_opt_class()];
    }

    v42 = [v58 count];
    v88 = 1;
    v87 = v42;
    v89 = 1;
    v90 = v42;
    v57[2] = v42;
    v57[1] = 1;
    v43 = [NSIndexSet indexSetWithIndexesInRange:1, v42];
    [v63 insertObjects:v58 atIndexes:v43];

    objc_storeStrong(&v58, 0);
  }

  if (v83)
  {
    [v63 removeObject:objc_opt_class()];
    [v63 removeObject:objc_opt_class()];
  }

  [(BuddyFundamentalFlow *)selfCopy _addItems:v63 toFlow:v85[0]];
  v99[0] = objc_opt_class();
  v99[1] = objc_opt_class();
  v99[2] = objc_opt_class();
  v99[3] = objc_opt_class();
  v99[4] = objc_opt_class();
  v99[5] = objc_opt_class();
  v99[6] = objc_opt_class();
  v99[7] = objc_opt_class();
  v99[8] = objc_opt_class();
  v99[9] = objc_opt_class();
  v99[10] = objc_opt_class();
  v99[11] = objc_opt_class();
  v99[12] = objc_opt_class();
  v99[13] = objc_opt_class();
  v99[14] = objc_opt_class();
  v99[15] = objc_opt_class();
  v99[16] = objc_opt_class();
  v99[17] = objc_opt_class();
  v99[18] = objc_opt_class();
  v99[19] = objc_opt_class();
  v99[20] = objc_opt_class();
  v99[21] = objc_opt_class();
  v99[22] = objc_opt_class();
  v99[23] = objc_opt_class();
  v57[0] = [NSArray arrayWithObjects:v99 count:24];
  [(BuddyFundamentalFlow *)selfCopy _addItems:v57[0] toFlow:v85[0]];
  flowProvider5 = [(BuddyFundamentalFlow *)selfCopy flowProvider];
  v45 = [(BuddyFundamentalFlowProvider *)flowProvider5 willSetUpAsNew]^ 1;

  if (v45)
  {
    v98[0] = objc_opt_class();
    v98[1] = objc_opt_class();
    v98[2] = objc_opt_class();
    v98[3] = objc_opt_class();
    v98[4] = objc_opt_class();
    v98[5] = objc_opt_class();
    v98[6] = objc_opt_class();
    v98[7] = objc_opt_class();
    v98[8] = objc_opt_class();
    v98[9] = objc_opt_class();
    v98[10] = objc_opt_class();
    v98[11] = objc_opt_class();
    v46 = [NSArray arrayWithObjects:v98 count:12];
    v56 = [(NSArray *)v46 mutableCopy];

    if (v73)
    {
      [v56 removeObject:objc_opt_class()];
    }

    [(BuddyFundamentalFlow *)selfCopy _addItems:v56 toFlow:v85[0]];
    objc_storeStrong(&v56, 0);
  }

  else
  {
    v47 = selfCopy;
    v97[0] = objc_opt_class();
    v97[1] = objc_opt_class();
    v97[2] = objc_opt_class();
    v97[3] = objc_opt_class();
    v97[4] = objc_opt_class();
    v97[5] = objc_opt_class();
    v97[6] = objc_opt_class();
    v48 = [NSArray arrayWithObjects:v97 count:7];
    [(BuddyFundamentalFlow *)v47 _addItems:v48 toFlow:v85[0]];

    flowProvider6 = [(BuddyFundamentalFlow *)selfCopy flowProvider];
    flowItemDispositionProvider = [(BuddyFundamentalFlowProvider *)flowProvider6 flowItemDispositionProvider];
    v51 = [flowItemDispositionProvider dispositions] & 8;

    v52 = selfCopy;
    if (v51 == 8)
    {
      v96[0] = objc_opt_class();
      v96[1] = objc_opt_class();
      v53 = [NSArray arrayWithObjects:v96 count:2];
    }

    else
    {
      v95[0] = objc_opt_class();
      v95[1] = objc_opt_class();
      v95[2] = objc_opt_class();
      v95[3] = objc_opt_class();
      v95[4] = objc_opt_class();
      v95[5] = objc_opt_class();
      v53 = [NSArray arrayWithObjects:v95 count:6];
    }

    [(BuddyFundamentalFlow *)v52 _addItems:v53 toFlow:v85[0]];
  }

  v54 = v85[0];
  objc_storeStrong(v57, 0);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(&v74, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v84, 0);
  objc_storeStrong(v85, 0);
  return v54;
}

- (void)_addItems:(id)items toFlow:(id)flow
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, items);
  v17 = 0;
  objc_storeStrong(&v17, flow);
  for (i = 0; i < [location[0] count] - 1; ++i)
  {
    aClass = [location[0] objectAtIndexedSubscript:i];
    v14 = [location[0] objectAtIndexedSubscript:i + 1];
    v5 = v17;
    v6 = NSStringFromClass(aClass);
    v13 = [v5 objectForKeyedSubscript:v6];

    if (v13)
    {
      if (v13 != v14)
      {
        v7 = NSStringFromClass(v14);
        v8 = NSStringFromClass(aClass);
        v9 = NSStringFromClass(v13);
        v12 = [NSString stringWithFormat:@"Attempted to add a proceeding flow item (%@) for a flow item (%@) which already has a proceeding flow item (%@)", v7, v8, v9];

        objc_exception_throw([NSException exceptionWithName:@"Invalid Fundamental Flow Map" reason:v12 userInfo:0]);
      }
    }

    v10 = v17;
    v11 = NSStringFromClass(aClass);
    [v10 setObject:v14 forKeyedSubscript:v11];
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)prepareWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  flowProvider = [(BuddyFundamentalFlow *)selfCopy flowProvider];
  startupProvider = [(BuddyFundamentalFlowProvider *)flowProvider startupProvider];
  [startupProvider prepareWithCompletion:location[0]];

  objc_storeStrong(location, 0);
}

- (Class)initialFlowItemClass
{
  _initialFlowItemClass = [(BuddyFundamentalFlow *)self _initialFlowItemClass];
  v5 = 0;
  v2 = 0;
  if (_initialFlowItemClass)
  {
    willSupplyInitialFlowItemClass = [(BuddyFundamentalFlow *)self willSupplyInitialFlowItemClass];
    v5 = 1;
    v2 = willSupplyInitialFlowItemClass != 0;
  }

  if (v5)
  {
  }

  if (v2)
  {
    willSupplyInitialFlowItemClass2 = [(BuddyFundamentalFlow *)self willSupplyInitialFlowItemClass];
    willSupplyInitialFlowItemClass2[2](willSupplyInitialFlowItemClass2, _initialFlowItemClass);
  }

  return _initialFlowItemClass;
}

- (Class)_initialFlowItemClass
{
  flowProvider = [(BuddyFundamentalFlow *)self flowProvider];
  startupProvider = [(BuddyFundamentalFlowProvider *)flowProvider startupProvider];
  startupCause = [startupProvider startupCause];

  if (!startupCause)
  {
    flowProvider2 = [(BuddyFundamentalFlow *)self flowProvider];
    startupProvider2 = [(BuddyFundamentalFlowProvider *)flowProvider2 startupProvider];
    shouldBeginRestore = [startupProvider2 shouldBeginRestore];

    if ((shouldBeginRestore & 1) == 0)
    {
      flowProvider3 = [(BuddyFundamentalFlow *)self flowProvider];
      startupProvider3 = [(BuddyFundamentalFlowProvider *)flowProvider3 startupProvider];
      shouldBeginMigration = [startupProvider3 shouldBeginMigration];

      if ((shouldBeginMigration & 1) == 0)
      {
        flowProvider4 = [(BuddyFundamentalFlow *)self flowProvider];
        startupProvider4 = [(BuddyFundamentalFlowProvider *)flowProvider4 startupProvider];
        isLanguageSet = [startupProvider4 isLanguageSet];

        if (isLanguageSet)
        {
          v19 = [(BuddyFundamentalFlow *)self potentialNextFlowItemClassFollowingFlowItemClass:objc_opt_class()];
          goto LABEL_21;
        }

        featureFlags = [(BuddyFundamentalFlow *)self featureFlags];
        [(BuddyFeatureFlags *)featureFlags isLanguageAgnosticQuickStartEnabled];
      }
    }

    goto LABEL_20;
  }

  if ((startupCause - 1) < 2)
  {
LABEL_20:
    v19 = objc_opt_class();
    goto LABEL_21;
  }

  if (startupCause == 3)
  {
    flowProvider5 = [(BuddyFundamentalFlow *)self flowProvider];
    startupProvider5 = [(BuddyFundamentalFlowProvider *)flowProvider5 startupProvider];
    [startupProvider5 airplaneModeEnabled];

    goto LABEL_20;
  }

  if (startupCause == 4 || startupCause == 5 || startupCause == 6 || startupCause == 7 || startupCause == 9 || startupCause == 10)
  {
    goto LABEL_20;
  }

LABEL_21:

  return v19;
}

- (Class)debutFlowItemClass
{
  flowProvider = [(BuddyFundamentalFlow *)self flowProvider];
  startupProvider = [(BuddyFundamentalFlowProvider *)flowProvider startupProvider];
  startupCause = [startupProvider startupCause];

  if (!startupCause)
  {
    flowProvider2 = [(BuddyFundamentalFlow *)self flowProvider];
    startupProvider2 = [(BuddyFundamentalFlowProvider *)flowProvider2 startupProvider];
    shouldBeginMigration = [startupProvider2 shouldBeginMigration];

    if ((shouldBeginMigration & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_5:
    v10 = objc_opt_class();
    goto LABEL_9;
  }

  if (startupCause == 2)
  {
    goto LABEL_5;
  }

LABEL_8:
  v10 = 0;
LABEL_9:

  return v10;
}

- (void)configureFlowItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = location[0];
    flowProvider = [(BuddyFundamentalFlow *)selfCopy flowProvider];
    languageLocaleReceiver = [(BuddyFundamentalFlowProvider *)flowProvider languageLocaleReceiver];
    [v15 setReceiver:languageLocaleReceiver];

    flowProvider2 = [(BuddyFundamentalFlow *)selfCopy flowProvider];
    startupProvider = [(BuddyFundamentalFlowProvider *)flowProvider2 startupProvider];
    [v15 setLanguageSet:{objc_msgSend(startupProvider, "isLanguageSet") & 1}];

    flowProvider3 = [(BuddyFundamentalFlow *)selfCopy flowProvider];
    startupProvider2 = [(BuddyFundamentalFlowProvider *)flowProvider3 startupProvider];
    isLanguageSet = [startupProvider2 isLanguageSet];
    v13 = 0;
    v11 = 0;
    v10 = 0;
    if (isLanguageSet)
    {
      flowProvider4 = [(BuddyFundamentalFlow *)selfCopy flowProvider];
      v13 = 1;
      startupProvider3 = [(BuddyFundamentalFlowProvider *)flowProvider4 startupProvider];
      v11 = 1;
      v10 = [startupProvider3 startupCause] == 1;
    }

    [v15 setResumingFromLanguageReboot:v10];
    if (v11)
    {
    }

    if (v13)
    {
    }

    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(location, 0);
}

- (Class)potentialNextFlowItemClassFollowingFlowItemClass:(Class)class
{
  _flowMapByClass = [(BuddyFundamentalFlow *)self _flowMapByClass];
  v4 = NSStringFromClass(class);
  v5 = [_flowMapByClass objectForKey:v4];

  return v5;
}

+ (id)allowedFlowItems
{
  v5 = &unk_1003A7520;
  location = 0;
  objc_storeStrong(&location, &stru_10032F7A0);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_1003A7518;

  return v2;
}

- (BuddyFundamentalFlowProvider)flowProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_flowProvider);

  return WeakRetained;
}

@end