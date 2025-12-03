@interface PFCloudKitHistoryAnalyzerOptions
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation PFCloudKitHistoryAnalyzerOptions

- (void)dealloc
{
  self->_request = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitHistoryAnalyzerOptions;
  [(PFCloudKitHistoryAnalyzerOptions *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PFCloudKitHistoryAnalyzerOptions;
  v4 = [(PFHistoryAnalyzerOptions *)&v6 copyWithZone:zone];
  v4[33] = *(&self->_includePrivateTransactions + 1);
  *(v4 + 5) = self->_request;
  return v4;
}

@end