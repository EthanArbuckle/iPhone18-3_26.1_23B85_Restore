@interface _LTSELFLoggingInvocationProvider
+ (id)startInvocationWithTask:(int64_t)a3 inputMode:(int64_t)a4 invocationType:(int64_t)a5 translateAppContext:(id)a6;
@end

@implementation _LTSELFLoggingInvocationProvider

+ (id)startInvocationWithTask:(int64_t)a3 inputMode:(int64_t)a4 invocationType:(int64_t)a5 translateAppContext:(id)a6
{
  v9 = MEMORY[0x277CCAD78];
  v10 = a6;
  v11 = objc_alloc_init(v9);
  v12 = [[_LTSELFLoggingInvocation alloc] initWithInvocationId:v11];
  v13 = [[_LTSELFLoggingInvocationOptions alloc] initWithTask:a3 inputMode:a4 invocationType:a5 translateAppContext:v10];

  v14 = [_LTSELFLoggingEventData alloc];
  v15 = [(_LTSELFLoggingInvocation *)v12 invocationId];
  v16 = [(_LTSELFLoggingEventData *)v14 initWithType:1 invocationId:v15];

  [(_LTSELFLoggingEventData *)v16 setStartInvocationOptions:v13];
  [_LTTranslator selfLoggingEventWithData:v16];

  return v12;
}

@end