@interface PFHistoryAnalyzerOptions
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PFHistoryAnalyzerOptions

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 8) = self->_automaticallyPruneTransientRecords;
  *(result + 2) = self->_transactionLimit;
  *(result + 3) = self->_contextMemoryLimitBytes;
  return result;
}

@end