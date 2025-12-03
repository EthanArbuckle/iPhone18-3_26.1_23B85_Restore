@interface ATXDuetDataProvider
+ (Class)supportedDuetEventClass;
@end

@implementation ATXDuetDataProvider

+ (Class)supportedDuetEventClass
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXDuetDataProvider.m" lineNumber:21 description:@"Should be implemented by subclasses"];

  return 0;
}

@end