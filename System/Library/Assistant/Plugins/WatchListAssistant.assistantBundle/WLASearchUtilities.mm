@interface WLASearchUtilities
+ (void)populateSearchImage:(id)image withMetadata:(id)metadata artworkType:(int64_t)type;
+ (void)populateSearchResult:(id)result withMetadata:(id)metadata;
@end

@implementation WLASearchUtilities

+ (void)populateSearchResult:(id)result withMetadata:(id)metadata
{
  resultCopy = result;
  metadataCopy = metadata;
  canonicalID = [metadataCopy canonicalID];
  [resultCopy setCanonicalId:canonicalID];

  title = [metadataCopy title];
  [resultCopy setTitle:title];

  if ([metadataCopy contentType] == &dword_0 + 1)
  {
    [resultCopy setContentType:SAVCSContentTypeMovieValue];
    studio = [metadataCopy studio];
    [resultCopy setStudio:studio];
  }

  else
  {
    if ([metadataCopy contentType] != &dword_0 + 2)
    {
      goto LABEL_6;
    }

    [resultCopy setContentType:SAVCSContentTypeShowValue];
    studio = [metadataCopy network];
    [resultCopy setNetwork:studio];
  }

  releaseDate = [metadataCopy releaseDate];
  [resultCopy setReleaseDate:releaseDate];

LABEL_6:
  v11 = objc_alloc_init(SAUIImageResource);
  [self populateSearchImage:v11 withMetadata:metadataCopy artworkType:2];
  [resultCopy setImage:v11];
  [resultCopy setIsEvod:{objc_msgSend(metadataCopy, "isEvod")}];
  v12 = objc_alloc_init(SAUIImageResource);
  [self populateSearchImage:v12 withMetadata:metadataCopy artworkType:13];
  [resultCopy setEvodFeaturingImage:v12];
}

+ (void)populateSearchImage:(id)image withMetadata:(id)metadata artworkType:(int64_t)type
{
  imageCopy = image;
  images = [metadata images];
  v12 = [images bestArtworkVariantOfType:type forSize:{3000.0, 3000.0}];

  [v12 artworkSize];
  [imageCopy setPixelWidth:?];
  [v12 artworkSize];
  [imageCopy setPixelHeight:v9];
  artworkSizeTemplateURL = [v12 artworkSizeTemplateURL];
  absoluteString = [artworkSizeTemplateURL absoluteString];
  [imageCopy setUrlFormatString:absoluteString];
}

@end