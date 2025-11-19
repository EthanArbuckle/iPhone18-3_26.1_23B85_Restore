@interface WLASearchUtilities
+ (void)populateSearchImage:(id)a3 withMetadata:(id)a4 artworkType:(int64_t)a5;
+ (void)populateSearchResult:(id)a3 withMetadata:(id)a4;
@end

@implementation WLASearchUtilities

+ (void)populateSearchResult:(id)a3 withMetadata:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v6 canonicalID];
  [v13 setCanonicalId:v7];

  v8 = [v6 title];
  [v13 setTitle:v8];

  if ([v6 contentType] == &dword_0 + 1)
  {
    [v13 setContentType:SAVCSContentTypeMovieValue];
    v9 = [v6 studio];
    [v13 setStudio:v9];
  }

  else
  {
    if ([v6 contentType] != &dword_0 + 2)
    {
      goto LABEL_6;
    }

    [v13 setContentType:SAVCSContentTypeShowValue];
    v9 = [v6 network];
    [v13 setNetwork:v9];
  }

  v10 = [v6 releaseDate];
  [v13 setReleaseDate:v10];

LABEL_6:
  v11 = objc_alloc_init(SAUIImageResource);
  [a1 populateSearchImage:v11 withMetadata:v6 artworkType:2];
  [v13 setImage:v11];
  [v13 setIsEvod:{objc_msgSend(v6, "isEvod")}];
  v12 = objc_alloc_init(SAUIImageResource);
  [a1 populateSearchImage:v12 withMetadata:v6 artworkType:13];
  [v13 setEvodFeaturingImage:v12];
}

+ (void)populateSearchImage:(id)a3 withMetadata:(id)a4 artworkType:(int64_t)a5
{
  v7 = a3;
  v8 = [a4 images];
  v12 = [v8 bestArtworkVariantOfType:a5 forSize:{3000.0, 3000.0}];

  [v12 artworkSize];
  [v7 setPixelWidth:?];
  [v12 artworkSize];
  [v7 setPixelHeight:v9];
  v10 = [v12 artworkSizeTemplateURL];
  v11 = [v10 absoluteString];
  [v7 setUrlFormatString:v11];
}

@end