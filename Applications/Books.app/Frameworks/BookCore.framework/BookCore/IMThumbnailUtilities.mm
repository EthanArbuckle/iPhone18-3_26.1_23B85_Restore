@interface IMThumbnailUtilities
+ (CGSize)proportionalScaleSize:(CGSize)size toDestinationSize:(CGSize)destinationSize options:(int64_t)options;
+ (id)scaleImage:(id)image toSize:(CGSize)size options:(int64_t)options;
@end

@implementation IMThumbnailUtilities

+ (CGSize)proportionalScaleSize:(CGSize)size toDestinationSize:(CGSize)destinationSize options:(int64_t)options
{
  width = size.width;
  v6 = destinationSize.width / width;
  height = size.height;
  v8 = destinationSize.height / height;
  if (v6 >= v8)
  {
    v6 = v8;
  }

  v9 = v6 * width;
  v10 = v6 * height;
  if ((options & 2) != 0 && v9 / v10 + 0.072 >= 0.667 && v9 / v10 + -0.072 <= 0.667)
  {
    v9 = v10 * 0.667;
  }

  v12 = +[UIScreen mainScreen];
  [v12 scale];
  v14 = v13;

  v15 = v14 * round(v9 / v14);
  v16 = v14 * round(v10 / v14);
  result.height = v16;
  result.width = v15;
  return result;
}

+ (id)scaleImage:(id)image toSize:(CGSize)size options:(int64_t)options
{
  height = size.height;
  width = size.width;
  imageCopy = image;
  [imageCopy size];
  if (!options && (v9 == width ? (v11 = v10 == height) : (v11 = 0), v11))
  {
    v12 = imageCopy;
  }

  else if (imageCopy)
  {
    [imageCopy size];
    [IMThumbnailUtilities proportionalScaleSize:"proportionalScaleSize:toDestinationSize:options:" toDestinationSize:options options:?];
    v14 = v13;
    v16 = v15;
    v17 = +[UIGraphicsImageRendererFormat preferredFormat];
    v18 = [[UIGraphicsImageRenderer alloc] initWithSize:v17 format:{v14, v16}];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10F8C;
    v20[3] = &unk_2C80B0;
    v22 = v14;
    v23 = v16;
    v24 = 0;
    v25 = 0;
    v26 = v14;
    v27 = v16;
    v21 = imageCopy;
    v12 = [v18 imageWithActions:v20];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end