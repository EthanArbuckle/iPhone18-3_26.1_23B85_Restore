@interface PFEIWidget
+ (id)backgroundShapeStyleWithPropertySet:(id)set stylesheet:(id)stylesheet readerState:(id)state;
- (BOOL)mapStartElementWithState:(id)state;
- (id)_adornmentInfoWithResults:(id)results readerState:(id)state;
- (id)_widgetFromResults:(id)results;
- (int)_adornmentLayoutModeFromString:(const char *)string;
- (void)dealloc;
- (void)mapEndElementWithState:(id)state;
@end

@implementation PFEIWidget

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PFEIWidget;
  [(PFEIWidget *)&v3 dealloc];
}

- (BOOL)mapStartElementWithState:(id)state
{
  currentHtmlStackEntry = [state currentHtmlStackEntry];
  currentEntryMediaState = [currentHtmlStackEntry currentEntryMediaState];
  [currentEntryMediaState setCurrentBreakStateSameAsParent];
  [PFXBlock addBreakIfApplicableToEntry:currentHtmlStackEntry newBreakState:10 hintCollector:0];
  storage = [currentEntryMediaState storage];
  [storage setParagraphLevel:0 forCharRange:objc_msgSend(storage undoTransaction:{"length"), 0, 0}];
  [storage setParagraphStyle:objc_msgSend(objc_msgSend(state forCharRange:"orientationState") undoTransaction:{"defaultParagraphStyle"), objc_msgSend(storage, "length"), 0, 0}];
  [currentEntryMediaState setOriginalStorage:storage];
  v8 = -[THWPStorage initWithContext:string:stylesheet:kind:]([THWPStorage alloc], "initWithContext:string:stylesheet:kind:", +[THTemporaryObjectContext context](THTemporaryObjectContext, "context"), &stru_471858, [objc_msgSend(state "orientationState")], 3);
  [currentEntryMediaState setOverriddenStorage:v8];

  v9 = [objc_alloc(objc_msgSend(state "drawablePlacementClass"))];
  self->_drawablePlacement = v9;
  [(PFXDrawablePlacement *)v9 mapStartElementWithState:state];
  -[PFXDrawablePlacement setInfoGeometry:](self->_drawablePlacement, "setInfoGeometry:", PFXTSDInfoGeometry([objc_msgSend(currentHtmlStackEntry valueForAttribute:{PFXWidgetConstantDataGeometry[0]), "UTF8String"}]));
  return 1;
}

+ (id)backgroundShapeStyleWithPropertySet:(id)set stylesheet:(id)stylesheet readerState:(id)state
{
  v7 = objc_alloc_init(TSSPropertyMap);
  v8 = [PFXGraphicStyle mapStrokeFromStyleProperties:set contentState:state];
  if (v8)
  {
    [v7 setObject:v8 forProperty:517];
  }

  v9 = [PFXGraphicStyle mapShadowFromStyleProperties:set contentState:state];
  if (v9)
  {
    [v7 setObject:v9 forProperty:520];
  }

  v10 = [PFXGraphicStyle mapFillFromStyleProperties:set contentState:state];
  if (v10)
  {
    [v7 setObject:v10 forProperty:516];
  }

  v11 = [[TSDShapeStyle alloc] initWithContext:objc_msgSend(state name:"tspContext") overridePropertyMap:0 isVariation:{v7, 1}];

  return v11;
}

- (int)_adornmentLayoutModeFromString:(const char *)string
{
  if (xmlStrEqual(string, "top-together"))
  {
    return 1;
  }

  else
  {
    return 2 * (xmlStrEqual(string, "bottom") != 0);
  }
}

- (id)_adornmentInfoWithResults:(id)results readerState:(id)state
{
  currentHtmlStackEntry = [state currentHtmlStackEntry];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = [results countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v31 = 0uLL;
    v7 = *v33;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(results);
        }

        objc_opt_class();
        v9 = TSUDynamicCast();
        [v9 second];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          second = [v9 second];
          objc_opt_class();
          [v9 first];
          v11 = TSUDynamicCast();
          if ([v11 isEqualToString:@"header"])
          {
            *&v31 = second;
          }

          else
          {
            v12 = [v11 isEqualToString:@"figcaption"];
            v13 = *(&v31 + 1);
            if (v12)
            {
              v13 = second;
            }

            *(&v31 + 1) = v13;
          }
        }
      }

      v6 = [results countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v6);
  }

  else
  {
    v31 = 0uLL;
  }

  v14 = +[NSMutableDictionary dictionary];
  v15 = objc_alloc_init(THWWidgetAdornmentInfo);
  if (xmlStrEqual([currentHtmlStackEntry xmlValueForAttribute:PFXWidgetConstantDataBackgroundEnabled[0]], "yes"))
  {
    stateCopy2 = state;
    v17 = [PFXWidgetPlacement mapDefaultBackgroundShapeWithPlacement:self->_drawablePlacement readerState:state];
    [v14 setObject:v17 forKey:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 0)}];
    [(THWWidgetAdornmentInfo *)v15 setBackground:v17];
    v18 = 1;
  }

  else
  {
    v18 = 0;
    stateCopy2 = state;
  }

  v19 = v31;
  if (v31 != 0)
  {
    *&v31 = v14;
    v20 = objc_alloc_init(TSSPropertyMap);
    LODWORD(v21) = 1.0;
    [v20 setFloatValue:518 forProperty:v21];
    [v20 setObject:+[TSWPShapeStyle defaultValueForProperty:](TSWPShapeStyle forProperty:{"defaultValueForProperty:", 148), 148}];
    [v20 setObject:+[TSWPShapeStyle defaultValueForProperty:](TSWPShapeStyle forProperty:{"defaultValueForProperty:", 146), 146}];
    [v20 setObject:+[TSWPShapeStyle defaultValueForProperty:](TSWPShapeStyle forProperty:{"defaultValueForProperty:", 516), 516}];
    [v20 setObject:+[TSWPShapeStyle defaultValueForProperty:](TSWPShapeStyle forProperty:{"defaultValueForProperty:", 517), 517}];
    [v20 setObject:+[TSWPShapeStyle defaultValueForProperty:](TSWPShapeStyle forProperty:{"defaultValueForProperty:", 519), 519}];
    [v20 setObject:+[TSWPShapeStyle defaultValueForProperty:](TSWPShapeStyle forProperty:{"defaultValueForProperty:", 520), 520}];
    v22 = [[TSWPShapeStyle alloc] initWithContext:objc_msgSend(stateCopy2 name:"tspContext") overridePropertyMap:0 isVariation:{v20, 0}];
    v23 = [[TSDInfoGeometry alloc] initWithSize:{50.0, 50.0}];
    [objc_msgSend(objc_msgSend(stateCopy2 "orientationState")];
    if (v19)
    {
      v24 = [[TSWPShapeInfo alloc] initWithContext:objc_msgSend(stateCopy2 geometry:"tspContext") style:v23 wpStorage:{v22, v19}];
      [v31 setObject:v24 forKey:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v18)}];
      [(THWWidgetAdornmentInfo *)v15 setTitle:v24];

      ++v18;
    }

    if (*(&v31 + 1))
    {
      v25 = [[TSWPShapeInfo alloc] initWithContext:objc_msgSend(state geometry:"tspContext") style:v23 wpStorage:{v22, *(&v31 + 1)}];
      [v31 setObject:v25 forKey:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v18)}];
      [(THWWidgetAdornmentInfo *)v15 setCaption:v25];
    }

    v14 = v31;
  }

  [(THWWidgetAdornmentInfo *)v15 setInsertionOrder:v14];
  -[THWWidgetAdornmentInfo setLayoutMode:](v15, "setLayoutMode:", -[PFEIWidget _adornmentLayoutModeFromString:](self, "_adornmentLayoutModeFromString:", [currentHtmlStackEntry xmlValueForAttribute:PFXWidgetConstantDataContentLayout[0]]));
  v26 = [currentHtmlStackEntry valueForAttribute:PFXWidgetConstantDataContentPadding[0]];
  if (v26)
  {
    [v26 doubleValue];
    [(THWWidgetAdornmentInfo *)v15 setContentPadding:?];
  }

  return v15;
}

- (id)_widgetFromResults:(id)results
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [results countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v10;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(results);
        }

        objc_opt_class();
        v8 = TSUDynamicCast();
        if ([objc_msgSend(v8 "second")])
        {
          return [v8 second];
        }

        ++v7;
      }

      while (v5 != v7);
      result = [results countByEnumeratingWithState:&v9 objects:v13 count:16];
      v5 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (void)mapEndElementWithState:(id)state
{
  currentHtmlStackEntry = [state currentHtmlStackEntry];
  currentEntryMediaState = [currentHtmlStackEntry currentEntryMediaState];
  objc_opt_class();
  [currentEntryMediaState result];
  v7 = TSUDynamicCast();
  v8 = [(PFEIWidget *)self _widgetFromResults:v7];
  v9 = v8;
  if (!v7)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_7:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return;
  }

  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_3:
  v10 = [objc_msgSend(currentEntryMediaState "originalStorage")];
  v11 = TSUProtocolCast();
  [v9 setAdornmentInfo:{-[PFEIWidget _adornmentInfoWithResults:readerState:](self, "_adornmentInfoWithResults:readerState:", v7, state)}];
  [objc_msgSend(v9 "adornmentInfo")];
  v13 = -[THWAnchoredWidgetInfo initWithContext:widgetInfo:]([THWAnchoredWidgetInfo alloc], "initWithContext:widgetInfo:", [state tspContext], v9);
  v12 = [[TSWPDrawableAttachment alloc] initWithContext:objc_msgSend(state drawable:{"tspContext"), v13}];
  [objc_msgSend(currentEntryMediaState "originalStorage")];
  -[THWAnchoredWidgetInfo setParentInfo:](v13, "setParentInfo:", [currentEntryMediaState originalStorage]);
  [currentEntryMediaState setParentBreakStateSameAsCurrent];
  [state setUniqueIdForInfo:v9 fromStackEntry:currentHtmlStackEntry];
}

@end