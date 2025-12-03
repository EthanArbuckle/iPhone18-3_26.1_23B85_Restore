@interface ATXSuggestionLayoutPreviewProducer
+ (id)_clientModelSpecForPreview;
+ (id)_executableSpecForAppPredictionWithBundleId:(id)id;
+ (id)_proactiveSuggestionWithBundleId:(id)id layoutType:(int64_t)type title:(id)title;
+ (id)_scoreSpecForPreview;
+ (id)_uiSpecForPreviewWithLayoutType:(int64_t)type title:(id)title subtitle:(id)subtitle;
+ (id)previewLayoutFor2x2SuggestionWidget;
+ (id)previewLayoutFor2x4SuggestionWidget;
+ (id)previewLayoutFor4x4SuggestionWidget;
+ (id)previewLayoutForAppPredictionPanel;
@end

@implementation ATXSuggestionLayoutPreviewProducer

+ (id)previewLayoutFor2x2SuggestionWidget
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [ATXSuggestionLayoutPreviewProducer _proactiveSuggestionWithBundleId:@"com.apple.mobilesafari" layoutType:3 title:@"Browse the Internet with Safari"];
  v3 = objc_alloc(MEMORY[0x1E69C5C10]);
  v7[0] = v2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v3 initWithLayoutType:5 oneByOneSuggestions:0 oneByTwoSuggestions:0 twoByTwoSuggestions:v4 oneByFourSuggestions:0 twoByFourSuggestions:0 fourByFourSuggestions:0 fourByEightSuggestions:0];

  [v5 setIsValidForSuggestionsWidget:1];

  return v5;
}

+ (id)previewLayoutFor2x4SuggestionWidget
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = [ATXSuggestionLayoutPreviewProducer _proactiveSuggestionWithBundleId:@"com.apple.mobilesafari" layoutType:5 title:@"Browse the Internet with Safari"];
  v3 = [ATXSuggestionLayoutPreviewProducer _proactiveSuggestionWithBundleId:@"com.apple.AppStore" layoutType:5 title:@"Read about today's App picks"];
  v4 = objc_alloc(MEMORY[0x1E69C5C10]);
  v8[0] = v2;
  v8[1] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [v4 initWithLayoutType:9 oneByOneSuggestions:0 oneByTwoSuggestions:0 twoByTwoSuggestions:0 oneByFourSuggestions:v5 twoByFourSuggestions:0 fourByFourSuggestions:0 fourByEightSuggestions:0];

  [v6 setIsValidForSuggestionsWidget:1];

  return v6;
}

+ (id)previewLayoutFor4x4SuggestionWidget
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = [ATXSuggestionLayoutPreviewProducer _proactiveSuggestionWithBundleId:@"com.apple.mobilesafari" layoutType:5 title:@"Browse the Internet with Safari"];
  v3 = [ATXSuggestionLayoutPreviewProducer _proactiveSuggestionWithBundleId:@"com.apple.AppStore" layoutType:5 title:@"Read about today's App picks"];
  v4 = [ATXSuggestionLayoutPreviewProducer _proactiveSuggestionWithBundleId:@"com.apple.mobileslideshow" layoutType:5 title:@"View Photos"];
  v5 = [ATXSuggestionLayoutPreviewProducer _proactiveSuggestionWithBundleId:@"com.apple.camera" layoutType:5 title:@"Take a photo"];
  v6 = objc_alloc(MEMORY[0x1E69C5C10]);
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];
  v8 = [v6 initWithLayoutType:11 oneByOneSuggestions:0 oneByTwoSuggestions:0 twoByTwoSuggestions:0 oneByFourSuggestions:v7 twoByFourSuggestions:0 fourByFourSuggestions:0 fourByEightSuggestions:0];

  [v8 setIsValidForSuggestionsWidget:1];

  return v8;
}

+ (id)previewLayoutForAppPredictionPanel
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(&unk_1F3E60CA8, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [&unk_1F3E60CA8 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(&unk_1F3E60CA8);
        }

        v7 = [ATXSuggestionLayoutPreviewProducer _proactiveSuggestionWithBundleId:*(*(&v10 + 1) + 8 * i) layoutType:1 title:*(*(&v10 + 1) + 8 * i)];
        [v2 addObject:v7];
      }

      v4 = [&unk_1F3E60CA8 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v8 = [objc_alloc(MEMORY[0x1E69C5C10]) initWithLayoutType:0 oneByOneSuggestions:v2 oneByTwoSuggestions:0 twoByTwoSuggestions:0 oneByFourSuggestions:0 twoByFourSuggestions:0 fourByFourSuggestions:0 fourByEightSuggestions:0];
  [v8 setIsValidForSuggestionsWidget:1];

  return v8;
}

+ (id)_clientModelSpecForPreview
{
  v2 = [objc_alloc(MEMORY[0x1E69C5BC0]) initWithClientModelId:@"Hardcoded Preview" clientModelVersion:@"1.0"];

  return v2;
}

+ (id)_executableSpecForAppPredictionWithBundleId:(id)id
{
  v3 = MEMORY[0x1E69C5BC8];
  idCopy = id;
  v5 = [[v3 alloc] initWithExecutableObject:idCopy executableDescription:idCopy executableIdentifier:idCopy suggestionExecutableType:1];

  return v5;
}

+ (id)_uiSpecForPreviewWithLayoutType:(int64_t)type title:(id)title subtitle:(id)subtitle
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69C5BD0];
  subtitleCopy = subtitle;
  titleCopy = title;
  v10 = [[v7 alloc] initWithApplicableSuggestionLayout:type];
  v15[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  LOWORD(v14) = 0;
  v12 = [objc_alloc(MEMORY[0x1E69C5BE0]) initWithTitle:titleCopy subtitle:subtitleCopy predictionReason:@"Preview Suggestion" preferredLayoutConfigs:v11 allowedOnLockscreen:0 allowedOnHomeScreen:1 allowedOnSpotlight:v14 shouldClearOnEngagement:?];

  return v12;
}

+ (id)_scoreSpecForPreview
{
  v2 = [objc_alloc(MEMORY[0x1E69C5BD8]) initWithRawScore:1 suggestedConfidenceCategory:1.0];

  return v2;
}

+ (id)_proactiveSuggestionWithBundleId:(id)id layoutType:(int64_t)type title:(id)title
{
  titleCopy = title;
  idCopy = id;
  v9 = +[ATXSuggestionLayoutPreviewProducer _clientModelSpecForPreview];
  v10 = [ATXSuggestionLayoutPreviewProducer _executableSpecForAppPredictionWithBundleId:idCopy];

  v11 = [ATXSuggestionLayoutPreviewProducer _uiSpecForPreviewWithLayoutType:type title:titleCopy subtitle:0];

  v12 = +[ATXSuggestionLayoutPreviewProducer _scoreSpecForPreview];
  v13 = [objc_alloc(MEMORY[0x1E69C5BB0]) initWithClientModelSpecification:v9 executableSpecification:v10 uiSpecification:v11 scoreSpecification:v12];

  return v13;
}

@end