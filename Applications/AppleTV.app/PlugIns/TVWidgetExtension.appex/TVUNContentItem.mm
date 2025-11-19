@interface TVUNContentItem
+ (id)artworkURLFromTemplate:(id)a3 forSize:(CGSize)a4 cropCode:(id)a5 format:(id)a6;
@end

@implementation TVUNContentItem

+ (id)artworkURLFromTemplate:(id)a3 forSize:(CGSize)a4 cropCode:(id)a5 format:(id)a6
{
  height = a4.height;
  width = a4.width;
  if (a6)
  {
    v10 = a6;
  }

  else
  {
    v10 = @"jpg";
  }

  v11 = a6;
  v12 = [WLKArtworkVariant artworkURLFromTemplate:a3 forSize:a5 cropCode:v10 format:width, height];

  return v12;
}

@end