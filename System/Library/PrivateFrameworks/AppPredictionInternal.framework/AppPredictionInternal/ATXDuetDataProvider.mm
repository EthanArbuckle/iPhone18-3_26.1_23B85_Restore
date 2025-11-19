@interface ATXDuetDataProvider
+ (Class)supportedDuetEventClass;
@end

@implementation ATXDuetDataProvider

+ (Class)supportedDuetEventClass
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ATXDuetDataProvider.m" lineNumber:21 description:@"Should be implemented by subclasses"];

  return 0;
}

@end