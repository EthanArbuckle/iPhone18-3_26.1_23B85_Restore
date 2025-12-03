@interface AMSCachedBag
+ (id)bagWithProfile:(id)profile version:(id)version processInfo:(id)info;
@end

@implementation AMSCachedBag

+ (id)bagWithProfile:(id)profile version:(id)version processInfo:(id)info
{
  v6 = sub_192F967CC();
  v8 = v7;
  v9 = sub_192F967CC();
  v11 = v10;
  infoCopy = info;
  v13 = sub_192C59624(v6, v8, v9, v11, info);

  return v13;
}

@end