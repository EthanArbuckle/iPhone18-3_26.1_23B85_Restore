@interface BEWebProcessJavaScriptAPI
+ (void)exportForContext:(id)a3;
@end

@implementation BEWebProcessJavaScriptAPI

+ (void)exportForContext:(id)a3
{
  v3 = a3;
  JSContextGetGroup([v3 JSGlobalContextRef]);
  JSContextGroupSetExecutionTimeLimit();
  [v3 setObject:&stru_209B0 forKeyedSubscript:@"adjustedTextRectsForRange"];
}

@end