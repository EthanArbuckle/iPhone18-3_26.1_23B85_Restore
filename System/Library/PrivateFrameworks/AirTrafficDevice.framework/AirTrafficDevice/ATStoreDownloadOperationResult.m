@interface ATStoreDownloadOperationResult
- (id)description;
@end

@implementation ATStoreDownloadOperationResult

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = ATStoreDownloadOperationResult;
  v4 = [(ATStoreDownloadOperationResult *)&v7 description];
  v5 = [v3 stringWithFormat:@"<%@ [cancelRemaining=%d, hasResumeData=%d, path=%@]>", v4, self->_cancelAllRemaining, self->_resumeData != 0, self->_downloadFilePath];

  return v5;
}

@end