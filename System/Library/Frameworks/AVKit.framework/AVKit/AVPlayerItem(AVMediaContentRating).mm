@interface AVPlayerItem(AVMediaContentRating)
- (id)mediaContentRating;
@end

@implementation AVPlayerItem(AVMediaContentRating)

- (id)mediaContentRating
{
  v40 = *MEMORY[0x1E69E9840];
  asset = [self asset];
  metadata = [asset metadata];
  v4 = metadata;
  v5 = MEMORY[0x1E695E0F0];
  if (metadata)
  {
    v6 = metadata;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  externalMetadata = [self externalMetadata];
  v9 = externalMetadata;
  if (externalMetadata)
  {
    v10 = externalMetadata;
  }

  else
  {
    v10 = v5;
  }

  v11 = [v7 arrayByAddingObjectsFromArray:v10];

  v12 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69877F8], *MEMORY[0x1E6987748], 0}];
  array = [MEMORY[0x1E695DF70] array];
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
        identifier = [v17 identifier];
        v19 = [v12 containsObject:identifier];

        if (v19)
        {
          locale = [v17 locale];
          countryCode = [locale countryCode];

          stringValue = [v17 stringValue];
          memset(&v34, 0, sizeof(v34));
          [self duration];
          Seconds = 0.0;
          if ((~v34.flags & 0x11) != 0)
          {
            time = v34;
            Seconds = CMTimeGetSeconds(&time);
          }

          v24 = Seconds < 4200.0 && Seconds > 0.0;
          avkitMediaType = [self avkitMediaType];
          if (avkitMediaType == 5)
          {
            v26 = 1;
          }

          else
          {
            v26 = 2 * (avkitMediaType == 6);
          }

          v27 = +[AVRatingProviders shared];
          v28 = [v27 findRatingString:stringValue domain:v26 country:countryCode shouldPreferTVDomain:v24];

          if (v28)
          {
            [array addObject:v28];
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v14);
  }

  firstObject = [array firstObject];

  return firstObject;
}

@end