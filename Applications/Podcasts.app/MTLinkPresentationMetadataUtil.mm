@interface MTLinkPresentationMetadataUtil
+ (id)_storefrontIdentifierFromPreviewUrl:(id)url;
+ (id)linkMetadataForDataSource:(id)source;
@end

@implementation MTLinkPresentationMetadataUtil

+ (id)linkMetadataForDataSource:(id)source
{
  sourceCopy = source;
  v5 = objc_alloc_init(LPLinkMetadata);
  shareURL = [sourceCopy shareURL];
  [v5 setURL:shareURL];

  shareImage = [sourceCopy shareImage];
  shareImageProvider = [sourceCopy shareImageProvider];
  if (shareImage | shareImageProvider)
  {
    v9 = [v5 URL];
    activeStorefront = [self _storefrontIdentifierFromPreviewUrl:v9];

    if (!activeStorefront)
    {
      v11 = +[MTAccountController sharedInstance];
      activeStorefront = [v11 activeStorefront];
    }

    v12 = [LPImage alloc];
    v31 = shareImage;
    if (!shareImageProvider || shareImage)
    {
      v15 = UIImagePNGRepresentation(shareImage);
      v34 = [v12 initWithData:v15 MIMEType:@"image/png"];
    }

    else
    {
      v13 = +[UIImage defaultPodcastArtwork];
      v14 = UIImagePNGRepresentation(v13);
      v15 = [v12 initWithData:v14 MIMEType:@"image/png"];

      v16 = [LPImage alloc];
      shareImageProvider2 = [sourceCopy shareImageProvider];
      v34 = [v16 initWithItemProvider:shareImageProvider2 properties:0 placeholderImage:v15];
    }

    storeIdentifier = [sourceCopy storeIdentifier];
    shareEpisodeTitle = [sourceCopy shareEpisodeTitle];
    sharePodcastTitle = [sourceCopy sharePodcastTitle];
    shareProvider = [sourceCopy shareProvider];
    if (+[MTStoreIdentifier isEmpty:](MTStoreIdentifier, "isEmpty:", [storeIdentifier longLongValue]))
    {

      storeIdentifier = 0;
    }

    v33 = shareImageProvider;
    v23 = activeStorefront;
    if ([sourceCopy currentShareMode] == 2 || objc_msgSend(sourceCopy, "currentShareMode") == 4)
    {
      v24 = objc_alloc_init(LPiTunesMediaPodcastEpisodeMetadata);
      [v24 setEpisodeName:shareEpisodeTitle];
      [v24 setPodcastName:sharePodcastTitle];
      [v24 setArtist:shareProvider];
      [sourceCopy pubDate];
      v26 = v25 = shareEpisodeTitle;
      [v24 setReleaseDate:v26];

      v27 = v34;
      [v24 setArtwork:v34];
      [v24 setStoreFrontIdentifier:v23];
      [v24 setStoreIdentifier:storeIdentifier];
      v36 = @"anonymousDownload";
      v28 = &v36;
    }

    else
    {
      v24 = objc_alloc_init(LPiTunesMediaPodcastMetadata);
      [v24 setName:sharePodcastTitle];
      [v24 setArtist:shareProvider];
      v27 = v34;
      [v24 setArtwork:v34];
      [v24 setStoreFrontIdentifier:v23];
      [v24 setStoreIdentifier:storeIdentifier];
      v35 = @"anonymousDownload";
      v28 = &v35;
      v25 = shareEpisodeTitle;
    }

    v29 = [NSArray arrayWithObjects:v28 count:1];
    [v24 setOffers:v29];

    [v5 setSpecialization:v24];
    v18 = v5;

    shareImage = v32;
    shareImageProvider = v33;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)_storefrontIdentifierFromPreviewUrl:(id)url
{
  if (url)
  {
    urlCopy = url;
    v4 = [[NSURLComponents alloc] initWithURL:urlCopy resolvingAgainstBaseURL:0];

    path = [v4 path];
    pathComponents = [path pathComponents];

    if ([pathComponents count] >= 3)
    {
      v8 = [pathComponents objectAtIndexedSubscript:1];
      v7 = [MTiTunesMediaStorefrontMappings storefrontIdentifierFromCountryCode:v8];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end