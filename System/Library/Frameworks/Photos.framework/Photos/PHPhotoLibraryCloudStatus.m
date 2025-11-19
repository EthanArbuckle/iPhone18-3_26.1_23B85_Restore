@interface PHPhotoLibraryCloudStatus
- (BOOL)isEqual:(id)a3;
- (PHPhotoLibraryCloudStatus)initWithCPLStatus:(id)a3 isEnabled:(BOOL)a4;
- (id)description;
- (id)statusDescription;
- (unint64_t)hash;
@end

@implementation PHPhotoLibraryCloudStatus

- (id)description
{
  v7.receiver = self;
  v7.super_class = PHPhotoLibraryCloudStatus;
  v3 = [(PHPhotoLibraryCloudStatus *)&v7 description];
  v4 = [(PHPhotoLibraryCloudStatus *)self statusDescription];
  v5 = [v3 stringByAppendingFormat:@": %@", v4];

  return v5;
}

- (id)statusDescription
{
  v3 = MEMORY[0x1E696AEC0];
  if ([(PHPhotoLibraryCloudStatus *)self isCloudSyncEnabled])
  {
    v4 = @"enabled";
  }

  else
  {
    v4 = @"disabled";
  }

  v5 = [(PHPhotoLibraryCloudStatus *)self lastSyncProgressDate];
  v6 = PFMicrosecondAccurateStringFromDate();
  v7 = [(PHPhotoLibraryCloudStatus *)self firstSyncCompletionDate];
  v8 = PFMicrosecondAccurateStringFromDate();
  v9 = [v3 stringWithFormat:@"%@ [last-update:%@ first-complete:%@]", v4, v6, v8];

  return v9;
}

- (unint64_t)hash
{
  v3 = [(PHPhotoLibraryCloudStatus *)self lastSyncProgressDate];
  v4 = [v3 hash];
  v5 = [(PHPhotoLibraryCloudStatus *)self firstSyncCompletionDate];
  v6 = [v5 hash] + v4;
  v7 = v6 + [(PHPhotoLibraryCloudStatus *)self isCloudSyncEnabled];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PHPhotoLibraryCloudStatus *)self isCloudSyncEnabled];
      if (v6 == [(PHPhotoLibraryCloudStatus *)v5 isCloudSyncEnabled]&& ([(PHPhotoLibraryCloudStatus *)self lastSyncProgressDate], v7 = objc_claimAutoreleasedReturnValue(), [(PHPhotoLibraryCloudStatus *)v5 lastSyncProgressDate], v8 = objc_claimAutoreleasedReturnValue(), v9 = PLObjectIsEqual(), v8, v7, v9))
      {
        v10 = [(PHPhotoLibraryCloudStatus *)self firstSyncCompletionDate];
        v11 = [(PHPhotoLibraryCloudStatus *)v5 firstSyncCompletionDate];
        IsEqual = PLObjectIsEqual();
      }

      else
      {
        IsEqual = 0;
      }
    }

    else
    {
      IsEqual = 0;
    }
  }

  return IsEqual;
}

- (PHPhotoLibraryCloudStatus)initWithCPLStatus:(id)a3 isEnabled:(BOOL)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = PHPhotoLibraryCloudStatus;
  v8 = [(PHPhotoLibraryCloudStatus *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cplStatus, a3);
    v9->_cloudSyncEnabled = a4;
    v10 = [v7 lastSuccessfulSyncDate];
    lastSyncProgressDate = v9->_lastSyncProgressDate;
    v9->_lastSyncProgressDate = v10;

    v12 = [v7 initialSyncDate];
    firstSyncCompletionDate = v9->_firstSyncCompletionDate;
    v9->_firstSyncCompletionDate = v12;
  }

  return v9;
}

@end