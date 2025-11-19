@interface WLAGetWatchListPlayables
- (void)performWithCompletion:(id)a3;
@end

@implementation WLAGetWatchListPlayables

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(WLAGetWatchListPlayables *)self statsId];
  NSLog(@"WLAGetWatchListPlayables: Got request for playables for stats ID %@.", v5);
  v6 = [[WLKCanonicalPlayablesRequest alloc] initWithStatsID:v5];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __50__WLAGetWatchListPlayables_performWithCompletion___block_invoke;
  v8[3] = &unk_8328;
  v9 = v4;
  v7 = v4;
  [v6 makeRequestWithCompletion:v8];
}

void __50__WLAGetWatchListPlayables_performWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v36 = a1;
    NSLog(@"WLAGetWatchListPlayables: Got response: %@", v5);
    v45 = objc_alloc_init(NSMutableArray);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v37 = v6;
    obj = [v6 playables];
    v46 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v46)
    {
      v43 = WLKPlayablePunchoutUrlKeyPlay;
      v44 = *v51;
      v42 = SFPropertyEntryKeyFormat;
      v40 = SFPropertyEntryValueFormatPNG;
      v41 = SFPropertyEntryValueFormatJPEG;
      v38 = SFPropertyEntryValueFormatLCR;
      do
      {
        for (i = 0; i != v46; i = i + 1)
        {
          if (*v51 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v50 + 1) + 8 * i);
          v9 = objc_alloc_init(SAWLWatchListPlayable);
          [v9 setEntitled:{objc_msgSend(v8, "isEntitled")}];
          [v9 setInstalled:{objc_msgSend(v8, "isAppInstalled")}];
          v10 = [v8 punchoutUrls];
          v11 = [v10 objectForKey:v43];

          v49 = v11;
          v12 = [NSURL URLWithString:v11];
          [v9 setPlayURL:v12];

          v13 = [v8 channelDetails];
          v14 = objc_alloc_init(SAWLWatchListChannelDetails);
          v15 = [v13 name];
          [v14 setAppName:v15];

          v16 = [v13 appStoreURL];
          [v14 setAppStoreURL:v16];

          v48 = [v13 images];
          v17 = [v48 bestArtworkVariantOfType:10 forSize:{1.79769313e308, 1.79769313e308}];
          v18 = [v17 artworkURLString];
          [v17 artworkSize];
          v20 = v19;
          v22 = v21;
          v23 = objc_alloc_init(SFDynamicURLImageResource);
          [v23 setPixelHeight:v22];
          [v23 setPixelWidth:v20];
          v47 = v18;
          [v23 setFormatURL:v18];
          [v23 setSupportsResizing:1];
          v24 = objc_alloc_init(SFImageOption);
          [v24 setName:v42];
          v25 = [v17 format];
          [v24 setDefaultValue:v25];

          v26 = objc_alloc_init(NSMutableDictionary);
          [v26 setObject:@"jpg" forKey:v41];
          [v26 setObject:@"png" forKey:v40];
          if ([v17 supportsLayeredImage])
          {
            [v26 setObject:@"lcr" forKey:v38];
          }

          [v24 setOptions:v26];
          v54 = v24;
          v27 = [NSArray arrayWithObjects:&v54 count:1];
          [v23 setImageOptions:v27];

          v28 = [[_SFPBDynamicURLImageResource alloc] initWithFacade:v23];
          v29 = [v28 data];
          [v14 setAppIconDynamicImage:v29];
          [v9 setChannelDetails:v14];
          [v45 addObject:v9];
        }

        v46 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v46);
    }

    v30 = objc_alloc_init(SAWLWatchListPlayableResults);
    [v30 setPlayables:v45];
    v31 = *(v36 + 32);
    if (v31)
    {
      v32 = [v30 dictionary];
      (*(v31 + 16))(v31, v32);
    }

    v6 = v37;
  }

  else
  {
    NSLog(@"WLAGetWatchListPlayables: Error requesting playables: %@", a3);
    v33 = *(a1 + 32);
    if (v33)
    {
      v34 = objc_alloc_init(SACommandFailed);
      v35 = [v34 dictionary];
      (*(v33 + 16))(v33, v35);
    }
  }
}

@end