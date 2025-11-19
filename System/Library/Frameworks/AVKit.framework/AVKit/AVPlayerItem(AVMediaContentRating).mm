@interface AVPlayerItem(AVMediaContentRating)
- (id)mediaContentRating;
@end

@implementation AVPlayerItem(AVMediaContentRating)

- (id)mediaContentRating
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = [a1 asset];
  v3 = [v2 metadata];
  v4 = v3;
  v5 = MEMORY[0x1E695E0F0];
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  v8 = [a1 externalMetadata];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  v11 = [v7 arrayByAddingObjectsFromArray:v10];

  v12 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69877F8], *MEMORY[0x1E6987748], 0}];
  v31 = [MEMORY[0x1E695DF70] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v11;
  v13 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v35 + 1) + 8 * i);
        v18 = [v17 identifier];
        v19 = [v12 containsObject:v18];

        if (v19)
        {
          v20 = [v17 locale];
          v21 = [v20 countryCode];

          v22 = [v17 stringValue];
          memset(&v34, 0, sizeof(v34));
          [a1 duration];
          Seconds = 0.0;
          if ((~v34.flags & 0x11) != 0)
          {
            time = v34;
            Seconds = CMTimeGetSeconds(&time);
          }

          v24 = Seconds < 4200.0 && Seconds > 0.0;
          v25 = [a1 avkitMediaType];
          if (v25 == 5)
          {
            v26 = 1;
          }

          else
          {
            v26 = 2 * (v25 == 6);
          }

          v27 = +[AVRatingProviders shared];
          v28 = [v27 findRatingString:v22 domain:v26 country:v21 shouldPreferTVDomain:v24];

          if (v28)
          {
            [v31 addObject:v28];
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v14);
  }

  v29 = [v31 firstObject];

  return v29;
}

@end