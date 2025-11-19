@interface HDClinicalAccount
- (BOOL)_scopesAreOutdated:(id)a3;
- (BOOL)canDetectUnmergeFromPatientResource;
- (BOOL)credentialHasOutdatedScopes:(id)a3;
- (BOOL)currentCredentialHasOutdatedScopes;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldPerformBackgroundFetchWithNowDate:(id)a3;
- (BOOL)shouldPerformFetchWithNowDate:(id)a3;
- (BOOL)shouldPerformFullFetchWithNowDate:(id)a3;
- (HDClinicalAccount)init;
- (HDClinicalAccount)initWithIdentifier:(id)a3 userEnabled:(BOOL)a4 credentialState:(int64_t)a5 creationDate:(id)a6 lastFetchDate:(id)a7 lastFullFetchDate:(id)a8 lastFailedFetchDate:(id)a9 failedFetchAttemptsCount:(id)a10 lastExtractedRowID:(id)a11 lastSubmittedRowID:(id)a12 lastExtractedRulesVersion:(id)a13 clinicalSharingStatus:(id)a14 credential:(id)a15 patientHash:(id)a16 gateway:(id)a17 signedClinicalDataIssuer:(id)a18;
- (HKClinicalAccount)hkAccount;
- (HKClinicalAccountProvenance)hkClinicalAccountProvenance;
- (double)_secondsBlockedIfLastAttemptFailed;
- (double)_secondsFetchIsBlocked;
- (double)_secondsFullFetchIsBlocked;
- (id)_minuteOverrideForUserDefaultsKey:(id)a3;
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

- (HDClinicalAccount)initWithIdentifier:(id)a3 userEnabled:(BOOL)a4 credentialState:(int64_t)a5 creationDate:(id)a6 lastFetchDate:(id)a7 lastFullFetchDate:(id)a8 lastFailedFetchDate:(id)a9 failedFetchAttemptsCount:(id)a10 lastExtractedRowID:(id)a11 lastSubmittedRowID:(id)a12 lastExtractedRulesVersion:(id)a13 clinicalSharingStatus:(id)a14 credential:(id)a15 patientHash:(id)a16 gateway:(id)a17 signedClinicalDataIssuer:(id)a18
{
  v74 = a3;
  v75 = a6;
  v77 = a7;
  v21 = a8;
  v76 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  v26 = a14;
  v27 = a15;
  v28 = a16;
  v73 = a17;
  v29 = a18;
  v78.receiver = self;
  v78.super_class = HDClinicalAccount;
  v30 = [(HDClinicalAccount *)&v78 init];
  if (v30)
  {
    v70 = v29;
    v72 = v28;
    v31 = [v74 copy];
    identifier = v30->_identifier;
    v30->_identifier = v31;

    v30->_userEnabled = a4;
    v30->_credentialState = a5;
    v33 = [v27 patientID];
    if (v33)
    {
      v34 = [v27 patientID];
      v35 = v27;
      v36 = v34;
      v37 = v35;
      v38 = [HDFHIRCredential patientHashForPatientID:v34];
      patientHash = v30->_patientHash;
      v30->_patientHash = v38;
    }

    else
    {
      v40 = v28;
      v37 = v27;
      v36 = v30->_patientHash;
      v30->_patientHash = v40;
    }

    v41 = [v75 copy];
    creationDate = v30->_creationDate;
    v30->_creationDate = v41;

    v43 = HKDateMax();
    v44 = [v43 copy];
    lastFetchDate = v30->_lastFetchDate;
    v30->_lastFetchDate = v44;

    v46 = [v21 copy];
    lastFullFetchDate = v30->_lastFullFetchDate;
    v30->_lastFullFetchDate = v46;

    v48 = [v76 copy];
    lastFailedFetchDate = v30->_lastFailedFetchDate;
    v30->_lastFailedFetchDate = v48;

    v50 = [v22 copy];
    failedFetchAttemptsCount = v30->_failedFetchAttemptsCount;
    v30->_failedFetchAttemptsCount = v50;

    v52 = [v23 copy];
    lastExtractedRowID = v30->_lastExtractedRowID;
    v30->_lastExtractedRowID = v52;

    v54 = [v25 copy];
    lastExtractedRulesVersion = v30->_lastExtractedRulesVersion;
    v30->_lastExtractedRulesVersion = v54;

    v56 = [v24 copy];
    lastSubmittedRowID = v30->_lastSubmittedRowID;
    v30->_lastSubmittedRowID = v56;

    v58 = [v37 copy];
    credential = v30->_credential;
    v30->_credential = v58;

    v60 = [v73 copy];
    gateway = v30->_gateway;
    v30->_gateway = v60;

    v29 = v70;
    v27 = v37;
    if ((v73 != 0) != (v70 == 0))
    {
      sub_A7BD8();
    }

    v62 = [v70 copy];
    signedClinicalDataIssuer = v30->_signedClinicalDataIssuer;
    v30->_signedClinicalDataIssuer = v62;

    v64 = [v26 copy];
    clinicalSharingStatus = v30->_clinicalSharingStatus;
    v30->_clinicalSharingStatus = v64;

    v28 = v72;
  }

  return v30;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = [(HDClinicalAccount *)self identifier];
  v6 = [v5 UUIDString];
  v7 = [v3 initWithFormat:@"<%@:%p; identifier:%@; credentialState: %ld>", v4, self, v6, -[HDClinicalAccount credentialState](self, "credentialState")];

  return v7;
}

- (BOOL)shouldPerformBackgroundFetchWithNowDate:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    sub_A7C48();
  }

  v5 = [v4 dateByAddingTimeInterval:-302400.0];
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
  v9 = [[NSDateInterval alloc] initWithStartDate:v5 endDate:v4];
  v10 = [v9 containsDate:v8];

  return v10 ^ 1;
}

- (BOOL)shouldPerformFetchWithNowDate:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    sub_A7CBC();
  }

  if ([(HDClinicalAccount *)self _lastFetchAttemptFailed])
  {
    [(NSDate *)self->_lastFailedFetchDate timeIntervalSinceDate:v4];
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
    [v15 timeIntervalSinceDate:v4];
    v17 = v16;
    [(HDClinicalAccount *)self _secondsFetchIsBlocked];
    v8 = v17 < -v18;
  }

  return v8;
}

- (BOOL)shouldPerformFullFetchWithNowDate:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    sub_A7D30();
  }

  lastFullFetchDate = self->_lastFullFetchDate;
  if (lastFullFetchDate)
  {
    [(NSDate *)lastFullFetchDate timeIntervalSinceDate:v4];
    v7 = v6;
    [(HDClinicalAccount *)self _secondsFullFetchIsBlocked];
    if (v7 >= -v8)
    {
      v14 = 0;
    }

    else if ([(HDClinicalAccount *)self _lastFetchAttemptFailed])
    {
      [(NSDate *)self->_lastFailedFetchDate timeIntervalSinceDate:v4];
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
    v14 = [(HDClinicalAccount *)self shouldPerformFetchWithNowDate:v4];
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

      v9 = [v5 unsignedIntegerValue];
      if (v4 >= (60 * v9))
      {
        v4 = (60 * v9);
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

  v3 = [(NSNumber *)self->_failedFetchAttemptsCount unsignedIntegerValue];
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
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

    v7 = [v3 unsignedIntegerValue];
    if ((60 * v7) <= 2592000.0)
    {
      v8 = (60 * v7);
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

- (id)_minuteOverrideForUserDefaultsKey:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:v3];

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
  v2 = [(HDClinicalAccount *)self gateway];
  v3 = [v2 FHIRVersion];
  v4 = [v3 majorVersion] > 3;

  return v4;
}

- (BOOL)_scopesAreOutdated:(id)a3
{
  v4 = a3;
  v5 = [(HDClinicalAccount *)self gateway];
  v12 = 0;
  v6 = [v5 authScopeWithError:&v12];
  v7 = v12;

  if (v6)
  {
    v8 = [HKOAuth2ScopeSet scopesFromScopeString:v6];
    v9 = [v4 isMissingScopesFrom:v8];
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

- (BOOL)credentialHasOutdatedScopes:(id)a3
{
  v4 = [a3 requestedScopeString];
  v5 = [HKOAuth2ScopeSet scopeSetWithScopeString:v4];
  LOBYTE(self) = [(HDClinicalAccount *)self _scopesAreOutdated:v5];

  return self;
}

- (BOOL)currentCredentialHasOutdatedScopes
{
  v3 = [(HDClinicalAccount *)self credential];
  if (v3)
  {
    v4 = [(HDClinicalAccount *)self credentialHasOutdatedScopes:v3];
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
  v2 = [(HDClinicalAccount *)self credential];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 scopes];
    if (v4)
    {
      v5 = [HKOAuth2ScopeSet scopeSetWithScopes:v4];
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

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self != v5)
  {
    v7 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = 0;
LABEL_98:

      goto LABEL_99;
    }

    identifier = self->_identifier;
    v9 = [(HDClinicalAccount *)v7 identifier];
    v93 = identifier;
    if (identifier != v9)
    {
      v10 = [(HDClinicalAccount *)v7 identifier];
      if (!v10)
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

      v88 = v10;
      userEnabled = self->_identifier;
      v86 = [(HDClinicalAccount *)v7 identifier];
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
    HIDWORD(v92[5]) = identifier != v9;
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
    v85 = [(HDClinicalAccount *)v7 creationDate];
    v18 = userEnabled != v85;
    if (userEnabled != v85)
    {
      v19 = [(HDClinicalAccount *)v7 creationDate];
      if (!v19)
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

      v84 = v19;
      userEnabled = self->_creationDate;
      v82 = [(HDClinicalAccount *)v7 creationDate];
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
    v83 = [(HDClinicalAccount *)v7 lastFetchDate];
    DWORD1(v95[2]) = userEnabled != v83;
    LODWORD(v95[0]) = v18;
    if (userEnabled != v83)
    {
      v28 = [(HDClinicalAccount *)v7 lastFetchDate];
      if (!v28)
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

      v87 = v28;
      userEnabled = self->_lastFetchDate;
      v80 = [(HDClinicalAccount *)v7 lastFetchDate];
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
    v81 = [(HDClinicalAccount *)v7 lastFullFetchDate];
    v29 = userEnabled != v81;
    if (userEnabled != v81)
    {
      v30 = [(HDClinicalAccount *)v7 lastFullFetchDate];
      if (!v30)
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

      v79 = v30;
      userEnabled = self->_lastFullFetchDate;
      v77 = [(HDClinicalAccount *)v7 lastFullFetchDate];
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
    v78 = [(HDClinicalAccount *)v7 lastFailedFetchDate];
    LODWORD(v95[2]) = userEnabled != v78;
    DWORD1(v95[0]) = v29;
    if (userEnabled != v78)
    {
      v31 = [(HDClinicalAccount *)v7 lastFailedFetchDate];
      if (!v31)
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

      v76 = v31;
      userEnabled = self->_lastFailedFetchDate;
      v74 = [(HDClinicalAccount *)v7 lastFailedFetchDate];
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
    v75 = [(HDClinicalAccount *)v7 failedFetchAttemptsCount];
    v33 = userEnabled != v75;
    if (userEnabled != v75)
    {
      v34 = [(HDClinicalAccount *)v7 failedFetchAttemptsCount];
      if (!v34)
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

      v73 = v34;
      userEnabled = self->_failedFetchAttemptsCount;
      v71 = [(HDClinicalAccount *)v7 failedFetchAttemptsCount];
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
    v72 = [(HDClinicalAccount *)v7 lastExtractedRowID];
    HIDWORD(v95[1]) = userEnabled != v72;
    HIDWORD(v94) = v33;
    if (userEnabled != v72)
    {
      v37 = [(HDClinicalAccount *)v7 lastExtractedRowID];
      if (!v37)
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

      v70 = v37;
      userEnabled = self->_lastExtractedRowID;
      v68 = [(HDClinicalAccount *)v7 lastExtractedRowID];
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
    v69 = [(HDClinicalAccount *)v7 lastSubmittedRowID];
    DWORD2(v95[1]) = userEnabled != v69;
    if (userEnabled != v69)
    {
      v40 = [(HDClinicalAccount *)v7 lastSubmittedRowID];
      if (!v40)
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

      v67 = v40;
      userEnabled = self->_lastSubmittedRowID;
      v65 = [(HDClinicalAccount *)v7 lastSubmittedRowID];
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
    v43 = [(HDClinicalAccount *)v7 lastExtractedRulesVersion];
    DWORD1(v95[1]) = userEnabled != v43;
    v66 = v43;
    if (userEnabled != v43)
    {
      v44 = [(HDClinicalAccount *)v7 lastExtractedRulesVersion];
      if (!v44)
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

      v64 = v44;
      userEnabled = self->_lastExtractedRulesVersion;
      v61 = [(HDClinicalAccount *)v7 lastExtractedRulesVersion];
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
    v46 = [(HDClinicalAccount *)v7 credential];
    LODWORD(v95[1]) = userEnabled != v46;
    v63 = v46;
    if (userEnabled != v46)
    {
      v62 = [(HDClinicalAccount *)v7 credential];
      if (!v62)
      {
        v62 = 0;
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
      v58 = [(HDClinicalAccount *)v7 credential];
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
    v60 = [(HDClinicalAccount *)v7 patientHash];
    HIDWORD(v95[0]) = userEnabled != v60;
    if (userEnabled != v60)
    {
      v59 = [(HDClinicalAccount *)v7 patientHash];
      if (!v59)
      {
        v59 = 0;
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
      v55 = [(HDClinicalAccount *)v7 patientHash];
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
    v57 = [(HDClinicalAccount *)v7 gateway];
    DWORD2(v95[0]) = userEnabled != v57;
    if (userEnabled != v57)
    {
      v56 = [(HDClinicalAccount *)v7 gateway];
      if (!v56)
      {
        v56 = 0;
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
      v52 = [(HDClinicalAccount *)v7 gateway];
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
    v54 = [(HDClinicalAccount *)v7 signedClinicalDataIssuer];
    LODWORD(v94) = userEnabled != v54;
    if (userEnabled != v54)
    {
      v53 = [(HDClinicalAccount *)v7 signedClinicalDataIssuer];
      if (!v53)
      {
        v53 = 0;
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
      v49 = [(HDClinicalAccount *)v7 signedClinicalDataIssuer];
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
    v51 = [(HDClinicalAccount *)v7 clinicalSharingStatus];
    if (userEnabled == v51)
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
      v50 = [(HDClinicalAccount *)v7 clinicalSharingStatus];
      if (v50)
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
        v50 = 0;
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
      v20 = v9;
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
      v9 = v20;
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

        if (v93 != v9)
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
  v3 = [(HDClinicalAccount *)self gateway];

  if (v3)
  {
    v4 = [HKClinicalGateway alloc];
    v5 = [(HDClinicalAccount *)self gateway];
    v6 = [v4 initWithDaemonClinicalGateway:v5];

    v7 = [[HKClinicalAccountProvenance alloc] initWithGateway:v6];
LABEL_3:
    v8 = v7;

    goto LABEL_6;
  }

  v9 = [(HDClinicalAccount *)self signedClinicalDataIssuer];

  if (!v9)
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
  v11 = [(HDClinicalAccount *)self signedClinicalDataIssuer];
  v8 = [v10 initWithSignedClinicalDataIssuer:v11];

LABEL_6:

  return v8;
}

- (int64_t)hkState
{
  v3 = [(HDClinicalAccount *)self gateway];
  v4 = [v3 lastReportedStatus];

  if (v4 == &dword_0 + 2)
  {
    return 4;
  }

  if (v4 == &dword_0 + 3)
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

  v6 = [(HDClinicalAccount *)self credential];

  if (!v6)
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