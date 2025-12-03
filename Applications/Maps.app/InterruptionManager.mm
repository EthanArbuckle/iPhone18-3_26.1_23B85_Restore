@interface InterruptionManager
+ (id)localizedLocationAuthorizationMessage;
+ (id)localizedLocationAuthorizationTitle;
- (UIViewController)chromeViewController;
- (id)presentNavSafetyAlertWithUserInfo:(id)info completion:(id)completion;
- (id)presentUnhandledInterruptionOfKind:(int64_t)kind userInfo:(id)info completionHandler:(id)handler;
- (void)_locationAuthorizationDismissed:(id)dismissed;
- (void)displayAlertWithTitle:(id)title message:(id)message postAlertSearchType:(unsigned int)type;
- (void)reportCurrentLocationFailure;
- (void)setChromeViewController:(id)controller;
@end

@implementation InterruptionManager

+ (id)localizedLocationAuthorizationTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Allow '%@' to use your location?" value:@"localized string not found" table:0];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 objectForInfoDictionaryKey:@"CFBundleDisplayName"];
  v6 = [NSString stringWithFormat:v3, v5];

  return v6;
}

+ (id)localizedLocationAuthorizationMessage
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 objectForInfoDictionaryKey:@"NSLocationWhenInUseUsageDescription"];

  return v3;
}

- (UIViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)_locationAuthorizationDismissed:(id)dismissed
{
  if (self->_isShowingLocationServicesAuthorizationPrompt)
  {
    self->_isShowingLocationServicesAuthorizationPrompt = 0;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:@"LocationAuthorizationDismissedNotification" object:0];

    locationServicesAlertDismissalBlock = self->_locationServicesAlertDismissalBlock;
    if (locationServicesAlertDismissalBlock)
    {
      v6 = *(locationServicesAlertDismissalBlock + 2);

      v6();
    }
  }
}

- (void)reportCurrentLocationFailure
{
  if (!self->_isShowingCurrentLocationError && ![(InterruptionManager *)self isShowingLocationServicesAlert])
  {
    self->_isShowingCurrentLocationError = 1;
    v6 = +[NSBundle mainBundle];
    v3 = [v6 localizedStringForKey:@"Current Location Not Available" value:@"localized string not found" table:0];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Your current location cannot be determined at this time." value:@"localized string not found" table:0];
    [(InterruptionManager *)self displayAlertWithTitle:v3 message:v5 postAlertSearchType:0];
  }
}

- (void)displayAlertWithTitle:(id)title message:(id)message postAlertSearchType:(unsigned int)type
{
  titleCopy = title;
  messageCopy = message;
  if (!self->_displayingError)
  {
    self->_postAlertSearchType = type;
    self->_displayingError = 1;
    v10 = +[NSMutableDictionary dictionary];
    v11 = v10;
    if (titleCopy)
    {
      [v10 setObject:titleCopy forKeyedSubscript:@"kMapsInterruptionTitle"];
    }

    if (messageCopy)
    {
      [v11 setObject:messageCopy forKeyedSubscript:@"kMapsInterruptionMessage"];
    }

    v12 = +[UIApplication sharedMapsDelegate];
    v13 = v12;
    if (type == 1)
    {
      v14 = 2;
    }

    else
    {
      v14 = 3;
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100606E18;
    v15[3] = &unk_10165F3A0;
    v15[4] = self;
    [v12 interruptApplicationWithKind:v14 userInfo:v11 completionHandler:v15];
  }
}

- (id)presentUnhandledInterruptionOfKind:(int64_t)kind userInfo:(id)info completionHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  v8 = 0;
  if (kind <= 5)
  {
    if ((kind - 2) >= 2)
    {
      if (kind == 1)
      {
        v161[0] = _NSConcreteStackBlock;
        v161[1] = 3221225472;
        v161[2] = sub_1006080FC;
        v161[3] = &unk_101661760;
        v44 = handlerCopy;
        v162 = v44;
        [(InterruptionManager *)self presentNavSafetyAlertWithUserInfo:infoCopy completion:v161];
        v158[0] = _NSConcreteStackBlock;
        v158[1] = 3221225472;
        v158[2] = sub_100608110;
        v159 = v158[3] = &unk_101661090;
        v160 = v44;
        v45 = v159;
        v8 = [v158 copy];

        goto LABEL_25;
      }

      if (kind != 5)
      {
        goto LABEL_25;
      }

      if (!self->_isShowingLocationServicesAuthorizationPrompt)
      {
        v12 = +[MKLocationManager sharedLocationManager];
        isLocationServicesAuthorizationNeeded = [v12 isLocationServicesAuthorizationNeeded];

        if (isLocationServicesAuthorizationNeeded)
        {
          v14 = +[NSNotificationCenter defaultCenter];
          [v14 addObserver:self selector:"_locationAuthorizationDismissed:" name:@"LocationAuthorizationDismissedNotification" object:0];

          self->_isShowingLocationServicesAuthorizationPrompt = 1;
          v15 = +[MKLocationManager sharedLocationManager];
          [v15 requestWhenInUseAuthorization];

          objc_initWeak(location, self);
          v145[0] = _NSConcreteStackBlock;
          v145[1] = 3221225472;
          v145[2] = sub_1006083B8;
          v145[3] = &unk_101661B98;
          objc_copyWeak(&v146, location);
          v16 = objc_retainBlock(v145);
          v142[0] = _NSConcreteStackBlock;
          v142[1] = 3221225472;
          v142[2] = sub_100608404;
          v142[3] = &unk_1016603A8;
          v143 = handlerCopy;
          v17 = v16;
          v144 = v17;
          v18 = [v142 copy];
          locationServicesAlertDismissalBlock = self->_locationServicesAlertDismissalBlock;
          p_locationServicesAlertDismissalBlock = &self->_locationServicesAlertDismissalBlock;
          *p_locationServicesAlertDismissalBlock = v18;

          v8 = objc_retainBlock(*p_locationServicesAlertDismissalBlock);
          objc_destroyWeak(&v146);
          objc_destroyWeak(location);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }
  }

  else
  {
    if (kind > 0x17)
    {
LABEL_28:
      if (kind != 6)
      {
        goto LABEL_25;
      }

      if (![(InterruptionManager *)self isShowingLocationServicesAlert])
      {
        v67 = [infoCopy objectForKeyedSubscript:@"kMapsInterruptionError"];
        v68 = [infoCopy objectForKeyedSubscript:@"kMapsInterruptionTitle"];
        v69 = [infoCopy objectForKeyedSubscript:@"kMapsInterruptionMessage"];
        v70 = [UIAlertController alertControllerWithTitle:v68 message:v69 preferredStyle:1];
        locationServicesAlertView = self->_locationServicesAlertView;
        self->_locationServicesAlertView = v70;

        objc_initWeak(location, self);
        v140[0] = _NSConcreteStackBlock;
        v140[1] = 3221225472;
        v140[2] = sub_10060847C;
        v140[3] = &unk_101661B98;
        objc_copyWeak(&v141, location);
        v72 = objc_retainBlock(v140);
        v136[0] = _NSConcreteStackBlock;
        v136[1] = 3221225472;
        v136[2] = sub_1006084EC;
        v136[3] = &unk_101623D60;
        v106 = v67;
        v137 = v106;
        v73 = handlerCopy;
        v138 = v73;
        v74 = v72;
        v139 = v74;
        v108 = objc_retainBlock(v136);
        v133[0] = _NSConcreteStackBlock;
        v133[1] = 3221225472;
        v133[2] = sub_100608584;
        v133[3] = &unk_101623D88;
        v75 = v73;
        v134 = v75;
        v76 = v74;
        v135 = v76;
        v77 = objc_retainBlock(v133);
        v78 = self->_locationServicesAlertView;
        v79 = +[NSBundle mainBundle];
        v80 = [v79 localizedStringForKey:@"LocationServiceAlert_Settings" value:@"localized string not found" table:0];
        v81 = [UIAlertAction actionWithTitle:v80 style:0 handler:v108];
        [(UIAlertController *)v78 addAction:v81];

        v82 = self->_locationServicesAlertView;
        v83 = +[NSBundle mainBundle];
        v84 = [v83 localizedStringForKey:@"LocationServiceAlert_Don'tUse" value:@"localized string not found" table:0];
        v85 = [UIAlertAction actionWithTitle:v84 style:0 handler:v77];
        [(UIAlertController *)v82 addAction:v85];

        WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
        [WeakRetained _maps_topMostPresentViewController:self->_locationServicesAlertView animated:1 completion:0];

        v87 = self->_locationServicesAlertView;
        v129[0] = _NSConcreteStackBlock;
        v129[1] = 3221225472;
        v129[2] = sub_1006085D4;
        v129[3] = &unk_10164D370;
        v88 = v87;
        v130 = v88;
        v131 = v75;
        v89 = v76;
        v132 = v89;
        v90 = [v129 copy];
        v92 = self->_locationServicesAlertDismissalBlock;
        v91 = &self->_locationServicesAlertDismissalBlock;
        *v91 = v90;

        v8 = objc_retainBlock(*v91);
        objc_destroyWeak(&v141);
        objc_destroyWeak(location);

        goto LABEL_25;
      }

LABEL_30:
      v8 = 0;
      goto LABEL_25;
    }

    if (((1 << kind) & 0x831000) == 0)
    {
      if (kind == 7)
      {
        v46 = +[NSBundle mainBundle];
        v47 = [v46 localizedStringForKey:@"Route in Progress" value:@"localized string not found" table:0];
        v48 = +[NSBundle mainBundle];
        v49 = [v48 localizedStringForKey:@"Are you sure you want to end navigation?" value:@"localized string not found" table:0];
        v50 = [UIAlertController alertControllerWithTitle:v47 message:v49 preferredStyle:1];

        v51 = +[NSBundle mainBundle];
        v52 = [v51 localizedStringForKey:@"Cancel" value:@"localized string not found" table:0];
        v127[0] = _NSConcreteStackBlock;
        v127[1] = 3221225472;
        v127[2] = sub_100608634;
        v127[3] = &unk_101660728;
        v53 = handlerCopy;
        v128 = v53;
        v54 = [UIAlertAction actionWithTitle:v52 style:1 handler:v127];
        [v50 addAction:v54];

        v55 = +[NSBundle mainBundle];
        v56 = [v55 localizedStringForKey:@"End Navigation" value:@"localized string not found" table:0];
        v125[0] = _NSConcreteStackBlock;
        v125[1] = 3221225472;
        v125[2] = sub_100608678;
        v125[3] = &unk_101660728;
        v57 = v53;
        v126 = v57;
        v58 = [UIAlertAction actionWithTitle:v56 style:0 handler:v125];
        [v50 addAction:v58];

        v122[0] = _NSConcreteStackBlock;
        v122[1] = 3221225472;
        v122[2] = sub_10060868C;
        v122[3] = &unk_101661090;
        v59 = v50;
        v123 = v59;
        v124 = v57;
        v8 = [v122 copy];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1006086DC;
        block[3] = &unk_101661A90;
        block[4] = self;
        v121 = v59;
        v60 = v59;
        dispatch_async(&_dispatch_main_q, block);

        goto LABEL_25;
      }

      if (kind == 22)
      {
        v107 = [infoCopy objectForKeyedSubscript:@"kMapsInterruptionRouteNameKey"];
        v9 = +[NSBundle mainBundle];
        v105 = [v9 localizedStringForKey:@"[RouteCreation] Conversion failure title" value:@"localized string not found" table:0];

        v10 = +[NSBundle mainBundle];
        if (v107)
        {
          v11 = [v10 localizedStringForKey:@"[RouteCreation] Conversion failure named message" value:@"localized string not found" table:0];
          v107 = [NSString stringWithFormat:v11, v107];
        }

        else
        {
          v107 = [v10 localizedStringForKey:@"[RouteCreation] Conversion failure no name message" value:@"localized string not found" table:0];
        }

        v93 = [UIAlertController alertControllerWithTitle:v105 message:v107 preferredStyle:1];
        v94 = +[NSBundle mainBundle];
        v95 = [v94 localizedStringForKey:@"Cancel" value:@"localized string not found" table:0];
        v118[0] = _NSConcreteStackBlock;
        v118[1] = 3221225472;
        v118[2] = sub_100608738;
        v118[3] = &unk_101660728;
        v96 = handlerCopy;
        v119 = v96;
        v97 = [UIAlertAction actionWithTitle:v95 style:1 handler:v118];
        [v93 addAction:v97];

        v98 = [infoCopy objectForKeyedSubscript:@"kMapsInterruptionRouteStorageIDKey"];
        if (v98)
        {
          v99 = +[NSBundle mainBundle];
          v100 = [v99 localizedStringForKey:@"[RouteCreation] Delete Route" value:@"localized string not found" table:0];
          v116[0] = _NSConcreteStackBlock;
          v116[1] = 3221225472;
          v116[2] = sub_10060874C;
          v116[3] = &unk_101660728;
          v117 = v96;
          v101 = [UIAlertAction actionWithTitle:v100 style:2 handler:v116];
          [v93 addAction:v101];
        }

        v113[0] = _NSConcreteStackBlock;
        v113[1] = 3221225472;
        v113[2] = sub_100608760;
        v113[3] = &unk_101661090;
        v102 = v93;
        v114 = v102;
        v115 = v96;
        v8 = [v113 copy];
        v111[0] = _NSConcreteStackBlock;
        v111[1] = 3221225472;
        v111[2] = sub_1006087B0;
        v111[3] = &unk_101661A90;
        v111[4] = self;
        v112 = v102;
        v103 = v102;
        dispatch_async(&_dispatch_main_q, v111);

        goto LABEL_25;
      }

      goto LABEL_28;
    }
  }

  v21 = [infoCopy objectForKeyedSubscript:@"kMapsInterruptionTitle"];
  v22 = [infoCopy objectForKeyedSubscript:@"kMapsInterruptionMessage"];
  v23 = [UIAlertController alertControllerWithTitle:v21 message:v22 preferredStyle:1];

  v24 = [infoCopy objectForKeyedSubscript:@"kMapsInterruptionActions"];
  if (![v24 count])
  {
    v25 = +[NSBundle mainBundle];
    v26 = [v25 localizedStringForKey:@"OK" value:@"localized string not found" table:0];
    v27 = [MapsInterruptionAction actionWithTitle:v26 cancels:0 handler:0];
    v168 = v27;
    v28 = [NSArray arrayWithObjects:&v168 count:1];

    v24 = v28;
  }

  v29 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v29 userInterfaceIdiom];

  v31 = userInterfaceIdiom != 5;
  if (kind == 17)
  {
    v31 = 0;
  }

  v153[0] = _NSConcreteStackBlock;
  v153[1] = 3221225472;
  v153[2] = sub_100608160;
  v153[3] = &unk_101623D38;
  v156 = v31;
  v32 = handlerCopy;
  v155 = v32;
  v33 = v23;
  v154 = v33;
  v157 = userInterfaceIdiom == 5;
  [v24 enumerateObjectsUsingBlock:v153];
  if (kind == 17)
  {
    v34 = userInterfaceIdiom == 5;
    v35 = +[NSBundle mainBundle];
    v36 = [v35 localizedStringForKey:@"AddressCorrection_Permission_LearnMore" value:@"localized string not found" table:0];
    v150[0] = _NSConcreteStackBlock;
    v150[1] = 3221225472;
    v150[2] = sub_100608294;
    v150[3] = &unk_10165F668;
    v152 = v32;
    v151 = v24;
    v37 = [UIAlertAction actionWithTitle:v36 style:v34 handler:v150];
    [v33 addAction:v37];
  }

  v147[0] = _NSConcreteStackBlock;
  v147[1] = 3221225472;
  v147[2] = sub_1006082D8;
  v147[3] = &unk_101661090;
  v38 = v33;
  v148 = v38;
  v149 = v32;
  v8 = [v147 copy];
  if (((1 << kind) & 0x7EEFFC) != 0)
  {
    v39 = sub_100608364();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = objc_loadWeakRetained(&self->_chromeViewController);
      *location = 134349570;
      *&location[4] = self;
      v164 = 2048;
      kindCopy2 = kind;
      v166 = 2112;
      v167 = v40;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "[%{public}p] Presenting interruption alert of kind (%ld) on chrome VC: (%@)", location, 0x20u);
    }

    v41 = objc_loadWeakRetained(&self->_chromeViewController);
    [v41 _maps_topMostPresentViewController:v38 animated:1 completion:0];
  }

  else
  {
    v61 = sub_100608364();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      v62 = objc_loadWeakRetained(&self->_chromeViewController);
      *location = 134349570;
      *&location[4] = self;
      v164 = 2048;
      kindCopy2 = kind;
      v166 = 2112;
      v167 = v62;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "[%{public}p] Presenting internal interruption alert of kind (%ld) on chrome VC: (%@)", location, 0x20u);
    }

    v41 = +[MapsInternalAlertPresentationController sharedInstance];
    v63 = objc_loadWeakRetained(&self->_chromeViewController);
    view = [v63 view];
    window = [view window];
    windowScene = [window windowScene];
    [v41 presentAlertController:v38 fromWindowScene:windowScene];
  }

LABEL_25:
  v42 = objc_retainBlock(v8);

  return v42;
}

- (id)presentNavSafetyAlertWithUserInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  infoCopy = info;
  v8 = [infoCopy objectForKeyedSubscript:@"kMapsInterruptionTitle"];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = +[NSBundle mainBundle];
    v10 = [v11 localizedStringForKey:@"Maps Safety Warning Title" value:@"localized string not found" table:0];
  }

  v12 = [infoCopy objectForKeyedSubscript:@"kMapsInterruptionMessage"];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v14 = +[NSBundle mainBundle];
    v13 = [v14 localizedStringForKey:@"Maps Safety Warning Message" value:@"localized string not found" table:0];
  }

  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"OK" value:@"localized string not found" table:0];

  v17 = [UIAlertController alertControllerWithTitle:v10 message:v13 preferredStyle:1];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100608AEC;
  v22[3] = &unk_101660728;
  v23 = completionCopy;
  v18 = completionCopy;
  v19 = [UIAlertAction actionWithTitle:v16 style:0 handler:v22];
  [v17 addAction:v19];

  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  [WeakRetained _maps_topMostPresentViewController:v17 animated:1 completion:0];

  return v17;
}

- (void)setChromeViewController:(id)controller
{
  controllerCopy = controller;
  v5 = sub_100608364();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134349314;
    selfCopy = self;
    v8 = 2112;
    v9 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Setting new chrome VC: %@", &v6, 0x16u);
  }

  objc_storeWeak(&self->_chromeViewController, controllerCopy);
}

@end