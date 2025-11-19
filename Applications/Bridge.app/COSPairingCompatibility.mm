@interface COSPairingCompatibility
- (BOOL)_checkIfShouldUpdateInRevLockFlowForWatchPairingVersion:(unint64_t)a3 watchChipID:(id)a4;
- (BOOL)_isVersion:(unint64_t)a3 withinStart:(id)a4 andEnd:(id)a5 isWatch:(BOOL)a6;
- (BOOL)_productTypeIsTinkerEnabled:(id)a3;
- (BOOL)_productTypeIsYorktownEnabled:(id)a3;
- (id)_findZeroDayPlist;
- (void)_setCompatiblityCriteriaWithProductType:(id)a3 systemVersion:(unint64_t)a4 watchPairingVersion:(int64_t)a5 watchChipIDNumber:(id)a6 shouldForceSoftwareUpdateCheck:(BOOL)a7 zeroDayCriteria:(id)a8;
- (void)_setUpdateStateForPairingCode:(unint64_t)a3 watchChipID:(id)a4 watchRequestsFailSafe:(BOOL)a5 isWatchAhead:(BOOL)a6;
- (void)_setYorktownCompatibilityFlagsFromForProductType:(id)a3 watchPairingVersion:(int64_t)a4 yorktownPairing:(BOOL)a5;
- (void)_setupZeroDayForcedUpdateForProductType:(id)a3 systemVersion:(unint64_t)a4 zeroDayCriteria:(id)a5;
- (void)reset;
- (void)setCompatiblityCriteriaWithDevice:(id)a3;
- (void)setCompatiblityCriteriaWithDevice:(id)a3 zeroDayCriteria:(id)a4;
- (void)setCompatiblityCriteriaWithMetadata:(id)a3 scannedPairingVersion:(unint64_t)a4;
- (void)setCompatiblityCriteriaWithMetadata:(id)a3 scannedPairingVersion:(unint64_t)a4 zeroDayCriteria:(id)a5;
@end

@implementation COSPairingCompatibility

- (void)setCompatiblityCriteriaWithDevice:(id)a3
{
  v6 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = [(COSPairingCompatibility *)self _findZeroDayPlist];
    v5 = [NSArray arrayWithContentsOfFile:v4];
  }

  else
  {
    v5 = 0;
  }

  [(COSPairingCompatibility *)self setCompatiblityCriteriaWithDevice:v6 zeroDayCriteria:v5];
}

- (void)setCompatiblityCriteriaWithDevice:(id)a3 zeroDayCriteria:(id)a4
{
  v6 = NRDevicePropertyProductType;
  v7 = a4;
  v8 = a3;
  v15 = [v8 valueForProperty:v6];
  v9 = [v8 valueForProperty:NRDevicePropertySystemVersion];
  v10 = [v8 valueForProperty:NRDevicePropertyMaxPairingCompatibilityVersion];
  v11 = [v10 integerValue];
  v12 = [v8 valueForProperty:NRDevicePropertyChipID];

  v13 = [UIApp setupController];
  v14 = [v13 shouldForceSoftwareUpdateCheck];

  [(COSPairingCompatibility *)self _setCompatiblityCriteriaWithProductType:v15 systemVersion:NRWatchOSVersion() watchPairingVersion:v11 watchChipIDNumber:v12 shouldForceSoftwareUpdateCheck:v14 zeroDayCriteria:v7];
}

- (void)setCompatiblityCriteriaWithMetadata:(id)a3 scannedPairingVersion:(unint64_t)a4
{
  v8 = a3;
  if (_os_feature_enabled_impl())
  {
    v6 = [(COSPairingCompatibility *)self _findZeroDayPlist];
    v7 = [NSArray arrayWithContentsOfFile:v6];
  }

  else
  {
    v7 = 0;
  }

  [(COSPairingCompatibility *)self setCompatiblityCriteriaWithMetadata:v8 scannedPairingVersion:a4 zeroDayCriteria:v7];
}

- (void)setCompatiblityCriteriaWithMetadata:(id)a3 scannedPairingVersion:(unint64_t)a4 zeroDayCriteria:(id)a5
{
  v13 = a3;
  v8 = a5;
  v9 = [v13 productType];
  v10 = [v13 encodedSystemVersion];
  v11 = v13;
  if (v13)
  {
    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v13 chipID]);
    v11 = v13;
  }

  else
  {
    v12 = 0;
  }

  -[COSPairingCompatibility _setCompatiblityCriteriaWithProductType:systemVersion:watchPairingVersion:watchChipIDNumber:shouldForceSoftwareUpdateCheck:zeroDayCriteria:](self, "_setCompatiblityCriteriaWithProductType:systemVersion:watchPairingVersion:watchChipIDNumber:shouldForceSoftwareUpdateCheck:zeroDayCriteria:", v9, v10, a4, v12, [v11 postFailsafeObliteration], v8);
}

- (void)_setCompatiblityCriteriaWithProductType:(id)a3 systemVersion:(unint64_t)a4 watchPairingVersion:(int64_t)a5 watchChipIDNumber:(id)a6 shouldForceSoftwareUpdateCheck:(BOOL)a7 zeroDayCriteria:(id)a8
{
  v42 = a7;
  v12 = a3;
  v13 = a6;
  v14 = a8;
  v43 = +[UIApplication sharedApplication];
  v15 = [UIApp bridgeController];
  v16 = [v15 isTinkerPairing];

  v17 = +[NRPairingCompatibilityVersionInfo systemVersions];
  v18 = [v17 maxPairingCompatibilityVersion];

  v19 = _BPSIsPairingCompatible();
  v20 = (v18 < a5) & ~v19;
  [(COSPairingCompatibility *)self _setShouldBlockTinkerForProductType:v12 tinkerPairing:v16];
  v21 = [UIApp setupController];
  v22 = [v21 offerYorktownForCurrentPairing];

  [(COSPairingCompatibility *)self _setYorktownCompatibilityFlagsFromForProductType:v12 watchPairingVersion:a5 yorktownPairing:v22];
  v23 = _os_feature_enabled_impl();
  if (v14 && v23)
  {
    [(COSPairingCompatibility *)self _setupZeroDayForcedUpdateForProductType:v12 systemVersion:a4 zeroDayCriteria:v14];
  }

  [(COSPairingCompatibility *)self _setUpdateStateForPairingCode:a5 watchChipID:v13 watchRequestsFailSafe:v42 isWatchAhead:v20];
  self->_pairingShouldContinue = (self->_runUpdateInSetup | v19) & 1;
  v24 = _os_feature_enabled_impl();
  v25 = pbb_setupflow_log();
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
  if (v24)
  {
    if (!v26)
    {
      goto LABEL_10;
    }

    updateInRevLockFlow = self->_updateInRevLockFlow;
    blockTinkerPairing = self->_blockTinkerPairing;
    runUpdateInSetup = self->_runUpdateInSetup;
    requiresZeroDayUpdate = self->_requiresZeroDayUpdate;
    blockYorktownPairing = self->_blockYorktownPairing;
    yorktownForceSU = self->_yorktownForceSU;
    *buf = 67111168;
    v45 = v19;
    v46 = 1024;
    v47 = updateInRevLockFlow;
    v48 = 1024;
    v49 = v42;
    v50 = 1024;
    v51 = blockTinkerPairing;
    v52 = 1024;
    v53 = v20;
    v54 = 1024;
    v55 = runUpdateInSetup;
    v56 = 1024;
    v57 = requiresZeroDayUpdate;
    v58 = 1024;
    v59 = blockYorktownPairing;
    v60 = 1024;
    v61 = yorktownForceSU;
    v33 = "isPairingCompatible %{BOOL}d / shouldUpdateInRevLockFlow %{BOOL}d / metaDataDemandsUpdate %{BOOL}d / blockTinkerPairing %{BOOL}d / isWatchAhead %{BOOL}d / runUpdateInSetup %{BOOL}d / requiresZeroDayUpdate %{BOOL}d / blockYorktownPairing %{BOOL}d / yorktownForceSU %{BOOL}d";
    v34 = v25;
    v35 = 56;
  }

  else
  {
    if (!v26)
    {
      goto LABEL_10;
    }

    v36 = self->_updateInRevLockFlow;
    v37 = self->_blockTinkerPairing;
    v38 = self->_runUpdateInSetup;
    v39 = self->_blockYorktownPairing;
    v40 = self->_yorktownForceSU;
    *buf = 67110912;
    v45 = v19;
    v46 = 1024;
    v47 = v36;
    v48 = 1024;
    v49 = v42;
    v50 = 1024;
    v51 = v37;
    v52 = 1024;
    v53 = v20;
    v54 = 1024;
    v55 = v38;
    v56 = 1024;
    v57 = v39;
    v58 = 1024;
    v59 = v40;
    v33 = "isPairingCompatible %{BOOL}d / shouldUpdateInRevLockFlow %{BOOL}d / metaDataDemandsUpdate %{BOOL}d / blockTinkerPairing %{BOOL}d / isWatchAhead %{BOOL}d / runUpdateInSetup %{BOOL}d / blockYorktownPairing %{BOOL}d / yorktownForceSU %{BOOL}d";
    v34 = v25;
    v35 = 50;
  }

  _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v33, buf, v35);
LABEL_10:

  if (self->_runUpdateInSetup)
  {
    [v43 setIsUpdatingGizmoInSetupFlow:1];
  }
}

- (void)reset
{
  *&self->_blockTinkerPairing = 0;
  [UIApp setIsUpdatingGizmoInSetupFlow:0];
  v2 = [UIApp bridgeController];
  [v2 setShouldSuppressTransportReachabilityTimeout:0];
}

- (void)_setYorktownCompatibilityFlagsFromForProductType:(id)a3 watchPairingVersion:(int64_t)a4 yorktownPairing:(BOOL)a5
{
  self->_blockYorktownPairing = a5 & ~[(COSPairingCompatibility *)self _productTypeIsYorktownEnabled:a3];
  v8 = a4 < 21 && a5;
  self->_yorktownForceSU = v8;
}

- (void)_setUpdateStateForPairingCode:(unint64_t)a3 watchChipID:(id)a4 watchRequestsFailSafe:(BOOL)a5 isWatchAhead:(BOOL)a6
{
  v7 = a5;
  updateInRevLockFlow = [(COSPairingCompatibility *)self _checkIfShouldUpdateInRevLockFlowForWatchPairingVersion:a3 watchChipID:a4];
  self->_updateInRevLockFlow = updateInRevLockFlow;
  if (v7 && (updateInRevLockFlow & 1) == 0 && !a6)
  {
    v10 = [UIApp bridgeController];
    [v10 setShouldSuppressTransportReachabilityTimeout:1];

    self->_failSafeUpdateRequested = 1;
    updateInRevLockFlow = self->_updateInRevLockFlow;
  }

  v11 = ((updateInRevLockFlow & 1) != 0 || v7 || self->_requiresZeroDayUpdate || !self->_blockYorktownPairing && self->_yorktownForceSU) && !a6;
  self->_runUpdateInSetup = v11;
}

- (void)_setupZeroDayForcedUpdateForProductType:(id)a3 systemVersion:(unint64_t)a4 zeroDayCriteria:(id)a5
{
  v31 = a3;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = a5;
  v33 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v33)
  {
    v32 = *v37;
    while (2)
    {
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v36 + 1) + 8 * i);
        v8 = [v7 objectForKeyedSubscript:@"WatchOSVersions"];
        v9 = [v8 objectForKeyedSubscript:@"StartingWatchOSVersion"];

        v10 = [v7 objectForKeyedSubscript:@"WatchOSVersions"];
        v11 = [v10 objectForKeyedSubscript:@"EndingWatchOSVersion"];

        v12 = [v7 objectForKeyedSubscript:@"iOSVersions"];
        v13 = [v12 objectForKeyedSubscript:@"StartingiOSVersion"];

        v14 = [v7 objectForKeyedSubscript:@"iOSVersions"];
        v15 = [v14 objectForKeyedSubscript:@"EndingiOSVersion"];

        v16 = [v7 objectForKeyedSubscript:@"ProductTypes"];
        v17 = v11 == 0;
        v18 = v15 == 0;
        v19 = v16 == 0;
        v35 = v9;
        if (v9)
        {
          v17 = [(COSPairingCompatibility *)self _isVersion:a4 withinStart:v9 andEnd:v11 isWatch:1];
        }

        v20 = sub_10002EF1C();
        if (v13)
        {
          v18 = [(COSPairingCompatibility *)self _isVersion:NRRawVersionFromString() withinStart:v13 andEnd:v15 isWatch:0];
        }

        if ([v16 count])
        {
          v19 = [v16 containsObject:v31];
        }

        if ((v19 & v17 & v18) == 1)
        {
          v21 = pbb_setupflow_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v41 = v7;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Found matching criteria: %@.  Need to force update", buf, 0xCu);
          }

          self->_requiresZeroDayUpdate = 1;
          v22 = [v7 objectForKeyedSubscript:@"LearnMoreLink"];
          v23 = [NSURL URLWithString:v22];
          zeroDayUpdateLearnMoreLink = self->_zeroDayUpdateLearnMoreLink;
          self->_zeroDayUpdateLearnMoreLink = v23;

          v25 = [(NSURL *)self->_zeroDayUpdateLearnMoreLink scheme];
          if (!v25 || (v26 = v25, [(NSURL *)self->_zeroDayUpdateLearnMoreLink host], v27 = objc_claimAutoreleasedReturnValue(), v27, v26, !v27))
          {
            v28 = self->_zeroDayUpdateLearnMoreLink;
            self->_zeroDayUpdateLearnMoreLink = 0;
          }

          goto LABEL_22;
        }
      }

      v33 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v33)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:
}

- (BOOL)_isVersion:(unint64_t)a3 withinStart:(id)a4 andEnd:(id)a5 isWatch:(BOOL)a6
{
  v6 = a6;
  v9 = a4;
  v10 = a5;
  if (v6)
  {
    v11 = NRWatchOSVersion();
  }

  else
  {
    v11 = NRRawVersionFromString();
  }

  v12 = v11;
  if ((!v10 || [v10 isEqualToString:&stru_10026E598]) && v12 == a3)
  {
    v13 = 1;
  }

  else
  {
    if (v6)
    {
      v14 = NRWatchOSVersion();
      v15 = NRWatchOSVersion();
    }

    else
    {
      v14 = NRRawVersionFromString();
      v15 = NRRawVersionFromString();
    }

    v13 = v14 <= a3 && v15 >= a3;
  }

  return v13;
}

- (id)_findZeroDayPlist
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 firstObject];
  v14[0] = v3;
  v14[1] = PBAssetsCacheDirName;
  v14[2] = PBAZeroDayUpdateAssetName;
  v4 = [NSArray arrayWithObjects:v14 count:3];
  v5 = [NSString pathWithComponents:v4];

  v6 = pbb_setupflow_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "zeroDayPlistPath: %@", &v12, 0xCu);
  }

  if (PBIsInternalInstall())
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    v8 = [v7 stringForKey:@"AlternateZeroDayPlistPath"];

    if (v8)
    {
      v9 = v8;

      v10 = pbb_setupflow_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Using internal override for zeroday plist: %@", &v12, 0xCu);
      }

      v5 = v9;
    }
  }

  return v5;
}

- (BOOL)_productTypeIsTinkerEnabled:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"AllowUnsupportedTinkerHW-YourMileageMayVary"];

  if (qword_1002BD670 != -1)
  {
    sub_10018AC0C();
  }

  v6 = qword_1002BD668;
  v7 = [v3 lowercaseString];
  v8 = [v6 containsObject:v7];

  v9 = pbb_setupflow_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"No";
    v12 = 136315650;
    v13 = "[COSPairingCompatibility _productTypeIsTinkerEnabled:]";
    v14 = 2112;
    v15 = v3;
    if (v8)
    {
      v10 = @"Yes";
    }

    v16 = 2112;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: %@ (Supported: %@)", &v12, 0x20u);
  }

  return (v5 | v8) & 1;
}

- (BOOL)_productTypeIsYorktownEnabled:(id)a3
{
  v3 = qword_1002BD680;
  v4 = a3;
  if (v3 != -1)
  {
    sub_10018AC20();
  }

  v5 = qword_1002BD678;
  v6 = [v4 lowercaseString];

  v7 = [v5 containsObject:v6];
  return v7 ^ 1;
}

- (BOOL)_checkIfShouldUpdateInRevLockFlowForWatchPairingVersion:(unint64_t)a3 watchChipID:(id)a4
{
  if (_BPSIsPairingCompatible())
  {
    return 0;
  }

  v6 = +[NRPairingCompatibilityVersionInfo systemVersions];
  v7 = [v6 maxPairingCompatibilityVersion];

  return v7 > a3;
}

@end