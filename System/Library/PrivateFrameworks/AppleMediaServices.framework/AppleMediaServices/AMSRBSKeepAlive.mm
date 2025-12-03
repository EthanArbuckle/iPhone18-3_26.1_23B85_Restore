@interface AMSRBSKeepAlive
+ (id)keepAliveWithName:(id)name;
+ (id)keepAliveWithName:(id)name style:(int64_t)style;
+ (void)keepAliveWithName:(id)name style:(int64_t)style block:(id)block;
+ (void)keepAliveWithName:(id)name style:(int64_t)style qosOverrideIfRBManaged:(unsigned int)managed relativePriority:(int64_t)priority block:(id)block;
- (NSString)name;
- (void)invalidate;
@end

@implementation AMSRBSKeepAlive

+ (id)keepAliveWithName:(id)name style:(int64_t)style
{
  v5 = sub_192F967CC();
  v7 = v6;
  swift_getObjCClassMetadata();
  v8 = sub_1928FB5FC(v5, v7, style);

  return v8;
}

- (void)invalidate
{
  selfCopy = self;
  sub_192913628();
}

+ (void)keepAliveWithName:(id)name style:(int64_t)style qosOverrideIfRBManaged:(unsigned int)managed relativePriority:(int64_t)priority block:(id)block
{
  v8 = *&managed;
  v10 = _Block_copy(block);
  v11 = sub_192F967CC();
  v13 = v12;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v10);
  sub_19292B2FC(v11, v13, style, v8, priority, ObjCClassMetadata, v10);
  _Block_release(v10);
}

- (NSString)name
{
  sub_192CBDFAC();
  v2 = sub_192F9679C();

  return v2;
}

+ (id)keepAliveWithName:(id)name
{
  v3 = sub_192F967CC();
  v5 = v4;
  swift_getObjCClassMetadata();
  v6 = sub_192CBE01C(v3, v5);

  return v6;
}

+ (void)keepAliveWithName:(id)name style:(int64_t)style block:(id)block
{
  v6 = _Block_copy(block);
  v7 = sub_192F967CC();
  v9 = v8;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v6);
  sub_192CBE0E0(v7, v9, style, ObjCClassMetadata, v6);
  _Block_release(v6);
}

@end