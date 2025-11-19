@interface HDCodableClinicalAccount
- (id)clinicalSharingStatusForNewAccountFromSync;
- (void)updateWithPropertiesFromOtherAccount:(id)a3;
@end

@implementation HDCodableClinicalAccount

- (void)updateWithPropertiesFromOtherAccount:(id)a3
{
  v36 = a3;
  [(HDCodableClinicalAccount *)self modificationDate];
  v5 = v4;
  [v36 modificationDate];
  v7 = v6;
  [(HDCodableClinicalAccount *)self creationDate];
  v9 = v8;
  [v36 creationDate];
  if (v9 < v10)
  {
    v10 = v9;
  }

  [(HDCodableClinicalAccount *)self setCreationDate:v10];
  [(HDCodableClinicalAccount *)self modificationDate];
  v12 = v11;
  [v36 modificationDate];
  if (v12 >= v13)
  {
    v13 = v12;
  }

  [(HDCodableClinicalAccount *)self setModificationDate:v13];
  if ([v36 hasLastFetchDate])
  {
    [(HDCodableClinicalAccount *)self lastFetchDate];
    v15 = v14;
    [v36 lastFetchDate];
    if (v15 >= v16)
    {
      v16 = v15;
    }

    [(HDCodableClinicalAccount *)self setLastFetchDate:v16];
  }

  if ([v36 hasLastFullFetchDate])
  {
    [(HDCodableClinicalAccount *)self lastFullFetchDate];
    v18 = v17;
    [v36 lastFullFetchDate];
    if (v18 >= v19)
    {
      v19 = v18;
    }

    [(HDCodableClinicalAccount *)self setLastFullFetchDate:v19];
  }

  if ([v36 hasFailedFetchAttemptsCount])
  {
    [(HDCodableClinicalAccount *)self lastFailedFetchDate];
    v21 = v20;
    [v36 lastFailedFetchDate];
    if (v21 < v22)
    {
      -[HDCodableClinicalAccount setFailedFetchAttemptsCount:](self, "setFailedFetchAttemptsCount:", [v36 failedFetchAttemptsCount]);
    }
  }

  if ([v36 hasLastFailedFetchDate])
  {
    [(HDCodableClinicalAccount *)self lastFailedFetchDate];
    v24 = v23;
    [v36 lastFailedFetchDate];
    if (v24 >= v25)
    {
      v25 = v24;
    }

    [(HDCodableClinicalAccount *)self setLastFailedFetchDate:v25];
  }

  v26 = v36;
  if (v5 < v7)
  {
    v27 = [v36 hasPatientHash];
    v26 = v36;
    if (v27)
    {
      v28 = [v36 patientHash];
      [(HDCodableClinicalAccount *)self setPatientHash:v28];

      v26 = v36;
    }
  }

  if ([v26 hasClinicalSharingFirstSharedDate])
  {
    if ([(HDCodableClinicalAccount *)self hasClinicalSharingFirstSharedDate])
    {
      [(HDCodableClinicalAccount *)self clinicalSharingFirstSharedDate];
      v30 = v29;
      [v36 clinicalSharingFirstSharedDate];
      if (v30 < v31)
      {
        v31 = v30;
      }
    }

    else
    {
      [v36 clinicalSharingFirstSharedDate];
    }

    [(HDCodableClinicalAccount *)self setClinicalSharingFirstSharedDate:v31];
  }

  if ([v36 hasClinicalSharingLastSharedDate])
  {
    if ([(HDCodableClinicalAccount *)self hasClinicalSharingLastSharedDate])
    {
      [(HDCodableClinicalAccount *)self clinicalSharingLastSharedDate];
      v33 = v32;
      [v36 clinicalSharingLastSharedDate];
      if (v33 >= v34)
      {
        v34 = v33;
      }
    }

    else
    {
      [v36 clinicalSharingLastSharedDate];
    }

    [(HDCodableClinicalAccount *)self setClinicalSharingLastSharedDate:v34];
  }

  if (v5 < v7)
  {
    -[HDCodableClinicalAccount setClinicalSharingUserStatus:](self, "setClinicalSharingUserStatus:", [v36 clinicalSharingUserStatus]);
    v35 = [v36 clinicalSharingPrimaryDeviceName];
    [(HDCodableClinicalAccount *)self setClinicalSharingPrimaryDeviceName:v35];
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
  v6 = [(HDCodableClinicalAccount *)self clinicalSharingUserStatus];
  v7 = [(HDCodableClinicalAccount *)self clinicalSharingPrimaryDeviceName];
  v8 = [v5 initWithFirstSharedDate:v3 lastSharedDate:v4 featureStatus:0 userStatus:v6 multiDeviceStatus:0 primaryDeviceName:v7];

  return v8;
}

@end