@interface AAFAnalyticsEvent(Utils)
- (void)updateTaskResultWithError:()Utils;
@end

@implementation AAFAnalyticsEvent(Utils)

- (void)updateTaskResultWithError:()Utils
{
  v4 = a3;
  v5 = *MEMORY[0x1E6985E40];
  v6 = v4;
  if (v4)
  {
    [self setObject:MEMORY[0x1E695E110] forKeyedSubscript:v5];
    [self populateUnderlyingErrorsStartingWithRootError:v6];
  }

  else
  {
    [self setObject:MEMORY[0x1E695E118] forKeyedSubscript:v5];
  }
}

@end