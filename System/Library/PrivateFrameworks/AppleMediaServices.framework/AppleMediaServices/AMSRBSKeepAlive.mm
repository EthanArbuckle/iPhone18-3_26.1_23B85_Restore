@interface AMSRBSKeepAlive
+ (id)keepAliveWithName:(id)a3;
+ (id)keepAliveWithName:(id)a3 style:(int64_t)a4;
+ (void)keepAliveWithName:(id)a3 style:(int64_t)a4 block:(id)a5;
+ (void)keepAliveWithName:(id)a3 style:(int64_t)a4 qosOverrideIfRBManaged:(unsigned int)a5 relativePriority:(int64_t)a6 block:(id)a7;
- (NSString)name;
- (void)invalidate;
@end

@implementation AMSRBSKeepAlive

+ (id)keepAliveWithName:(id)a3 style:(int64_t)a4
{
  v5 = sub_192F967CC();
  v7 = v6;
  swift_getObjCClassMetadata();
  v8 = sub_1928FB5FC(v5, v7, a4);

  return v8;
}

- (void)invalidate
{
  v2 = self;
  sub_192913628();
}

+ (void)keepAliveWithName:(id)a3 style:(int64_t)a4 qosOverrideIfRBManaged:(unsigned int)a5 relativePriority:(int64_t)a6 block:(id)a7
{
  v8 = *&a5;
  v10 = _Block_copy(a7);
  v11 = sub_192F967CC();
  v13 = v12;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v10);
  sub_19292B2FC(v11, v13, a4, v8, a6, ObjCClassMetadata, v10);
  _Block_release(v10);
}

- (NSString)name
{
  sub_192CBDFAC();
  v2 = sub_192F9679C();

  return v2;
}

+ (id)keepAliveWithName:(id)a3
{
  v3 = sub_192F967CC();
  v5 = v4;
  swift_getObjCClassMetadata();
  v6 = sub_192CBE01C(v3, v5);

  return v6;
}

+ (void)keepAliveWithName:(id)a3 style:(int64_t)a4 block:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_192F967CC();
  v9 = v8;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v6);
  sub_192CBE0E0(v7, v9, a4, ObjCClassMetadata, v6);
  _Block_release(v6);
}

@end