@interface AMSPaymentSheetAssetCache
- (AMSPaymentSheetAssetCache)init;
- (void)dealloc;
@end

@implementation AMSPaymentSheetAssetCache

- (AMSPaymentSheetAssetCache)init
{
  v4.receiver = self;
  v4.super_class = AMSPaymentSheetAssetCache;
  v2 = [(AMSPaymentSheetAssetCache *)&v4 init];
  if (v2)
  {
    v2->_imageArrayRef = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  }

  return v2;
}

- (void)dealloc
{
  imageArrayRef = self->_imageArrayRef;
  if (imageArrayRef)
  {
    CFRelease(imageArrayRef);
  }

  v4.receiver = self;
  v4.super_class = AMSPaymentSheetAssetCache;
  [(AMSPaymentSheetAssetCache *)&v4 dealloc];
}

@end