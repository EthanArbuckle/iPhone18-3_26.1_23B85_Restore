@interface PFHistoryAnalyzerOptions
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PFHistoryAnalyzerOptions

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 8) = self->_automaticallyPruneTransientRecords;
  *(result + 2) = self->_transactionLimit;
  *(result + 3) = self->_contextMemoryLimitBytes;
  return result;
}

@end