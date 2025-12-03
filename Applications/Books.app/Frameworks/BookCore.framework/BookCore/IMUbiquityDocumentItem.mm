@interface IMUbiquityDocumentItem
- (id)description;
@end

@implementation IMUbiquityDocumentItem

- (id)description
{
  v16 = objc_opt_class();
  v15 = [(IMUbiquityDocumentItem *)self url];
  v18 = [NSNumber numberWithBool:[(IMUbiquityDocumentItem *)self isLocal]];
  v14 = [NSNumber numberWithBool:[(IMUbiquityDocumentItem *)self isNotLocal]];
  v17 = [NSNumber numberWithBool:[(IMUbiquityDocumentItem *)self isUploading]];
  v13 = [NSNumber numberWithBool:[(IMUbiquityDocumentItem *)self isUploaded]];
  v3 = [NSNumber numberWithBool:[(IMUbiquityDocumentItem *)self isDownloading]];
  downloadingPercent = [(IMUbiquityDocumentItem *)self downloadingPercent];
  uploadingPercent = [(IMUbiquityDocumentItem *)self uploadingPercent];
  uploadingError = [(IMUbiquityDocumentItem *)self uploadingError];
  unresolvedConflict = [(IMUbiquityDocumentItem *)self unresolvedConflict];
  contentChangedDate = [(IMUbiquityDocumentItem *)self contentChangedDate];
  contentCreationDate = [(IMUbiquityDocumentItem *)self contentCreationDate];
  contentFileSize = [(IMUbiquityDocumentItem *)self contentFileSize];
  v10 = [NSString stringWithFormat:@"<%@(%p) \n\t url : %@ \n\t isLocal : %@ \n\t isNotLocal : %@ \n\t isUploading : %@ \n\t isUploaded : %@ \n\t isDownloading : %@ \n\t downloadingPercent : %@ \n\t uploadingPercent : %@ \n\t uploadingError : %@ \n\t unresolvedConflict : %@ \n\t contentChangedDate : %@ \n\t contentCreationDate : %@ \n\t contentFileSize : %@ ", v16, self, v15, v18, v14, v17, v13, v3, downloadingPercent, uploadingPercent, uploadingError, unresolvedConflict, contentChangedDate, contentCreationDate, contentFileSize];

  return v10;
}

@end