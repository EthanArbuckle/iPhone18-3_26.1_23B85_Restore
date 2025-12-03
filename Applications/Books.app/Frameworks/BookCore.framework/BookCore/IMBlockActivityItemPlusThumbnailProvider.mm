@interface IMBlockActivityItemPlusThumbnailProvider
- (IMBlockActivityItemPlusThumbnailProvider)initWithUTI:(id)i resolutionBlock:(id)block thumbnailResolutionBlock:(id)resolutionBlock;
- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size;
@end

@implementation IMBlockActivityItemPlusThumbnailProvider

- (IMBlockActivityItemPlusThumbnailProvider)initWithUTI:(id)i resolutionBlock:(id)block thumbnailResolutionBlock:(id)resolutionBlock
{
  resolutionBlockCopy = resolutionBlock;
  v13.receiver = self;
  v13.super_class = IMBlockActivityItemPlusThumbnailProvider;
  v9 = [(IMBlockActivityItemProvider *)&v13 initWithUTI:i resolutionBlock:block];
  if (v9)
  {
    v10 = [resolutionBlockCopy copy];
    thumbnailResolutionBlock = v9->_thumbnailResolutionBlock;
    v9->_thumbnailResolutionBlock = v10;
  }

  return v9;
}

- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  typeCopy = type;
  thumbnailResolutionBlock = [(IMBlockActivityItemPlusThumbnailProvider *)self thumbnailResolutionBlock];
  v10 = (thumbnailResolutionBlock)[2](thumbnailResolutionBlock, typeCopy, width, height);

  return v10;
}

@end