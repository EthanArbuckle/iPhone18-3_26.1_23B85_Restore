@interface HDClinicalAccount
- (BOOL)_scopesAreOutdated:(id)outdated;
- (BOOL)canDetectUnmergeFromPatientResource;
- (BOOL)credentialHasOutdatedScopes:(id)scopes;
- (BOOL)currentCredentialHasOutdatedScopes;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldPerformBackgroundFetchWithNowDate:(id)date;
- (BOOL)shouldPerformFetchWithNowDate:(id)date;
- (BOOL)shouldPerformFullFetchWithNowDate:(id)date;
- (HDClinicalAccount)init;
- (HDClinicalAccount)initWithIdentifier:(id)identifier userEnabled:(BOOL)enabled credentialState:(int64_t)state creationDate:(id)date lastFetchDate:(id)fetchDate lastFullFetchDate:(id)fullFetchDate lastFailedFetchDate:(id)failedFetchDate failedFetchAttemptsCount:(id)self0 lastExtractedRowID:(id)self1 lastSubmittedRowID:(id)self2 lastExtractedRulesVersion:(id)self3 clinicalSharingStatus:(id)self4 credential:(id)self5 patientHash:(id)self6 gateway:(id)self7 signedClinicalDataIssuer:(id)self8;
- (HKClinicalAccount)hkAccount;
- (HKClinicalAccountProvenance)hkClinicalAccountProvenance;
- (double)_secondsBlockedIfLastAttemptFailed;
- (double)_secondsFetchIsBlocked;
- (double)_secondsFullFetchIsBlocked;
- (id)_minuteOverrideForUserDefaultsKey:(id)key;
- (id)currentCredentialScopeSet;
- (id)description;
- (int64_t)hkState;
@end

@implementation HDClinicalAccount

- (HDClinicalAccount)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDClinicalAccount)initWithIdentifier:(id)identifier userEnabled:(BOOL)enabled credentialState:(int64_t)state creationDate:(id)date lastFetchDate:(id)fetchDate lastFullFetchDate:(id)fullFetchDate lastFailedFetchDate:(id)failedFetchDate failedFetchAttemptsCount:(id)self0 lastExtractedRowID:(id)self1 lastSubmittedRowID:(id)self2 lastExtractedRulesVersion:(id)self3 clinicalSharingStatus:(id)self4 credential:(id)self5 patientHash:(id)self6 gateway:(id)self7 signedClinicalDataIssuer:(id)self8
{
  identifierCopy = identifier;
  dateCopy = date;
  fetchDateCopy = fetchDate;
  fullFetchDateCopy = fullFetchDate;
  failedFetchDateCopy = failedFetchDate;
  countCopy = count;
  dCopy = d;
  iDCopy = iD;
  versionCopy = version;
  statusCopy = status;
  credentialCopy = credential;
  hashCopy = hash;
  gatewayCopy = gateway;
  issuerCopy = issuer;
  v78.receiver = self;
  v78.super_class = HDClinicalAccount;
  v30 = [(HDClinicalAccount *)&v78 init];
  if (v30)
  {
    v70 = issuerCopy;
    v72 = hashCopy;
    v31 = [identifierCopy copy];
    identifier = v30->_identifier;
    v30->_identifier = v31;

    v30->_userEnabled = enabled;
    v30->_credentialState = state;
    patientID = [credentialCopy patientID];
    if (patientID)
    {
      patientID2 = [credentialCopy patientID];
      v35 = credentialCopy;
      v36 = patientID2;
      v37 = v35;
      v38 = [HDFHIRCredential patientHashForPatientID:patientID2];
      patientHash = v30->_patientHash;
      v30->_patientHash = v38;
    }

    else
    {
      v40 = hashCopy;
      v37 = credentialCopy;
      v36 = v30->_patientHash;
      v30->_patientHash = v40;
    }

    v41 = [dateCopy copy];
    creationDate = v30->_creationDate;
    v30->_creationDate = v41;

    v43 = HKDateMax();
    v44 = [v43 copy];
    lastFetchDate = v30->_lastFetchDate;
    v30->_lastFetchDate = v44;

    v46 = [fullFetchDateCopy copy];
    lastFullFetchDate = v30->_lastFullFetchDate;
    v30->_lastFullFetchDate = v46;

    v48 = [failedFetchDateCopy copy];
    lastFailedFetchDate = v30->_lastFailedFetchDate;
    v30->_lastFailedFetchDate = v48;

    v50 = [countCopy copy];
    failedFetchAttemptsCount = v30->_failedFetchAttemptsCount;
    v30->_failedFetchAttemptsCount = v50;

    v52 = [dCopy copy];
    lastExtractedRowID = v30->_lastExtractedRowID;
    v30->_lastExtractedRowID = v52;

    v54 = [versionCopy copy];
    lastExtractedRulesVersion = v30->_lastExtractedRulesVersion;
    v30->_lastExtractedRulesVersion = v54;

    v56 = [iDCopy copy];
    lastSubmittedRowID = v30->_lastSubmittedRowID;
    v30->_lastSubmittedRowID = v56;

    v58 = [v37 copy];
    credential = v30->_credential;
    v30->_credential = v58;

    v60 = [gatewayCopy copy];
    gateway = v30->_gateway;
    v30->_gateway = v60;

    issuerCopy = v70;
    credentialCopy = v37;
    if ((gatewayCopy != 0) != (v70 == 0))
    {
      sub_A7BD8();
    }

    v62 = [v70 copy];
    signedClinicalDataIssuer = v30->_signedClinicalDataIssuer;
    v30->_signedClinicalDataIssuer = v62;

    v64 = [statusCopy copy];
    clinicalSharingStatus = v30->_clinicalSharingStatus;
    v30->_clinicalSharingStatus = v64;

    hashCopy = v72;
  }

  return v30;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  identifier = [(HDClinicalAccount *)self identifier];
  uUIDString = [identifier UUIDString];
  v7 = [v3 initWithFormat:@"<%@:%p; identifier:%@; credentialState: %ld>", v4, self, uUIDString, -[HDClinicalAccount credentialState](self, "credentialState")];

  return v7;
}

- (BOOL)shouldPerformBackgroundFetchWithNowDate:(id)date
{
  dateCopy = date;
  if (!dateCopy)
  {
    sub_A7C48();
  }

  v5 = [dateCopy dateByAddingTimeInterval:-302400.0];
  lastFetchDate = self->_lastFetchDate;
  if (lastFetchDate)
  {
    v7 = lastFetchDate;
  }

  else
  {
    v7 = +[NSDate distantPast];
  }

  v8 = v7;
  v9 = [[NSDateInterval alloc] initWithStartDate:v5 endDate:dateCopy];
  v10 = [v9 containsDate:v8];

  return v10 ^ 1;
}

- (BOOL)shouldPerformFetchWithNowDate:(id)date
{
  dateCopy = date;
  if (!dateCopy)
  {
    sub_A7CBC();
  }

  if ([(HDClinicalAccount *)self _lastFetchAttemptFailed])
  {
    [(NSDate *)self->_lastFailedFetchDate timeIntervalSinceDate:dateCopy];
    v6 = v5;
    [(HDClinicalAccount *)self _secondsFetchIsBlocked];
    v8 = v6 < -v7;
  }

  else
  {
    lastFetchDate = self->_lastFetchDate;
    if (lastFetchDate)
    {
      v10 = lastFetchDate;
    }

    else
    {
      v10 = +[NSDate distantPast];
    }

    v11 = v10;
    lastFullFetchDate = self->_lastFullFetchDate;
    if (lastFullFetchDate)
    {
      v13 = lastFullFetchDate;
    }

    else
    {
      v13 = +[NSDate distantPast];
    }

    v14 = v13;
    v15 = HKDateMax();
    [v15 timeIntervalSinceDate:dateCopy];
    v17 = v16;
    [(HDClinicalAccount *)self _secondsFetchIsBlocked];
    v8 = v17 < -v18;
  }

  return v8;
}

- (BOOL)shouldPerformFullFetchWithNowDate:(id)date
{
  dateCopy = date;
  if (!dateCopy)
  {
    sub_A7D30();
  }

  lastFullFetchDate = self->_lastFullFetchDate;
  if (lastFullFetchDate)
  {
    [(NSDate *)lastFullFetchDate timeIntervalSinceDate:dateCopy];
    v7 = v6;
    [(HDClinicalAccount *)self _secondsFullFetchIsBlocked];
    if (v7 >= -v8)
    {
      v14 = 0;
    }

    else if ([(HDClinicalAccount *)self _lastFetchAttemptFailed])
    {
      [(NSDate *)self->_lastFailedFetchDate timeIntervalSinceDate:dateCopy];
      v10 = v9;
      [(HDClinicalAccount *)self _secondsBlockedIfLastAttemptFailed];
      v12 = v11;
      [(HDClinicalAccount *)self _secondsFullFetchIsBlocked];
      if (v12 < v13)
      {
        v13 = v12;
      }

      v14 = v10 < -v13;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = [(HDClinicalAccount *)self shouldPerformFetchWithNowDate:dateCopy];
  }

  return v14;
}

- (double)_secondsFetchIsBlocked
{
  if ([(HDClinicalAccount *)self _lastFetchAttemptFailed])
  {
    [(HDClinicalAccount *)self _secondsBlockedIfLastAttemptFailed];
    v4 = v3;
  }

  else
  {
    v4 = 14400.0;
  }

  if (+[_HKBehavior isAppleInternalInstall])
  {
    v5 = [(HDClinicalAccount *)self _minuteOverrideForUserDefaultsKey:@"HDClinicalAccountFetchBlockInMinutes"];
    if (v5)
    {
      _HKInitializeLogging();
      v6 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
      {
        v7 = v6;
        *v11 = 138543618;
        *&v11[4] = objc_opt_class();
        *&v11[12] = 2112;
        *&v11[14] = v5;
        v8 = *&v11[4];
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%{public}@ the fetch block time has been overriden. Current override %@ minutes", v11, 0x16u);
      }

      unsignedIntegerValue = [v5 unsignedIntegerValue];
      if (v4 >= (60 * unsignedIntegerValue))
      {
        v4 = (60 * unsignedIntegerValue);
      }
    }
  }

  return v4;
}

- (double)_secondsBlockedIfLastAttemptFailed
{
  if (!self->_lastFailedFetchDate)
  {
    sub_A7DA4();
  }

  if ([(NSNumber *)self->_failedFetchAttemptsCount unsignedIntegerValue]> 4)
  {
    return 86400.0;
  }

  unsignedIntegerValue = [(NSNumber *)self->_failedFetchAttemptsCount unsignedIntegerValue];
  if (unsignedIntegerValue <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = unsignedIntegerValue;
  }

  return pow(v4, 3.0) * 600.0;
}

- (double)_secondsFullFetchIsBlocked
{
  if (!+[_HKBehavior isAppleInternalInstall])
  {
    return 2592000.0;
  }

  v3 = [(HDClinicalAccount *)self _minuteOverrideForUserDefaultsKey:@"HDClinicalAccountFullFetchBlockInMinutes"];
  if (v3)
  {
    _HKInitializeLogging();
    v4 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
    {
      v5 = v4;
      *v10 = 138543618;
      *&v10[4] = objc_opt_class();
      *&v10[12] = 2112;
      *&v10[14] = v3;
      v6 = *&v10[4];
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%{public}@ the full fetch block time has been overriden. Current override %@ minutes", v10, 0x16u);
    }

    unsignedIntegerValue = [v3 unsignedIntegerValue];
    if ((60 * unsignedIntegerValue) <= 2592000.0)
    {
      v8 = (60 * unsignedIntegerValue);
    }

    else
    {
      v8 = 2592000.0;
    }
  }

  else
  {
    v8 = 2592000.0;
  }

  return v8;
}

- (id)_minuteOverrideForUserDefaultsKey:(id)key
{
  keyCopy = key;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:keyCopy];

  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)canDetectUnmergeFromPatientResource
{
  gateway = [(HDClinicalAccount *)self gateway];
  fHIRVersion = [gateway FHIRVersion];
  v4 = [fHIRVersion majorVersion] > 3;

  return v4;
}

- (BOOL)_scopesAreOutdated:(id)outdated
{
  outdatedCopy = outdated;
  gateway = [(HDClinicalAccount *)self gateway];
  v12 = 0;
  v6 = [gateway authScopeWithError:&v12];
  v7 = v12;

  if (v6)
  {
    v8 = [HKOAuth2ScopeSet scopesFromScopeString:v6];
    v9 = [outdatedCopy isMissingScopesFrom:v8];
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A7E10(v10, self, v7);
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)credentialHasOutdatedScopes:(id)scopes
{
  requestedScopeString = [scopes requestedScopeString];
  v5 = [HKOAuth2ScopeSet scopeSetWithScopeString:requestedScopeString];
  LOBYTE(self) = [(HDClinicalAccount *)self _scopesAreOutdated:v5];

  return self;
}

- (BOOL)currentCredentialHasOutdatedScopes
{
  credential = [(HDClinicalAccount *)self credential];
  if (credential)
  {
    v4 = [(HDClinicalAccount *)self credentialHasOutdatedScopes:credential];
  }

  else
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A7ED0(v5);
    }

    v4 = 0;
  }

  return v4;
}

- (id)currentCredentialScopeSet
{
  credential = [(HDClinicalAccount *)self credential];
  v3 = credential;
  if (credential)
  {
    scopes = [credential scopes];
    if (scopes)
    {
      v5 = [HKOAuth2ScopeSet scopeSetWithScopes:scopes];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self != equalCopy)
  {
    v7 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = 0;
LABEL_98:

      goto LABEL_99;
    }

    identifier = self->_identifier;
    identifier = [(HDClinicalAccount *)v7 identifier];
    v93 = identifier;
    if (identifier != identifier)
    {
      identifier2 = [(HDClinicalAccount *)v7 identifier];
      if (!identifier2)
      {
        v88 = 0;
        memset(v95, 0, 40);
        memset(v92, 0, sizeof(v92));
        v94 = 0;
        v11 = 0;
        v90 = 0;
        memset(v89, 0, sizeof(v89));
        memset(v91, 0, sizeof(v91));
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        goto LABEL_17;
      }

      v88 = identifier2;
      userEnabled = self->_identifier;
      identifier3 = [(HDClinicalAccount *)v7 identifier];
      if (![userEnabled isEqual:?])
      {
        v94 = 0;
        memset(v95, 0, 40);
        v11 = 0;
        v90 = 0;
        memset(v89, 0, sizeof(v89));
        memset(v92, 0, 44);
        memset(v91, 0, sizeof(v91));
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        HIDWORD(v92[5]) = 1;
        goto LABEL_17;
      }
    }

    userEnabled = self->_userEnabled;
    HIDWORD(v92[5]) = identifier != identifier;
    if (userEnabled != [(HDClinicalAccount *)v7 isUserEnabled]|| (userEnabled = self->_credentialState, userEnabled != [(HDClinicalAccount *)v7 credentialState]))
    {
      v94 = 0;
      memset(v95, 0, 40);
      v11 = 0;
      v90 = 0;
      memset(v89, 0, sizeof(v89));
      memset(v92, 0, 44);
      memset(v91, 0, sizeof(v91));
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      goto LABEL_17;
    }

    userEnabled = self->_creationDate;
    creationDate = [(HDClinicalAccount *)v7 creationDate];
    v18 = userEnabled != creationDate;
    if (userEnabled != creationDate)
    {
      creationDate2 = [(HDClinicalAccount *)v7 creationDate];
      if (!creationDate2)
      {
        v84 = 0;
        v94 = 0;
        memset(v92, 0, 40);
        v11 = 0;
        v90 = 0;
        memset(v95 + 8, 0, 32);
        memset(v89, 0, sizeof(v89));
        memset(v91, 0, sizeof(v91));
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        LODWORD(v92[5]) = 1;
        *&v95[0] = 1;
        goto LABEL_17;
      }

      v84 = creationDate2;
      userEnabled = self->_creationDate;
      creationDate3 = [(HDClinicalAccount *)v7 creationDate];
      if (![userEnabled isEqual:?])
      {
        *(&v92[4] + 4) = 0x100000000;
        memset(v92, 0, 32);
        v94 = 0;
        v11 = 0;
        v90 = 0;
        memset(&v95[1], 0, 24);
        memset(v89, 0, sizeof(v89));
        memset(v91, 0, sizeof(v91));
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v95[0] = 1uLL;
        LODWORD(v92[4]) = 1;
        goto LABEL_17;
      }
    }

    userEnabled = self->_lastFetchDate;
    lastFetchDate = [(HDClinicalAccount *)v7 lastFetchDate];
    DWORD1(v95[2]) = userEnabled != lastFetchDate;
    LODWORD(v95[0]) = v18;
    if (userEnabled != lastFetchDate)
    {
      lastFetchDate2 = [(HDClinicalAccount *)v7 lastFetchDate];
      if (!lastFetchDate2)
      {
        v87 = 0;
        memset(v95 + 4, 0, 32);
        memset(v92, 0, 32);
        v94 = 0;
        v11 = 0;
        v90 = 0;
        memset(v89, 0, sizeof(v89));
        memset(v91, 0, sizeof(v91));
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(&v92[4] + 4) = 0x100000001;
        LODWORD(v92[4]) = v18;
        DWORD1(v95[2]) = 1;
        goto LABEL_17;
      }

      v87 = lastFetchDate2;
      userEnabled = self->_lastFetchDate;
      lastFetchDate3 = [(HDClinicalAccount *)v7 lastFetchDate];
      if (![userEnabled isEqual:?])
      {
        memset(v95 + 4, 0, 32);
        v94 = 0;
        memset(v92, 0, 24);
        v11 = 0;
        v90 = 0;
        memset(v89, 0, sizeof(v89));
        memset(v91, 0, sizeof(v91));
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(&v92[4] + 4) = 0x100000001;
        LODWORD(v92[4]) = v18;
        DWORD1(v95[2]) = 1;
        v92[3] = 1;
        goto LABEL_17;
      }
    }

    userEnabled = self->_lastFullFetchDate;
    lastFullFetchDate = [(HDClinicalAccount *)v7 lastFullFetchDate];
    v29 = userEnabled != lastFullFetchDate;
    if (userEnabled != lastFullFetchDate)
    {
      lastFullFetchDate2 = [(HDClinicalAccount *)v7 lastFullFetchDate];
      if (!lastFullFetchDate2)
      {
        v79 = 0;
        v94 = 0;
        memset(v92, 0, 24);
        v11 = 0;
        v90 = 0;
        memset(v89, 0, sizeof(v89));
        memset(v95 + 12, 0, 24);
        memset(v91, 0, sizeof(v91));
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(&v92[4] + 4) = 0x100000001;
        v92[3] = DWORD1(v95[2]) | 0x100000000;
        LODWORD(v92[4]) = v18;
        *(v95 + 4) = 1;
        goto LABEL_17;
      }

      v79 = lastFullFetchDate2;
      userEnabled = self->_lastFullFetchDate;
      lastFullFetchDate3 = [(HDClinicalAccount *)v7 lastFullFetchDate];
      if (![userEnabled isEqual:?])
      {
        v92[0] = 0;
        v92[1] = 0;
        v94 = 0;
        v11 = 0;
        v90 = 0;
        memset(v89, 0, sizeof(v89));
        memset(v91, 0, sizeof(v91));
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(&v92[4] + 4) = 0x100000001;
        v92[3] = DWORD1(v95[2]) | 0x100000000;
        LODWORD(v92[4]) = v18;
        DWORD1(v95[0]) = 1;
        memset(v95 + 8, 0, 28);
        v92[2] = 1;
        goto LABEL_17;
      }
    }

    userEnabled = self->_lastFailedFetchDate;
    lastFailedFetchDate = [(HDClinicalAccount *)v7 lastFailedFetchDate];
    LODWORD(v95[2]) = userEnabled != lastFailedFetchDate;
    DWORD1(v95[0]) = v29;
    if (userEnabled != lastFailedFetchDate)
    {
      lastFailedFetchDate2 = [(HDClinicalAccount *)v7 lastFailedFetchDate];
      if (!lastFailedFetchDate2)
      {
        v76 = 0;
        v92[0] = 0;
        v92[1] = 0;
        v94 = 0;
        v90 = 0;
        v36 = v29;
        v11 = 0;
        memset(v89, 0, sizeof(v89));
        memset(v95 + 8, 0, 24);
        memset(v91, 0, sizeof(v91));
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(&v92[4] + 4) = 0x100000001;
        LODWORD(v92[4]) = v18;
        v92[2] = v36 | 0x100000000;
        v92[3] = DWORD1(v95[2]) | 0x100000000;
        LODWORD(v95[2]) = 1;
        goto LABEL_17;
      }

      v76 = lastFailedFetchDate2;
      userEnabled = self->_lastFailedFetchDate;
      lastFailedFetchDate3 = [(HDClinicalAccount *)v7 lastFailedFetchDate];
      if (![userEnabled isEqual:?])
      {
        v94 = 0;
        v92[0] = 0;
        v90 = 0;
        v32 = v29;
        v11 = 0;
        memset(v89, 0, sizeof(v89));
        memset(v95 + 8, 0, 24);
        memset(v91, 0, sizeof(v91));
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(&v92[4] + 4) = 0x100000001;
        LODWORD(v92[4]) = v18;
        v92[2] = v32 | 0x100000000;
        v92[3] = DWORD1(v95[2]) | 0x100000000;
        LODWORD(v95[2]) = 1;
        v92[1] = 1;
        goto LABEL_17;
      }
    }

    userEnabled = self->_failedFetchAttemptsCount;
    failedFetchAttemptsCount = [(HDClinicalAccount *)v7 failedFetchAttemptsCount];
    v33 = userEnabled != failedFetchAttemptsCount;
    if (userEnabled != failedFetchAttemptsCount)
    {
      failedFetchAttemptsCount2 = [(HDClinicalAccount *)v7 failedFetchAttemptsCount];
      if (!failedFetchAttemptsCount2)
      {
        v73 = 0;
        v92[0] = 0;
        v90 = 0;
        v39 = v29;
        v11 = 0;
        memset(v89, 0, sizeof(v89));
        memset(v95 + 8, 0, 24);
        memset(v91, 0, sizeof(v91));
        v12 = 0;
        v94 = 0x100000000;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(&v92[4] + 4) = 0x100000001;
        LODWORD(v92[4]) = v18;
        v92[2] = v39 | 0x100000000;
        v92[3] = DWORD1(v95[2]) | 0x100000000;
        v92[1] = LODWORD(v95[2]) | 0x100000000;
        goto LABEL_17;
      }

      v73 = failedFetchAttemptsCount2;
      userEnabled = self->_failedFetchAttemptsCount;
      failedFetchAttemptsCount3 = [(HDClinicalAccount *)v7 failedFetchAttemptsCount];
      if (![userEnabled isEqual:?])
      {
        v90 = 0;
        v92[0] = 0;
        v35 = v29;
        v11 = 0;
        *&v91[8] = 0;
        memset(v89, 0, sizeof(v89));
        *v91 = 0;
        memset(v95 + 8, 0, 24);
        v12 = 0;
        v94 = 0x100000000;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(&v92[4] + 4) = 0x100000001;
        LODWORD(v92[4]) = v18;
        v92[2] = v35 | 0x100000000;
        v92[3] = DWORD1(v95[2]) | 0x100000000;
        v92[1] = LODWORD(v95[2]) | 0x100000000;
        *&v91[16] = 1;
        goto LABEL_17;
      }
    }

    userEnabled = self->_lastExtractedRowID;
    lastExtractedRowID = [(HDClinicalAccount *)v7 lastExtractedRowID];
    HIDWORD(v95[1]) = userEnabled != lastExtractedRowID;
    HIDWORD(v94) = v33;
    if (userEnabled != lastExtractedRowID)
    {
      lastExtractedRowID2 = [(HDClinicalAccount *)v7 lastExtractedRowID];
      if (!lastExtractedRowID2)
      {
        v70 = 0;
        v90 = 0;
        v92[0] = 0;
        *&v91[8] = 0;
        v42 = v33;
        memset(v89, 0, sizeof(v89));
        *v91 = 0;
        memset(v95 + 8, 0, 20);
        v12 = 0;
        LODWORD(v94) = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(&v92[4] + 4) = 0x100000001;
        v92[3] = DWORD1(v95[2]) | 0x100000000;
        LODWORD(v92[4]) = v18;
        v92[2] = v29 | 0x100000000;
        v92[1] = LODWORD(v95[2]) | 0x100000000;
        *&v91[16] = v42;
        v11 = 1;
        HIDWORD(v95[1]) = 1;
        goto LABEL_17;
      }

      v70 = lastExtractedRowID2;
      userEnabled = self->_lastExtractedRowID;
      lastExtractedRowID3 = [(HDClinicalAccount *)v7 lastExtractedRowID];
      if (![userEnabled isEqual:?])
      {
        v92[0] = 0;
        *&v91[8] = 0;
        v38 = v33;
        memset(v89, 0, sizeof(v89));
        *v91 = 0;
        v90 = 0x100000000;
        memset(v95 + 8, 0, 20);
        v12 = 0;
        LODWORD(v94) = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(&v92[4] + 4) = 0x100000001;
        v92[3] = DWORD1(v95[2]) | 0x100000000;
        LODWORD(v92[4]) = v18;
        v92[2] = v29 | 0x100000000;
        v92[1] = LODWORD(v95[2]) | 0x100000000;
        *&v91[16] = v38;
        v11 = 1;
        HIDWORD(v95[1]) = 1;
        goto LABEL_17;
      }
    }

    userEnabled = self->_lastSubmittedRowID;
    lastSubmittedRowID = [(HDClinicalAccount *)v7 lastSubmittedRowID];
    DWORD2(v95[1]) = userEnabled != lastSubmittedRowID;
    if (userEnabled != lastSubmittedRowID)
    {
      lastSubmittedRowID2 = [(HDClinicalAccount *)v7 lastSubmittedRowID];
      if (!lastSubmittedRowID2)
      {
        v67 = 0;
        *&v91[8] = 0;
        *(&v95[0] + 1) = 0;
        *&v95[1] = 0;
        v45 = v33;
        memset(v89, 0, sizeof(v89));
        *v91 = 0;
        LODWORD(v90) = 0;
        v92[0] = 0x100000000;
        v12 = 0;
        LODWORD(v94) = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(&v92[4] + 4) = 0x100000001;
        v92[3] = DWORD1(v95[2]) | 0x100000000;
        LODWORD(v92[4]) = v18;
        v92[2] = v29 | 0x100000000;
        v92[1] = LODWORD(v95[2]) | 0x100000000;
        *&v91[16] = v45;
        v11 = 1;
        HIDWORD(v90) = HIDWORD(v95[1]);
        DWORD2(v95[1]) = 1;
        goto LABEL_17;
      }

      v67 = lastSubmittedRowID2;
      userEnabled = self->_lastSubmittedRowID;
      lastSubmittedRowID3 = [(HDClinicalAccount *)v7 lastSubmittedRowID];
      if (![userEnabled isEqual:?])
      {
        *&v91[8] = 0;
        *(&v95[0] + 1) = 0;
        *&v95[1] = 0;
        v41 = v33;
        *v89 = 0;
        *v91 = 0;
        LODWORD(v90) = 0;
        v92[0] = 0x100000000;
        v12 = 0;
        LODWORD(v94) = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        LODWORD(v92[5]) = 1;
        v92[4] = v18 | 0x100000000;
        v92[3] = DWORD1(v95[2]) | 0x100000000;
        v92[2] = v29 | 0x100000000;
        *&v91[16] = v41;
        v11 = 1;
        HIDWORD(v90) = HIDWORD(v95[1]);
        v92[1] = LODWORD(v95[2]) | 0x100000000;
        DWORD2(v95[1]) = 1;
        *&v89[8] = 1;
        goto LABEL_17;
      }
    }

    userEnabled = self->_lastExtractedRulesVersion;
    lastExtractedRulesVersion = [(HDClinicalAccount *)v7 lastExtractedRulesVersion];
    DWORD1(v95[1]) = userEnabled != lastExtractedRulesVersion;
    v66 = lastExtractedRulesVersion;
    if (userEnabled != lastExtractedRulesVersion)
    {
      lastExtractedRulesVersion2 = [(HDClinicalAccount *)v7 lastExtractedRulesVersion];
      if (!lastExtractedRulesVersion2)
      {
        v64 = 0;
        v47 = v33;
        *v89 = 0;
        *&v91[4] = 0;
        *(v95 + 12) = 0;
        LODWORD(v90) = 0;
        v92[0] = 0x100000000;
        DWORD2(v95[0]) = 0;
        *v91 = 0;
        v12 = 0;
        LODWORD(v94) = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        LODWORD(v92[5]) = 1;
        v92[4] = v18 | 0x100000000;
        v92[3] = DWORD1(v95[2]) | 0x100000000;
        v92[2] = v29 | 0x100000000;
        *&v91[16] = v47;
        v11 = 1;
        HIDWORD(v90) = HIDWORD(v95[1]);
        v92[1] = LODWORD(v95[2]) | 0x100000000;
        *&v89[8] = DWORD2(v95[1]);
        *&v91[12] = 1;
        DWORD1(v95[1]) = 1;
        goto LABEL_17;
      }

      v64 = lastExtractedRulesVersion2;
      userEnabled = self->_lastExtractedRulesVersion;
      lastExtractedRulesVersion3 = [(HDClinicalAccount *)v7 lastExtractedRulesVersion];
      if (![userEnabled isEqual:?])
      {
        *&v91[4] = 0;
        *(v95 + 12) = 0;
        LODWORD(v90) = 0;
        v92[0] = 0x100000000;
        DWORD2(v95[0]) = 0;
        *v91 = 0;
        v12 = 0;
        LODWORD(v94) = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        LODWORD(v92[5]) = 1;
        v92[4] = v18 | 0x100000000;
        v92[3] = DWORD1(v95[2]) | 0x100000000;
        v92[2] = v29 | 0x100000000;
        *&v91[16] = v33;
        v13 = 0;
        v11 = 1;
        HIDWORD(v90) = HIDWORD(v95[1]);
        v92[1] = LODWORD(v95[2]) | 0x100000000;
        *&v89[8] = DWORD2(v95[1]);
        *&v91[12] = 1;
        DWORD1(v95[1]) = 1;
        *v89 = 1;
        goto LABEL_17;
      }
    }

    userEnabled = self->_credential;
    credential = [(HDClinicalAccount *)v7 credential];
    LODWORD(v95[1]) = userEnabled != credential;
    v63 = credential;
    if (userEnabled != credential)
    {
      credential2 = [(HDClinicalAccount *)v7 credential];
      if (!credential2)
      {
        credential2 = 0;
        *&v91[8] = 0x100000000;
        *(&v95[0] + 1) = 0;
        LODWORD(v90) = 0;
        v92[0] = 0x100000000;
        *v91 = 0x100000000;
        v12 = 0;
        LODWORD(v94) = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        LODWORD(v92[5]) = 1;
        v92[4] = v18 | 0x100000000;
        v92[3] = DWORD1(v95[2]) | 0x100000000;
        v92[2] = v29 | 0x100000000;
        *&v91[16] = v33;
        v13 = 0;
        v11 = 1;
        HIDWORD(v90) = HIDWORD(v95[1]);
        v92[1] = LODWORD(v95[2]) | 0x100000000;
        *&v89[8] = DWORD2(v95[1]);
        *v89 = DWORD1(v95[1]);
        LODWORD(v95[1]) = 1;
        goto LABEL_17;
      }

      userEnabled = self->_credential;
      credential3 = [(HDClinicalAccount *)v7 credential];
      if (![userEnabled isEqual:?])
      {
        *&v91[8] = 0x100000000;
        *(&v95[0] + 1) = 0;
        LODWORD(v90) = 0;
        v92[0] = 0x100000000;
        *v91 = 0x100000000;
        v12 = 0;
        LODWORD(v94) = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        LODWORD(v92[5]) = 1;
        v92[4] = v18 | 0x100000000;
        v92[3] = DWORD1(v95[2]) | 0x100000000;
        v92[2] = v29 | 0x100000000;
        *&v91[16] = v33;
        v13 = 0;
        v11 = 1;
        HIDWORD(v90) = HIDWORD(v95[1]);
        v92[1] = LODWORD(v95[2]) | 0x100000000;
        *v89 = DWORD1(v95[1]);
        LODWORD(v95[1]) = 1;
        *&v89[4] = 1;
        *&v89[8] = DWORD2(v95[1]);
        goto LABEL_17;
      }
    }

    userEnabled = self->_patientHash;
    patientHash = [(HDClinicalAccount *)v7 patientHash];
    HIDWORD(v95[0]) = userEnabled != patientHash;
    if (userEnabled != patientHash)
    {
      patientHash2 = [(HDClinicalAccount *)v7 patientHash];
      if (!patientHash2)
      {
        patientHash2 = 0;
        LODWORD(v90) = 0;
        v92[0] = 0x100000000;
        *(&v95[0] + 1) = 0x100000000;
        *v91 = 0x100000000;
        v12 = 0;
        LODWORD(v94) = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        LODWORD(v92[5]) = 1;
        v92[4] = v18 | 0x100000000;
        v92[3] = DWORD1(v95[2]) | 0x100000000;
        v92[2] = v29 | 0x100000000;
        *&v91[16] = v33;
        v13 = 0;
        v11 = 1;
        HIDWORD(v90) = HIDWORD(v95[1]);
        v92[1] = LODWORD(v95[2]) | 0x100000000;
        *v89 = DWORD1(v95[1]);
        *&v89[4] = v95[1];
        *&v89[8] = DWORD2(v95[1]);
        *&v91[8] = 0x100000001;
        goto LABEL_17;
      }

      userEnabled = self->_patientHash;
      patientHash3 = [(HDClinicalAccount *)v7 patientHash];
      if (![userEnabled isEqualToString:?])
      {
        v92[0] = 0x100000000;
        *(&v95[0] + 1) = 0x100000000;
        *v91 = 0x100000000;
        v12 = 0;
        LODWORD(v94) = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        LODWORD(v92[5]) = 1;
        v92[4] = v18 | 0x100000000;
        v92[3] = DWORD1(v95[2]) | 0x100000000;
        v92[2] = v29 | 0x100000000;
        *&v91[16] = v33;
        v13 = 0;
        v11 = 1;
        v92[1] = LODWORD(v95[2]) | 0x100000000;
        *v89 = DWORD1(v95[1]);
        *&v89[4] = v95[1];
        *&v89[8] = DWORD2(v95[1]);
        *&v91[8] = 0x100000001;
        LODWORD(v90) = 1;
        HIDWORD(v90) = HIDWORD(v95[1]);
        goto LABEL_17;
      }
    }

    userEnabled = self->_gateway;
    gateway = [(HDClinicalAccount *)v7 gateway];
    DWORD2(v95[0]) = userEnabled != gateway;
    if (userEnabled != gateway)
    {
      gateway2 = [(HDClinicalAccount *)v7 gateway];
      if (!gateway2)
      {
        gateway2 = 0;
        *v91 = 0x100000000;
        v12 = 0;
        LODWORD(v94) = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(&v92[4] + 4) = 0x100000001;
        LODWORD(v92[4]) = v18;
        v92[3] = DWORD1(v95[2]) | 0x100000000;
        v92[2] = v29 | 0x100000000;
        *&v91[16] = v33;
        v13 = 0;
        v11 = 1;
        v92[1] = LODWORD(v95[2]) | 0x100000000;
        *v89 = DWORD1(v95[1]);
        *&v89[4] = v95[1];
        *&v89[8] = DWORD2(v95[1]);
        *&v91[8] = 0x100000001;
        v90 = __PAIR64__(HIDWORD(v95[1]), HIDWORD(v95[0]));
        v92[0] = 0x100000001;
        DWORD2(v95[0]) = 1;
        goto LABEL_17;
      }

      userEnabled = self->_gateway;
      gateway3 = [(HDClinicalAccount *)v7 gateway];
      if (![userEnabled isEqual:?])
      {
        v12 = 0;
        LODWORD(v94) = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(&v92[4] + 4) = 0x100000001;
        LODWORD(v92[4]) = v18;
        v92[3] = DWORD1(v95[2]) | 0x100000000;
        v92[2] = v29 | 0x100000000;
        v11 = 1;
        v92[1] = LODWORD(v95[2]) | 0x100000000;
        *&v91[16] = HIDWORD(v94);
        *v89 = DWORD1(v95[1]);
        *&v89[4] = v95[1];
        *&v89[8] = DWORD2(v95[1]);
        *&v91[8] = 0x100000001;
        v90 = __PAIR64__(HIDWORD(v95[1]), HIDWORD(v95[0]));
        v92[0] = 0x100000001;
        DWORD2(v95[0]) = 1;
        *v91 = 0x100000001;
        goto LABEL_17;
      }
    }

    userEnabled = self->_signedClinicalDataIssuer;
    signedClinicalDataIssuer = [(HDClinicalAccount *)v7 signedClinicalDataIssuer];
    LODWORD(v94) = userEnabled != signedClinicalDataIssuer;
    if (userEnabled != signedClinicalDataIssuer)
    {
      signedClinicalDataIssuer2 = [(HDClinicalAccount *)v7 signedClinicalDataIssuer];
      if (!signedClinicalDataIssuer2)
      {
        signedClinicalDataIssuer2 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(&v92[4] + 4) = 0x100000001;
        LODWORD(v92[4]) = v18;
        v92[3] = DWORD1(v95[2]) | 0x100000000;
        v92[2] = v29 | 0x100000000;
        v11 = 1;
        v92[1] = LODWORD(v95[2]) | 0x100000000;
        *&v91[16] = HIDWORD(v94);
        *v89 = DWORD1(v95[1]);
        *&v89[4] = v95[1];
        *&v89[8] = DWORD2(v95[1]);
        *&v91[4] = 1;
        *&v91[8] = 0x100000001;
        v90 = __PAIR64__(HIDWORD(v95[1]), HIDWORD(v95[0]));
        v92[0] = 0x100000001;
        *v91 = DWORD2(v95[0]);
        v12 = 1;
        LODWORD(v94) = 1;
        goto LABEL_17;
      }

      userEnabled = self->_signedClinicalDataIssuer;
      signedClinicalDataIssuer3 = [(HDClinicalAccount *)v7 signedClinicalDataIssuer];
      if (![userEnabled isEqual:?])
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(&v92[4] + 4) = 0x100000001;
        LODWORD(v92[4]) = v18;
        v92[3] = DWORD1(v95[2]) | 0x100000000;
        v92[2] = v29 | 0x100000000;
        v11 = 1;
        v92[1] = LODWORD(v95[2]) | 0x100000000;
        *&v91[16] = v33;
        *v89 = DWORD1(v95[1]);
        *&v89[4] = v95[1];
        *&v89[8] = DWORD2(v95[1]);
        *&v91[4] = 1;
        *&v91[8] = 0x100000001;
        v90 = __PAIR64__(HIDWORD(v95[1]), HIDWORD(v95[0]));
        v92[0] = 0x100000001;
        *v91 = DWORD2(v95[0]);
        v12 = 1;
        LODWORD(v94) = 1;
        v13 = 1;
        goto LABEL_17;
      }
    }

    userEnabled = self->_clinicalSharingStatus;
    clinicalSharingStatus = [(HDClinicalAccount *)v7 clinicalSharingStatus];
    if (userEnabled == clinicalSharingStatus)
    {
      v15 = 0;
      v16 = 0;
      *(&v92[4] + 4) = 0x100000001;
      LODWORD(v92[4]) = v18;
      v92[3] = DWORD1(v95[2]) | 0x100000000;
      v92[2] = v29 | 0x100000000;
      v11 = 1;
      v92[1] = LODWORD(v95[2]) | 0x100000000;
      *&v91[16] = v33;
      *v89 = DWORD1(v95[1]);
      *&v89[4] = v95[1];
      *&v89[8] = DWORD2(v95[1]);
      *&v91[4] = 1;
      *&v91[8] = 0x100000001;
      v90 = __PAIR64__(HIDWORD(v95[1]), HIDWORD(v95[0]));
      v92[0] = 0x100000001;
      *v91 = DWORD2(v95[0]);
      v12 = 1;
      v13 = v94;
      v14 = 1;
      v17 = 1;
    }

    else
    {
      clinicalSharingStatus2 = [(HDClinicalAccount *)v7 clinicalSharingStatus];
      if (clinicalSharingStatus2)
      {
        clinicalSharingStatus = self->_clinicalSharingStatus;
        userEnabled = [(HDClinicalAccount *)v7 clinicalSharingStatus];
        v17 = [(HKClinicalSharingStatus *)clinicalSharingStatus isEqual:userEnabled];
        *(&v92[4] + 4) = 0x100000001;
        LODWORD(v92[4]) = v18;
        v92[3] = DWORD1(v95[2]) | 0x100000000;
        v92[2] = v29 | 0x100000000;
        v11 = 1;
        v92[1] = LODWORD(v95[2]) | 0x100000000;
        *&v91[16] = v33;
        *v89 = DWORD1(v95[1]);
        *&v89[4] = v95[1];
        *&v89[8] = DWORD2(v95[1]);
        *&v91[4] = 1;
        *&v91[8] = 0x100000001;
        v90 = __PAIR64__(HIDWORD(v95[1]), HIDWORD(v95[0]));
        v92[0] = 0x100000001;
        *v91 = DWORD2(v95[0]);
        v12 = 1;
        v13 = v94;
        v14 = 1;
        v15 = 1;
        v16 = 1;
      }

      else
      {
        clinicalSharingStatus2 = 0;
        v16 = 0;
        v17 = 0;
        *(&v92[4] + 4) = 0x100000001;
        LODWORD(v92[4]) = v18;
        v92[3] = DWORD1(v95[2]) | 0x100000000;
        v92[2] = v29 | 0x100000000;
        v11 = 1;
        v92[1] = LODWORD(v95[2]) | 0x100000000;
        *&v91[16] = v33;
        *v89 = DWORD1(v95[1]);
        *&v89[4] = v95[1];
        *&v89[8] = DWORD2(v95[1]);
        *&v91[4] = 1;
        *&v91[8] = 0x100000001;
        v90 = __PAIR64__(HIDWORD(v95[1]), HIDWORD(v95[0]));
        v92[0] = 0x100000001;
        *v91 = DWORD2(v95[0]);
        v12 = 1;
        v13 = v94;
        v14 = 1;
        v15 = 1;
      }
    }

LABEL_17:
    if (v16)
    {
      v20 = identifier;
      v21 = v13;
      v22 = v12;
      v23 = v11;
      v24 = v14;
      v25 = v15;

      v26 = v25;
      v14 = v24;
      v11 = v23;
      v12 = v22;
      v13 = v21;
      identifier = v20;
      if (!v26)
      {
        goto LABEL_19;
      }
    }

    else if (!v15)
    {
LABEL_19:
      if (!v14)
      {
LABEL_21:
        if (v13)
        {
        }

        if (v94)
        {
        }

        if (v12)
        {
        }

        if (*v91)
        {
        }

        if (DWORD2(v95[0]))
        {
        }

        if (LODWORD(v92[0]))
        {
        }

        if (v90)
        {
        }

        if (HIDWORD(v95[0]))
        {
        }

        if (*&v91[8])
        {
        }

        if (*&v89[4])
        {
        }

        if (LODWORD(v95[1]))
        {
        }

        if (*&v91[4])
        {
        }

        if (*v89)
        {
        }

        if (DWORD1(v95[1]))
        {
        }

        if (*&v91[12])
        {
        }

        if (*&v89[8])
        {
        }

        if (DWORD2(v95[1]))
        {
        }

        if (HIDWORD(v92[0]))
        {
        }

        if (HIDWORD(v90))
        {
        }

        if (HIDWORD(v95[1]))
        {
        }

        if (v11)
        {
        }

        if (*&v91[16])
        {
        }

        if (HIDWORD(v94))
        {
        }

        if (HIDWORD(v92[1]))
        {
        }

        if (LODWORD(v92[1]))
        {
        }

        if (LODWORD(v95[2]))
        {
        }

        if (HIDWORD(v92[2]))
        {
        }

        if (LODWORD(v92[2]))
        {
        }

        if (DWORD1(v95[0]))
        {
        }

        if (HIDWORD(v92[3]))
        {
        }

        if (LODWORD(v92[3]))
        {
        }

        if (DWORD1(v95[2]))
        {
        }

        if (HIDWORD(v92[4]))
        {
        }

        if (LODWORD(v92[4]))
        {
        }

        if (LODWORD(v95[0]))
        {
        }

        if (LODWORD(v92[5]))
        {
        }

        if (HIDWORD(v92[5]))
        {
        }

        if (v93 != identifier)
        {
        }

        goto LABEL_98;
      }

LABEL_20:

      goto LABEL_21;
    }

    if (!v14)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v17 = 1;
LABEL_99:

  return v17;
}

- (HKClinicalAccount)hkAccount
{
  v2 = [[HKClinicalAccount alloc] initWithDaemonClinicalAccount:self];

  return v2;
}

- (HKClinicalAccountProvenance)hkClinicalAccountProvenance
{
  gateway = [(HDClinicalAccount *)self gateway];

  if (gateway)
  {
    v4 = [HKClinicalGateway alloc];
    gateway2 = [(HDClinicalAccount *)self gateway];
    v6 = [v4 initWithDaemonClinicalGateway:gateway2];

    v7 = [[HKClinicalAccountProvenance alloc] initWithGateway:v6];
LABEL_3:
    v8 = v7;

    goto LABEL_6;
  }

  signedClinicalDataIssuer = [(HDClinicalAccount *)self signedClinicalDataIssuer];

  if (!signedClinicalDataIssuer)
  {
    _HKInitializeLogging();
    v13 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A8074(v13);
    }

    v6 = [[HKSignedClinicalDataIssuer alloc] initWithIdentifier:@"www.example.com" title:@"Missing Endpoint" subtitle:0 wellKnownURL:0];
    v7 = [[HKClinicalAccountProvenance alloc] initWithSignedClinicalDataIssuer:v6];
    goto LABEL_3;
  }

  v10 = [HKClinicalAccountProvenance alloc];
  signedClinicalDataIssuer2 = [(HDClinicalAccount *)self signedClinicalDataIssuer];
  v8 = [v10 initWithSignedClinicalDataIssuer:signedClinicalDataIssuer2];

LABEL_6:

  return v8;
}

- (int64_t)hkState
{
  gateway = [(HDClinicalAccount *)self gateway];
  lastReportedStatus = [gateway lastReportedStatus];

  if (lastReportedStatus == &dword_0 + 2)
  {
    return 4;
  }

  if (lastReportedStatus == &dword_0 + 3)
  {
    return 5;
  }

  if (![(HDClinicalAccount *)self isUserEnabled])
  {
    return 2;
  }

  if ([(HDClinicalAccount *)self needsRelogin])
  {
    return 3;
  }

  credential = [(HDClinicalAccount *)self credential];

  if (!credential)
  {
    return 0;
  }

  if ([(HDClinicalAccount *)self needsScopeUpgrade])
  {
    return 6;
  }

  return 1;
}

@end