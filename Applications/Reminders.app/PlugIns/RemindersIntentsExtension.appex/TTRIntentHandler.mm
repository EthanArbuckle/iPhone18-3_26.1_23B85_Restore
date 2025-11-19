@interface TTRIntentHandler
- (id)handlerForIntent:(id)a3;
@end

@implementation TTRIntentHandler

- (id)handlerForIntent:(id)a3
{
  v4 = a3;
  v5 = self;
  TTRIntentHandler.handler(for:)(v4, v8);

  sub_100008A10(v8, v8[3]);
  v6 = sub_100030D24();
  sub_100008D70(v8);

  return v6;
}

@end