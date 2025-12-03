@interface AVMediaContentRatings
+ (BOOL)isImageMaskForMetadataItem:(id)item;
+ (BOOL)isRatingImageMask:(id)mask;
+ (id)_imageNameForRating:(id)rating;
+ (id)contentRatingsDictionary;
+ (id)displayStringForMetadataItem:(id)item;
+ (id)imageForMetadataItem:(id)item;
+ (id)imageForRating:(id)rating;
@end

@implementation AVMediaContentRatings

+ (BOOL)isImageMaskForMetadataItem:(id)item
{
  stringValue = [item stringValue];
  LOBYTE(self) = [self isRatingImageMask:stringValue];

  return self;
}

+ (id)displayStringForMetadataItem:(id)item
{
  stringValue = [item stringValue];
  v5 = [self displayStringForRating:stringValue];

  return v5;
}

+ (id)imageForMetadataItem:(id)item
{
  stringValue = [item stringValue];
  v5 = [self imageForRating:stringValue];

  return v5;
}

+ (BOOL)isRatingImageMask:(id)mask
{
  v3 = [self _imageNameForRating:mask];
  v4 = [v3 hasSuffix:@"_mask"];

  return v4;
}

+ (id)imageForRating:(id)rating
{
  v3 = [self _imageNameForRating:rating];
  if (v3)
  {
    v4 = MEMORY[0x1E69DCAB8];
    v5 = AVBundle();
    v6 = [v4 imageNamed:v3 inBundle:v5 compatibleWithTraitCollection:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_imageNameForRating:(id)rating
{
  lowercaseString = [rating lowercaseString];
  v4 = [lowercaseString stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"-" withString:&stru_1EFED57D8];

  v6 = +[AVMediaContentRatings contentRatingsDictionary];
  v7 = [v6 objectForKeyedSubscript:v5];

  return v7;
}

+ (id)contentRatingsDictionary
{
  if (contentRatingsDictionary_onceToken != -1)
  {
    dispatch_once(&contentRatingsDictionary_onceToken, &__block_literal_global_34128);
  }

  v3 = contentRatingsDictionary__contentRatingsDictionary;

  return v3;
}

void __49__AVMediaContentRatings_contentRatingsDictionary__block_invoke()
{
  v0 = contentRatingsDictionary__contentRatingsDictionary;
  contentRatingsDictionary__contentRatingsDictionary = &unk_1EFF13350;
}

@end