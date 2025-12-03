@interface _LTSELFLoggingInvocationProvider
+ (id)startInvocationWithTask:(int64_t)task inputMode:(int64_t)mode invocationType:(int64_t)type translateAppContext:(id)context;
@end

@implementation _LTSELFLoggingInvocationProvider

+ (id)startInvocationWithTask:(int64_t)task inputMode:(int64_t)mode invocationType:(int64_t)type translateAppContext:(id)context
{
  v9 = MEMORY[0x277CCAD78];
  contextCopy = context;
  v11 = objc_alloc_init(v9);
  v12 = [[_LTSELFLoggingInvocation alloc] initWithInvocationId:v11];
  v13 = [[_LTSELFLoggingInvocationOptions alloc] initWithTask:task inputMode:mode invocationType:type translateAppContext:contextCopy];

  v14 = [_LTSELFLoggingEventData alloc];
  invocationId = [(_LTSELFLoggingInvocation *)v12 invocationId];
  v16 = [(_LTSELFLoggingEventData *)v14 initWithType:1 invocationId:invocationId];

  [(_LTSELFLoggingEventData *)v16 setStartInvocationOptions:v13];
  [_LTTranslator selfLoggingEventWithData:v16];

  return v12;
}

@end