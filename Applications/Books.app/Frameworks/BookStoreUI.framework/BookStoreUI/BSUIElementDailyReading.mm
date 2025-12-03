@interface BSUIElementDailyReading
+ (BOOL)supportAttribute:(unsigned __int16)attribute feature:(id)feature;
+ (id)_buildDetailTextModel:(id)model service:(id)service context:(id)context goalCompleted:(BOOL)completed writingDirection:(BOOL)direction;
+ (id)_buildTimeTextModel:(id)model service:(id)service context:(id)context writingDirection:(BOOL)direction;
+ (id)_buildTitleTextModel:(id)model service:(id)service context:(id)context writingDirection:(BOOL)direction;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
@end

@implementation BSUIElementDailyReading

+ (BOOL)supportAttribute:(unsigned __int16)attribute feature:(id)feature
{
  featureCopy = feature;
  if ([featureCopy isEqualToString:@"supportsWidgetFormat"] & 1) != 0 || (objc_msgSend(featureCopy, "isEqualToString:", @"supportsWidgetFormatV3"))
  {
    v5 = 1;
  }

  else
  {
    v5 = [featureCopy isEqualToString:@"supportsSymbolImages"];
  }

  return v5;
}

+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  builderCopy = builder;
  v10 = [TUIConfiguration alloc];
  v11 = [builderCopy finalizeWidgetWithParent:objectCopy];

  v12 = [v10 initWithData:v11];
  [objectCopy setConfiguration:v12];

  dailyReadingMetrics = [objectCopy dailyReadingMetrics];
  configuration = [objectCopy configuration];
  [dailyReadingMetrics updateWithConfiguration:configuration context:contextCopy];

  v15 = objc_alloc_init(NSMutableArray);
  if (([dailyReadingMetrics iconMode] & 1) == 0)
  {
    v16 = [contextCopy serviceConformingToProtocol:&OBJC_PROTOCOL___TUIWPService];
    rightToLeft = [dailyReadingMetrics rightToLeft];
    bOOLValue = [rightToLeft BOOLValue];

    objc_opt_class();
    configuration2 = [objectCopy configuration];
    v20 = [configuration2 boxForKey:@"title-text-box"];
    v21 = BUDynamicCast();

    if (!v21)
    {
      v22 = [self _buildTitleTextModel:dailyReadingMetrics service:v16 context:contextCopy writingDirection:bOOLValue];
      v21 = [[TUIWPBox alloc] initWithTextModel:v22];
    }

    identifier = [objectCopy identifier];
    v24 = [identifier tui_identifierByAppendingIndex:0];
    [v21 setIdentifier:v24];

    [v15 addObject:v21];
    objc_opt_class();
    configuration3 = [objectCopy configuration];
    v26 = [configuration3 boxForKey:@"time-text-box"];
    v27 = BUDynamicCast();

    if (!v27)
    {
      v28 = [self _buildTimeTextModel:dailyReadingMetrics service:v16 context:contextCopy writingDirection:bOOLValue];
      v27 = [[TUIWPBox alloc] initWithTextModel:v28];
    }

    v40 = bOOLValue;
    identifier2 = [objectCopy identifier];
    v30 = [identifier2 tui_identifierByAppendingIndex:1];
    [v27 setIdentifier:v30];

    [v15 addObject:v27];
    objc_opt_class();
    configuration4 = [objectCopy configuration];
    v32 = [configuration4 boxForKey:@"detail-text-box"];
    v33 = BUDynamicCast();

    if (!v33)
    {
      v34 = [self _buildDetailTextModel:dailyReadingMetrics service:v16 context:contextCopy goalCompleted:objc_msgSend(dailyReadingMetrics writingDirection:{"goalCompleted"), v40}];
      v33 = [[TUIWPBox alloc] initWithTextModel:v34];
    }

    identifier3 = [objectCopy identifier];
    v36 = [identifier3 tui_identifierByAppendingIndex:2];
    [v33 setIdentifier:v36];

    [v15 addObject:v33];
    v37 = objc_alloc_init(TUIVSpacer);
    identifier4 = [objectCopy identifier];
    v39 = [identifier4 tui_identifierByAppendingIndex:3];
    [v37 setIdentifier:v39];

    [v15 addObject:v37];
  }

  [objectCopy updateModelChildren:v15];
}

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  boxCopy = box;
  contextCopy = context;
  attributesCopy = attributes;
  v12 = [[BSUIDailyReadingMetrics alloc] initWithNode:node.var0 attributes:attributesCopy context:contextCopy];

  if (![(BSUIDailyReadingMetrics *)v12 iconMode])
  {
    v13 = objc_alloc_init(NSMutableArray);
    v14 = [contextCopy serviceConformingToProtocol:&OBJC_PROTOCOL___TUIWPService];
    rightToLeft = [(BSUIDailyReadingMetrics *)v12 rightToLeft];
    bOOLValue = [rightToLeft BOOLValue];

    v31 = [self _buildTitleTextModel:v12 service:v14 context:contextCopy writingDirection:bOOLValue];
    v30 = [[TUIWPBox alloc] initWithTextModel:v31];
    identifier = [boxCopy identifier];
    v18 = [identifier tui_identifierByAppendingIndex:0];
    [v30 setIdentifier:v18];

    [v13 addObject:v30];
    v29 = [self _buildTimeTextModel:v12 service:v14 context:contextCopy writingDirection:bOOLValue];
    v19 = [[TUIWPBox alloc] initWithTextModel:v29];
    identifier2 = [boxCopy identifier];
    v21 = [identifier2 tui_identifierByAppendingIndex:1];
    [v19 setIdentifier:v21];

    [v13 addObject:v19];
    v22 = [self _buildDetailTextModel:v12 service:v14 context:contextCopy goalCompleted:-[BSUIDailyReadingMetrics goalCompleted](v12 writingDirection:{"goalCompleted"), bOOLValue}];
    v23 = [[TUIWPBox alloc] initWithTextModel:v22];
    identifier3 = [boxCopy identifier];
    v25 = [identifier3 tui_identifierByAppendingIndex:2];
    [v23 setIdentifier:v25];

    [v13 addObject:v23];
    v26 = objc_alloc_init(TUIVSpacer);
    identifier4 = [boxCopy identifier];
    v28 = [identifier4 tui_identifierByAppendingIndex:3];
    [v26 setIdentifier:v28];

    [v13 addObject:v26];
    [boxCopy updateModelChildren:v13];
  }

  [boxCopy setDailyReadingMetrics:{v12, v29}];
}

+ (id)_buildTitleTextModel:(id)model service:(id)service context:(id)context writingDirection:(BOOL)direction
{
  directionCopy = direction;
  contextCopy = context;
  serviceCopy = service;
  modelCopy = model;
  title = [modelCopy title];
  v13 = title;
  v14 = &stru_3960F8;
  if (title)
  {
    v14 = title;
  }

  v15 = v14;

  titleFontSpec = [modelCopy titleFontSpec];
  textColor = [modelCopy textColor];

  environment = [contextCopy environment];
  language = [environment language];
  LOBYTE(v23) = 0;
  v20 = [TUIWPBox textModelBuilderWithFontSpec:titleFontSpec style:0 color:textColor alignment:1 writingDirection:directionCopy language:language shouldHyphenate:v23 service:serviceCopy];

  [v20 appendString:v15];
  v21 = [v20 finalizeTextModelWithContext:contextCopy];

  return v21;
}

+ (id)_buildTimeTextModel:(id)model service:(id)service context:(id)context writingDirection:(BOOL)direction
{
  directionCopy = direction;
  contextCopy = context;
  serviceCopy = service;
  modelCopy = model;
  timeDisplayedText = [modelCopy timeDisplayedText];
  v13 = timeDisplayedText;
  v14 = &stru_3960F8;
  if (timeDisplayedText)
  {
    v14 = timeDisplayedText;
  }

  v15 = v14;

  timeFontSpec = [modelCopy timeFontSpec];
  textColor = [modelCopy textColor];

  environment = [contextCopy environment];
  language = [environment language];
  LOBYTE(v23) = 0;
  v20 = [TUIWPBox textModelBuilderWithFontSpec:timeFontSpec style:0 color:textColor alignment:1 writingDirection:directionCopy language:language shouldHyphenate:v23 service:serviceCopy];

  [v20 appendString:v15];
  v21 = [v20 finalizeTextModelWithContext:contextCopy];

  return v21;
}

+ (id)_buildDetailTextModel:(id)model service:(id)service context:(id)context goalCompleted:(BOOL)completed writingDirection:(BOOL)direction
{
  directionCopy = direction;
  contextCopy = context;
  serviceCopy = service;
  modelCopy = model;
  detailText = [modelCopy detailText];
  v15 = detailText;
  v16 = &stru_3960F8;
  if (detailText)
  {
    v16 = detailText;
  }

  v17 = v16;

  if (completed)
  {
    [modelCopy progressColor];
  }

  else
  {
    [modelCopy textColor];
  }
  v18 = ;
  detailFontSpec = [modelCopy detailFontSpec];

  environment = [contextCopy environment];
  language = [environment language];
  LOBYTE(v25) = 0;
  v22 = [TUIWPBox textModelBuilderWithFontSpec:detailFontSpec style:0 color:v18 alignment:1 writingDirection:directionCopy language:language shouldHyphenate:v25 service:serviceCopy];

  [v22 appendString:v17];
  v23 = [v22 finalizeTextModelWithContext:contextCopy];

  return v23;
}

@end