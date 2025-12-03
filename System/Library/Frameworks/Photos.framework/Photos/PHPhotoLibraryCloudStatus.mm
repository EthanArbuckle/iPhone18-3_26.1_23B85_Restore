@interface PHPhotoLibraryCloudStatus
- (BOOL)isEqual:(id)equal;
- (PHPhotoLibraryCloudStatus)initWithCPLStatus:(id)status isEnabled:(BOOL)enabled;
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
  statusDescription = [(PHPhotoLibraryCloudStatus *)self statusDescription];
  v5 = [v3 stringByAppendingFormat:@": %@", statusDescription];

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

  lastSyncProgressDate = [(PHPhotoLibraryCloudStatus *)self lastSyncProgressDate];
  v6 = PFMicrosecondAccurateStringFromDate();
  firstSyncCompletionDate = [(PHPhotoLibraryCloudStatus *)self firstSyncCompletionDate];
  v8 = PFMicrosecondAccurateStringFromDate();
  v9 = [v3 stringWithFormat:@"%@ [last-update:%@ first-complete:%@]", v4, v6, v8];

  return v9;
}

- (unint64_t)hash
{
  lastSyncProgressDate = [(PHPhotoLibraryCloudStatus *)self lastSyncProgressDate];
  v4 = [lastSyncProgressDate hash];
  firstSyncCompletionDate = [(PHPhotoLibraryCloudStatus *)self firstSyncCompletionDate];
  v6 = [firstSyncCompletionDate hash] + v4;
  v7 = v6 + [(PHPhotoLibraryCloudStatus *)self isCloudSyncEnabled];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      isCloudSyncEnabled = [(PHPhotoLibraryCloudStatus *)self isCloudSyncEnabled];
      if (isCloudSyncEnabled == [(PHPhotoLibraryCloudStatus *)v5 isCloudSyncEnabled]&& ([(PHPhotoLibraryCloudStatus *)self lastSyncProgressDate], v7 = objc_claimAutoreleasedReturnValue(), [(PHPhotoLibraryCloudStatus *)v5 lastSyncProgressDate], v8 = objc_claimAutoreleasedReturnValue(), v9 = PLObjectIsEqual(), v8, v7, v9))
      {
        firstSyncCompletionDate = [(PHPhotoLibraryCloudStatus *)self firstSyncCompletionDate];
        firstSyncCompletionDate2 = [(PHPhotoLibraryCloudStatus *)v5 firstSyncCompletionDate];
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

- (PHPhotoLibraryCloudStatus)initWithCPLStatus:(id)status isEnabled:(BOOL)enabled
{
  statusCopy = status;
  v15.receiver = self;
  v15.super_class = PHPhotoLibraryCloudStatus;
  v8 = [(PHPhotoLibraryCloudStatus *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cplStatus, status);
    v9->_cloudSyncEnabled = enabled;
    lastSuccessfulSyncDate = [statusCopy lastSuccessfulSyncDate];
    lastSyncProgressDate = v9->_lastSyncProgressDate;
    v9->_lastSyncProgressDate = lastSuccessfulSyncDate;

    initialSyncDate = [statusCopy initialSyncDate];
    firstSyncCompletionDate = v9->_firstSyncCompletionDate;
    v9->_firstSyncCompletionDate = initialSyncDate;
  }

  return v9;
}

@end