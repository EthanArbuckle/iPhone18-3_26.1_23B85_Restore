@interface BEWebProcessJavaScriptAPI
+ (void)exportForContext:(id)context;
@end

@implementation BEWebProcessJavaScriptAPI

+ (void)exportForContext:(id)context
{
  contextCopy = context;
  JSContextGetGroup([contextCopy JSGlobalContextRef]);
  JSContextGroupSetExecutionTimeLimit();
  [contextCopy setObject:&stru_209B0 forKeyedSubscript:@"adjustedTextRectsForRange"];
}

@end