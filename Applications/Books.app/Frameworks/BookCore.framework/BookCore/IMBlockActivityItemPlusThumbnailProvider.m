@interface IMBlockActivityItemPlusThumbnailProvider
- (IMBlockActivityItemPlusThumbnailProvider)initWithUTI:(id)a3 resolutionBlock:(id)a4 thumbnailResolutionBlock:(id)a5;
- (id)activityViewController:(id)a3 thumbnailImageForActivityType:(id)a4 suggestedSize:(CGSize)a5;
@end

@implementation IMBlockActivityItemPlusThumbnailProvider

- (IMBlockActivityItemPlusThumbnailProvider)initWithUTI:(id)a3 resolutionBlock:(id)a4 thumbnailResolutionBlock:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = IMBlockActivityItemPlusThumbnailProvider;
  v9 = [(IMBlockActivityItemProvider *)&v13 initWithUTI:a3 resolutionBlock:a4];
  if (v9)
  {
    v10 = [v8 copy];
    thumbnailResolutionBlock = v9->_thumbnailResolutionBlock;
    v9->_thumbnailResolutionBlock = v10;
  }

  return v9;
}

- (id)activityViewController:(id)a3 thumbnailImageForActivityType:(id)a4 suggestedSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a4;
  v9 = [(IMBlockActivityItemPlusThumbnailProvider *)self thumbnailResolutionBlock];
  v10 = (v9)[2](v9, v8, width, height);

  return v10;
}

@end