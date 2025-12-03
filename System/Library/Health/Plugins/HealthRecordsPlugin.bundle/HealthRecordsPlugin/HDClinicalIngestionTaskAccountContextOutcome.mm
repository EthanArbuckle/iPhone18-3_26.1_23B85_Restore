@interface HDClinicalIngestionTaskAccountContextOutcome
+ (id)new;
- (HDClinicalIngestionTaskAccountContextOutcome)init;
- (HDClinicalIngestionTaskAccountContextOutcome)initWithOneFetchSucceeded:(BOOL)succeeded accountMustLimitRequests:(BOOL)requests;
@end

@implementation HDClinicalIngestionTaskAccountContextOutcome

+ (id)new
{
  v2 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v2, objc_opt_class()];

  return 0;
}

- (HDClinicalIngestionTaskAccountContextOutcome)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDClinicalIngestionTaskAccountContextOutcome)initWithOneFetchSucceeded:(BOOL)succeeded accountMustLimitRequests:(BOOL)requests
{
  v7.receiver = self;
  v7.super_class = HDClinicalIngestionTaskAccountContextOutcome;
  result = [(HDClinicalIngestionTaskAccountContextOutcome *)&v7 init];
  if (result)
  {
    result->_atLeastOneFetchSucceeded = succeeded;
    result->_accountMustLimitRequests = requests;
  }

  return result;
}

@end