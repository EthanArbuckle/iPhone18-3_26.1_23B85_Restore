@interface NSAttributedString(TransitFormattedStringExtras)
+ (id)_mapkit_attributedLiveTransitStringFromAttributedDepartureString:()TransitFormattedStringExtras liveStatus:darkMode:symbolOverrideColor:;
+ (id)_mapkit_attributedLiveTransitStringFromDepartureString:()TransitFormattedStringExtras departure:textAttributes:darkMode:symbolOverrideColor:;
+ (id)_mapkit_attributedStringForComposedString:()TransitFormattedStringExtras defaultAttributes:argumentOverrideHandler:;
+ (id)_mapkit_attributedTransitStringForServerFormattedString:()TransitFormattedStringExtras defaultAttributes:variableOverrides:;
+ (id)_mapkit_attributedTransitStringForServerFormattedString:()TransitFormattedStringExtras defaultAttributes:variableOverrides:options:;
@end

@implementation NSAttributedString(TransitFormattedStringExtras)

+ (id)_mapkit_attributedLiveTransitStringFromAttributedDepartureString:()TransitFormattedStringExtras liveStatus:darkMode:symbolOverrideColor:
{
  v9 = a3;
  v10 = a6;
  if (a4 && ([MEMORY[0x1E69DCAB8] _mapkit_liveTransitIndicatorImageUsingDarkMode:a5], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = MKTransitLiveDepartureColorForLiveStatus(a4);
    }

    v15 = v13;
    v16 = [v12 _flatImageWithColor:v13];

    v17 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    [v17 setImage:v16];
    v18 = *MEMORY[0x1E695EFF8];
    v19 = *(MEMORY[0x1E695EFF8] + 8);
    [v16 size];
    [v17 setBounds:{v18, v19, v20, v21}];
    v22 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v17];
    v23 = [v22 mutableCopy];

    v24 = [MEMORY[0x1E695DF90] dictionary];
    v25 = +[MKSystemController sharedInstance];
    v26 = [v25 userInterfaceIdiom];

    if (v26 == 2)
    {
      [v24 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69DB650]];
    }

    v27 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:v24];
    v28 = [v9 mutableCopy];
    [v28 appendAttributedString:v27];
    [v28 appendAttributedString:v23];
    v14 = [v28 copy];
  }

  else
  {
    v14 = v9;
  }

  return v14;
}

+ (id)_mapkit_attributedLiveTransitStringFromDepartureString:()TransitFormattedStringExtras departure:textAttributes:darkMode:symbolOverrideColor:
{
  v12 = MEMORY[0x1E696AAB0];
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[v12 alloc] initWithString:v16 attributes:v14];

  v18 = [v15 liveStatus];
  v19 = [a1 _mapkit_attributedLiveTransitStringFromAttributedDepartureString:v17 liveStatus:v18 darkMode:a6 symbolOverrideColor:v13];

  return v19;
}

+ (id)_mapkit_attributedStringForComposedString:()TransitFormattedStringExtras defaultAttributes:argumentOverrideHandler:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7)
  {
    if (v9)
    {
      v11 = [v7 optionsWithArgumentHandler:v9];
      [v11 setShouldUpdateFormatStrings:0];
      v12 = [v7 composedStringWithOptions:v11];

      v7 = v12;
    }

    v13 = [[MKServerFormattedString alloc] initWithComposedString:v7];
    v14 = [(MKServerFormattedString *)v13 multiPartAttributedStringWithAttributes:v8];
    v15 = [v14 attributedString];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)_mapkit_attributedTransitStringForServerFormattedString:()TransitFormattedStringExtras defaultAttributes:variableOverrides:options:
{
  if (a3)
  {
    v9 = a5;
    v10 = a4;
    v11 = a3;
    v12 = [MKServerFormattedStringParameters alloc];
    v13 = a6[1];
    v19[0] = *a6;
    v19[1] = v13;
    v14 = [(MKServerFormattedStringParameters *)v12 initWithOptions:v19 variableOverrides:v9];

    v15 = [[MKServerFormattedString alloc] initWithGeoServerString:v11 parameters:v14];
    v16 = [(MKServerFormattedString *)v15 multiPartAttributedStringWithAttributes:v10];

    v17 = [v16 attributedString];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)_mapkit_attributedTransitStringForServerFormattedString:()TransitFormattedStringExtras defaultAttributes:variableOverrides:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  memset(&v14[1] + 7, 0, 5);
  BYTE2(v14[2]) = MKApplicationLayoutDirectionIsRightToLeft();
  [MKTransitItemReferenceDateUpdater referenceDateAsTimeInterval:1];
  v14[3] = v11;
  v12 = [a1 _mapkit_attributedTransitStringForServerFormattedString:v10 defaultAttributes:v9 variableOverrides:v8 options:v14];

  return v12;
}

@end