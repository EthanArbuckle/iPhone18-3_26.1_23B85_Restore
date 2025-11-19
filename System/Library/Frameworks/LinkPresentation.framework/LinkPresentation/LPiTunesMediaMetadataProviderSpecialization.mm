@interface LPiTunesMediaMetadataProviderSpecialization
+ (id)assetArrayFromScreenshotArray:(id)a3 onlyAllowingOrientation:(id)a4;
+ (id)assetArrayFromScreenshotDictionary:(id)a3 usingPreferredPlatformArray:(id)a4;
+ (id)assetArrayScreenshotArray:(id)a3;
+ (id)assetFromVideoPreviewDictionary:(id)a3 usingPreferredPlatformArray:(id)a4;
+ (id)extractOffers:(id)a3;
+ (id)specializedMetadataProviderForMetadata:(id)a3 withContext:(id)a4;
+ (id)specializedMetadataProviderForURLWithContext:(id)a3;
+ (int64_t)determineOrientationOfScreenshotsInArray:(id)a3;
+ (void)requestSourceApplicationMetadataForBundleIdentifier:(id)a3 completionHandler:(id)a4;
- (LPiTunesMediaMetadataProviderSpecialization)initWithIdentifier:(id)a3 storefrontCountryCode:(id)a4 withContext:(id)a5;
- (LPiTunesMediaMetadataProviderSpecialization)initWithLyricComponents:(id)a3 withContext:(id)a4;
- (id)processResponseDictionary:(id)a3 withStorefrontIdentifier:(id)a4;
- (id)schema;
- (void)_internalPostProcessResolvedMetadataWithCompletionHandler:(id)a3;
- (void)done;
- (void)fail;
- (void)resolve;
- (void)start;
@end

@implementation LPiTunesMediaMetadataProviderSpecialization

+ (id)specializedMetadataProviderForURLWithContext:(id)a3
{
  v3 = a3;
  if (+[LPSettings disableLegacyStoreLookups](LPSettings, "disableLegacyStoreLookups") || ([v3 postRedirectURL], v4 = objc_claimAutoreleasedReturnValue(), v5 = +[LPPresentationSpecializations isiTunesStoreURLThatUsesWebMetadata:](LPPresentationSpecializations, "isiTunesStoreURLThatUsesWebMetadata:", v4), v4, v5) || (objc_msgSend(v3, "postRedirectURL"), v6 = objc_claimAutoreleasedReturnValue(), v7 = +[LPPresentationSpecializations isiTunesStoreOrAdjacentURL:](LPPresentationSpecializations, "isiTunesStoreOrAdjacentURL:", v6), v6, !v7))
  {
    v13 = 0;
  }

  else
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v8 = getMPStoreLyricsSnippetURLComponentsClass_softClass_0;
    v25 = getMPStoreLyricsSnippetURLComponentsClass_softClass_0;
    if (!getMPStoreLyricsSnippetURLComponentsClass_softClass_0)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __getMPStoreLyricsSnippetURLComponentsClass_block_invoke_0;
      v21[3] = &unk_1E7A35518;
      v21[4] = &v22;
      __getMPStoreLyricsSnippetURLComponentsClass_block_invoke_0(v21);
      v8 = v23[3];
    }

    v9 = v8;
    _Block_object_dispose(&v22, 8);
    v10 = [v8 alloc];
    v11 = [v3 postRedirectURL];
    v12 = [v10 initWithURL:v11];

    if (v12)
    {
      v13 = [[LPiTunesMediaMetadataProviderSpecialization alloc] initWithLyricComponents:v12 withContext:v3];
    }

    else
    {
      v15 = [LPiTunesMediaURLComponents alloc];
      v16 = [v3 postRedirectURL];
      v17 = [(LPiTunesMediaURLComponents *)v15 initWithURL:v16];

      if (v17)
      {
        v18 = [LPiTunesMediaMetadataProviderSpecialization alloc];
        v19 = [(LPiTunesMediaURLComponents *)v17 identifier];
        v20 = [(LPiTunesMediaURLComponents *)v17 storefrontCountryCode];
        v13 = [(LPiTunesMediaMetadataProviderSpecialization *)v18 initWithIdentifier:v19 storefrontCountryCode:v20 withContext:v3];
      }

      else
      {
        v13 = 0;
      }
    }
  }

  return v13;
}

+ (id)specializedMetadataProviderForMetadata:(id)a3 withContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 postRedirectURL];
  v8 = [LPPresentationSpecializations isiTunesStoreURLThatUsesWebMetadata:v7];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v5 appleContentID];

    if (v9)
    {
      v10 = [v5 appleContentID];
      v9 = [v10 length];

      if (v9)
      {
        v11 = [LPiTunesMediaMetadataProviderSpecialization alloc];
        v12 = [v5 appleContentID];
        v9 = [(LPiTunesMediaMetadataProviderSpecialization *)v11 initWithIdentifier:v12 storefrontCountryCode:0 withContext:v6];
      }
    }
  }

  return v9;
}

- (LPiTunesMediaMetadataProviderSpecialization)initWithIdentifier:(id)a3 storefrontCountryCode:(id)a4 withContext:(id)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = LPiTunesMediaMetadataProviderSpecialization;
  v11 = [(LPMetadataProviderSpecialization *)&v15 initWithContext:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, a3);
    objc_storeStrong(&v12->_storefrontCountryCode, a4);
    v13 = v12;
  }

  return v12;
}

- (LPiTunesMediaMetadataProviderSpecialization)initWithLyricComponents:(id)a3 withContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(LPMetadataProviderSpecialization *)self initWithContext:v8];
  if (v9)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v7, "songAdamID")}];
    v11 = [v10 stringValue];
    identifier = v9->_identifier;
    v9->_identifier = v11;

    objc_storeStrong(&v9->_lyricComponents, a3);
    v13 = v9;
  }

  return v9;
}

+ (int64_t)determineOrientationOfScreenshotsInArray:(id)a3
{
  v3 = [a3 objectAtIndexedSubscript:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 objectForKeyedSubscript:@"height"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 objectForKeyedSubscript:@"width"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v5 integerValue];
        if (v7 <= [v6 integerValue])
        {
          v8 = 1;
        }

        else
        {
          v8 = 2;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)assetArrayScreenshotArray:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = mediaAsset(*(*(&v12 + 1) + 8 * i), @"screenshots", 1000, 1000, @"bb", @"png");
        if (!v9)
        {

          v10 = 0;
          goto LABEL_11;
        }

        [v4 addObject:{v9, v12}];
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = v4;
LABEL_11:

  return v10;
}

+ (id)assetArrayFromScreenshotArray:(id)a3 onlyAllowingOrientation:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [LPiTunesMediaMetadataProviderSpecialization determineOrientationOfScreenshotsInArray:v5];
  if (v6 && [v6 integerValue] != v7)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_11;
  }

  if (v7 != 2)
  {
    if (v7 == 1)
    {
      v8 = [v5 objectAtIndexedSubscript:0];
      v9 = mediaAsset(v8, @"screenshots", 1000, 1000, @"bb", @"png");

      if (v9)
      {
        v12[0] = v9;
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v10 = [LPiTunesMediaMetadataProviderSpecialization assetArrayScreenshotArray:v5];
LABEL_11:

  return v10;
}

+ (id)assetArrayFromScreenshotDictionary:(id)a3 usingPreferredPlatformArray:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v7)
  {
    v8 = *v31;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [v5 objectForKeyedSubscript:*(*(&v30 + 1) + 8 * i)];
        v11 = __110__LPiTunesMediaMetadataProviderSpecialization_assetArrayFromScreenshotDictionary_usingPreferredPlatformArray___block_invoke(v10, v10, 0);

        if (v11)
        {
          v12 = v6;
          goto LABEL_27;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = [v5 allValues];
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v35 count:16];
  v14 = v13;
  if (v13)
  {
    v15 = *v27;
LABEL_11:
    v16 = 0;
    while (1)
    {
      if (*v27 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v13 = __110__LPiTunesMediaMetadataProviderSpecialization_assetArrayFromScreenshotDictionary_usingPreferredPlatformArray___block_invoke(v13, *(*(&v26 + 1) + 8 * v16), &unk_1F24834B8);
      v11 = v13;
      if (v13)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v13 = [v12 countByEnumeratingWithState:&v26 objects:v35 count:16];
        v14 = v13;
        if (v13)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [v5 allValues];
    v17 = [v12 countByEnumeratingWithState:&v22 objects:v34 count:16];
    v18 = v17;
    if (v17)
    {
      v19 = *v23;
LABEL_19:
      v20 = 0;
      while (1)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v12);
        }

        v17 = __110__LPiTunesMediaMetadataProviderSpecialization_assetArrayFromScreenshotDictionary_usingPreferredPlatformArray___block_invoke(v17, *(*(&v22 + 1) + 8 * v20), &unk_1F24834D0);
        v11 = v17;
        if (v17)
        {
          break;
        }

        if (v18 == ++v20)
        {
          v17 = [v12 countByEnumeratingWithState:&v22 objects:v34 count:16];
          v18 = v17;
          if (v17)
          {
            goto LABEL_19;
          }

          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_25:
      v11 = 0;
    }
  }

LABEL_27:

  return v11;
}

id __110__LPiTunesMediaMetadataProviderSpecialization_assetArrayFromScreenshotDictionary_usingPreferredPlatformArray___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v4 count])
  {
    v6 = [LPiTunesMediaMetadataProviderSpecialization assetArrayFromScreenshotArray:v4 onlyAllowingOrientation:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)assetFromVideoPreviewDictionary:(id)a3 usingPreferredPlatformArray:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [v5 objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * i), v17}];
        if (v10)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v10 count])
            {
              v11 = [LPiTunesMediaAsset alloc];
              v12 = MEMORY[0x1E695DFF8];
              v13 = [v10 firstObject];
              v14 = [v13 objectForKey:@"video"];
              v15 = [v12 URLWithString:v14];
              v7 = [(LPiTunesMediaAsset *)v11 initWithVideoURL:v15 name:@"previewVideo"];

              goto LABEL_13;
            }
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v7;
}

+ (id)extractOffers:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [LPiTunesMediaOffer alloc];
          v11 = [(LPiTunesMediaOffer *)v10 initWithDictionary:v9, v14];
          if (v11)
          {
            [v4 addObject:v11];
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    v12 = v4;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)schema
{
  v356[19] = *MEMORY[0x1E69E9840];
  v355[0] = @"song";
  v353[0] = @"metadataClass";
  v354[0] = objc_opt_class();
  v353[1] = @"entries";
  v351[0] = @"name";
  v350[0] = @"entryName";
  v350[1] = @"entryType";
  v351[1] = objc_opt_class();
  v137 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v351 forKeys:v350 count:2];
  v352[0] = v137;
  v349[0] = @"artistName";
  v348[0] = @"entryName";
  v348[1] = @"entryType";
  v348[2] = @"entryMetadataName";
  v349[1] = objc_opt_class();
  v349[2] = @"artist";
  v132 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v349 forKeys:v348 count:3];
  v352[1] = v132;
  v347[0] = @"collectionName";
  v346[0] = @"entryName";
  v346[1] = @"entryType";
  v346[2] = @"entryMetadataName";
  v347[1] = objc_opt_class();
  v347[2] = @"album";
  v131 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v347 forKeys:v346 count:3];
  v352[2] = v131;
  v345[0] = @"artwork";
  v344[0] = @"entryName";
  v344[1] = @"entryType";
  v344[2] = @"entryExtractor";
  v345[1] = objc_opt_class();
  v345[2] = &__block_literal_global_127;
  v129 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v345 forKeys:v344 count:3];
  v352[3] = v129;
  v343[0] = @"offers";
  v342[0] = @"entryName";
  v342[1] = @"entryType";
  v342[2] = @"entryExtractor";
  v343[1] = objc_opt_class();
  v343[2] = &__block_literal_global_132;
  v127 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v343 forKeys:v342 count:3];
  v352[4] = v127;
  v128 = [MEMORY[0x1E695DEC8] arrayWithObjects:v352 count:5];
  v354[1] = v128;
  v130 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v354 forKeys:v353 count:2];
  v356[0] = v130;
  v355[1] = @"album";
  v340[0] = @"metadataClass";
  v341[0] = objc_opt_class();
  v340[1] = @"entries";
  v338[0] = @"name";
  v337[0] = @"entryName";
  v337[1] = @"entryType";
  v338[1] = objc_opt_class();
  v126 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v338 forKeys:v337 count:2];
  v339[0] = v126;
  v336[0] = @"artistName";
  v335[0] = @"entryName";
  v335[1] = @"entryType";
  v335[2] = @"entryMetadataName";
  v336[1] = objc_opt_class();
  v336[2] = @"artist";
  v125 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v336 forKeys:v335 count:3];
  v339[1] = v125;
  v334[0] = @"artwork";
  v333[0] = @"entryName";
  v333[1] = @"entryType";
  v333[2] = @"entryExtractor";
  v334[1] = objc_opt_class();
  v334[2] = &__block_literal_global_135;
  v123 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v334 forKeys:v333 count:3];
  v339[2] = v123;
  v332[0] = @"offers";
  v331[0] = @"entryName";
  v331[1] = @"entryType";
  v331[2] = @"entryExtractor";
  v332[1] = objc_opt_class();
  v332[2] = &__block_literal_global_137;
  v121 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v332 forKeys:v331 count:3];
  v339[3] = v121;
  v122 = [MEMORY[0x1E695DEC8] arrayWithObjects:v339 count:4];
  v341[1] = v122;
  v124 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v341 forKeys:v340 count:2];
  v356[1] = v124;
  v355[2] = @"podcastEpisode";
  v329[0] = @"metadataClass";
  v330[0] = objc_opt_class();
  v329[1] = @"entries";
  v327[0] = @"name";
  v326[0] = @"entryName";
  v326[1] = @"entryType";
  v326[2] = @"entryMetadataName";
  v327[1] = objc_opt_class();
  v327[2] = @"episodeName";
  v120 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v327 forKeys:v326 count:3];
  v328[0] = v120;
  v325[0] = @"artistName";
  v324[0] = @"entryName";
  v324[1] = @"entryType";
  v324[2] = @"entryMetadataName";
  v325[1] = objc_opt_class();
  v325[2] = @"artist";
  v119 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v325 forKeys:v324 count:3];
  v328[1] = v119;
  v323[0] = @"releaseDate";
  v322[0] = @"entryName";
  v322[1] = @"entryType";
  v323[1] = objc_opt_class();
  v118 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v323 forKeys:v322 count:2];
  v328[2] = v118;
  v321[0] = @"collectionName";
  v320[0] = @"entryName";
  v320[1] = @"entryType";
  v320[2] = @"entryMetadataName";
  v321[1] = objc_opt_class();
  v321[2] = @"podcastName";
  v117 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v321 forKeys:v320 count:3];
  v328[3] = v117;
  v319[0] = @"artwork";
  v318[0] = @"entryName";
  v318[1] = @"entryType";
  v318[2] = @"entryExtractor";
  v319[1] = objc_opt_class();
  v319[2] = &__block_literal_global_152;
  v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v319 forKeys:v318 count:3];
  v328[4] = v115;
  v317[0] = @"offers";
  v316[0] = @"entryName";
  v316[1] = @"entryType";
  v316[2] = @"entryExtractor";
  v317[1] = objc_opt_class();
  v317[2] = &__block_literal_global_154;
  v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v317 forKeys:v316 count:3];
  v328[5] = v113;
  v114 = [MEMORY[0x1E695DEC8] arrayWithObjects:v328 count:6];
  v330[1] = v114;
  v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v330 forKeys:v329 count:2];
  v356[2] = v116;
  v355[3] = @"podcast";
  v314[0] = @"metadataClass";
  v315[0] = objc_opt_class();
  v314[1] = @"entries";
  v312[0] = @"name";
  v311[0] = @"entryName";
  v311[1] = @"entryType";
  v312[1] = objc_opt_class();
  v112 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v312 forKeys:v311 count:2];
  v313[0] = v112;
  v310[0] = @"artistName";
  v309[0] = @"entryName";
  v309[1] = @"entryType";
  v309[2] = @"entryMetadataName";
  v310[1] = objc_opt_class();
  v310[2] = @"artist";
  v111 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v310 forKeys:v309 count:3];
  v313[1] = v111;
  v308[0] = @"artwork";
  v307[0] = @"entryName";
  v307[1] = @"entryType";
  v307[2] = @"entryExtractor";
  v308[1] = objc_opt_class();
  v308[2] = &__block_literal_global_160;
  v109 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v308 forKeys:v307 count:3];
  v313[2] = v109;
  v306[0] = @"children";
  v305[0] = @"entryName";
  v305[1] = @"entryType";
  v306[1] = objc_opt_class();
  v306[2] = @"offers";
  v305[2] = @"entryMetadataName";
  v305[3] = @"entryExtractor";
  v306[3] = &__block_literal_global_166;
  v107 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v306 forKeys:v305 count:4];
  v313[3] = v107;
  v108 = [MEMORY[0x1E695DEC8] arrayWithObjects:v313 count:4];
  v315[1] = v108;
  v110 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v315 forKeys:v314 count:2];
  v356[3] = v110;
  v355[4] = @"musicVideo";
  v303[0] = @"metadataClass";
  v304[0] = objc_opt_class();
  v303[1] = @"entries";
  v301[0] = @"name";
  v300[0] = @"entryName";
  v300[1] = @"entryType";
  v301[1] = objc_opt_class();
  v106 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v301 forKeys:v300 count:2];
  v302[0] = v106;
  v299[0] = @"artistName";
  v298[0] = @"entryName";
  v298[1] = @"entryType";
  v298[2] = @"entryMetadataName";
  v299[1] = objc_opt_class();
  v299[2] = @"artist";
  v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v299 forKeys:v298 count:3];
  v302[1] = v104;
  v297[0] = @"artwork";
  v296[0] = @"entryName";
  v296[1] = @"entryType";
  v296[2] = @"entryExtractor";
  v297[1] = objc_opt_class();
  v297[2] = &__block_literal_global_173;
  v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v297 forKeys:v296 count:3];
  v302[2] = v102;
  v103 = [MEMORY[0x1E695DEC8] arrayWithObjects:v302 count:3];
  v304[1] = v103;
  v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v304 forKeys:v303 count:2];
  v356[4] = v105;
  v355[5] = @"artist";
  v294[0] = @"metadataClass";
  v295[0] = objc_opt_class();
  v294[1] = @"entries";
  v292[0] = @"name";
  v291[0] = @"entryName";
  v291[1] = @"entryType";
  v292[1] = objc_opt_class();
  v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v292 forKeys:v291 count:2];
  v293[0] = v101;
  v290[0] = @"genreNames";
  v289[0] = @"entryName";
  v289[1] = @"entryType";
  v290[1] = objc_opt_class();
  v290[2] = @"genre";
  v289[2] = @"entryMetadataName";
  v289[3] = @"entryExtractor";
  v290[3] = &__block_literal_global_183;
  v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v290 forKeys:v289 count:4];
  v293[1] = v99;
  v288[0] = @"artwork";
  v287[0] = @"entryName";
  v287[1] = @"entryType";
  v287[2] = @"entryExtractor";
  v288[1] = objc_opt_class();
  v288[2] = &__block_literal_global_185;
  v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v288 forKeys:v287 count:3];
  v293[2] = v97;
  v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:v293 count:3];
  v295[1] = v98;
  v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v295 forKeys:v294 count:2];
  v356[5] = v100;
  v355[6] = @"iTunesBrand";
  v285[0] = @"metadataClass";
  v286[0] = objc_opt_class();
  v285[1] = @"entries";
  v283[0] = @"name";
  v282[0] = @"entryName";
  v282[1] = @"entryType";
  v283[1] = objc_opt_class();
  v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v283 forKeys:v282 count:2];
  v284[0] = v95;
  v281[0] = @"artwork";
  v280[0] = @"entryName";
  v280[1] = @"entryType";
  v280[2] = @"entryExtractor";
  v281[1] = objc_opt_class();
  v281[2] = &__block_literal_global_191;
  v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v281 forKeys:v280 count:3];
  v284[1] = v93;
  v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v284 count:2];
  v286[1] = v94;
  v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v286 forKeys:v285 count:2];
  v356[6] = v96;
  v355[7] = @"radioStation";
  v278[0] = @"metadataClass";
  v279[0] = objc_opt_class();
  v278[1] = @"entries";
  v276[0] = @"name";
  v275[0] = @"entryName";
  v275[1] = @"entryType";
  v276[1] = objc_opt_class();
  v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v276 forKeys:v275 count:2];
  v277[0] = v92;
  v274[0] = @"editorialArtwork";
  v273[0] = @"entryName";
  v273[1] = @"entryType";
  v274[1] = objc_opt_class();
  v274[2] = MEMORY[0x1E695E118];
  v273[2] = @"entryIsOptional";
  v273[3] = @"entryMetadataName";
  v273[4] = @"entryExtractor";
  v274[3] = @"artwork";
  v274[4] = &__block_literal_global_199;
  v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v274 forKeys:v273 count:5];
  v277[1] = v90;
  v272[0] = @"artwork";
  v271[0] = @"entryName";
  v271[1] = @"entryType";
  v272[1] = objc_opt_class();
  v272[2] = MEMORY[0x1E695E118];
  v271[2] = @"entryIsOptional";
  v271[3] = @"entryMetadataName";
  v271[4] = @"entryExtractor";
  v272[3] = @"artwork";
  v272[4] = &__block_literal_global_207;
  v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v272 forKeys:v271 count:5];
  v277[2] = v88;
  v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:v277 count:3];
  v279[1] = v89;
  v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v279 forKeys:v278 count:2];
  v356[7] = v91;
  v355[8] = @"playlist";
  v269[0] = @"metadataClass";
  v270[0] = objc_opt_class();
  v269[1] = @"entries";
  v267[0] = @"name";
  v266[0] = @"entryName";
  v266[1] = @"entryType";
  v267[1] = objc_opt_class();
  v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v267 forKeys:v266 count:2];
  v268[0] = v87;
  v265[0] = @"curatorName";
  v264[0] = @"entryName";
  v264[1] = @"entryType";
  v264[2] = @"entryMetadataName";
  v265[1] = objc_opt_class();
  v265[2] = @"curator";
  v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v265 forKeys:v264 count:3];
  v268[1] = v86;
  v263[0] = @"socialProfileId";
  v262[0] = @"entryName";
  v262[1] = @"entryType";
  v263[1] = objc_opt_class();
  v263[2] = @"curatorID";
  v262[2] = @"entryMetadataName";
  v262[3] = @"entryIsOptional";
  v263[3] = MEMORY[0x1E695E118];
  v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v263 forKeys:v262 count:4];
  v268[2] = v85;
  v261[0] = @"username";
  v260[0] = @"entryName";
  v260[1] = @"entryType";
  v261[1] = objc_opt_class();
  v261[2] = @"curatorHandle";
  v260[2] = @"entryMetadataName";
  v260[3] = @"entryIsOptional";
  v261[3] = MEMORY[0x1E695E118];
  v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v261 forKeys:v260 count:4];
  v268[3] = v83;
  v259[0] = @"artwork";
  v258[0] = @"entryName";
  v258[1] = @"entryType";
  v259[1] = objc_opt_class();
  v259[2] = &__block_literal_global_231;
  v258[2] = @"entryExtractor";
  v258[3] = @"entryIsOptional";
  v259[3] = MEMORY[0x1E695E118];
  v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v259 forKeys:v258 count:4];
  v268[4] = v81;
  v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:v268 count:5];
  v270[1] = v82;
  v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v270 forKeys:v269 count:2];
  v356[8] = v84;
  v355[9] = @"iosSoftware";
  v256[0] = @"metadataClass";
  v257[0] = objc_opt_class();
  v256[1] = @"entries";
  v254[0] = @"name";
  v253[0] = @"entryName";
  v253[1] = @"entryType";
  v254[1] = objc_opt_class();
  v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v254 forKeys:v253 count:2];
  v255[0] = v80;
  v252[0] = @"subtitle";
  v251[0] = @"entryName";
  v251[1] = @"entryType";
  v251[2] = @"entryIsOptional";
  v252[1] = objc_opt_class();
  v252[2] = MEMORY[0x1E695E118];
  v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v252 forKeys:v251 count:3];
  v255[1] = v79;
  v250[0] = @"hasMessagesExtension";
  v249[0] = @"entryName";
  v249[1] = @"entryType";
  v249[2] = @"entryIsOptional";
  v250[1] = objc_opt_class();
  v250[2] = MEMORY[0x1E695E118];
  v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v250 forKeys:v249 count:3];
  v255[2] = v78;
  v248[0] = @"isHiddenFromSpringboard";
  v247[0] = @"entryName";
  v247[1] = @"entryType";
  v247[2] = @"entryIsOptional";
  v248[1] = objc_opt_class();
  v248[2] = MEMORY[0x1E695E118];
  v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v248 forKeys:v247 count:3];
  v255[3] = v77;
  v246[0] = @"genreNames";
  v245[0] = @"entryName";
  v245[1] = @"entryType";
  v246[1] = objc_opt_class();
  v246[2] = @"genre";
  v245[2] = @"entryMetadataName";
  v245[3] = @"entryExtractor";
  v246[3] = &__block_literal_global_246;
  v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v246 forKeys:v245 count:4];
  v255[4] = v76;
  v244[0] = @"artwork";
  v243[0] = @"entryName";
  v243[1] = @"entryType";
  v244[1] = objc_opt_class();
  v244[2] = @"icon";
  v243[2] = @"entryMetadataName";
  v243[3] = @"entryExtractor";
  v244[3] = &__block_literal_global_251;
  v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v244 forKeys:v243 count:4];
  v255[5] = v74;
  v242[0] = @"ovalArtwork";
  v241[0] = @"entryName";
  v241[1] = @"entryType";
  v242[1] = objc_opt_class();
  v242[2] = @"messagesAppIcon";
  v241[2] = @"entryMetadataName";
  v241[3] = @"entryIsOptional";
  v241[4] = @"entryExtractor";
  v242[3] = MEMORY[0x1E695E118];
  v242[4] = &__block_literal_global_259;
  v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v242 forKeys:v241 count:5];
  v255[6] = v71;
  v240[0] = @"screenshotsByType";
  v239[0] = @"entryName";
  v239[1] = @"entryType";
  v240[1] = objc_opt_class();
  v240[2] = @"screenshots";
  v239[2] = @"entryMetadataName";
  v239[3] = @"entryIsOptional";
  v240[3] = MEMORY[0x1E695E118];
  v239[4] = @"entryExtractor";
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_19;
  aBlock[3] = &unk_1E7A35E48;
  v141 = &unk_1F2483890;
  v136 = _Block_copy(aBlock);
  v240[4] = v136;
  v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v240 forKeys:v239 count:5];
  v255[7] = v72;
  v238[0] = @"videoPreviewsByType";
  v237[0] = @"entryName";
  v237[1] = @"entryType";
  v238[1] = objc_opt_class();
  v238[2] = @"previewVideo";
  v237[2] = @"entryMetadataName";
  v237[3] = @"entryIsOptional";
  v238[3] = MEMORY[0x1E695E118];
  v237[4] = @"entryExtractor";
  v138[0] = MEMORY[0x1E69E9820];
  v138[1] = 3221225472;
  v138[2] = __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_20;
  v138[3] = &unk_1E7A35E70;
  v139 = &unk_1F2483890;
  v135 = _Block_copy(v138);
  v238[4] = v135;
  v134 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v238 forKeys:v237 count:5];
  v255[8] = v134;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v255 count:9];
  v256[2] = @"additionalProperties";
  v133 = v2;
  v257[1] = v2;
  v257[2] = &unk_1F2483D00;
  v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v257 forKeys:v256 count:3];
  v356[9] = v75;
  v355[10] = @"desktopApp";
  v235[0] = @"metadataClass";
  v236[0] = objc_opt_class();
  v235[1] = @"entries";
  v233[0] = @"name";
  v232[0] = @"entryName";
  v232[1] = @"entryType";
  v233[1] = objc_opt_class();
  v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v233 forKeys:v232 count:2];
  v234[0] = v73;
  v231[0] = @"subtitle";
  v230[0] = @"entryName";
  v230[1] = @"entryType";
  v3 = objc_opt_class();
  v230[2] = @"entryIsOptional";
  v231[1] = v3;
  v231[2] = MEMORY[0x1E695E118];
  v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v231 forKeys:v230 count:3];
  v234[1] = v70;
  v229[0] = @"genreNames";
  v228[0] = @"entryName";
  v228[1] = @"entryType";
  v229[1] = objc_opt_class();
  v229[2] = @"genre";
  v228[2] = @"entryMetadataName";
  v228[3] = @"entryExtractor";
  v229[3] = &__block_literal_global_279;
  v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v229 forKeys:v228 count:4];
  v234[2] = v69;
  v227[0] = @"artwork";
  v226[0] = @"entryName";
  v226[1] = @"entryType";
  v227[1] = objc_opt_class();
  v227[2] = @"icon";
  v226[2] = @"entryMetadataName";
  v226[3] = @"entryExtractor";
  v227[3] = &__block_literal_global_281;
  v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v227 forKeys:v226 count:4];
  v234[3] = v68;
  v225[0] = @"screenshotsByType";
  v224[0] = @"entryName";
  v224[1] = @"entryType";
  v225[1] = objc_opt_class();
  v225[2] = @"screenshots";
  v224[2] = @"entryMetadataName";
  v224[3] = @"entryIsOptional";
  v224[4] = @"entryExtractor";
  v225[3] = MEMORY[0x1E695E118];
  v225[4] = &__block_literal_global_283;
  v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v225 forKeys:v224 count:5];
  v234[4] = v66;
  v223[0] = @"videoPreviewsByType";
  v222[0] = @"entryName";
  v222[1] = @"entryType";
  v223[1] = objc_opt_class();
  v223[2] = @"previewVideo";
  v222[2] = @"entryMetadataName";
  v222[3] = @"entryIsOptional";
  v222[4] = @"entryExtractor";
  v223[3] = MEMORY[0x1E695E118];
  v223[4] = &__block_literal_global_291;
  v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v223 forKeys:v222 count:5];
  v234[5] = v64;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v234 count:6];
  v235[2] = @"additionalProperties";
  v65 = v4;
  v236[1] = v4;
  v236[2] = &unk_1F2483D28;
  v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v236 forKeys:v235 count:3];
  v356[10] = v67;
  v355[11] = @"epubBook";
  v220[0] = @"metadataClass";
  v221[0] = objc_opt_class();
  v220[1] = @"entries";
  v218[0] = @"name";
  v217[0] = @"entryName";
  v217[1] = @"entryType";
  v218[1] = objc_opt_class();
  v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v218 forKeys:v217 count:2];
  v219[0] = v63;
  v216[0] = @"artistName";
  v215[0] = @"entryName";
  v215[1] = @"entryType";
  v5 = objc_opt_class();
  v215[2] = @"entryMetadataName";
  v216[1] = v5;
  v216[2] = @"author";
  v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v216 forKeys:v215 count:3];
  v219[1] = v61;
  v214[0] = @"artwork";
  v213[0] = @"entryName";
  v213[1] = @"entryType";
  v6 = objc_opt_class();
  v213[2] = @"entryExtractor";
  v214[1] = v6;
  v214[2] = &__block_literal_global_310;
  v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v214 forKeys:v213 count:3];
  v219[2] = v59;
  v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v219 count:3];
  v221[1] = v60;
  v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v221 forKeys:v220 count:2];
  v356[11] = v62;
  v355[12] = @"book";
  v211[0] = @"metadataClass";
  v212[0] = objc_opt_class();
  v211[1] = @"entries";
  v209[0] = @"name";
  v208[0] = @"entryName";
  v208[1] = @"entryType";
  v209[1] = objc_opt_class();
  v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v209 forKeys:v208 count:2];
  v210[0] = v58;
  v207[0] = @"artistName";
  v206[0] = @"entryName";
  v206[1] = @"entryType";
  v7 = objc_opt_class();
  v206[2] = @"entryMetadataName";
  v207[1] = v7;
  v207[2] = @"author";
  v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v207 forKeys:v206 count:3];
  v210[1] = v57;
  v205[0] = @"narrator";
  v204[0] = @"entryName";
  v204[1] = @"entryType";
  v205[1] = objc_opt_class();
  v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v205 forKeys:v204 count:2];
  v210[2] = v56;
  v203[0] = @"artwork";
  v202[0] = @"entryName";
  v202[1] = @"entryType";
  v8 = objc_opt_class();
  v202[2] = @"entryExtractor";
  v203[1] = v8;
  v203[2] = &__block_literal_global_319;
  v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v203 forKeys:v202 count:3];
  v210[3] = v54;
  v201[0] = @"offers";
  v200[0] = @"entryName";
  v200[1] = @"entryType";
  v201[1] = objc_opt_class();
  v201[2] = MEMORY[0x1E695E118];
  v200[2] = @"entryIsOptional";
  v200[3] = @"entryExtractor";
  v201[3] = &__block_literal_global_321;
  v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v201 forKeys:v200 count:4];
  v210[4] = v52;
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v210 count:5];
  v212[1] = v53;
  v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v212 forKeys:v211 count:2];
  v356[12] = v55;
  v355[13] = @"ibook";
  v198[0] = @"metadataClass";
  v199[0] = objc_opt_class();
  v198[1] = @"entries";
  v196[0] = @"name";
  v195[0] = @"entryName";
  v195[1] = @"entryType";
  v196[1] = objc_opt_class();
  v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v196 forKeys:v195 count:2];
  v197[0] = v51;
  v194[0] = @"artistName";
  v193[0] = @"entryName";
  v193[1] = @"entryType";
  v9 = objc_opt_class();
  v193[2] = @"entryMetadataName";
  v194[1] = v9;
  v194[2] = @"author";
  v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v194 forKeys:v193 count:3];
  v197[1] = v49;
  v192[0] = @"artwork";
  v191[0] = @"entryName";
  v191[1] = @"entryType";
  v10 = objc_opt_class();
  v191[2] = @"entryExtractor";
  v192[1] = v10;
  v192[2] = &__block_literal_global_326;
  v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v192 forKeys:v191 count:3];
  v197[2] = v47;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v197 count:3];
  v199[1] = v48;
  v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v199 forKeys:v198 count:2];
  v356[13] = v50;
  v355[14] = @"tvEpisode";
  v189[0] = @"metadataClass";
  v190[0] = objc_opt_class();
  v189[1] = @"entries";
  v187[0] = @"name";
  v186[0] = @"entryName";
  v186[1] = @"entryType";
  v11 = objc_opt_class();
  v186[2] = @"entryMetadataName";
  v187[1] = v11;
  v187[2] = @"episodeName";
  v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v187 forKeys:v186 count:3];
  v188[0] = v46;
  v185[0] = @"genreNames";
  v184[0] = @"entryName";
  v184[1] = @"entryType";
  v185[1] = objc_opt_class();
  v185[2] = @"genre";
  v184[2] = @"entryMetadataName";
  v184[3] = @"entryExtractor";
  v185[3] = &__block_literal_global_332;
  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v185 forKeys:v184 count:4];
  v188[1] = v45;
  v183[0] = @"collectionName";
  v182[0] = @"entryName";
  v182[1] = @"entryType";
  v12 = objc_opt_class();
  v182[2] = @"entryMetadataName";
  v183[1] = v12;
  v183[2] = @"seasonName";
  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v183 forKeys:v182 count:3];
  v188[2] = v43;
  v181[0] = @"artwork";
  v180[0] = @"entryName";
  v180[1] = @"entryType";
  v13 = objc_opt_class();
  v180[2] = @"entryExtractor";
  v181[1] = v13;
  v181[2] = &__block_literal_global_337;
  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v181 forKeys:v180 count:3];
  v188[3] = v41;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v188 count:4];
  v190[1] = v42;
  v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v190 forKeys:v189 count:2];
  v356[14] = v44;
  v355[15] = @"tvSeason";
  v178[0] = @"metadataClass";
  v179[0] = objc_opt_class();
  v178[1] = @"entries";
  v176[0] = @"name";
  v175[0] = @"entryName";
  v175[1] = @"entryType";
  v176[1] = objc_opt_class();
  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v176 forKeys:v175 count:2];
  v177[0] = v40;
  v174[0] = @"genreNames";
  v173[0] = @"entryName";
  v173[1] = @"entryType";
  v174[1] = objc_opt_class();
  v174[2] = @"genre";
  v173[2] = @"entryMetadataName";
  v173[3] = @"entryExtractor";
  v174[3] = &__block_literal_global_343;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v174 forKeys:v173 count:4];
  v177[1] = v38;
  v172[0] = @"artwork";
  v171[0] = @"entryName";
  v171[1] = @"entryType";
  v14 = objc_opt_class();
  v171[2] = @"entryExtractor";
  v172[1] = v14;
  v172[2] = &__block_literal_global_345;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v172 forKeys:v171 count:3];
  v177[2] = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v177 count:3];
  v179[1] = v37;
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v179 forKeys:v178 count:2];
  v356[15] = v39;
  v355[16] = @"showBrand";
  v169[0] = @"metadataClass";
  v170[0] = objc_opt_class();
  v169[1] = @"entries";
  v167[0] = @"name";
  v166[0] = @"entryName";
  v166[1] = @"entryType";
  v167[1] = objc_opt_class();
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v167 forKeys:v166 count:2];
  v168[0] = v34;
  v165[0] = @"artwork";
  v164[0] = @"entryName";
  v164[1] = @"entryType";
  v15 = objc_opt_class();
  v164[2] = @"entryExtractor";
  v165[1] = v15;
  v165[2] = &__block_literal_global_351;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v165 forKeys:v164 count:3];
  v168[1] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v168 count:2];
  v170[1] = v33;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v170 forKeys:v169 count:2];
  v356[16] = v35;
  v355[17] = @"movie";
  v162[0] = @"metadataClass";
  v163[0] = objc_opt_class();
  v162[1] = @"entries";
  v160[0] = @"name";
  v159[0] = @"entryName";
  v159[1] = @"entryType";
  v160[1] = objc_opt_class();
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v160 forKeys:v159 count:2];
  v161[0] = v31;
  v158[0] = @"genreNames";
  v157[0] = @"entryName";
  v157[1] = @"entryType";
  v158[1] = objc_opt_class();
  v158[2] = @"genre";
  v157[2] = @"entryMetadataName";
  v157[3] = @"entryExtractor";
  v158[3] = &__block_literal_global_357;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v158 forKeys:v157 count:4];
  v161[1] = v30;
  v156[0] = @"artwork";
  v155[0] = @"entryName";
  v155[1] = @"entryType";
  v16 = objc_opt_class();
  v155[2] = @"entryExtractor";
  v156[1] = v16;
  v156[2] = &__block_literal_global_359;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v156 forKeys:v155 count:3];
  v161[2] = v29;
  v154[0] = @"offers";
  v153[0] = @"entryName";
  v153[1] = @"entryType";
  v154[1] = objc_opt_class();
  v154[2] = MEMORY[0x1E695E118];
  v153[2] = @"entryIsOptional";
  v153[3] = @"entryExtractor";
  v154[3] = &__block_literal_global_361;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v154 forKeys:v153 count:4];
  v161[3] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v161 count:4];
  v163[1] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v163 forKeys:v162 count:2];
  v356[17] = v19;
  v355[18] = @"movieBundle";
  v151[0] = @"metadataClass";
  v152[0] = objc_opt_class();
  v151[1] = @"entries";
  v149[0] = @"name";
  v148[0] = @"entryName";
  v148[1] = @"entryType";
  v149[1] = objc_opt_class();
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v149 forKeys:v148 count:2];
  v150[0] = v20;
  v147[0] = @"genreNames";
  v146[0] = @"entryName";
  v146[1] = @"entryType";
  v147[1] = objc_opt_class();
  v147[2] = @"genre";
  v146[2] = @"entryMetadataName";
  v146[3] = @"entryExtractor";
  v147[3] = &__block_literal_global_367;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v147 forKeys:v146 count:4];
  v150[1] = v21;
  v145[0] = @"artwork";
  v144[0] = @"entryName";
  v144[1] = @"entryType";
  v22 = objc_opt_class();
  v144[2] = @"entryExtractor";
  v145[1] = v22;
  v145[2] = &__block_literal_global_369;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v145 forKeys:v144 count:3];
  v150[2] = v23;
  v143[0] = @"offers";
  v142[0] = @"entryName";
  v142[1] = @"entryType";
  v143[1] = objc_opt_class();
  v143[2] = MEMORY[0x1E695E118];
  v142[2] = @"entryIsOptional";
  v142[3] = @"entryExtractor";
  v143[3] = &__block_literal_global_371;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v143 forKeys:v142 count:4];
  v150[3] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v150 count:4];
  v152[1] = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v152 forKeys:v151 count:2];
  v356[18] = v26;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v356 forKeys:v355 count:19];

  return v28;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke(uint64_t a1, void *a2)
{
  v2 = mediaAsset(a2, @"artwork", 300, 300, @"bb", @"png");

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [LPiTunesMediaMetadataProviderSpecialization extractOffers:a2];

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = mediaAsset(a2, @"artwork", 900, 900, @"bb", @"png");

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = [LPiTunesMediaMetadataProviderSpecialization extractOffers:a2];

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = mediaAsset(a2, @"artwork", 300, 300, @"bb", @"png");

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_6(uint64_t a1, uint64_t a2)
{
  v2 = [LPiTunesMediaMetadataProviderSpecialization extractOffers:a2];

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = mediaAsset(a2, @"artwork", 900, 900, @"bb", @"png");

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = [a2 allValues];
  v3 = [v2 firstObject];

  v4 = [v3 objectForKeyedSubscript:@"offers"];
  v5 = [LPiTunesMediaMetadataProviderSpecialization extractOffers:v4];

  return v5;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = mediaAsset(a2, @"artwork", 900, 900, @"bb", @"png");

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 count])
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_11(uint64_t a1, void *a2)
{
  v2 = mediaAsset(a2, @"artwork", 900, 900, @"bb", @"png");

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_12(uint64_t a1, void *a2)
{
  v2 = mediaAsset(a2, @"artwork", 900, 900, @"bb", @"png");

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_13(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"subscriptionCover"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = mediaAsset(v3, @"artwork", 900, 900, @"cc", @"png");
  }

  else
  {
    v5 = [v2 objectForKeyedSubscript:@"subscriptionHero"];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v4 = mediaAsset(v5, @"artwork", 900, 900, @"cc", @"png");
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_14(uint64_t a1, void *a2)
{
  v2 = mediaAsset(a2, @"artwork", 900, 900, @"cc", @"png");

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_15(uint64_t a1, void *a2)
{
  v2 = mediaAsset(a2, @"artwork", 900, 900, @"bb", @"png");

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_16(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 count])
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_17(uint64_t a1, void *a2)
{
  v2 = mediaAsset(a2, @"icon", 300, 300, @"bb", @"png");

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_18(uint64_t a1, void *a2)
{
  v2 = mediaAsset(a2, @"messagesAppIcon", 400, 300, @"bb", @"png");

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_19(uint64_t a1, uint64_t a2)
{
  v2 = [LPiTunesMediaMetadataProviderSpecialization assetArrayFromScreenshotDictionary:a2 usingPreferredPlatformArray:*(a1 + 32)];

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_20(uint64_t a1, uint64_t a2)
{
  v2 = [LPiTunesMediaMetadataProviderSpecialization assetFromVideoPreviewDictionary:a2 usingPreferredPlatformArray:*(a1 + 32)];

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_21(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 count])
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_22(uint64_t a1, void *a2)
{
  v2 = mediaAsset(a2, @"icon", 300, 300, @"bb", @"png");

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_23(uint64_t a1, uint64_t a2)
{
  v2 = [LPiTunesMediaMetadataProviderSpecialization assetArrayFromScreenshotDictionary:a2 usingPreferredPlatformArray:&unk_1F24838A8];

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_24(uint64_t a1, uint64_t a2)
{
  v2 = [LPiTunesMediaMetadataProviderSpecialization assetFromVideoPreviewDictionary:a2 usingPreferredPlatformArray:&unk_1F24838C0];

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_25(uint64_t a1, void *a2)
{
  v2 = mediaAsset(a2, @"artwork", 900, 900, @"bb", @"png");

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_26(uint64_t a1, void *a2)
{
  v2 = mediaAsset(a2, @"artwork", 900, 900, @"bb", @"png");

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_27(uint64_t a1, uint64_t a2)
{
  v2 = [LPiTunesMediaMetadataProviderSpecialization extractOffers:a2];

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_28(uint64_t a1, void *a2)
{
  v2 = mediaAsset(a2, @"artwork", 900, 900, @"bb", @"png");

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_29(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 count])
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_30(uint64_t a1, void *a2)
{
  v2 = mediaAsset(a2, @"artwork", 300, 300, @"bb", @"png");

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_31(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 count])
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_32(uint64_t a1, void *a2)
{
  v2 = mediaAsset(a2, @"artwork", 900, 900, @"bb", @"png");

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_33(uint64_t a1, void *a2)
{
  v2 = mediaAsset(a2, @"artwork", 900, 900, @"bb", @"png");

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_34(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 count])
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_35(uint64_t a1, void *a2)
{
  v2 = mediaAsset(a2, @"artwork", 900, 900, @"bb", @"png");

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_36(uint64_t a1, uint64_t a2)
{
  v2 = [LPiTunesMediaMetadataProviderSpecialization extractOffers:a2];

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_37(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 count])
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_38(uint64_t a1, void *a2)
{
  v2 = mediaAsset(a2, @"artwork", 900, 900, @"bb", @"png");

  return v2;
}

id __53__LPiTunesMediaMetadataProviderSpecialization_schema__block_invoke_39(uint64_t a1, uint64_t a2)
{
  v2 = [LPiTunesMediaMetadataProviderSpecialization extractOffers:a2];

  return v2;
}

- (id)processResponseDictionary:(id)a3 withStorefrontIdentifier:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v27 = a4;
  v31 = v6;
  v28 = [v6 objectForKeyedSubscript:@"kind"];
  if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [(LPiTunesMediaMetadataProviderSpecialization *)self schema];
    v8 = [v7 objectForKeyedSubscript:v28];

    v26 = v8;
    if (v8)
    {
      v30 = objc_alloc_init([v8 objectForKeyedSubscript:@"metadataClass"]);
      [v30 setValue:self->_identifier forKey:@"storeIdentifier"];
      [v30 setValue:v27 forKey:@"storeFrontIdentifier"];
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v9 = [v8 objectForKeyedSubscript:@"entries"];
      v25 = self;
      obj = v9;
      v10 = [v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v10)
      {
        v11 = *v38;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v38 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v37 + 1) + 8 * i);
            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 3221225472;
            v34[2] = __98__LPiTunesMediaMetadataProviderSpecialization_processResponseDictionary_withStorefrontIdentifier___block_invoke;
            v34[3] = &unk_1E7A35EB8;
            v35 = v31;
            v36 = v13;
            v14 = __98__LPiTunesMediaMetadataProviderSpecialization_processResponseDictionary_withStorefrontIdentifier___block_invoke(v34);
            if (v14)
            {
              v15 = [v13 objectForKeyedSubscript:@"entryMetadataName"];
              v16 = v15;
              if (!v15)
              {
                self = [v13 objectForKeyedSubscript:@"entryName"];
                v16 = self;
              }

              [v30 setValue:v14 forKey:v16];
              if (!v15)
              {
              }
            }

            else
            {
              v17 = [v13 objectForKeyedSubscript:@"entryIsOptional"];
              v18 = [v17 BOOLValue];

              if ((v18 & 1) == 0)
              {
                v21 = LPLogChannelFetching();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                {
                  identifier = v25->_identifier;
                  v23 = [v13 objectForKeyedSubscript:@"entryName"];
                  [(LPiTunesMediaMetadataProviderSpecialization *)identifier processResponseDictionary:v23 withStorefrontIdentifier:buf, v21];
                }

                v20 = 0;
                v19 = obj;
                goto LABEL_26;
              }
            }
          }

          v9 = obj;
          v10 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v19 = [v8 objectForKeyedSubscript:@"additionalProperties"];
      if (v19)
      {
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __98__LPiTunesMediaMetadataProviderSpecialization_processResponseDictionary_withStorefrontIdentifier___block_invoke_382;
        v32[3] = &unk_1E7A35EE0;
        v33 = v30;
        [v19 enumerateKeysAndObjectsUsingBlock:v32];
      }

      v20 = v30;
LABEL_26:
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

id __98__LPiTunesMediaMetadataProviderSpecialization_processResponseDictionary_withStorefrontIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKeyedSubscript:@"entryName"];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4 && ([*(a1 + 40) objectForKeyedSubscript:@"entryType"], v5 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) != 0))
  {
    v7 = [*(a1 + 40) objectForKeyedSubscript:@"entryExtractor"];
    v8 = v7;
    if (!v7 || ((*(v7 + 16))(v7, v4), v9 = objc_claimAutoreleasedReturnValue(), v4, (v4 = v9) != 0))
    {
      v4 = v4;
    }

    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)resolve
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(LPiTunesMediaUnresolvedMetadata *)self->_unresolvedMetadata resolve];
  resolvedMetadata = self->_resolvedMetadata;
  self->_resolvedMetadata = v3;

  v5 = [(LPiTunesMediaUnresolvedMetadata *)self->_unresolvedMetadata assetsToFetch];
  v6 = objc_alloc_init(LPFetcherConfiguration);
  v7 = [(LPMetadataProviderSpecialization *)self context];
  v8 = [v7 event];
  [(LPFetcherConfiguration *)v6 setRootEvent:v8];

  v9 = [LPFetcherGroup alloc];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __54__LPiTunesMediaMetadataProviderSpecialization_resolve__block_invoke;
  v25[3] = &unk_1E7A35F08;
  v25[4] = self;
  v10 = [(LPFetcherGroup *)v9 initWithPolicy:0 configuration:v6 description:@"iTunes Assets" completionHandler:v25];
  fetcherGroup = self->_fetcherGroup;
  self->_fetcherGroup = v10;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v13)
  {
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = self->_fetcherGroup;
        v17 = [*(*(&v21 + 1) + 8 * v15) fetcher];
        [(LPFetcherGroup *)v16 appendFetcher:v17];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v13);
  }

  if (self->_lyricComponents)
  {
    v18 = [[LPiTunesMediaAsset alloc] initWithName:@"lyricExcerpt" lyricComponents:self->_lyricComponents];
    v19 = self->_fetcherGroup;
    v20 = [(LPiTunesMediaAsset *)v18 fetcher];
    [(LPFetcherGroup *)v19 appendFetcher:v20];
  }

  [(LPFetcherGroup *)self->_fetcherGroup doneAddingFetchers];
}

void __54__LPiTunesMediaMetadataProviderSpecialization_resolve__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = *v19;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v19 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v18 + 1) + 8 * i);
        v7 = [v6 userData];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v6 image];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = [v6 string];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v8 = [v6 URL];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v8 = [v6 lyrics];
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_22;
                }

                v8 = [v6 video];
              }
            }
          }
        }

        v9 = v8;
        v10 = *(*(a1 + 32) + 56);
        v11 = [v7 name];
        v12 = [v10 valueForKey:v11];

        if (!v12)
        {
          v16 = *(*(a1 + 32) + 56);
          v13 = [v7 name];
          [v16 setValue:v9 forKey:v13];
          goto LABEL_20;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 arrayByAddingObject:v9];
          v14 = *(*(a1 + 32) + 56);
          v15 = [v7 name];
          [v14 setValue:v13 forKey:v15];

LABEL_20:
        }

LABEL_22:
      }

      v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v3);
  }

  [*(a1 + 32) done];
}

- (void)start
{
  v3 = [[LPiTunesMediaLookupTask alloc] initWithIdentifier:self->_identifier storefrontCountryCode:self->_storefrontCountryCode];
  lookupTask = self->_lookupTask;
  self->_lookupTask = v3;

  v5 = self->_lookupTask;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__LPiTunesMediaMetadataProviderSpecialization_start__block_invoke;
  v6[3] = &unk_1E7A35F30;
  v6[4] = self;
  [(LPiTunesMediaLookupTask *)v5 start:v6];
}

void __52__LPiTunesMediaMetadataProviderSpecialization_start__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__LPiTunesMediaMetadataProviderSpecialization_start__block_invoke_2;
  v13[3] = &unk_1E7A35C10;
  v13[4] = *(a1 + 32);
  v14 = v9;
  v15 = v7;
  v16 = v8;
  v10 = v8;
  v11 = v7;
  v12 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v13);
}

uint64_t __52__LPiTunesMediaMetadataProviderSpecialization_start__block_invoke_2(uint64_t result)
{
  v2 = (result + 32);
  v1 = *(result + 32);
  if ((*(v1 + 40) & 1) == 0)
  {
    v3 = result;
    v4 = *(v1 + 48);
    *(v1 + 48) = 0;

    v5 = (v3 + 40);
    if (*(v3 + 40))
    {
      v6 = LPLogChannelFetching();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __52__LPiTunesMediaMetadataProviderSpecialization_start__block_invoke_2_cold_1(v2, v5, v6);
      }

      return [*v2 fail];
    }

    v7 = *(v3 + 48);
    if (!v7)
    {
      v12 = LPLogChannelFetching();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __52__LPiTunesMediaMetadataProviderSpecialization_start__block_invoke_2_cold_3(v2, v12);
      }

      return [*v2 fail];
    }

    v8 = [*(v3 + 32) processResponseDictionary:v7 withStorefrontIdentifier:*(v3 + 56)];
    v9 = *(v3 + 32);
    v10 = *(v9 + 64);
    *(v9 + 64) = v8;

    v11 = *(v3 + 32);
    if (!v11[8])
    {
      v13 = LPLogChannelFetching();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __52__LPiTunesMediaMetadataProviderSpecialization_start__block_invoke_2_cold_2(v2, v13);
      }

      return [*v2 fail];
    }

    return [v11 resolve];
  }

  return result;
}

+ (void)requestSourceApplicationMetadataForBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(LPSourceApplicationMetadata);
  [(LPSourceApplicationMetadata *)v7 setBundleIdentifier:v5];
  v8 = LPLogChannelFetching();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE886000, v8, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider requestSourceApplication trying local fetch", buf, 2u);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __117__LPiTunesMediaMetadataProviderSpecialization_requestSourceApplicationMetadataForBundleIdentifier_completionHandler___block_invoke;
  v25[3] = &unk_1E7A35F58;
  v9 = v5;
  v26 = v9;
  v10 = v7;
  v27 = v10;
  v11 = v6;
  v28 = v11;
  if (__117__LPiTunesMediaMetadataProviderSpecialization_requestSourceApplicationMetadataForBundleIdentifier_completionHandler___block_invoke(v25))
  {
    v12 = LPLogChannelFetching();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE886000, v12, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider requestSourceApplication local fetch succeeded", buf, 2u);
    }
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __117__LPiTunesMediaMetadataProviderSpecialization_requestSourceApplicationMetadataForBundleIdentifier_completionHandler___block_invoke_408;
    aBlock[3] = &unk_1E7A35F80;
    v13 = v11;
    v24 = v13;
    v14 = _Block_copy(aBlock);
    v15 = [[LPiTunesMediaLookupTask alloc] initWithBundleIdentifier:v9];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __117__LPiTunesMediaMetadataProviderSpecialization_requestSourceApplicationMetadataForBundleIdentifier_completionHandler___block_invoke_410;
    v18[3] = &unk_1E7A35FF8;
    v16 = v14;
    v21 = v16;
    v19 = v10;
    v20 = v15;
    v22 = v13;
    v17 = v15;
    [(LPiTunesMediaLookupTask *)v17 start:v18];
  }
}

uint64_t __117__LPiTunesMediaMetadataProviderSpecialization_requestSourceApplicationMetadataForBundleIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E69635F8]);
  v3 = *(a1 + 32);
  v19 = 0;
  v4 = [v2 initWithBundleIdentifier:v3 allowPlaceholder:1 error:&v19];
  v5 = v19;
  if (v5)
  {
    v6 = LPLogChannelFetching();
    v7 = 0;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_impl(&dword_1AE886000, v6, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider requestSourceApplication local fetch failed: %@", buf, 0xCu);
      v7 = 0;
    }
  }

  else
  {
    v8 = [v4 localizedName];
    [*(a1 + 40) setName:v8];

    v9 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:*(a1 + 32)];
    v10 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:48.0 scale:{48.0, 1.0}];
    [v10 setShouldApplyMask:0];
    v11 = [v9 prepareImageForDescriptor:v10];
    v12 = [v11 CGImage];
    if (v12)
    {
      v13 = [[LPImage alloc] _initWithCGImage:v12];
      [*(a1 + 40) setIcon:v13];

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __117__LPiTunesMediaMetadataProviderSpecialization_requestSourceApplicationMetadataForBundleIdentifier_completionHandler___block_invoke_406;
      block[3] = &unk_1E7A35428;
      v18 = *(a1 + 48);
      v17 = *(a1 + 40);
      dispatch_async(MEMORY[0x1E69E96A0], block);

      v7 = 1;
    }

    else
    {
      v14 = LPLogChannelFetching();
      v7 = 0;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AE886000, v14, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider requestSourceApplication local fetch failed: no icon", buf, 2u);
        v7 = 0;
      }
    }
  }

  return v7;
}

void __117__LPiTunesMediaMetadataProviderSpecialization_requestSourceApplicationMetadataForBundleIdentifier_completionHandler___block_invoke_408(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __117__LPiTunesMediaMetadataProviderSpecialization_requestSourceApplicationMetadataForBundleIdentifier_completionHandler___block_invoke_2;
  v5[3] = &unk_1E7A356A0;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __117__LPiTunesMediaMetadataProviderSpecialization_requestSourceApplicationMetadataForBundleIdentifier_completionHandler___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = LPLogChannelFetching();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AE886000, v2, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider requestSourceApplication remote fetch failed: %@", &v6, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = makeLPError(2, *(a1 + 32));
  (*(v4 + 16))(v4, 0, v5);
}

void __117__LPiTunesMediaMetadataProviderSpecialization_requestSourceApplicationMetadataForBundleIdentifier_completionHandler___block_invoke_410(id *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    (*(a1[6] + 2))();
  }

  else
  {
    v8 = [v6 objectForKey:@"name"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [a1[4] setName:v8];
      v9 = [v6 objectForKey:@"artwork"];
      if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v10 = mediaAsset(v9, @"artwork", 48, 48, @"bb", @"png");
        v11 = objc_alloc_init(LPFetcherConfiguration);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __117__LPiTunesMediaMetadataProviderSpecialization_requestSourceApplicationMetadataForBundleIdentifier_completionHandler___block_invoke_2_411;
        v20[3] = &unk_1E7A35FD0;
        v21 = v10;
        v22 = v11;
        v12 = a1[6];
        v13 = a1[5];
        v14 = a1[4];
        v15 = a1[7];
        *&v16 = v12;
        *(&v16 + 1) = v15;
        *&v17 = v13;
        *(&v17 + 1) = v14;
        v23 = v17;
        v24 = v16;
        v18 = v11;
        v19 = v10;
        dispatch_async(MEMORY[0x1E69E96A0], v20);
      }

      else
      {
        (*(a1[6] + 2))();
      }
    }

    else
    {
      (*(a1[6] + 2))();
    }
  }
}

void __117__LPiTunesMediaMetadataProviderSpecialization_requestSourceApplicationMetadataForBundleIdentifier_completionHandler___block_invoke_2_411(uint64_t a1)
{
  v2 = [*(a1 + 32) fetcher];
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __117__LPiTunesMediaMetadataProviderSpecialization_requestSourceApplicationMetadataForBundleIdentifier_completionHandler___block_invoke_3;
  v5[3] = &unk_1E7A35FA8;
  v9 = *(a1 + 64);
  v6 = *(a1 + 48);
  v7 = v2;
  v8 = *(a1 + 56);
  v10 = *(a1 + 72);
  v4 = v2;
  [v4 fetchWithConfiguration:v3 completionHandler:v5];
}

void __117__LPiTunesMediaMetadataProviderSpecialization_requestSourceApplicationMetadataForBundleIdentifier_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = [v3 image];
    [*(a1 + 48) setIcon:v6];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __117__LPiTunesMediaMetadataProviderSpecialization_requestSourceApplicationMetadataForBundleIdentifier_completionHandler___block_invoke_4;
    v7[3] = &unk_1E7A35428;
    v9 = *(a1 + 64);
    v8 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

uint64_t __117__LPiTunesMediaMetadataProviderSpecialization_requestSourceApplicationMetadataForBundleIdentifier_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = LPLogChannelFetching();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AE886000, v2, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider requestSourceApplication remote fetch succeeded", v4, 2u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)fail
{
  [(LPiTunesMediaMetadataProviderSpecialization *)self cancel];
  v3 = [(LPMetadataProviderSpecialization *)self delegate];
  [v3 metadataProviderSpecializationDidFail:self];
}

- (void)done
{
  [(LPiTunesMediaMetadataProviderSpecialization *)self completed];
  v4 = [(LPMetadataProviderSpecialization *)self createMetadataWithSpecialization:self->_resolvedMetadata];
  v3 = [(LPMetadataProviderSpecialization *)self delegate];
  [v3 metadataProviderSpecialization:self didCompleteWithMetadata:v4];
}

- (void)_internalPostProcessResolvedMetadataWithCompletionHandler:(id)a3
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(LPSpecializationMetadata *)self->_resolvedMetadata artwork];
    [v4 _computeDominantColorForProperties];
  }

  v5[2]();
}

- (void)processResponseDictionary:(uint8_t *)buf withStorefrontIdentifier:(os_log_t)log .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1AE886000, log, OS_LOG_TYPE_DEBUG, "LPiTunesMediaMetadataProviderSpecialization (ID: %@) - Missing value for non-optional entry '%@'.", buf, 0x16u);
}

void __52__LPiTunesMediaMetadataProviderSpecialization_start__block_invoke_2_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(*a1 + 24);
  v4 = *a2;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_debug_impl(&dword_1AE886000, log, OS_LOG_TYPE_DEBUG, "LPiTunesMediaMetadataProviderSpecialization (ID: %@) - Error looking up identifier from the iTunes store - %@.", &v5, 0x16u);
}

void __52__LPiTunesMediaMetadataProviderSpecialization_start__block_invoke_2_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 24);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1AE886000, a2, OS_LOG_TYPE_DEBUG, "LPiTunesMediaMetadataProviderSpecialization (ID: %@) - Failed parsing response dictionary.", &v3, 0xCu);
}

void __52__LPiTunesMediaMetadataProviderSpecialization_start__block_invoke_2_cold_3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 24);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1AE886000, a2, OS_LOG_TYPE_DEBUG, "LPiTunesMediaMetadataProviderSpecialization (ID: %@) - Response from the iTunes store was null.", &v3, 0xCu);
}

@end