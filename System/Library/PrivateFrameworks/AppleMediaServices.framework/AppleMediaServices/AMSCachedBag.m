@interface AMSCachedBag
+ (id)bagWithProfile:(id)a3 version:(id)a4 processInfo:(id)a5;
@end

@implementation AMSCachedBag

+ (id)bagWithProfile:(id)a3 version:(id)a4 processInfo:(id)a5
{
  v6 = sub_192F967CC();
  v8 = v7;
  v9 = sub_192F967CC();
  v11 = v10;
  v12 = a5;
  v13 = sub_192C59624(v6, v8, v9, v11, a5);

  return v13;
}

@end