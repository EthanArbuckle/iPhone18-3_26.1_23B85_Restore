@interface AVMediaContentRatings
+ (BOOL)isImageMaskForMetadataItem:(id)a3;
+ (BOOL)isRatingImageMask:(id)a3;
+ (id)_imageNameForRating:(id)a3;
+ (id)contentRatingsDictionary;
+ (id)displayStringForMetadataItem:(id)a3;
+ (id)imageForMetadataItem:(id)a3;
+ (id)imageForRating:(id)a3;
@end

@implementation AVMediaContentRatings

+ (BOOL)isImageMaskForMetadataItem:(id)a3
{
  v4 = [a3 stringValue];
  LOBYTE(a1) = [a1 isRatingImageMask:v4];

  return a1;
}

+ (id)displayStringForMetadataItem:(id)a3
{
  v4 = [a3 stringValue];
  v5 = [a1 displayStringForRating:v4];

  return v5;
}

+ (id)imageForMetadataItem:(id)a3
{
  v4 = [a3 stringValue];
  v5 = [a1 imageForRating:v4];

  return v5;
}

+ (BOOL)isRatingImageMask:(id)a3
{
  v3 = [a1 _imageNameForRating:a3];
  v4 = [v3 hasSuffix:@"_mask"];

  return v4;
}

+ (id)imageForRating:(id)a3
{
  v3 = [a1 _imageNameForRating:a3];
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

+ (id)_imageNameForRating:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

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