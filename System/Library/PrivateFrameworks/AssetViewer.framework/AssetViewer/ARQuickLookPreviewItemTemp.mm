@interface ARQuickLookPreviewItemTemp
- (ARQuickLookPreviewItemTemp)initWithFileAtURL:(id)l;
@end

@implementation ARQuickLookPreviewItemTemp

- (ARQuickLookPreviewItemTemp)initWithFileAtURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = ARQuickLookPreviewItemTemp;
  v6 = [(ARQuickLookPreviewItem *)&v9 initWithFileAtURL:lCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_myPreviewURL, l);
  }

  return v7;
}

@end