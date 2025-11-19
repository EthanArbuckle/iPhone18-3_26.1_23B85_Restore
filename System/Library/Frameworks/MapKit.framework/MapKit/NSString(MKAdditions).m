@interface NSString(MKAdditions)
+ (id)_mapkit_formattedStringForCoordinate:()MKAdditions;
+ (id)_mapkit_shortenedURLStringForFullURLString:()MKAdditions;
+ (uint64_t)_mapkit_localizedDistanceStringWithMeters:()MKAdditions abbreviated:;
+ (uint64_t)_mapkit_voiceOverLocalizedDistanceStringWithMeters:()MKAdditions;
@end

@implementation NSString(MKAdditions)

+ (id)_mapkit_shortenedURLStringForFullURLString:()MKAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [&unk_1F1612198 countByEnumeratingWithState:&v14 objects:v18 count:16];
  v5 = v3;
  if (v4)
  {
    v6 = v4;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(&unk_1F1612198);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v3 hasPrefix:v9])
        {
          v5 = [v3 substringFromIndex:{objc_msgSend(v9, "length")}];

          goto LABEL_11;
        }
      }

      v6 = [&unk_1F1612198 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    v5 = v3;
  }

LABEL_11:
  if ([v5 hasSuffix:@"/"])
  {
    v10 = [v5 substringToIndex:{objc_msgSend(v5, "length") - 1}];

    v5 = v10;
  }

  if ([v5 length] >= 0x21)
  {
    v11 = [v5 rangeOfString:@"/"];
    if (v11)
    {
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = [v5 substringToIndex:v11];

        v5 = v12;
      }
    }
  }

  return v5;
}

+ (id)_mapkit_formattedStringForCoordinate:()MKAdditions
{
  v4 = _CreateCoordinateComponentString(0, a1, a2);
  v5 = _CreateCoordinateComponentString(1, a1, a2);
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = _MKLocalizedStringFromThisBundle(@"%@, %@");
  v8 = [v6 initWithFormat:v7, v4, v5, 0];

  return v8;
}

+ (uint64_t)_mapkit_voiceOverLocalizedDistanceStringWithMeters:()MKAdditions
{
  if (_mapkit_voiceOverLocalizedDistanceStringWithMeters__onceToken != -1)
  {
    dispatch_once(&_mapkit_voiceOverLocalizedDistanceStringWithMeters__onceToken, &__block_literal_global_70_18795);
  }

  v4 = _mapkit_voiceOverLocalizedDistanceStringWithMeters__distanceFormatter;

  return [v4 stringFromDistance:a3];
}

+ (uint64_t)_mapkit_localizedDistanceStringWithMeters:()MKAdditions abbreviated:
{
  if (_mapkit_localizedDistanceStringWithMeters_abbreviated__onceToken != -1)
  {
    dispatch_once(&_mapkit_localizedDistanceStringWithMeters_abbreviated__onceToken, &__block_literal_global_67_18797);
  }

  if (a4)
  {
    [_mapkit_localizedDistanceStringWithMeters_abbreviated__distanceFormatter setUnitStyle:1];
  }

  v6 = _mapkit_localizedDistanceStringWithMeters_abbreviated__distanceFormatter;

  return [v6 stringFromDistance:a3];
}

@end