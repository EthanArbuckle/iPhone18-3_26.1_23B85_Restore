@interface HDClinicalPostExtractionOperation
- (HDClinicalPostExtractionOperation)init;
- (HDClinicalPostExtractionOperation)initWithExtractionResult:(id)result;
@end

@implementation HDClinicalPostExtractionOperation

- (HDClinicalPostExtractionOperation)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDClinicalPostExtractionOperation)initWithExtractionResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = HDClinicalPostExtractionOperation;
  v5 = [(HDClinicalPostExtractionOperation *)&v9 init];
  if (v5)
  {
    v6 = [resultCopy copy];
    extractionResult = v5->_extractionResult;
    v5->_extractionResult = v6;
  }

  return v5;
}

@end