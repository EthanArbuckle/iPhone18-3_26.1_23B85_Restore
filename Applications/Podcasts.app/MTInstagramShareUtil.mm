@interface MTInstagramShareUtil
+ (id)createSocialPostUIImageWithShareModel:(id)model;
- (MTInstagramShareUtil)init;
@end

@implementation MTInstagramShareUtil

+ (id)createSocialPostUIImageWithShareModel:(id)model
{
  modelCopy = model;
  v4 = sub_10034B2B8(modelCopy);

  return v4;
}

- (MTInstagramShareUtil)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MTInstagramShareUtil *)&v3 init];
}

@end