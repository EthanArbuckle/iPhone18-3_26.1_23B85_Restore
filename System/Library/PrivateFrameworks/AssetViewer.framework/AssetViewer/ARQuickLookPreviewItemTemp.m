@interface ARQuickLookPreviewItemTemp
- (ARQuickLookPreviewItemTemp)initWithFileAtURL:(id)a3;
@end

@implementation ARQuickLookPreviewItemTemp

- (ARQuickLookPreviewItemTemp)initWithFileAtURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ARQuickLookPreviewItemTemp;
  v6 = [(ARQuickLookPreviewItem *)&v9 initWithFileAtURL:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_myPreviewURL, a3);
  }

  return v7;
}

@end