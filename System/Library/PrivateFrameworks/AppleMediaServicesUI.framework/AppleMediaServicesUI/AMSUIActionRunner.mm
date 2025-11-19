@interface AMSUIActionRunner
+ (BOOL)canHandle:(id)a3 context:(id)a4;
+ (id)handle:(id)a3 context:(id)a4;
+ (void)handle:(NSDictionary *)a3 context:(AMSUIActionContext *)a4 completionHandler:(id)a5;
@end

@implementation AMSUIActionRunner

+ (BOOL)canHandle:(id)a3 context:(id)a4
{
  v5 = sub_1BB1DD2D8();
  swift_getObjCClassMetadata();
  v6 = a4;
  LOBYTE(a4) = static UIActionRunner.canHandle(_:context:)(v5, a4);

  return a4 & 1;
}

+ (void)handle:(NSDictionary *)a3 context:(AMSUIActionContext *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = a1;
  v10 = a3;
  v11 = a4;

  sub_1BB1C9020(&unk_1BB1F9C90, v9);
}

+ (id)handle:(id)a3 context:(id)a4
{
  v5 = sub_1BB1DD2D8();
  swift_getObjCClassMetadata();
  v6 = a4;
  v7 = static UIActionRunner.handle(_:context:)(v5, a4);

  return v7;
}

@end