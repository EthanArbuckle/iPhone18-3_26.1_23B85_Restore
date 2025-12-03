@interface COSPairingCompatibility
- (BOOL)_checkIfShouldUpdateInRevLockFlowForWatchPairingVersion:(unint64_t)version watchChipID:(id)d;
- (BOOL)_isVersion:(unint64_t)version withinStart:(id)start andEnd:(id)end isWatch:(BOOL)watch;
- (BOOL)_productTypeIsTinkerEnabled:(id)enabled;
- (BOOL)_productTypeIsYorktownEnabled:(id)enabled;
- (id)_findZeroDayPlist;
- (void)_setCompatiblityCriteriaWithProductType:(id)type systemVersion:(unint64_t)version watchPairingVersion:(int64_t)pairingVersion watchChipIDNumber:(id)number shouldForceSoftwareUpdateCheck:(BOOL)check zeroDayCriteria:(id)criteria;
- (void)_setUpdateStateForPairingCode:(unint64_t)code watchChipID:(id)d watchRequestsFailSafe:(BOOL)safe isWatchAhead:(BOOL)ahead;
- (void)_setYorktownCompatibilityFlagsFromForProductType:(id)type watchPairingVersion:(int64_t)version yorktownPairing:(BOOL)pairing;
- (void)_setupZeroDayForcedUpdateForProductType:(id)type systemVersion:(unint64_t)version zeroDayCriteria:(id)criteria;
- (void)reset;
- (void)setCompatiblityCriteriaWithDevice:(id)device;
- (void)setCompatiblityCriteriaWithDevice:(id)device zeroDayCriteria:(id)criteria;
- (void)setCompatiblityCriteriaWithMetadata:(id)metadata scannedPairingVersion:(unint64_t)version;
- (void)setCompatiblityCriteriaWithMetadata:(id)metadata scannedPairingVersion:(unint64_t)version zeroDayCriteria:(id)criteria;
@end

@implementation COSPairingCompatibility

- (void)setCompatiblityCriteriaWithDevice:(id)device
{
  deviceCopy = device;
  if (_os_feature_enabled_impl())
  {
    _findZeroDayPlist = [(COSPairingCompatibility *)self _findZeroDayPlist];
    v5 = [NSArray arrayWithContentsOfFile:_findZeroDayPlist];
  }

  else
  {
    v5 = 0;
  }

  [(COSPairingCompatibility *)self setCompatiblityCriteriaWithDevice:deviceCopy zeroDayCriteria:v5];
}

- (void)setCompatiblityCriteriaWithDevice:(id)device zeroDayCriteria:(id)criteria
{
  v6 = NRDevicePropertyProductType;
  criteriaCopy = criteria;
  deviceCopy = device;
  v15 = [deviceCopy valueForProperty:v6];
  v9 = [deviceCopy valueForProperty:NRDevicePropertySystemVersion];
  v10 = [deviceCopy valueForProperty:NRDevicePropertyMaxPairingCompatibilityVersion];
  integerValue = [v10 integerValue];
  v12 = [deviceCopy valueForProperty:NRDevicePropertyChipID];

  setupController = [UIApp setupController];
  shouldForceSoftwareUpdateCheck = [setupController shouldForceSoftwareUpdateCheck];

  [(COSPairingCompatibility *)self _setCompatiblityCriteriaWithProductType:v15 systemVersion:NRWatchOSVersion() watchPairingVersion:integerValue watchChipIDNumber:v12 shouldForceSoftwareUpdateCheck:shouldForceSoftwareUpdateCheck zeroDayCriteria:criteriaCopy];
}

- (void)setCompatiblityCriteriaWithMetadata:(id)metadata scannedPairingVersion:(unint64_t)version
{
  metadataCopy = metadata;
  if (_os_feature_enabled_impl())
  {
    _findZeroDayPlist = [(COSPairingCompatibility *)self _findZeroDayPlist];
    v7 = [NSArray arrayWithContentsOfFile:_findZeroDayPlist];
  }

  else
  {
    v7 = 0;
  }

  [(COSPairingCompatibility *)self setCompatiblityCriteriaWithMetadata:metadataCopy scannedPairingVersion:version zeroDayCriteria:v7];
}

- (void)setCompatiblityCriteriaWithMetadata:(id)metadata scannedPairingVersion:(unint64_t)version zeroDayCriteria:(id)criteria
{
  metadataCopy = metadata;
  criteriaCopy = criteria;
  productType = [metadataCopy productType];
  encodedSystemVersion = [metadataCopy encodedSystemVersion];
  v11 = metadataCopy;
  if (metadataCopy)
  {
    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [metadataCopy chipID]);
    v11 = metadataCopy;
  }

  else
  {
    v12 = 0;
  }

  -[COSPairingCompatibility _setCompatiblityCriteriaWithProductType:systemVersion:watchPairingVersion:watchChipIDNumber:shouldForceSoftwareUpdateCheck:zeroDayCriteria:](self, "_setCompatiblityCriteriaWithProductType:systemVersion:watchPairingVersion:watchChipIDNumber:shouldForceSoftwareUpdateCheck:zeroDayCriteria:", productType, encodedSystemVersion, version, v12, [v11 postFailsafeObliteration], criteriaCopy);
}

- (void)_setCompatiblityCriteriaWithProductType:(id)type systemVersion:(unint64_t)version watchPairingVersion:(int64_t)pairingVersion watchChipIDNumber:(id)number shouldForceSoftwareUpdateCheck:(BOOL)check zeroDayCriteria:(id)criteria
{
  checkCopy = check;
  typeCopy = type;
  numberCopy = number;
  criteriaCopy = criteria;
  v43 = +[UIApplication sharedApplication];
  bridgeController = [UIApp bridgeController];
  isTinkerPairing = [bridgeController isTinkerPairing];

  v17 = +[NRPairingCompatibilityVersionInfo systemVersions];
  maxPairingCompatibilityVersion = [v17 maxPairingCompatibilityVersion];

  v19 = _BPSIsPairingCompatible();
  v20 = (maxPairingCompatibilityVersion < pairingVersion) & ~v19;
  [(COSPairingCompatibility *)self _setShouldBlockTinkerForProductType:typeCopy tinkerPairing:isTinkerPairing];
  setupController = [UIApp setupController];
  offerYorktownForCurrentPairing = [setupController offerYorktownForCurrentPairing];

  [(COSPairingCompatibility *)self _setYorktownCompatibilityFlagsFromForProductType:typeCopy watchPairingVersion:pairingVersion yorktownPairing:offerYorktownForCurrentPairing];
  v23 = _os_feature_enabled_impl();
  if (criteriaCopy && v23)
  {
    [(COSPairingCompatibility *)self _setupZeroDayForcedUpdateForProductType:typeCopy systemVersion:version zeroDayCriteria:criteriaCopy];
  }

  [(COSPairingCompatibility *)self _setUpdateStateForPairingCode:pairingVersion watchChipID:numberCopy watchRequestsFailSafe:checkCopy isWatchAhead:v20];
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
    v49 = checkCopy;
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
    v49 = checkCopy;
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
  bridgeController = [UIApp bridgeController];
  [bridgeController setShouldSuppressTransportReachabilityTimeout:0];
}

- (void)_setYorktownCompatibilityFlagsFromForProductType:(id)type watchPairingVersion:(int64_t)version yorktownPairing:(BOOL)pairing
{
  self->_blockYorktownPairing = pairing & ~[(COSPairingCompatibility *)self _productTypeIsYorktownEnabled:type];
  v8 = version < 21 && pairing;
  self->_yorktownForceSU = v8;
}

- (void)_setUpdateStateForPairingCode:(unint64_t)code watchChipID:(id)d watchRequestsFailSafe:(BOOL)safe isWatchAhead:(BOOL)ahead
{
  safeCopy = safe;
  updateInRevLockFlow = [(COSPairingCompatibility *)self _checkIfShouldUpdateInRevLockFlowForWatchPairingVersion:code watchChipID:d];
  self->_updateInRevLockFlow = updateInRevLockFlow;
  if (safeCopy && (updateInRevLockFlow & 1) == 0 && !ahead)
  {
    bridgeController = [UIApp bridgeController];
    [bridgeController setShouldSuppressTransportReachabilityTimeout:1];

    self->_failSafeUpdateRequested = 1;
    updateInRevLockFlow = self->_updateInRevLockFlow;
  }

  v11 = ((updateInRevLockFlow & 1) != 0 || safeCopy || self->_requiresZeroDayUpdate || !self->_blockYorktownPairing && self->_yorktownForceSU) && !ahead;
  self->_runUpdateInSetup = v11;
}

- (void)_setupZeroDayForcedUpdateForProductType:(id)type systemVersion:(unint64_t)version zeroDayCriteria:(id)criteria
{
  typeCopy = type;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = criteria;
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
          v17 = [(COSPairingCompatibility *)self _isVersion:version withinStart:v9 andEnd:v11 isWatch:1];
        }

        v20 = sub_10002EF1C();
        if (v13)
        {
          v18 = [(COSPairingCompatibility *)self _isVersion:NRRawVersionFromString() withinStart:v13 andEnd:v15 isWatch:0];
        }

        if ([v16 count])
        {
          v19 = [v16 containsObject:typeCopy];
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

          scheme = [(NSURL *)self->_zeroDayUpdateLearnMoreLink scheme];
          if (!scheme || (v26 = scheme, [(NSURL *)self->_zeroDayUpdateLearnMoreLink host], v27 = objc_claimAutoreleasedReturnValue(), v27, v26, !v27))
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

- (BOOL)_isVersion:(unint64_t)version withinStart:(id)start andEnd:(id)end isWatch:(BOOL)watch
{
  watchCopy = watch;
  startCopy = start;
  endCopy = end;
  if (watchCopy)
  {
    v11 = NRWatchOSVersion();
  }

  else
  {
    v11 = NRRawVersionFromString();
  }

  v12 = v11;
  if ((!endCopy || [endCopy isEqualToString:&stru_10026E598]) && v12 == version)
  {
    v13 = 1;
  }

  else
  {
    if (watchCopy)
    {
      v14 = NRWatchOSVersion();
      v15 = NRWatchOSVersion();
    }

    else
    {
      v14 = NRRawVersionFromString();
      v15 = NRRawVersionFromString();
    }

    v13 = v14 <= version && v15 >= version;
  }

  return v13;
}

- (id)_findZeroDayPlist
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  firstObject = [v2 firstObject];
  v14[0] = firstObject;
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

- (BOOL)_productTypeIsTinkerEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"AllowUnsupportedTinkerHW-YourMileageMayVary"];

  if (qword_1002BD670 != -1)
  {
    sub_10018AC0C();
  }

  v6 = qword_1002BD668;
  lowercaseString = [enabledCopy lowercaseString];
  v8 = [v6 containsObject:lowercaseString];

  v9 = pbb_setupflow_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"No";
    v12 = 136315650;
    v13 = "[COSPairingCompatibility _productTypeIsTinkerEnabled:]";
    v14 = 2112;
    v15 = enabledCopy;
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

- (BOOL)_productTypeIsYorktownEnabled:(id)enabled
{
  v3 = qword_1002BD680;
  enabledCopy = enabled;
  if (v3 != -1)
  {
    sub_10018AC20();
  }

  v5 = qword_1002BD678;
  lowercaseString = [enabledCopy lowercaseString];

  v7 = [v5 containsObject:lowercaseString];
  return v7 ^ 1;
}

- (BOOL)_checkIfShouldUpdateInRevLockFlowForWatchPairingVersion:(unint64_t)version watchChipID:(id)d
{
  if (_BPSIsPairingCompatible())
  {
    return 0;
  }

  v6 = +[NRPairingCompatibilityVersionInfo systemVersions];
  maxPairingCompatibilityVersion = [v6 maxPairingCompatibilityVersion];

  return maxPairingCompatibilityVersion > version;
}

@end