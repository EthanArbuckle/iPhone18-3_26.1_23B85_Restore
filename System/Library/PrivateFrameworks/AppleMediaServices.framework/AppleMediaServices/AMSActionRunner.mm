@interface AMSActionRunner
+ (BOOL)canHandle:(id)handle context:(id)context;
+ (id)handle:(id)handle context:(id)context;
+ (void)handle:(NSDictionary *)handle context:(AMSActionContext *)context completionHandler:(id)handler;
@end

@implementation AMSActionRunner

+ (BOOL)canHandle:(id)handle context:(id)context
{
  v5 = sub_192F9669C();
  swift_getObjCClassMetadata();
  contextCopy = context;
  LOBYTE(context) = static ActionRunner.canHandle(_:context:)(v5, context);

  return context & 1;
}

+ (void)handle:(NSDictionary *)handle context:(AMSActionContext *)context completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = handle;
  v9[3] = context;
  v9[4] = v8;
  v9[5] = self;
  handleCopy = handle;
  contextCopy = context;

  sub_1928FB3BC(&unk_192FBF128, v9);
}

+ (id)handle:(id)handle context:(id)context
{
  v5 = sub_192F9669C();
  swift_getObjCClassMetadata();
  contextCopy = context;
  v7 = static ActionRunner.handle(_:context:)(v5, context);

  return v7;
}

@end