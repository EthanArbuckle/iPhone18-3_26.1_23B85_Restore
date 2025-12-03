@interface HOAppNavigationURLHandler
- (HOAppNavigationURLHandler)init;
- (HOAppNavigationURLHandler)initWithNavigator:(id)navigator;
- (HOAppNavigator)navigator;
- (id)_openURLComponents:(id)components;
- (id)openApplicationURL:(id)l;
- (id)openURL:(id)l;
- (unint64_t)lockOnboardingTypeForString:(id)string;
- (void)notificationCenter:(id)center presentCustomSettingsForNotificationWithObjectURL:(id)l;
@end

@implementation HOAppNavigationURLHandler

- (HOAppNavigationURLHandler)initWithNavigator:(id)navigator
{
  navigatorCopy = navigator;
  v8.receiver = self;
  v8.super_class = HOAppNavigationURLHandler;
  v5 = [(HOAppNavigationURLHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_navigator, navigatorCopy);
  }

  return v6;
}

- (HOAppNavigationURLHandler)init
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("initWithNavigator:");
  [v4 handleFailureInMethod:a2 object:self file:@"HOAppNavigationURLHandler.m" lineNumber:41 description:{@"%s is unavailable; use %@ instead", "-[HOAppNavigationURLHandler init]", v5}];

  return 0;
}

- (id)openURL:(id)l
{
  lCopy = l;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = lCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler received request to open URL: %@.", buf, 0xCu);
  }

  host = [lCopy host];
  v7 = [host isEqualToString:@"accessorytype"];

  if (v7)
  {
    path = [lCopy path];
    pathComponents = [path pathComponents];

    v10 = +[HFHomeKitDispatcher sharedDispatcher];
    homeManager = [v10 homeManager];
    v12 = [homeManager hf_homeForURL:lCopy];
    v13 = v12;
    if (v12)
    {
      home = v12;
    }

    else
    {
      v15 = +[HFHomeKitDispatcher sharedDispatcher];
      home = [v15 home];
    }

    if ([pathComponents count] >= 2)
    {
      v16 = [pathComponents objectAtIndexedSubscript:1];
      if ([v16 isEqualToString:@"climate"])
      {
        navigator = [(HOAppNavigationURLHandler *)self navigator];
        v18 = +[HFAccessoryTypeGroup climateAccessoryTypeGroup];
LABEL_18:
        v19 = v18;
        v20 = [navigator showAccessoryTypeGroup:v18 forHome:home animated:1];
LABEL_19:

        goto LABEL_31;
      }

      if ([v16 isEqualToString:@"lights"])
      {
        navigator = [(HOAppNavigationURLHandler *)self navigator];
        v18 = +[HFAccessoryTypeGroup lightAccessoryTypeGroup];
        goto LABEL_18;
      }

      if ([v16 isEqualToString:@"media"])
      {
        navigator = [(HOAppNavigationURLHandler *)self navigator];
        v18 = +[HFAccessoryTypeGroup mediaAccessoryTypeGroup];
        goto LABEL_18;
      }

      if ([v16 isEqualToString:@"security"])
      {
        navigator = [(HOAppNavigationURLHandler *)self navigator];
        v18 = +[HFAccessoryTypeGroup securityAccessoryTypeGroup];
        goto LABEL_18;
      }

      if ([v16 isEqualToString:@"water"])
      {
        navigator = [(HOAppNavigationURLHandler *)self navigator];
        v18 = +[HFAccessoryTypeGroup waterAccessoryTypeGroup];
        goto LABEL_18;
      }

      if ([v16 isEqualToString:@"energy"])
      {
        navigator = [NSURL hf_locationFromURL:lCopy];
        if (navigator)
        {
          [home hf_setTemporaryEnergyLocation:navigator];
        }

        v19 = [[HFURLComponents alloc] initWithURL:lCopy];
        v21 = [v19 valueForParameter:@"from"];
        [HUEnergyAnalytics saveViewAccessedFromURLEvent:54 deepLinkFrom:v21];
        navigator2 = [(HOAppNavigationURLHandler *)self navigator];
        v23 = +[HFAccessoryTypeGroup energyAccessoryTypeGroup];
        v20 = [navigator2 showAccessoryTypeGroup:v23 forHome:home animated:1];

        goto LABEL_19;
      }
    }
  }

  pathComponents = [[HFURLComponents alloc] initWithURL:lCopy];
  if ([pathComponents destination])
  {
    v20 = [(HOAppNavigationURLHandler *)self _openURLComponents:pathComponents];
  }

  else
  {
    v24 = HFLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = lCopy;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler failed to open unsupported URL: %@.", buf, 0xCu);
    }

    v28 = NSURLErrorFailingURLErrorKey;
    v29 = lCopy;
    v25 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v26 = [NSError errorWithDomain:NSURLErrorDomain code:-1002 userInfo:v25];
    v20 = [NAFuture futureWithError:v26];
  }

LABEL_31:

  return v20;
}

- (id)_openURLComponents:(id)components
{
  componentsCopy = components;
  v5 = objc_alloc_init(NAFuture);
  destination = [componentsCopy destination];
  v7 = destination;
  if (destination > 17)
  {
    if (destination > 22)
    {
      switch(destination)
      {
        case 23:
          v49 = +[HFHomeKitDispatcher sharedDispatcher];
          homeManager = [v49 homeManager];
          v51 = [NSUUID alloc];
          v52 = [componentsCopy valueForParameter:HFURLComponentsHomeID];
          v53 = [v51 initWithUUIDString:v52];
          v54 = [homeManager hf_homeWithIdentifier:v53];
          v55 = v54;
          if (v54)
          {
            home = v54;
          }

          else
          {
            v102 = +[HFHomeKitDispatcher sharedDispatcher];
            home = [v102 home];
          }

          v103 = [componentsCopy valueForParameter:@"showEnablementSheet"];
          bOOLValue = [v103 BOOLValue];

          v105 = HFLogForCategory();
          if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
          {
            v106 = [componentsCopy URL];
            *location = 138412290;
            *&location[4] = v106;
            _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to open Recognize My Voice Enablement: %@.", location, 0xCu);
          }

          navigator = [(HOAppNavigationURLHandler *)self navigator];
          showAboutResidentDeviceView = [navigator showRecognizeMyVoiceSettingsForHome:home showEnablementSheet:bOOLValue];

          goto LABEL_83;
        case 27:
          v70 = [NSUUID alloc];
          v71 = [componentsCopy valueForParameter:HFURLComponentsHomeID];
          home = [v70 initWithUUIDString:v71];

          v72 = +[HFHomeKitDispatcher sharedDispatcher];
          homeManager2 = [v72 homeManager];
          v74 = [homeManager2 hf_homeWithIdentifier:home];
          v75 = v74;
          if (v74)
          {
            home2 = v74;
          }

          else
          {
            v109 = +[HFHomeKitDispatcher sharedDispatcher];
            home2 = [v109 home];
          }

          v110 = [NSUUID alloc];
          v111 = [componentsCopy valueForParameter:HFURLComponentsAccessoryID];
          v112 = [v110 initWithUUIDString:v111];

          v113 = [home2 hf_accessoryWithIdentifier:v112];
          v114 = HFLogForCategory();
          if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
          {
            *location = 138412546;
            *&location[4] = v113;
            v137 = 2112;
            v138 = home2;
            _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to open Drop In UI for accessory %@ in home %@.", location, 0x16u);
          }

          navigator2 = [(HOAppNavigationURLHandler *)self navigator];
          showAboutResidentDeviceView = [navigator2 showDropInUI:v113 home:home2];

          goto LABEL_97;
        case 30:
          home = [componentsCopy valueForParameter:HFURLComponentsUserDetails];
          v27 = +[HFHomeKitDispatcher sharedDispatcher];
          home2 = [v27 home];

          if ([home length])
          {
            objc_initWeak(location, self);
            v29 = +[HFHomeKitDispatcher sharedDispatcher];
            v30 = [v29 userFutureWithUniqueIdentifierStr:home];
            v127[0] = _NSConcreteStackBlock;
            v127[1] = 3221225472;
            v127[2] = sub_10001BCF4;
            v127[3] = &unk_1000C2800;
            objc_copyWeak(&v129, location);
            v31 = home;
            v128 = v31;
            v32 = [v30 flatMap:v127];
            v123[0] = _NSConcreteStackBlock;
            v123[1] = 3221225472;
            v123[2] = sub_10001BE1C;
            v123[3] = &unk_1000C2828;
            objc_copyWeak(&v126, location);
            home = v31;
            v124 = home;
            home2 = home2;
            v125 = home2;
            showAboutResidentDeviceView = [v32 recover:v123];

            objc_destroyWeak(&v126);
            objc_destroyWeak(&v129);
            objc_destroyWeak(location);
          }

          else
          {
            v89 = HFLogForCategory();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
            {
              *location = 138413058;
              *&location[4] = self;
              v137 = 2080;
              v138 = "[HOAppNavigationURLHandler _openURLComponents:]";
              v139 = 2112;
              v140 = home;
              v141 = 2112;
              v142 = home2;
              _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "(%@:%s) Couldn't find userUniqueIdentifier %@. Showing current home setting %@.", location, 0x2Au);
            }

            navigator3 = [(HOAppNavigationURLHandler *)self navigator];
            showAboutResidentDeviceView = [navigator3 showHomeSettingsForHome:home2];
          }

          goto LABEL_97;
      }

LABEL_44:
      v76 = [componentsCopy valueForParameter:HFURLComponentsFromHUIS];
      bOOLValue2 = [v76 BOOLValue];

      v79 = v7 == 29 || v7 == 20;
      home = +[NAFuture futureWithNoResult];
      if ((bOOLValue2 & 1) == 0 && v7 != 20 && v7 != 29)
      {
        v80 = [NAFuture futureWithBlock:&stru_1000C2868];

        home = v80;
      }

      v118[0] = _NSConcreteStackBlock;
      v118[1] = 3221225472;
      v118[2] = sub_10001C00C;
      v118[3] = &unk_1000C2988;
      v122 = (v79 | bOOLValue2) & 1;
      selfCopy = self;
      v121 = v7;
      v119 = componentsCopy;
      showAboutResidentDeviceView = [home flatMap:v118];

      v5 = v119;
      goto LABEL_98;
    }

    if (destination == 18)
    {
      home = [componentsCopy valueForParameter:@"sender"];
      if (!home)
      {
        v35 = [NSString stringWithFormat:@"%@://%@&sender=", HFHomePrivateURLScheme, @"installhomepodprofile"];
        v36 = [componentsCopy URL];
        absoluteString = [v36 absoluteString];
        uppercaseString = [absoluteString uppercaseString];
        uppercaseString2 = [v35 uppercaseString];
        v40 = [uppercaseString hasPrefix:uppercaseString2];

        if (v40)
        {
          v41 = [componentsCopy URL];
          absoluteString2 = [v41 absoluteString];
          home = [absoluteString2 substringFromIndex:{objc_msgSend(v35, "length")}];
        }

        else
        {
          home = 0;
        }
      }

      v116 = HFLogForCategory();
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        *location = 138412290;
        *&location[4] = home;
        _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to install Homepod profile: %@.", location, 0xCu);
      }

      home2 = [(HOAppNavigationURLHandler *)self navigator];
      showAboutResidentDeviceView = [home2 showHomePodProfileInstallationFlowWithSender:home];

      goto LABEL_97;
    }

    if (destination != 19)
    {
      if (destination == 22)
      {
        v16 = +[HFHomeKitDispatcher sharedDispatcher];
        homeManager3 = [v16 homeManager];
        v18 = [NSUUID alloc];
        v19 = [componentsCopy valueForParameter:HFURLComponentsHomeID];
        v20 = [v18 initWithUUIDString:v19];
        v21 = [homeManager3 hf_homeWithIdentifier:v20];
        v22 = v21;
        if (v21)
        {
          home = v21;
        }

        else
        {
          v93 = +[HFHomeKitDispatcher sharedDispatcher];
          home = [v93 home];
        }

        v94 = [componentsCopy valueForParameter:@"showEnablementSheet"];
        bOOLValue3 = [v94 BOOLValue];

        v96 = HFLogForCategory();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          v97 = [componentsCopy URL];
          *location = 138412290;
          *&location[4] = v97;
          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to open Personal Requests Enablement: %@.", location, 0xCu);
        }

        navigator = [(HOAppNavigationURLHandler *)self navigator];
        showAboutResidentDeviceView = [navigator showSiriPersonalRequestsSettingsForHome:home showEnablementSheet:bOOLValue3];

LABEL_83:
        v5 = navigator;
        goto LABEL_98;
      }

      goto LABEL_44;
    }

    home = [componentsCopy valueForParameter:@"sender"];
    home2 = [componentsCopy valueForParameter:HFURLComponentsHomeID];
    if (home2)
    {
      v63 = [[NSUUID alloc] initWithUUIDString:home2];
      if (v63)
      {
        v64 = +[HFHomeKitDispatcher sharedDispatcher];
        homeManager4 = [v64 homeManager];
        homes = [homeManager4 homes];
        v134[0] = _NSConcreteStackBlock;
        v134[1] = 3221225472;
        v134[2] = sub_10001B758;
        v134[3] = &unk_1000C20C0;
        v63 = v63;
        v135 = v63;
        v67 = [homes na_firstObjectPassingTest:v134];

LABEL_61:
        v86 = HFLogForCategory();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
        {
          name = [v67 name];
          *location = 138412546;
          *&location[4] = name;
          v137 = 2112;
          v138 = home;
          _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to show HomePod software updates for home: %@ , sender:%@", location, 0x16u);
        }

        navigator4 = [(HOAppNavigationURLHandler *)self navigator];
        showAboutResidentDeviceView = [navigator4 showSoftwareUpdateForHome:v67];

        goto LABEL_97;
      }
    }

    else
    {
      v63 = 0;
    }

    v67 = 0;
    goto LABEL_61;
  }

  if (destination > 13)
  {
    switch(destination)
    {
      case 14:
        v43 = [NSUUID alloc];
        v44 = [componentsCopy valueForParameter:HFURLComponentsHome];
        home = [v43 initWithUUIDString:v44];

        v45 = +[HFHomeKitDispatcher sharedDispatcher];
        homeManager5 = [v45 homeManager];
        v47 = [homeManager5 hf_homeWithIdentifier:home];
        v48 = v47;
        if (v47)
        {
          home2 = v47;
        }

        else
        {
          v99 = +[HFHomeKitDispatcher sharedDispatcher];
          home2 = [v99 home];
        }

        v100 = HFLogForCategory();
        if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
        {
          *location = 138412290;
          *&location[4] = home2;
          _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to show firmware updates for home: %@", location, 0xCu);
        }

        navigator5 = [(HOAppNavigationURLHandler *)self navigator];
        showAboutResidentDeviceView = [navigator5 showSoftwareUpdateForHome:home2];

        goto LABEL_97;
      case 15:
        v68 = HFLogForCategory();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          v69 = [componentsCopy URL];
          *location = 138412290;
          *&location[4] = v69;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to add accessory: %@.", location, 0xCu);
        }

        home = [(HOAppNavigationURLHandler *)self navigator];
        home2 = [componentsCopy URL];
        showAboutResidentDeviceView = [home addAccessoryWithURL:home2];

        goto LABEL_97;
      case 16:
        v23 = [componentsCopy URL];
        path = [v23 path];
        if ([path length] < 2)
        {
          home = 0;
        }

        else
        {
          v25 = [componentsCopy URL];
          path2 = [v25 path];
          home = [path2 substringFromIndex:1];
        }

        v81 = [[HMFMACAddress alloc] initWithMACAddressString:home];
        formattedString = [v81 formattedString];

        v83 = HFLogForCategory();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          *location = 138412290;
          *&location[4] = formattedString;
          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to reprovision device for deviceIdentifier %@.", location, 0xCu);
        }

        v84 = +[HFHomeKitDispatcher sharedDispatcher];
        allHomesFuture = [v84 allHomesFuture];
        v130[0] = _NSConcreteStackBlock;
        v130[1] = 3221225472;
        v130[2] = sub_10001B7A0;
        v130[3] = &unk_1000C27D8;
        v131 = formattedString;
        selfCopy2 = self;
        v133 = componentsCopy;
        home2 = formattedString;
        showAboutResidentDeviceView = [allHomesFuture flatMap:v130];

        goto LABEL_97;
    }

    goto LABEL_44;
  }

  if (destination != 11)
  {
    if (destination == 12)
    {
      v56 = +[HFHomeKitDispatcher sharedDispatcher];
      homeManager6 = [v56 homeManager];
      v58 = [NSUUID alloc];
      v59 = [componentsCopy valueForParameter:HFURLComponentsHome];
      v60 = [v58 initWithUUIDString:v59];
      v61 = [homeManager6 hf_homeWithIdentifier:v60];
      v62 = v61;
      if (v61)
      {
        home = v61;
      }

      else
      {
        v107 = +[HFHomeKitDispatcher sharedDispatcher];
        home = [v107 home];
      }

      v108 = HFLogForCategory();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        *location = 138412290;
        *&location[4] = home;
        _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to open Face Recognition Settings for home %@.", location, 0xCu);
      }

      home2 = [(HOAppNavigationURLHandler *)self navigator];
      showAboutResidentDeviceView = [home2 showFaceRecognitionSettingsForHome:home];

      goto LABEL_97;
    }

    if (destination == 13)
    {
      v8 = +[HFHomeKitDispatcher sharedDispatcher];
      homeManager7 = [v8 homeManager];
      v10 = [NSUUID alloc];
      v11 = [componentsCopy valueForParameter:HFURLComponentsHome];
      v12 = [v10 initWithUUIDString:v11];
      v13 = [homeManager7 hf_homeWithIdentifier:v12];
      v14 = v13;
      if (v13)
      {
        home = v13;
      }

      else
      {
        v91 = +[HFHomeKitDispatcher sharedDispatcher];
        home = [v91 home];
      }

      v92 = HFLogForCategory();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        *location = 138412290;
        *&location[4] = home;
        _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to open Network Settings for home %@.", location, 0xCu);
      }

      home2 = [(HOAppNavigationURLHandler *)self navigator];
      showAboutResidentDeviceView = [home2 showNetworkSettingsForHome:home];

LABEL_97:
      v5 = home2;
      goto LABEL_98;
    }

    goto LABEL_44;
  }

  v34 = HFLogForCategory();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *location = 0;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to open Resident Device View.", location, 2u);
  }

  home = [(HOAppNavigationURLHandler *)self navigator];
  showAboutResidentDeviceView = [home showAboutResidentDeviceView];
LABEL_98:

  return showAboutResidentDeviceView;
}

- (id)openApplicationURL:(id)l
{
  lCopy = l;
  v5 = [[HFURLComponents alloc] initWithURL:lCopy];
  if ([v5 destination])
  {
    v6 = [(HOAppNavigationURLHandler *)self _openURLComponents:v5];
  }

  else
  {
    v7 = [NSError errorWithDomain:NSURLErrorDomain code:-1002 userInfo:&__NSDictionary0__struct];
    v6 = objc_alloc_init(NAFuture);
    if ((+[HFUtilities isAMac]& 1) != 0)
    {
      v8 = +[UIApplication sharedApplication];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10001DC38;
      v11[3] = &unk_1000C29B0;
      v12 = lCopy;
      v13 = v6;
      v14 = v7;
      [v8 openURL:v12 withCompletionHandler:v11];
    }

    else
    {
      v9 = HFLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = lCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler failed to open application URL: %@.", buf, 0xCu);
      }

      [v6 finishWithError:v7];
    }
  }

  return v6;
}

- (void)notificationCenter:(id)center presentCustomSettingsForNotificationWithObjectURL:(id)l
{
  lCopy = l;
  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  homeFuture = [v6 homeFuture];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001DE04;
  v10[3] = &unk_1000C2A00;
  v11 = lCopy;
  selfCopy = self;
  v8 = lCopy;
  v9 = [homeFuture addSuccessBlock:v10];
}

- (unint64_t)lockOnboardingTypeForString:(id)string
{
  stringCopy = string;
  if ([stringCopy caseInsensitiveCompare:@"all"])
  {
    if ([stringCopy caseInsensitiveCompare:@"walletkey"])
    {
      if ([stringCopy caseInsensitiveCompare:@"pincode"])
      {
        v4 = 0;
      }

      else
      {
        v4 = 3;
      }
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (HOAppNavigator)navigator
{
  WeakRetained = objc_loadWeakRetained(&self->_navigator);

  return WeakRetained;
}

@end