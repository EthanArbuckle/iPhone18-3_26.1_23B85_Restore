@interface TVUNContentItem
+ (id)artworkURLFromTemplate:(id)template forSize:(CGSize)size cropCode:(id)code format:(id)format;
@end

@implementation TVUNContentItem

+ (id)artworkURLFromTemplate:(id)template forSize:(CGSize)size cropCode:(id)code format:(id)format
{
  height = size.height;
  width = size.width;
  if (format)
  {
    formatCopy = format;
  }

  else
  {
    formatCopy = @"jpg";
  }

  formatCopy2 = format;
  height = [WLKArtworkVariant artworkURLFromTemplate:template forSize:code cropCode:formatCopy format:width, height];

  return height;
}

@end