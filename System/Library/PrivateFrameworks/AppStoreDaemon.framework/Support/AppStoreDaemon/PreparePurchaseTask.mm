@interface PreparePurchaseTask
- (void)mainWithCompletionHandler:(id)handler;
@end

@implementation PreparePurchaseTask

- (void)mainWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (+[_TtC9appstored13RestoreKeeper activeRestoreSupportEnabled])
  {
    v5 = +[_TtC9appstored13RestoreKeeper shared];
    bundleID = [*(&self->super._finished + 1) bundleID];
    logKey = [*(&self->super._finished + 1) logKey];
    bundleID13 = [v5 restoringCoordinatorForBundleID:bundleID logKey:logKey];

    if (bundleID13)
    {
      v9 = +[_TtC9appstored13RestoreKeeper shared];
      isUserInitiated = [*(&self->super._finished + 1) isUserInitiated];
      logKey2 = [*(&self->super._finished + 1) logKey];
      v161[0] = _NSConcreteStackBlock;
      v161[1] = 3221225472;
      v161[2] = sub_1003337AC;
      v161[3] = &unk_10051B2D0;
      v161[4] = self;
      v162 = handlerCopy;
      [v9 handleActiveRestoreWithCoordinator:bundleID13 userInitiated:isUserInitiated logKey:logKey2 completionHandler:v161];

      goto LABEL_157;
    }
  }

  if ([*(&self->super._finished + 1) isRemoteInstall])
  {
    goto LABEL_5;
  }

  v16 = *(&self->super._finished + 1);
  objc_opt_self();
  itemID = [v16 itemID];

  if (itemID)
  {
    itemID2 = [v16 itemID];
    v19 = [ApplicationProxy proxyForItemID:itemID2];

    if (v19)
    {
      goto LABEL_14;
    }
  }

  bundleID2 = [v16 bundleID];

  if (!bundleID2)
  {
    v19 = 0;
    goto LABEL_161;
  }

  bundleID3 = [v16 bundleID];
  v19 = [ApplicationProxy proxyForBundleID:bundleID3];

  if (!v19)
  {
LABEL_161:
    v22 = 0;
    v23 = 1;
    goto LABEL_19;
  }

LABEL_14:
  if ([v19[15] isPlaceholder])
  {
    v22 = [v16 isRecoveryForExpiredUrl] ^ 1;
  }

  else
  {
    v22 = 0;
  }

  if (![v19[15] isPlaceholder])
  {
    goto LABEL_23;
  }

  v23 = 0;
LABEL_19:
  if ([v16 isRecoveryForExpiredUrl])
  {
    v24 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      logKey3 = [v16 logKey];
      bundleID4 = [v16 bundleID];
      *buf = 138412546;
      v164 = logKey3;
      v165 = 2114;
      v166 = bundleID4;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%@][%{public}@] Allowing parallel placeholder because this is a recovery from expired asset url", buf, 0x16u);
    }

    if ((v23 & 1) == 0)
    {
LABEL_23:
      bundleID5 = [v16 bundleID];

      if (!bundleID5)
      {
        bundleIdentifier = [v19[15] bundleIdentifier];
        [v16 setBundleID:bundleIdentifier];
      }

      bundleURL = [v16 bundleURL];

      if (!bundleURL)
      {
        v30 = [v19[15] URL];
        [v16 setBundleURL:v30];
      }

      v31 = sub_1003D2E4C(v19);
      objc_opt_class();
      v156 = v31;
      if (objc_opt_isKindOfClass())
      {
        buyParams = [v16 buyParams];
        stringValue = [v156 stringValue];
        [buyParams setParameter:stringValue forKey:AMSBuyParamPropertyInstalledSoftwareRating];
      }

      v34 = sub_1003D2BDC(v19);
      if (v34)
      {
        v35 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          logKey4 = [v16 logKey];
          *buf = 138412290;
          v164 = logKey4;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%@] Preparing purchase for Arcade app.", buf, 0xCu);
        }
      }

      [v16 setCoordinatorIntent:2];
      v37 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        logKey5 = [v16 logKey];
        bundleID6 = [v16 bundleID];
        *buf = 138412546;
        v164 = logKey5;
        v165 = 2114;
        v166 = bundleID6;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%@][%{public}@] Installed app found. Setting coordinator intent to IXCoordinatorIntentUpdating", buf, 0x16u);
      }

      v40 = sub_1002BB3F0();
      [v16 setDiscoveredUpdate:{sub_1002BC4D0(v40, 3, v16)}];

      if ([v16 discoveredUpdate])
      {
        if ([v16 isDiscretionary])
        {
          [v16 setPurchaseType:1];
          v41 = &off_10051D278;
          if (v34)
          {
            v41 = &off_10051D1E0;
          }
        }

        else
        {
          [v16 setPurchaseType:4];
          if (v34)
          {
            [v16 setArcade:1];
            v41 = &off_10051D1E8;
          }

          else
          {
            v41 = &off_10051D288;
          }
        }

        [v16 setLogCode:*v41];
      }

      if ([v19[15] applicationHasMIDBasedSINF])
      {
        iTunesMetadata = [v19[15] iTunesMetadata];
        storeItemIdentifier = [iTunesMetadata storeItemIdentifier];

        if ([UpdatesManager isTVProviderApp:storeItemIdentifier])
        {
          [v16 setPurchaseType:2];
          [v16 setLogCode:@"PTV"];
          [v16 setMetricsType:&off_100548070];
          [v16 setMachineBased:1];
          [v16 setTVProvider:1];
          buyParams2 = [v16 buyParams];
          v54 = [buyParams2 parameterForKey:AMSBuyParamPropertyAppExtVrsId];

          buyParams3 = [v16 buyParams];
          v56 = AMSBuyParamPropertyExternalVersionId;
          v57 = [buyParams3 parameterForKey:AMSBuyParamPropertyExternalVersionId];

          if (!v57 && v54)
          {
            buyParams4 = [v16 buyParams];
            [buyParams4 setParameter:v54 forKey:v56];
          }

          [v16 updateGeneratedProperties];
        }
      }

      appStoreToolsBuildVersion = [v19[15] appStoreToolsBuildVersion];
      v60 = [v16 bag];
      v61 = [v60 arrayOfStringsForKey:@"invalid-build-tools/delta-incompatible-versions"];
      v62 = v61;
      v63 = &__NSArray0__struct;
      if (v61)
      {
        v63 = v61;
      }

      v64 = v63;

      v65 = [v64 containsObject:appStoreToolsBuildVersion];
      if ((v65 & 1) == 0)
      {
        iTunesMetadata2 = [v19[15] iTunesMetadata];
        versionIdentifier = [iTunesMetadata2 versionIdentifier];

        v68 = [NSNumber numberWithLongLong:versionIdentifier];
        [v16 setInstalledExternalVersionID:v68];

        v69 = sub_1003D30CC(v19);
        [v16 setInstalledVariantID:v69];
      }

      bundleID13 = v19;
      v70 = v16;
      objc_opt_self();
      if ([v19[15] applicationHasMIDBasedSINF])
      {
        v71 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          logKey6 = [v70 logKey];
          sub_1003D0F60(bundleID13);
          v74 = v73 = appStoreToolsBuildVersion;
          *buf = 138412546;
          v164 = logKey6;
          v165 = 2114;
          v166 = v74;
          _os_log_error_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "[%@] Will not update purchase for MID-based app with bundleID: %{public}@", buf, 0x16u);

          appStoreToolsBuildVersion = v73;
        }

        goto LABEL_111;
      }

      v71 = +[ActiveAccountObserver activeAccount];
      ams_DSID = [v71 ams_DSID];
      v76 = ams_DSID;
      if (!ams_DSID)
      {
LABEL_110:

LABEL_111:
        goto LABEL_112;
      }

      v154 = ams_DSID;
      v155 = sub_1003D2360(bundleID13);
      v153 = appStoreToolsBuildVersion;
      if (v155)
      {
        if ([v70 purchaseType] == 4 || objc_msgSend(v70, "purchaseType") == 1)
        {
          v78 = +[ActiveAccountObserver sharedInstance];
          [v70 logKey];
          v79 = v150 = v70;
          v80 = [v78 oneAccountDSIDWithLogKey:v79 refetchIfNeeded:1];
          unsignedLongLongValue = [v80 unsignedLongLongValue];

          appStoreToolsBuildVersion = v153;
          v70 = v150;

          unsignedLongLongValue2 = [v155 unsignedLongLongValue];
          if (unsignedLongLongValue2)
          {
            if (unsignedLongLongValue && unsignedLongLongValue2 == unsignedLongLongValue)
            {
              v83 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
              {
                logKey7 = [v150 logKey];
                ams_DSID2 = [v71 ams_DSID];
                longLongValue = [ams_DSID2 longLongValue];
                *buf = 138412802;
                v164 = logKey7;
                v165 = 2048;
                v166 = unsignedLongLongValue;
                v167 = 2048;
                v168 = longLongValue;
                _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "[%@] Migrating update from accountID: %lld to active accountID: %lld", buf, 0x20u);

                appStoreToolsBuildVersion = v153;
              }

              v70 = v150;
              [v150 setAccount:v71];
LABEL_108:
              v76 = v154;
              goto LABEL_109;
            }
          }
        }

        v76 = v154;
        if ([v154 isEqual:v155])
        {
          v87 = appStoreToolsBuildVersion;
          [v70 setAccount:v71];
          v88 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
          {
            logKey8 = [v70 logKey];
            *buf = 138412290;
            v164 = logKey8;
            _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "[%@] Using active account that matches the purchaser.", buf, 0xCu);
          }

          appStoreToolsBuildVersion = v87;
          goto LABEL_108;
        }

        v90 = sub_1003D2234(bundleID13);
        if (v90)
        {
          if ([v154 isEqual:v90])
          {
            v151 = v90;
            [v70 setAccount:v71];
            [v70 setOriginalPurchaserDSID:v155];
            buyParams5 = [v70 buyParams];
            [buyParams5 setParameter:v155 forKey:AMSBuyParamPropertyOwnerDsid];

            v92 = ASDLogHandleForCategory();
            v149 = v92;
            if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
            {
              logKey9 = [v70 logKey];
              *buf = 138412290;
              v164 = logKey9;
              _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "[%@] Using active account that matches the downloader.", buf, 0xCu);
            }

LABEL_97:

LABEL_109:
            goto LABEL_110;
          }
        }

        else
        {
          v151 = 0;
          v93 = sub_100405768();
          v94 = sub_100405CE0(v93, [v70 isDiscretionary]);

          v149 = v94;
          if ([v94 containsObject:v154]&& [v94 containsObject:v155])
          {
            [v70 setAccount:v71];
            [v70 setOriginalPurchaserDSID:v155];
            buyParams6 = [v70 buyParams];
            [buyParams6 setParameter:v155 forKey:AMSBuyParamPropertyOwnerDsid];

            v96 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
            {
              logKey10 = [v70 logKey];
              *buf = 138412290;
              v164 = logKey10;
              _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "[%@] Using active account that has a qualifying family account.", buf, 0xCu);
            }

            appStoreToolsBuildVersion = v153;
            goto LABEL_97;
          }

          v98 = +[ACAccountStore ams_sharedAccountStore];
          v99 = [v98 ams_iTunesAccountWithDSID:v155];

          if (v99)
          {
            v100 = v70;
            [v70 setAccount:v99];
            v101 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
            {
              logKey11 = [v100 logKey];
              *buf = 138412290;
              v164 = logKey11;
              _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "[%@] Using non-active account that matches the purchaser.", buf, 0xCu);
            }

            v70 = v100;
            appStoreToolsBuildVersion = v153;
            v76 = v154;
            goto LABEL_97;
          }

          v90 = 0;
        }
      }

      v103 = v70;
      v104 = sub_1003D2888(bundleID13, v77);
      if (v104 && (sub_100305A84(ACAccount, v104), (v105 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v106 = v105;
        v107 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
        {
          logKey12 = [v103 logKey];
          *buf = 138412290;
          v164 = logKey12;
          _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "[%@] Using unknown account that matches the store metadata.", buf, 0xCu);
        }

        [v103 setAccount:v106];
      }

      else
      {
        v106 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
        {
          logKey13 = [v103 logKey];
          *buf = 138412290;
          v164 = logKey13;
          _os_log_error_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "[%@] No matching account found.", buf, 0xCu);
        }
      }

      appStoreToolsBuildVersion = v153;
      v70 = v103;
      goto LABEL_108;
    }
  }

  else
  {
  }

  v42 = ASDLogHandleForCategory();
  v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (v43)
    {
      logKey14 = [v16 logKey];
      bundleID7 = [v16 bundleID];
      *buf = 138412546;
      v164 = logKey14;
      v165 = 2114;
      v166 = bundleID7;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[%@][%{public}@] Placeholder for app found. Setting coordinator intent to lib_IXCoordinatorIntentPromoting", buf, 0x16u);
    }

    [v16 setCoordinatorIntent:5];
  }

  else
  {
    if (v43)
    {
      logKey15 = [v16 logKey];
      bundleID8 = [v16 bundleID];
      *buf = 138412546;
      v164 = logKey15;
      v165 = 2114;
      v166 = bundleID8;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[%@][%{public}@] No installed app found. Defaulting coordinator intent to IXCoordinatorIntentInitiating", buf, 0x16u);
    }

    [v16 setCoordinatorIntent:1];
    if ([v16 isRecoveryForExpiredUrl])
    {
      v48 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        logKey16 = [v16 logKey];
        bundleID9 = [v16 bundleID];
        *buf = 138412546;
        v164 = logKey16;
        v165 = 2114;
        v166 = bundleID9;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[%@][%{public}@] Can't find fully installed app/placeholder during recovery from expired asset url", buf, 0x16u);
      }
    }
  }

  bundleID13 = 0;
LABEL_112:

  if ([*(&self->super._finished + 1) purchaseType] != 4 || objc_msgSend(*(&self->super._finished + 1), "coordinatorIntent") != 1)
  {
    if (bundleID13)
    {
      if (sub_10040C5B4(bundleID13[15]))
      {
        v13 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          logKey17 = [*(&self->super._finished + 1) logKey];
          *buf = 138412290;
          v164 = logKey17;
          v15 = "[%@] Cannot overwrite an app from a different distributor";
          goto LABEL_159;
        }

LABEL_120:

        sub_10033382C(self, bundleID13);
        Property = [*(&self->super._finished + 1) itemResponse];
        v112 = Property;
        if (Property)
        {
          Property = objc_getProperty(Property, v111, 56, 1);
        }

        v113 = Property;
        (*(handlerCopy + 2))(handlerCopy, v113);

        goto LABEL_157;
      }

LABEL_123:
      if (![*(&self->super._finished + 1) coordinatorImportance])
      {
        isDiscretionary = [*(&self->super._finished + 1) isDiscretionary];
        if (isDiscretionary)
        {
          v115 = 4;
        }

        else
        {
          v115 = 3;
        }

        if (isDiscretionary)
        {
          v116 = -2;
        }

        else
        {
          v116 = 1;
        }

        [*(&self->super._finished + 1) setCoordinatorImportance:v115];
        [*(&self->super._finished + 1) setPriority:v116];
      }

      bundleID10 = [*(&self->super._finished + 1) bundleID];

      if (bundleID10)
      {
        bundleID11 = [*(&self->super._finished + 1) bundleID];
        coordinatorIntent = [*(&self->super._finished + 1) coordinatorIntent];
        coordinatorImportance = [*(&self->super._finished + 1) coordinatorImportance];
        v160 = 0;
        v121 = sub_100247FE0(IXAppInstallCoordinator, bundleID11, coordinatorIntent, coordinatorImportance, 1, &v160);
        v122 = v160;
        [*(&self->super._finished + 1) setCoordinator:v121];

        coordinator = [*(&self->super._finished + 1) coordinator];

        if (!coordinator)
        {
          v124 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
          {
            logKey18 = [*(&self->super._finished + 1) logKey];
            *buf = 138412546;
            v164 = logKey18;
            v165 = 2114;
            v166 = v122;
            _os_log_error_impl(&_mh_execute_header, v124, OS_LOG_TYPE_ERROR, "[%@] Cannot create coordinator for purchase: %{public}@", buf, 0x16u);
          }

          v125 = ASDErrorWithSafeUserInfo();

          sub_100331F10(self, v125);
          (*(handlerCopy + 2))(handlerCopy, v125);

          goto LABEL_157;
        }
      }

      else
      {
        v122 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
        {
          logKey19 = [*(&self->super._finished + 1) logKey];
          *buf = 138412290;
          v164 = logKey19;
          _os_log_error_impl(&_mh_execute_header, v122, OS_LOG_TYPE_ERROR, "[%@] Cannot create coordinator for purchase without bundle identifier", buf, 0xCu);
        }
      }

      if (([*(&self->super._finished + 1) isRemoteInstall] & 1) == 0)
      {
        bundleID12 = [*(&self->super._finished + 1) bundleID];
        v127 = [ApplicationProxy proxyForBundleID:bundleID12];

        sub_1002DFF54(*(&self->super._finished + 1), v127);
      }

      account = [*(&self->super._finished + 1) account];
      if (!account)
      {
        if ([*(&self->super._finished + 1) isMachineBased])
        {
LABEL_144:
          if ([*(&self->super._finished + 1) requireUniversal])
          {
            v130 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
            {
              logKey20 = [*(&self->super._finished + 1) logKey];
              *buf = 138412290;
              v164 = logKey20;
              _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "[%@] Requesting universal variant, not adding thinning headers", buf, 0xCu);
            }
          }

          else
          {
            sub_1002DFE50(*(&self->super._finished + 1));
          }

          if (![*(&self->super._finished + 1) purchaseType])
          {
            v132 = [*(&self->super._finished + 1) bag];
            v133 = sub_1003A575C(InstallAttributionManager, v132);

            v134 = sub_1003A4EE0();
            itemID3 = [*(&self->super._finished + 1) itemID];
            if (v133)
            {
              v136 = sub_1003ABB80(v134, itemID3);

              buyParams7 = [*(&self->super._finished + 1) buyParams];
              [buyParams7 setParameter:v136 forKey:@"ad-network"];
            }

            else
            {
              v138 = [*(&self->super._finished + 1) bag];
              v136 = sub_1003A7C64(v134, itemID3, v138);

              v139 = objc_opt_new();
              v140 = [*(&self->super._finished + 1) bag];
              LOBYTE(v138) = [v140 BOOLForKey:@"skadnetwork-allow-stub-impressions" defaultValue:0];

              v157[0] = _NSConcreteStackBlock;
              v157[1] = 3221225472;
              v157[2] = sub_1003338E8;
              v157[3] = &unk_100523900;
              buyParams7 = v139;
              v158 = buyParams7;
              v159 = v138;
              [v136 enumerateObjectsUsingBlock:v157];
              buyParams8 = [*(&self->super._finished + 1) buyParams];
              [buyParams8 setParameter:buyParams7 forKey:@"ad-networks"];

              v142 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
              {
                logKey21 = [*(&self->super._finished + 1) logKey];
                *buf = 138412290;
                v164 = logKey21;
                _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, "[%@] Set params for install validation", buf, 0xCu);
              }
            }
          }

          (*(handlerCopy + 2))(handlerCopy, 0);
          goto LABEL_157;
        }

        account = +[ACAccountStore ams_sharedAccountStore];
        ams_activeiTunesAccount = [account ams_activeiTunesAccount];
        [*(&self->super._finished + 1) setAccount:ams_activeiTunesAccount];
      }

      goto LABEL_144;
    }

LABEL_5:
    bundleID13 = [*(&self->super._finished + 1) bundleID];

    if (bundleID13)
    {
      bundleID14 = [*(&self->super._finished + 1) bundleID];
      bundleID13 = [ApplicationProxy proxyForBundleID:bundleID14];

      if (bundleID13 && sub_10040C5B4(bundleID13[15]))
      {
        v13 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          logKey17 = [*(&self->super._finished + 1) logKey];
          *buf = 138412290;
          v164 = logKey17;
          v15 = "[%@] Cannot overwrite an app placeholder from a different distributor";
LABEL_159:
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);

          goto LABEL_120;
        }

        goto LABEL_120;
      }

      bundleID13 = 0;
    }

    goto LABEL_123;
  }

  v108 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
  {
    logKey22 = [*(&self->super._finished + 1) logKey];
    *buf = 138412290;
    v164 = logKey22;
    _os_log_error_impl(&_mh_execute_header, v108, OS_LOG_TYPE_ERROR, "[%@] Can not update an app that is uninstalled", buf, 0xCu);
  }

  v109 = ASDErrorWithDescription();
  sub_100331F10(self, v109);
  (*(handlerCopy + 2))(handlerCopy, v109);

LABEL_157:
}

@end