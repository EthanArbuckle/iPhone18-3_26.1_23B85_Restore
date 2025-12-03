@interface HDCodableClinicalAccount
- (id)clinicalSharingStatusForNewAccountFromSync;
- (void)updateWithPropertiesFromOtherAccount:(id)account;
@end

@implementation HDCodableClinicalAccount

- (void)updateWithPropertiesFromOtherAccount:(id)account
{
  accountCopy = account;
  [(HDCodableClinicalAccount *)self modificationDate];
  v5 = v4;
  [accountCopy modificationDate];
  v7 = v6;
  [(HDCodableClinicalAccount *)self creationDate];
  v9 = v8;
  [accountCopy creationDate];
  if (v9 < v10)
  {
    v10 = v9;
  }

  [(HDCodableClinicalAccount *)self setCreationDate:v10];
  [(HDCodableClinicalAccount *)self modificationDate];
  v12 = v11;
  [accountCopy modificationDate];
  if (v12 >= v13)
  {
    v13 = v12;
  }

  [(HDCodableClinicalAccount *)self setModificationDate:v13];
  if ([accountCopy hasLastFetchDate])
  {
    [(HDCodableClinicalAccount *)self lastFetchDate];
    v15 = v14;
    [accountCopy lastFetchDate];
    if (v15 >= v16)
    {
      v16 = v15;
    }

    [(HDCodableClinicalAccount *)self setLastFetchDate:v16];
  }

  if ([accountCopy hasLastFullFetchDate])
  {
    [(HDCodableClinicalAccount *)self lastFullFetchDate];
    v18 = v17;
    [accountCopy lastFullFetchDate];
    if (v18 >= v19)
    {
      v19 = v18;
    }

    [(HDCodableClinicalAccount *)self setLastFullFetchDate:v19];
  }

  if ([accountCopy hasFailedFetchAttemptsCount])
  {
    [(HDCodableClinicalAccount *)self lastFailedFetchDate];
    v21 = v20;
    [accountCopy lastFailedFetchDate];
    if (v21 < v22)
    {
      -[HDCodableClinicalAccount setFailedFetchAttemptsCount:](self, "setFailedFetchAttemptsCount:", [accountCopy failedFetchAttemptsCount]);
    }
  }

  if ([accountCopy hasLastFailedFetchDate])
  {
    [(HDCodableClinicalAccount *)self lastFailedFetchDate];
    v24 = v23;
    [accountCopy lastFailedFetchDate];
    if (v24 >= v25)
    {
      v25 = v24;
    }

    [(HDCodableClinicalAccount *)self setLastFailedFetchDate:v25];
  }

  v26 = accountCopy;
  if (v5 < v7)
  {
    hasPatientHash = [accountCopy hasPatientHash];
    v26 = accountCopy;
    if (hasPatientHash)
    {
      patientHash = [accountCopy patientHash];
      [(HDCodableClinicalAccount *)self setPatientHash:patientHash];

      v26 = accountCopy;
    }
  }

  if ([v26 hasClinicalSharingFirstSharedDate])
  {
    if ([(HDCodableClinicalAccount *)self hasClinicalSharingFirstSharedDate])
    {
      [(HDCodableClinicalAccount *)self clinicalSharingFirstSharedDate];
      v30 = v29;
      [accountCopy clinicalSharingFirstSharedDate];
      if (v30 < v31)
      {
        v31 = v30;
      }
    }

    else
    {
      [accountCopy clinicalSharingFirstSharedDate];
    }

    [(HDCodableClinicalAccount *)self setClinicalSharingFirstSharedDate:v31];
  }

  if ([accountCopy hasClinicalSharingLastSharedDate])
  {
    if ([(HDCodableClinicalAccount *)self hasClinicalSharingLastSharedDate])
    {
      [(HDCodableClinicalAccount *)self clinicalSharingLastSharedDate];
      v33 = v32;
      [accountCopy clinicalSharingLastSharedDate];
      if (v33 >= v34)
      {
        v34 = v33;
      }
    }

    else
    {
      [accountCopy clinicalSharingLastSharedDate];
    }

    [(HDCodableClinicalAccount *)self setClinicalSharingLastSharedDate:v34];
  }

  if (v5 < v7)
  {
    -[HDCodableClinicalAccount setClinicalSharingUserStatus:](self, "setClinicalSharingUserStatus:", [accountCopy clinicalSharingUserStatus]);
    clinicalSharingPrimaryDeviceName = [accountCopy clinicalSharingPrimaryDeviceName];
    [(HDCodableClinicalAccount *)self setClinicalSharingPrimaryDeviceName:clinicalSharingPrimaryDeviceName];
  }
}

- (id)clinicalSharingStatusForNewAccountFromSync
{
  if ([(HDCodableClinicalAccount *)self hasClinicalSharingFirstSharedDate])
  {
    [(HDCodableClinicalAccount *)self clinicalSharingFirstSharedDate];
    v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v3 = 0;
  }

  if ([(HDCodableClinicalAccount *)self hasClinicalSharingLastSharedDate])
  {
    [(HDCodableClinicalAccount *)self clinicalSharingLastSharedDate];
    v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v4 = 0;
  }

  v5 = [HKClinicalSharingStatus alloc];
  clinicalSharingUserStatus = [(HDCodableClinicalAccount *)self clinicalSharingUserStatus];
  clinicalSharingPrimaryDeviceName = [(HDCodableClinicalAccount *)self clinicalSharingPrimaryDeviceName];
  v8 = [v5 initWithFirstSharedDate:v3 lastSharedDate:v4 featureStatus:0 userStatus:clinicalSharingUserStatus multiDeviceStatus:0 primaryDeviceName:clinicalSharingPrimaryDeviceName];

  return v8;
}

@end