@interface MTLTextureReferenceType
+ (MTLTextureReferenceType)allocWithZone:(_NSZone *)zone;
@end

@implementation MTLTextureReferenceType

+ (MTLTextureReferenceType)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLTextureReferenceTypeInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLTextureReferenceType;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

@end