@interface MDLTextureFilter
- (MDLTextureFilter)init;
@end

@implementation MDLTextureFilter

- (MDLTextureFilter)init
{
  v8.receiver = self;
  v8.super_class = MDLTextureFilter;
  v2 = [(MDLTextureFilter *)&v8 init];
  v4 = v2;
  if (v2)
  {
    objc_msgSend_setMagFilter_(v2, v3, 1);
    objc_msgSend_setMinFilter_(v4, v5, 1);
    objc_msgSend_setMipFilter_(v4, v6, 1);
  }

  return v4;
}

@end