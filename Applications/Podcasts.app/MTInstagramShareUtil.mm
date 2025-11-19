@interface MTInstagramShareUtil
+ (id)createSocialPostUIImageWithShareModel:(id)a3;
- (MTInstagramShareUtil)init;
@end

@implementation MTInstagramShareUtil

+ (id)createSocialPostUIImageWithShareModel:(id)a3
{
  v3 = a3;
  v4 = sub_10034B2B8(v3);

  return v4;
}

- (MTInstagramShareUtil)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MTInstagramShareUtil *)&v3 init];
}

@end