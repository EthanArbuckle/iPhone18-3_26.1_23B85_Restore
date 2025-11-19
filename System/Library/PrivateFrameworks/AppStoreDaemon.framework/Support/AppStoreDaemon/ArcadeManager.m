@interface ArcadeManager
- (ArcadeManager)init;
- (id)createMetricsEventsForEventType:(unsigned __int8)a3 context:(id)a4;
- (void)_handleNetworkStateDidChangeNotification:(id)a3;
- (void)_handleRepairBundleIDNotification:(id)a3;
- (void)decorateMetricsEvent:(id)a3 context:(id)a4;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation ArcadeManager

- (ArcadeManager)init
{
  v45.receiver = self;
  v45.super_class = ArcadeManager;
  v2 = [(AppUsageBaseManager *)&v45 init];
  if (v2)
  {
    v3 = sub_1001E5E74();
    v2->_appStoreCacheUpdatedNotificationToken = -1;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.appstored.ArcadeManager.background", v4);
    backgroundQueue = v2->_backgroundQueue;
    v2->_backgroundQueue = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.appstored.ArcadeManager.callout", v7);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.appstored.ArcadeManager.dispatch", v10);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.appstored.ArcadeManager.distNotification", v13);
    distNotificationQueue = v2->_distNotificationQueue;
    v2->_distNotificationQueue = v14;

    v16 = sub_1002AAE90(v2);
    hardwareFamily = v2->_hardwareFamily;
    v2->_hardwareFamily = v16;

    v18 = sub_1002AAF6C(v2);
    hardwareModel = v2->_hardwareModel;
    v2->_hardwareModel = v18;

    v20 = objc_alloc_init(UnfairLock);
    lock = v2->_lock;
    v2->_lock = v20;

    v22 = sub_1002AAFF0(v2);
    os = v2->_os;
    v2->_os = v22;

    v24 = +[AMSDevice buildVersion];
    osBuild = v2->_osBuild;
    v2->_osBuild = v24;

    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_create("com.apple.appstored.ArcadeManager.sbsync", v26);
    sbsyncQueue = v2->_sbsyncQueue;
    v2->_sbsyncQueue = v27;

    v29 = objc_alloc_init(TaskQueue);
    taskQueue = v2->_taskQueue;
    v2->_taskQueue = v29;

    v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v32 = dispatch_queue_create("com.apple.appstored.ArcadeManager.topApps", v31);
    topAppsQueue = v2->_topAppsQueue;
    v2->_topAppsQueue = v32;

    v34 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v35 = dispatch_queue_create("com.apple.appstored.ArcadeManager.upsell", v34);
    upsellQueue = v2->_upsellQueue;
    v2->_upsellQueue = v35;

    v37 = sub_1003BBF50();
    v38 = [v37 isHRNMode];

    if ((v38 & 1) == 0)
    {
      v39 = +[NSNotificationCenter defaultCenter];
      [v39 addObserver:v2 selector:"_handleRepairBundleIDNotification:" name:@"com.apple.appstored.ASDRepairBundleID" object:0];

      v40 = +[BagService appstoredService];
      v41 = v2->_dispatchQueue;
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_100355274;
      v43[3] = &unk_10051BCE0;
      v44 = v2;
      [v40 bagOnQueue:v41 completionHandler:v43];
    }
  }

  return v2;
}

- (id)createMetricsEventsForEventType:(unsigned __int8)a3 context:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = sub_1002AAAA4(self, v4, v6);
  if ([v8 count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v23 = v8;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      v24 = self;
      v25 = v7;
      do
      {
        v12 = 0;
        do
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v27 + 1) + 8 * v12);
          v14 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            if (v6)
            {
              v15 = v6[9];
            }

            else
            {
              v15 = 0;
            }

            v16 = v15;
            v17 = sub_1001FCF14(v13);
            v18 = sub_1001FC658(AppEvent, v4);
            *buf = 138412802;
            v32 = v16;
            v33 = 2114;
            v34 = v17;
            v35 = 2114;
            v36 = v18;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%@] [%{public}@] Adding event for app with type: %{public}@", buf, 0x20u);

            self = v24;
            v7 = v25;
          }

          v19 = sub_1002A989C(self, v13, v4, v6);
          [v7 addObject:v19];

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v20 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
        v10 = v20;
      }

      while (v20);
    }

    v8 = v23;
  }

  v21 = [v7 copy];

  return v21;
}

- (void)decorateMetricsEvent:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[BagService appstoredService];
  v9 = [v8 lastBag];

  v10 = +[NSUUID UUID];
  v11 = [v10 UUIDString];

  v131 = v6;
  v129 = v11;
  sub_1003D75DC(v6, v11);
  if (v7)
  {
    v12 = v7[4];
    if (v12 == 3 || v12 == 7)
    {
      [v6 setAnonymous:1];
      v13 = sub_1003D4D04();
    }

    else
    {
      if (v12 != 4)
      {
        goto LABEL_9;
      }

      v13 = sub_1003D4D7C();
    }

    v14 = v13;
    if (v13)
    {
      sub_1003D83D4(v6, v13);
    }
  }

LABEL_9:
  osBuild = self->_osBuild;
  if (osBuild)
  {
    sub_1003D84C4(v6, osBuild);
  }

  hardwareFamily = self->_hardwareFamily;
  if (hardwareFamily)
  {
    sub_1003D8014(v6, hardwareFamily);
  }

  hardwareModel = self->_hardwareModel;
  if (hardwareModel)
  {
    sub_1003D808C(v6, hardwareModel);
  }

  os = self->_os;
  if (os)
  {
    sub_1003D82E4(v6, os);
  }

  if (v7)
  {
    v19 = v7[16];
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  v130 = v9;
  if (!v20)
  {
    if (v7)
    {
      v21 = v7[9];
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    v23 = +[ACAccountStore ams_sharedAccountStore];
    v24 = [v23 ams_activeiTunesAccount];

    v25 = [v24 ams_DSID];
    v145 = 0;
    v26 = sub_1002A1944(SbsyncTask, v25, &v145);
    v27 = v145;

    if (v27)
    {
      v28 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v125 = [v24 ams_DSID];
        *buf = 138412546;
        v150 = v22;
        v151 = 2114;
        v152 = v125;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "[%@] Error looking up subscription bag status for account: %{public}@", buf, 0x16u);
      }
    }

    if (v26)
    {
      v29 = 0;
      v30 = 1;
    }

    else
    {
      v144 = 0;
      v30 = sub_1003581BC(self, 1, v22, 0, &v144, 0.0);
      v31 = v144;
      if (v31)
      {
        v32 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v126 = [v24 ams_DSID];
          *buf = 138412802;
          v150 = v22;
          v151 = 2114;
          v152 = v126;
          v153 = 2114;
          v154[0] = v31;
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "[%@] Error looking up fsEntitlement status for account: %{public}@ error: %{public}@", buf, 0x20u);
        }
      }

      v29 = v30;
    }

    v33 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v26;
      v35 = v7;
      v36 = v34;
      v37 = [v24 ams_DSID];
      *buf = 138413058;
      v150 = v22;
      v151 = 2114;
      v152 = v37;
      v153 = 1024;
      LODWORD(v154[0]) = v36;
      v7 = v35;
      WORD2(v154[0]) = 1024;
      *(v154 + 6) = v29;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[%@] Subscribed accountID: %{public}@ bag subscribed: %d fsEntitlement subscribed: %{BOOL}d", buf, 0x22u);
    }

    if (v30 && ([v24 ams_DSID], v38 = objc_claimAutoreleasedReturnValue(), v38, v38))
    {
      v39 = [v24 ams_DSID];
    }

    else
    {
      v39 = 0;
    }

    v9 = v130;

    v40 = ASDLogHandleForCategory();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
    if (v39)
    {
      if (v41)
      {
        if (v7)
        {
          v42 = v7[9];
        }

        else
        {
          v42 = 0;
        }

        v43 = v42;
        *buf = 138412546;
        v150 = v43;
        v151 = 2112;
        v152 = v39;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[%@] Setting cached subscribed accountID to: %@", buf, 0x16u);
      }

      v40 = +[ACAccountStore ams_sharedAccountStore];
      v45 = [v40 ams_iTunesAccountWithDSID:v39];
      if (v7)
      {
        objc_setProperty_nonatomic_copy(v7, v44, v45, 128);
      }
    }

    else
    {
      if (!v41)
      {
LABEL_54:

        goto LABEL_55;
      }

      if (v7)
      {
        v46 = v7[9];
      }

      else
      {
        v46 = 0;
      }

      v45 = v46;
      *buf = 138412290;
      v150 = v45;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[%@] Unable to determine the subscription status for the active account", buf, 0xCu);
    }

    goto LABEL_54;
  }

LABEL_55:
  if (v7)
  {
    v47 = v7[17];
  }

  else
  {
    v47 = 0;
  }

  v48 = v47;

  if (!v48)
  {
    v49 = +[_TtC9appstored29KatanaSubscriptionCoordinator shared];
    if (v7)
    {
      v50 = v7[16];
      v51 = v7[9];
    }

    else
    {
      v50 = 0;
      v51 = 0;
    }

    v52 = v51;
    v54 = [v49 subscriptionInfoDictionaryWithAccount:v50 onlyReturnForPreviouslySubscribedAccount:0 logKey:v52];
    if (v7)
    {
      objc_setProperty_nonatomic_copy(v7, v53, v54, 136);
    }
  }

  if (!v7)
  {
    goto LABEL_120;
  }

  v55 = v7[4];
  if (v55 == 3)
  {
    v72 = v7[12];
    v73 = [AMSMetrics serverTimeFromDate:v72];

    v127 = v73;
    sub_1003D7EB4(v131, v73);
    v74 = v7 + 3;
    v75 = v7[3];

    if (!v75)
    {
      v76 = sub_10035E7B8(self, v7, v130);
      objc_setProperty_nonatomic_copy(v7, v77, v76, 24);
    }

    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v78 = [v130 arrayOfStringsForKey:@"allowed-anonymous-arcade-keys"];
    v79 = v78;
    v128 = v7;
    if (v78)
    {
      v80 = v78;
    }

    else
    {
      objc_opt_self();
      v80 = &__NSArray0__struct;
    }

    v96 = [v80 countByEnumeratingWithState:&v136 objects:v147 count:16];
    if (v96)
    {
      v97 = v96;
      v98 = *v137;
      v99 = v7 + 17;
      do
      {
        for (i = 0; i != v97; i = i + 1)
        {
          if (*v137 != v98)
          {
            objc_enumerationMutation(v80);
          }

          v101 = *(*(&v136 + 1) + 8 * i);
          v102 = *v74;
          if (!v102 || (v103 = v102, v104 = *v74, [v104 objectForKeyedSubscript:v101], v105 = objc_claimAutoreleasedReturnValue(), v105, v104, v103, v106 = v74, !v105))
          {
            v107 = *v99;
            v108 = [v107 objectForKeyedSubscript:v101];

            v106 = v99;
            if (!v108)
            {
              continue;
            }
          }

          v109 = *v106;
          v110 = [v109 objectForKeyedSubscript:v101];
          [v131 setProperty:v110 forBodyKey:v101];
        }

        v97 = [v80 countByEnumeratingWithState:&v136 objects:v147 count:16];
      }

      while (v97);
    }

    goto LABEL_106;
  }

  if (v55 == 7)
  {
    v65 = v7 + 3;
    v66 = v7[3];

    if (!v66)
    {
      v67 = sub_10035E7B8(self, v7, v9);
      objc_setProperty_nonatomic_copy(v7, v68, v67, 24);
    }

    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v69 = [v9 arrayOfStringsForKey:@"allowed-anonymous-arcade-account-keys"];
    v70 = v69;
    v128 = v7;
    if (v69)
    {
      v71 = v69;
    }

    else
    {
      objc_opt_self();
      v71 = &off_1005495D8;
    }

    v81 = [v71 countByEnumeratingWithState:&v132 objects:v146 count:16];
    if (v81)
    {
      v82 = v81;
      v83 = *v133;
      v84 = v7 + 17;
      do
      {
        for (j = 0; j != v82; j = j + 1)
        {
          if (*v133 != v83)
          {
            objc_enumerationMutation(v71);
          }

          v86 = *(*(&v132 + 1) + 8 * j);
          v87 = *v65;
          if (!v87 || (v88 = v87, v89 = *v65, [v89 objectForKeyedSubscript:v86], v90 = objc_claimAutoreleasedReturnValue(), v90, v89, v88, v91 = v65, !v90))
          {
            v92 = *v84;
            v93 = [v92 objectForKeyedSubscript:v86];

            v91 = v84;
            if (!v93)
            {
              continue;
            }
          }

          v94 = *v91;
          v95 = [v94 objectForKeyedSubscript:v86];
          [v131 setProperty:v95 forBodyKey:v86];
        }

        v82 = [v71 countByEnumeratingWithState:&v132 objects:v146 count:16];
      }

      while (v82);
    }

    [v131 removePropertiesForKeys:&off_1005495C0];
LABEL_106:
    v7 = v128;
LABEL_119:
    v9 = v130;
    goto LABEL_120;
  }

  if (v55 == 4)
  {
    sub_1003D85B4(v131, v7[10]);
    [v131 removePropertiesForKeys:&off_1005495A8];
    v56 = v7 + 14;
    v57 = v7[14];

    if (!v57)
    {
      v58 = sub_10035E7B8(self, v7, v9);
      objc_setProperty_nonatomic_copy(v7, v59, v58, 112);
    }

    v60 = *v56;

    if (v60)
    {
      v61 = [v9 arrayOfStringsForKey:@"allowed-payout-arcade-keys"];
      v62 = v61;
      v63 = v7;
      if (v61)
      {
        v64 = v61;
      }

      else
      {
        objc_opt_self();
        v64 = &__NSArray0__struct;
      }

      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v111 = [v64 countByEnumeratingWithState:&v140 objects:v148 count:16];
      if (v111)
      {
        v112 = v111;
        v113 = *v141;
        do
        {
          for (k = 0; k != v112; k = k + 1)
          {
            if (*v141 != v113)
            {
              objc_enumerationMutation(v64);
            }

            v115 = *(*(&v140 + 1) + 8 * k);
            v116 = *v56;
            v117 = [v116 objectForKeyedSubscript:v115];

            v118 = v56;
            if (!v117)
            {
              v119 = v63[17];
              v120 = [v119 objectForKeyedSubscript:v115];

              v118 = v63 + 17;
              if (!v120)
              {
                continue;
              }
            }

            v121 = *v118;
            v122 = [v121 objectForKeyedSubscript:v115];
            [v131 setProperty:v122 forBodyKey:v115];
          }

          v112 = [v64 countByEnumeratingWithState:&v140 objects:v148 count:16];
        }

        while (v112);
      }

      v7 = v63;
      goto LABEL_119;
    }
  }

LABEL_120:
  if (os_variant_has_internal_content())
  {
    v123 = sub_1003D4C14();

    if (v123)
    {
      v124 = sub_1003D4C14();
      sub_1003D844C(v131, v124);
    }
  }
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Arcade] Remote handle did activate", v4, 2u);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Arcade] Remote handle did deactivate", v8, 2u);
  }

  if (self)
  {
    sharedSBSRemoteHandle = self->_sharedSBSRemoteHandle;
    if (sharedSBSRemoteHandle)
    {
      [(SBSRemoteAlertHandle *)sharedSBSRemoteHandle unregisterObserver:self];
      v6 = self;
      objc_sync_enter(v6);
      v7 = self->_sharedSBSRemoteHandle;
      self->_sharedSBSRemoteHandle = 0;

      objc_sync_exit(v6);
    }
  }

  dispatch_semaphore_signal(self->_alertSemaphore);
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v5 = a4;
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v10 = 138543362;
    v11 = v5;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[Arcade] Remote handle did invalidate with error: %{public}@", &v10, 0xCu);
  }

  if (self)
  {
    sharedSBSRemoteHandle = self->_sharedSBSRemoteHandle;
    if (sharedSBSRemoteHandle)
    {
      [(SBSRemoteAlertHandle *)sharedSBSRemoteHandle unregisterObserver:self];
      v8 = self;
      objc_sync_enter(v8);
      v9 = self->_sharedSBSRemoteHandle;
      self->_sharedSBSRemoteHandle = 0;

      objc_sync_exit(v8);
    }
  }

  dispatch_semaphore_signal(self->_alertSemaphore);
}

- (void)_handleNetworkStateDidChangeNotification:(id)a3
{
  v4 = sub_100227468();
  v5 = [v4 isConnected];

  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = sub_100227468();
    [v6 removeObserver:self name:@"NetworkStateDidChangeNotification" object:v7];

    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10035FCC0;
    block[3] = &unk_10051AF98;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)_handleRepairBundleIDNotification:(id)a3
{
  v4 = a3;
  distNotificationQueue = self->_distNotificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100360244;
  block[3] = &unk_10051AF98;
  v8 = v4;
  v6 = v4;
  dispatch_async(distNotificationQueue, block);
}

@end