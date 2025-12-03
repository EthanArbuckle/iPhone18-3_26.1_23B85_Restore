@interface TTRIntentHandler
- (id)handlerForIntent:(id)intent;
@end

@implementation TTRIntentHandler

- (id)handlerForIntent:(id)intent
{
  intentCopy = intent;
  selfCopy = self;
  TTRIntentHandler.handler(for:)(intentCopy, v8);

  sub_100008A10(v8, v8[3]);
  v6 = sub_100030D24();
  sub_100008D70(v8);

  return v6;
}

@end