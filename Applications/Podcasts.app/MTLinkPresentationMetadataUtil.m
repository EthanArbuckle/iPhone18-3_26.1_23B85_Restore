@interface MTLinkPresentationMetadataUtil
+ (id)_storefrontIdentifierFromPreviewUrl:(id)a3;
+ (id)linkMetadataForDataSource:(id)a3;
@end

@implementation MTLinkPresentationMetadataUtil

+ (id)linkMetadataForDataSource:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(LPLinkMetadata);
  v6 = [v4 shareURL];
  [v5 setURL:v6];

  v7 = [v4 shareImage];
  v8 = [v4 shareImageProvider];
  if (v7 | v8)
  {
    v9 = [v5 URL];
    v10 = [a1 _storefrontIdentifierFromPreviewUrl:v9];

    if (!v10)
    {
      v11 = +[MTAccountController sharedInstance];
      v10 = [v11 activeStorefront];
    }

    v12 = [LPImage alloc];
    v31 = v7;
    if (!v8 || v7)
    {
      v15 = UIImagePNGRepresentation(v7);
      v34 = [v12 initWithData:v15 MIMEType:@"image/png"];
    }

    else
    {
      v13 = +[UIImage defaultPodcastArtwork];
      v14 = UIImagePNGRepresentation(v13);
      v15 = [v12 initWithData:v14 MIMEType:@"image/png"];

      v16 = [LPImage alloc];
      v17 = [v4 shareImageProvider];
      v34 = [v16 initWithItemProvider:v17 properties:0 placeholderImage:v15];
    }

    v19 = [v4 storeIdentifier];
    v20 = [v4 shareEpisodeTitle];
    v21 = [v4 sharePodcastTitle];
    v22 = [v4 shareProvider];
    if (+[MTStoreIdentifier isEmpty:](MTStoreIdentifier, "isEmpty:", [v19 longLongValue]))
    {

      v19 = 0;
    }

    v33 = v8;
    v23 = v10;
    if ([v4 currentShareMode] == 2 || objc_msgSend(v4, "currentShareMode") == 4)
    {
      v24 = objc_alloc_init(LPiTunesMediaPodcastEpisodeMetadata);
      [v24 setEpisodeName:v20];
      [v24 setPodcastName:v21];
      [v24 setArtist:v22];
      [v4 pubDate];
      v26 = v25 = v20;
      [v24 setReleaseDate:v26];

      v27 = v34;
      [v24 setArtwork:v34];
      [v24 setStoreFrontIdentifier:v23];
      [v24 setStoreIdentifier:v19];
      v36 = @"anonymousDownload";
      v28 = &v36;
    }

    else
    {
      v24 = objc_alloc_init(LPiTunesMediaPodcastMetadata);
      [v24 setName:v21];
      [v24 setArtist:v22];
      v27 = v34;
      [v24 setArtwork:v34];
      [v24 setStoreFrontIdentifier:v23];
      [v24 setStoreIdentifier:v19];
      v35 = @"anonymousDownload";
      v28 = &v35;
      v25 = v20;
    }

    v29 = [NSArray arrayWithObjects:v28 count:1];
    [v24 setOffers:v29];

    [v5 setSpecialization:v24];
    v18 = v5;

    v7 = v32;
    v8 = v33;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)_storefrontIdentifierFromPreviewUrl:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [[NSURLComponents alloc] initWithURL:v3 resolvingAgainstBaseURL:0];

    v5 = [v4 path];
    v6 = [v5 pathComponents];

    if ([v6 count] >= 3)
    {
      v8 = [v6 objectAtIndexedSubscript:1];
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