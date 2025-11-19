@interface PFEIWidget
+ (id)backgroundShapeStyleWithPropertySet:(id)a3 stylesheet:(id)a4 readerState:(id)a5;
- (BOOL)mapStartElementWithState:(id)a3;
- (id)_adornmentInfoWithResults:(id)a3 readerState:(id)a4;
- (id)_widgetFromResults:(id)a3;
- (int)_adornmentLayoutModeFromString:(const char *)a3;
- (void)dealloc;
- (void)mapEndElementWithState:(id)a3;
@end

@implementation PFEIWidget

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PFEIWidget;
  [(PFEIWidget *)&v3 dealloc];
}

- (BOOL)mapStartElementWithState:(id)a3
{
  v5 = [a3 currentHtmlStackEntry];
  v6 = [v5 currentEntryMediaState];
  [v6 setCurrentBreakStateSameAsParent];
  [PFXBlock addBreakIfApplicableToEntry:v5 newBreakState:10 hintCollector:0];
  v7 = [v6 storage];
  [v7 setParagraphLevel:0 forCharRange:objc_msgSend(v7 undoTransaction:{"length"), 0, 0}];
  [v7 setParagraphStyle:objc_msgSend(objc_msgSend(a3 forCharRange:"orientationState") undoTransaction:{"defaultParagraphStyle"), objc_msgSend(v7, "length"), 0, 0}];
  [v6 setOriginalStorage:v7];
  v8 = -[THWPStorage initWithContext:string:stylesheet:kind:]([THWPStorage alloc], "initWithContext:string:stylesheet:kind:", +[THTemporaryObjectContext context](THTemporaryObjectContext, "context"), &stru_471858, [objc_msgSend(a3 "orientationState")], 3);
  [v6 setOverriddenStorage:v8];

  v9 = [objc_alloc(objc_msgSend(a3 "drawablePlacementClass"))];
  self->_drawablePlacement = v9;
  [(PFXDrawablePlacement *)v9 mapStartElementWithState:a3];
  -[PFXDrawablePlacement setInfoGeometry:](self->_drawablePlacement, "setInfoGeometry:", PFXTSDInfoGeometry([objc_msgSend(v5 valueForAttribute:{PFXWidgetConstantDataGeometry[0]), "UTF8String"}]));
  return 1;
}

+ (id)backgroundShapeStyleWithPropertySet:(id)a3 stylesheet:(id)a4 readerState:(id)a5
{
  v7 = objc_alloc_init(TSSPropertyMap);
  v8 = [PFXGraphicStyle mapStrokeFromStyleProperties:a3 contentState:a5];
  if (v8)
  {
    [v7 setObject:v8 forProperty:517];
  }

  v9 = [PFXGraphicStyle mapShadowFromStyleProperties:a3 contentState:a5];
  if (v9)
  {
    [v7 setObject:v9 forProperty:520];
  }

  v10 = [PFXGraphicStyle mapFillFromStyleProperties:a3 contentState:a5];
  if (v10)
  {
    [v7 setObject:v10 forProperty:516];
  }

  v11 = [[TSDShapeStyle alloc] initWithContext:objc_msgSend(a5 name:"tspContext") overridePropertyMap:0 isVariation:{v7, 1}];

  return v11;
}

- (int)_adornmentLayoutModeFromString:(const char *)a3
{
  if (xmlStrEqual(a3, "top-together"))
  {
    return 1;
  }

  else
  {
    return 2 * (xmlStrEqual(a3, "bottom") != 0);
  }
}

- (id)_adornmentInfoWithResults:(id)a3 readerState:(id)a4
{
  v28 = [a4 currentHtmlStackEntry];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
          objc_enumerationMutation(a3);
        }

        objc_opt_class();
        v9 = TSUDynamicCast();
        [v9 second];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 second];
          objc_opt_class();
          [v9 first];
          v11 = TSUDynamicCast();
          if ([v11 isEqualToString:@"header"])
          {
            *&v31 = v10;
          }

          else
          {
            v12 = [v11 isEqualToString:@"figcaption"];
            v13 = *(&v31 + 1);
            if (v12)
            {
              v13 = v10;
            }

            *(&v31 + 1) = v13;
          }
        }
      }

      v6 = [a3 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v6);
  }

  else
  {
    v31 = 0uLL;
  }

  v14 = +[NSMutableDictionary dictionary];
  v15 = objc_alloc_init(THWWidgetAdornmentInfo);
  if (xmlStrEqual([v28 xmlValueForAttribute:PFXWidgetConstantDataBackgroundEnabled[0]], "yes"))
  {
    v16 = a4;
    v17 = [PFXWidgetPlacement mapDefaultBackgroundShapeWithPlacement:self->_drawablePlacement readerState:a4];
    [v14 setObject:v17 forKey:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 0)}];
    [(THWWidgetAdornmentInfo *)v15 setBackground:v17];
    v18 = 1;
  }

  else
  {
    v18 = 0;
    v16 = a4;
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
    v22 = [[TSWPShapeStyle alloc] initWithContext:objc_msgSend(v16 name:"tspContext") overridePropertyMap:0 isVariation:{v20, 0}];
    v23 = [[TSDInfoGeometry alloc] initWithSize:{50.0, 50.0}];
    [objc_msgSend(objc_msgSend(v16 "orientationState")];
    if (v19)
    {
      v24 = [[TSWPShapeInfo alloc] initWithContext:objc_msgSend(v16 geometry:"tspContext") style:v23 wpStorage:{v22, v19}];
      [v31 setObject:v24 forKey:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v18)}];
      [(THWWidgetAdornmentInfo *)v15 setTitle:v24];

      ++v18;
    }

    if (*(&v31 + 1))
    {
      v25 = [[TSWPShapeInfo alloc] initWithContext:objc_msgSend(a4 geometry:"tspContext") style:v23 wpStorage:{v22, *(&v31 + 1)}];
      [v31 setObject:v25 forKey:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v18)}];
      [(THWWidgetAdornmentInfo *)v15 setCaption:v25];
    }

    v14 = v31;
  }

  [(THWWidgetAdornmentInfo *)v15 setInsertionOrder:v14];
  -[THWWidgetAdornmentInfo setLayoutMode:](v15, "setLayoutMode:", -[PFEIWidget _adornmentLayoutModeFromString:](self, "_adornmentLayoutModeFromString:", [v28 xmlValueForAttribute:PFXWidgetConstantDataContentLayout[0]]));
  v26 = [v28 valueForAttribute:PFXWidgetConstantDataContentPadding[0]];
  if (v26)
  {
    [v26 doubleValue];
    [(THWWidgetAdornmentInfo *)v15 setContentPadding:?];
  }

  return v15;
}

- (id)_widgetFromResults:(id)a3
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(a3);
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
      result = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)mapEndElementWithState:(id)a3
{
  v5 = [a3 currentHtmlStackEntry];
  v6 = [v5 currentEntryMediaState];
  objc_opt_class();
  [v6 result];
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
  v10 = [objc_msgSend(v6 "originalStorage")];
  v11 = TSUProtocolCast();
  [v9 setAdornmentInfo:{-[PFEIWidget _adornmentInfoWithResults:readerState:](self, "_adornmentInfoWithResults:readerState:", v7, a3)}];
  [objc_msgSend(v9 "adornmentInfo")];
  v13 = -[THWAnchoredWidgetInfo initWithContext:widgetInfo:]([THWAnchoredWidgetInfo alloc], "initWithContext:widgetInfo:", [a3 tspContext], v9);
  v12 = [[TSWPDrawableAttachment alloc] initWithContext:objc_msgSend(a3 drawable:{"tspContext"), v13}];
  [objc_msgSend(v6 "originalStorage")];
  -[THWAnchoredWidgetInfo setParentInfo:](v13, "setParentInfo:", [v6 originalStorage]);
  [v6 setParentBreakStateSameAsCurrent];
  [a3 setUniqueIdForInfo:v9 fromStackEntry:v5];
}

@end