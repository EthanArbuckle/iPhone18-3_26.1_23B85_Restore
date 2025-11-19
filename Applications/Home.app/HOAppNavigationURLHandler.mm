@interface HOAppNavigationURLHandler
- (HOAppNavigationURLHandler)init;
- (HOAppNavigationURLHandler)initWithNavigator:(id)a3;
- (HOAppNavigator)navigator;
- (id)_openURLComponents:(id)a3;
- (id)openApplicationURL:(id)a3;
- (id)openURL:(id)a3;
- (unint64_t)lockOnboardingTypeForString:(id)a3;
- (void)notificationCenter:(id)a3 presentCustomSettingsForNotificationWithObjectURL:(id)a4;
@end

@implementation HOAppNavigationURLHandler

- (HOAppNavigationURLHandler)initWithNavigator:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HOAppNavigationURLHandler;
  v5 = [(HOAppNavigationURLHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_navigator, v4);
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

- (id)openURL:(id)a3
{
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler received request to open URL: %@.", buf, 0xCu);
  }

  v6 = [v4 host];
  v7 = [v6 isEqualToString:@"accessorytype"];

  if (v7)
  {
    v8 = [v4 path];
    v9 = [v8 pathComponents];

    v10 = +[HFHomeKitDispatcher sharedDispatcher];
    v11 = [v10 homeManager];
    v12 = [v11 hf_homeForURL:v4];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v15 = +[HFHomeKitDispatcher sharedDispatcher];
      v14 = [v15 home];
    }

    if ([v9 count] >= 2)
    {
      v16 = [v9 objectAtIndexedSubscript:1];
      if ([v16 isEqualToString:@"climate"])
      {
        v17 = [(HOAppNavigationURLHandler *)self navigator];
        v18 = +[HFAccessoryTypeGroup climateAccessoryTypeGroup];
LABEL_18:
        v19 = v18;
        v20 = [v17 showAccessoryTypeGroup:v18 forHome:v14 animated:1];
LABEL_19:

        goto LABEL_31;
      }

      if ([v16 isEqualToString:@"lights"])
      {
        v17 = [(HOAppNavigationURLHandler *)self navigator];
        v18 = +[HFAccessoryTypeGroup lightAccessoryTypeGroup];
        goto LABEL_18;
      }

      if ([v16 isEqualToString:@"media"])
      {
        v17 = [(HOAppNavigationURLHandler *)self navigator];
        v18 = +[HFAccessoryTypeGroup mediaAccessoryTypeGroup];
        goto LABEL_18;
      }

      if ([v16 isEqualToString:@"security"])
      {
        v17 = [(HOAppNavigationURLHandler *)self navigator];
        v18 = +[HFAccessoryTypeGroup securityAccessoryTypeGroup];
        goto LABEL_18;
      }

      if ([v16 isEqualToString:@"water"])
      {
        v17 = [(HOAppNavigationURLHandler *)self navigator];
        v18 = +[HFAccessoryTypeGroup waterAccessoryTypeGroup];
        goto LABEL_18;
      }

      if ([v16 isEqualToString:@"energy"])
      {
        v17 = [NSURL hf_locationFromURL:v4];
        if (v17)
        {
          [v14 hf_setTemporaryEnergyLocation:v17];
        }

        v19 = [[HFURLComponents alloc] initWithURL:v4];
        v21 = [v19 valueForParameter:@"from"];
        [HUEnergyAnalytics saveViewAccessedFromURLEvent:54 deepLinkFrom:v21];
        v22 = [(HOAppNavigationURLHandler *)self navigator];
        v23 = +[HFAccessoryTypeGroup energyAccessoryTypeGroup];
        v20 = [v22 showAccessoryTypeGroup:v23 forHome:v14 animated:1];

        goto LABEL_19;
      }
    }
  }

  v9 = [[HFURLComponents alloc] initWithURL:v4];
  if ([v9 destination])
  {
    v20 = [(HOAppNavigationURLHandler *)self _openURLComponents:v9];
  }

  else
  {
    v24 = HFLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v4;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler failed to open unsupported URL: %@.", buf, 0xCu);
    }

    v28 = NSURLErrorFailingURLErrorKey;
    v29 = v4;
    v25 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v26 = [NSError errorWithDomain:NSURLErrorDomain code:-1002 userInfo:v25];
    v20 = [NAFuture futureWithError:v26];
  }

LABEL_31:

  return v20;
}

- (id)_openURLComponents:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NAFuture);
  v6 = [v4 destination];
  v7 = v6;
  if (v6 > 17)
  {
    if (v6 > 22)
    {
      switch(v6)
      {
        case 23:
          v49 = +[HFHomeKitDispatcher sharedDispatcher];
          v50 = [v49 homeManager];
          v51 = [NSUUID alloc];
          v52 = [v4 valueForParameter:HFURLComponentsHomeID];
          v53 = [v51 initWithUUIDString:v52];
          v54 = [v50 hf_homeWithIdentifier:v53];
          v55 = v54;
          if (v54)
          {
            v15 = v54;
          }

          else
          {
            v102 = +[HFHomeKitDispatcher sharedDispatcher];
            v15 = [v102 home];
          }

          v103 = [v4 valueForParameter:@"showEnablementSheet"];
          v104 = [v103 BOOLValue];

          v105 = HFLogForCategory();
          if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
          {
            v106 = [v4 URL];
            *location = 138412290;
            *&location[4] = v106;
            _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to open Recognize My Voice Enablement: %@.", location, 0xCu);
          }

          v98 = [(HOAppNavigationURLHandler *)self navigator];
          v33 = [v98 showRecognizeMyVoiceSettingsForHome:v15 showEnablementSheet:v104];

          goto LABEL_83;
        case 27:
          v70 = [NSUUID alloc];
          v71 = [v4 valueForParameter:HFURLComponentsHomeID];
          v15 = [v70 initWithUUIDString:v71];

          v72 = +[HFHomeKitDispatcher sharedDispatcher];
          v73 = [v72 homeManager];
          v74 = [v73 hf_homeWithIdentifier:v15];
          v75 = v74;
          if (v74)
          {
            v28 = v74;
          }

          else
          {
            v109 = +[HFHomeKitDispatcher sharedDispatcher];
            v28 = [v109 home];
          }

          v110 = [NSUUID alloc];
          v111 = [v4 valueForParameter:HFURLComponentsAccessoryID];
          v112 = [v110 initWithUUIDString:v111];

          v113 = [v28 hf_accessoryWithIdentifier:v112];
          v114 = HFLogForCategory();
          if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
          {
            *location = 138412546;
            *&location[4] = v113;
            v137 = 2112;
            v138 = v28;
            _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to open Drop In UI for accessory %@ in home %@.", location, 0x16u);
          }

          v115 = [(HOAppNavigationURLHandler *)self navigator];
          v33 = [v115 showDropInUI:v113 home:v28];

          goto LABEL_97;
        case 30:
          v15 = [v4 valueForParameter:HFURLComponentsUserDetails];
          v27 = +[HFHomeKitDispatcher sharedDispatcher];
          v28 = [v27 home];

          if ([v15 length])
          {
            objc_initWeak(location, self);
            v29 = +[HFHomeKitDispatcher sharedDispatcher];
            v30 = [v29 userFutureWithUniqueIdentifierStr:v15];
            v127[0] = _NSConcreteStackBlock;
            v127[1] = 3221225472;
            v127[2] = sub_10001BCF4;
            v127[3] = &unk_1000C2800;
            objc_copyWeak(&v129, location);
            v31 = v15;
            v128 = v31;
            v32 = [v30 flatMap:v127];
            v123[0] = _NSConcreteStackBlock;
            v123[1] = 3221225472;
            v123[2] = sub_10001BE1C;
            v123[3] = &unk_1000C2828;
            objc_copyWeak(&v126, location);
            v15 = v31;
            v124 = v15;
            v28 = v28;
            v125 = v28;
            v33 = [v32 recover:v123];

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
              v140 = v15;
              v141 = 2112;
              v142 = v28;
              _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "(%@:%s) Couldn't find userUniqueIdentifier %@. Showing current home setting %@.", location, 0x2Au);
            }

            v90 = [(HOAppNavigationURLHandler *)self navigator];
            v33 = [v90 showHomeSettingsForHome:v28];
          }

          goto LABEL_97;
      }

LABEL_44:
      v76 = [v4 valueForParameter:HFURLComponentsFromHUIS];
      v77 = [v76 BOOLValue];

      v79 = v7 == 29 || v7 == 20;
      v15 = +[NAFuture futureWithNoResult];
      if ((v77 & 1) == 0 && v7 != 20 && v7 != 29)
      {
        v80 = [NAFuture futureWithBlock:&stru_1000C2868];

        v15 = v80;
      }

      v118[0] = _NSConcreteStackBlock;
      v118[1] = 3221225472;
      v118[2] = sub_10001C00C;
      v118[3] = &unk_1000C2988;
      v122 = (v79 | v77) & 1;
      v120 = self;
      v121 = v7;
      v119 = v4;
      v33 = [v15 flatMap:v118];

      v5 = v119;
      goto LABEL_98;
    }

    if (v6 == 18)
    {
      v15 = [v4 valueForParameter:@"sender"];
      if (!v15)
      {
        v35 = [NSString stringWithFormat:@"%@://%@&sender=", HFHomePrivateURLScheme, @"installhomepodprofile"];
        v36 = [v4 URL];
        v37 = [v36 absoluteString];
        v38 = [v37 uppercaseString];
        v39 = [v35 uppercaseString];
        v40 = [v38 hasPrefix:v39];

        if (v40)
        {
          v41 = [v4 URL];
          v42 = [v41 absoluteString];
          v15 = [v42 substringFromIndex:{objc_msgSend(v35, "length")}];
        }

        else
        {
          v15 = 0;
        }
      }

      v116 = HFLogForCategory();
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        *location = 138412290;
        *&location[4] = v15;
        _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to install Homepod profile: %@.", location, 0xCu);
      }

      v28 = [(HOAppNavigationURLHandler *)self navigator];
      v33 = [v28 showHomePodProfileInstallationFlowWithSender:v15];

      goto LABEL_97;
    }

    if (v6 != 19)
    {
      if (v6 == 22)
      {
        v16 = +[HFHomeKitDispatcher sharedDispatcher];
        v17 = [v16 homeManager];
        v18 = [NSUUID alloc];
        v19 = [v4 valueForParameter:HFURLComponentsHomeID];
        v20 = [v18 initWithUUIDString:v19];
        v21 = [v17 hf_homeWithIdentifier:v20];
        v22 = v21;
        if (v21)
        {
          v15 = v21;
        }

        else
        {
          v93 = +[HFHomeKitDispatcher sharedDispatcher];
          v15 = [v93 home];
        }

        v94 = [v4 valueForParameter:@"showEnablementSheet"];
        v95 = [v94 BOOLValue];

        v96 = HFLogForCategory();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          v97 = [v4 URL];
          *location = 138412290;
          *&location[4] = v97;
          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to open Personal Requests Enablement: %@.", location, 0xCu);
        }

        v98 = [(HOAppNavigationURLHandler *)self navigator];
        v33 = [v98 showSiriPersonalRequestsSettingsForHome:v15 showEnablementSheet:v95];

LABEL_83:
        v5 = v98;
        goto LABEL_98;
      }

      goto LABEL_44;
    }

    v15 = [v4 valueForParameter:@"sender"];
    v28 = [v4 valueForParameter:HFURLComponentsHomeID];
    if (v28)
    {
      v63 = [[NSUUID alloc] initWithUUIDString:v28];
      if (v63)
      {
        v64 = +[HFHomeKitDispatcher sharedDispatcher];
        v65 = [v64 homeManager];
        v66 = [v65 homes];
        v134[0] = _NSConcreteStackBlock;
        v134[1] = 3221225472;
        v134[2] = sub_10001B758;
        v134[3] = &unk_1000C20C0;
        v63 = v63;
        v135 = v63;
        v67 = [v66 na_firstObjectPassingTest:v134];

LABEL_61:
        v86 = HFLogForCategory();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
        {
          v87 = [v67 name];
          *location = 138412546;
          *&location[4] = v87;
          v137 = 2112;
          v138 = v15;
          _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to show HomePod software updates for home: %@ , sender:%@", location, 0x16u);
        }

        v88 = [(HOAppNavigationURLHandler *)self navigator];
        v33 = [v88 showSoftwareUpdateForHome:v67];

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

  if (v6 > 13)
  {
    switch(v6)
    {
      case 14:
        v43 = [NSUUID alloc];
        v44 = [v4 valueForParameter:HFURLComponentsHome];
        v15 = [v43 initWithUUIDString:v44];

        v45 = +[HFHomeKitDispatcher sharedDispatcher];
        v46 = [v45 homeManager];
        v47 = [v46 hf_homeWithIdentifier:v15];
        v48 = v47;
        if (v47)
        {
          v28 = v47;
        }

        else
        {
          v99 = +[HFHomeKitDispatcher sharedDispatcher];
          v28 = [v99 home];
        }

        v100 = HFLogForCategory();
        if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
        {
          *location = 138412290;
          *&location[4] = v28;
          _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to show firmware updates for home: %@", location, 0xCu);
        }

        v101 = [(HOAppNavigationURLHandler *)self navigator];
        v33 = [v101 showSoftwareUpdateForHome:v28];

        goto LABEL_97;
      case 15:
        v68 = HFLogForCategory();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          v69 = [v4 URL];
          *location = 138412290;
          *&location[4] = v69;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to add accessory: %@.", location, 0xCu);
        }

        v15 = [(HOAppNavigationURLHandler *)self navigator];
        v28 = [v4 URL];
        v33 = [v15 addAccessoryWithURL:v28];

        goto LABEL_97;
      case 16:
        v23 = [v4 URL];
        v24 = [v23 path];
        if ([v24 length] < 2)
        {
          v15 = 0;
        }

        else
        {
          v25 = [v4 URL];
          v26 = [v25 path];
          v15 = [v26 substringFromIndex:1];
        }

        v81 = [[HMFMACAddress alloc] initWithMACAddressString:v15];
        v82 = [v81 formattedString];

        v83 = HFLogForCategory();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          *location = 138412290;
          *&location[4] = v82;
          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to reprovision device for deviceIdentifier %@.", location, 0xCu);
        }

        v84 = +[HFHomeKitDispatcher sharedDispatcher];
        v85 = [v84 allHomesFuture];
        v130[0] = _NSConcreteStackBlock;
        v130[1] = 3221225472;
        v130[2] = sub_10001B7A0;
        v130[3] = &unk_1000C27D8;
        v131 = v82;
        v132 = self;
        v133 = v4;
        v28 = v82;
        v33 = [v85 flatMap:v130];

        goto LABEL_97;
    }

    goto LABEL_44;
  }

  if (v6 != 11)
  {
    if (v6 == 12)
    {
      v56 = +[HFHomeKitDispatcher sharedDispatcher];
      v57 = [v56 homeManager];
      v58 = [NSUUID alloc];
      v59 = [v4 valueForParameter:HFURLComponentsHome];
      v60 = [v58 initWithUUIDString:v59];
      v61 = [v57 hf_homeWithIdentifier:v60];
      v62 = v61;
      if (v61)
      {
        v15 = v61;
      }

      else
      {
        v107 = +[HFHomeKitDispatcher sharedDispatcher];
        v15 = [v107 home];
      }

      v108 = HFLogForCategory();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        *location = 138412290;
        *&location[4] = v15;
        _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to open Face Recognition Settings for home %@.", location, 0xCu);
      }

      v28 = [(HOAppNavigationURLHandler *)self navigator];
      v33 = [v28 showFaceRecognitionSettingsForHome:v15];

      goto LABEL_97;
    }

    if (v6 == 13)
    {
      v8 = +[HFHomeKitDispatcher sharedDispatcher];
      v9 = [v8 homeManager];
      v10 = [NSUUID alloc];
      v11 = [v4 valueForParameter:HFURLComponentsHome];
      v12 = [v10 initWithUUIDString:v11];
      v13 = [v9 hf_homeWithIdentifier:v12];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v91 = +[HFHomeKitDispatcher sharedDispatcher];
        v15 = [v91 home];
      }

      v92 = HFLogForCategory();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        *location = 138412290;
        *&location[4] = v15;
        _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to open Network Settings for home %@.", location, 0xCu);
      }

      v28 = [(HOAppNavigationURLHandler *)self navigator];
      v33 = [v28 showNetworkSettingsForHome:v15];

LABEL_97:
      v5 = v28;
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

  v15 = [(HOAppNavigationURLHandler *)self navigator];
  v33 = [v15 showAboutResidentDeviceView];
LABEL_98:

  return v33;
}

- (id)openApplicationURL:(id)a3
{
  v4 = a3;
  v5 = [[HFURLComponents alloc] initWithURL:v4];
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
      v12 = v4;
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
        v16 = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler failed to open application URL: %@.", buf, 0xCu);
      }

      [v6 finishWithError:v7];
    }
  }

  return v6;
}

- (void)notificationCenter:(id)a3 presentCustomSettingsForNotificationWithObjectURL:(id)a4
{
  v5 = a4;
  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  v7 = [v6 homeFuture];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001DE04;
  v10[3] = &unk_1000C2A00;
  v11 = v5;
  v12 = self;
  v8 = v5;
  v9 = [v7 addSuccessBlock:v10];
}

- (unint64_t)lockOnboardingTypeForString:(id)a3
{
  v3 = a3;
  if ([v3 caseInsensitiveCompare:@"all"])
  {
    if ([v3 caseInsensitiveCompare:@"walletkey"])
    {
      if ([v3 caseInsensitiveCompare:@"pincode"])
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