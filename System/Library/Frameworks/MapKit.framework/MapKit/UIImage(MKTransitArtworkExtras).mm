@interface UIImage(MKTransitArtworkExtras)
+ (id)_mapkit_imageFromVKImage:()MKTransitArtworkExtras;
+ (id)_mapkit_transitArtworkImageWithDataSource:()MKTransitArtworkExtras size:scale:nightMode:;
+ (id)_mapkit_transitArtworkImageWithDataSource:()MKTransitArtworkExtras size:scale:withWidthPaddingMultiple:;
@end

@implementation UIImage(MKTransitArtworkExtras)

+ (id)_mapkit_imageFromVKImage:()MKTransitArtworkExtras
{
  if (a3)
  {
    v4 = MEMORY[0x1E69DCAB8];
    v5 = a3;
    v6 = [v4 alloc];
    image = [v5 image];
    [v5 contentScale];
    v9 = v8;

    v10 = [v6 initWithCGImage:image scale:0 orientation:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_mapkit_transitArtworkImageWithDataSource:()MKTransitArtworkExtras size:scale:withWidthPaddingMultiple:
{
  v9 = a5;
  v10 = +[MKTransitArtworkManager sharedInstance];
  v11 = [v10 transitArtworkImageWithDataSource:v9 size:a6 featureType:2 scale:0 nightMode:self withWidthPaddingMultiple:a2];

  return v11;
}

+ (id)_mapkit_transitArtworkImageWithDataSource:()MKTransitArtworkExtras size:scale:nightMode:
{
  v9 = a4;
  v10 = +[MKTransitArtworkManager sharedInstance];
  v11 = [v10 transitArtworkImageWithDataSource:v9 size:a5 featureType:2 scale:a6 nightMode:self];

  return v11;
}

@end