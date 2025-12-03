@interface CRLConnectionLineRepAccessibility
+ (id)crlaxCastFrom:(id)from;
- (BOOL)crlaxIsAParallelConnectionLineOfLayout:(id)layout;
- (id)_crlaxConnectionDescriptionForHead:(BOOL)head;
- (id)_crlaxConnectionLineLayout;
- (id)_crlaxCustomActionForNavigatingToRepWithLayout:(id)layout inRotorCategory:(id)category disambiguatedDescriptions:(id)descriptions;
- (id)_crlaxCustomEdgeConnectionFormatStringForHead:(BOOL)head;
- (id)_crlaxStrokeDescription;
- (id)accessibilityCustomActions;
- (id)accessibilityCustomContent;
- (id)accessibilityUserInputLabels;
- (id)crlaxConnectionDescription;
- (id)crlaxCustomNavigationActionWithName:(id)name inCategory:(id)category handlerBody:(id)body;
- (id)crlaxDescriptionForLayout:(id)layout;
- (id)crlaxLabel;
@end

@implementation CRLConnectionLineRepAccessibility

- (id)crlaxCustomNavigationActionWithName:(id)name inCategory:(id)category handlerBody:(id)body
{
  bodyCopy = body;
  categoryCopy = category;
  nameCopy = name;
  v10 = [UIAccessibilityCustomAction alloc];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10014C96C;
  v14[3] = &unk_101840280;
  v15 = bodyCopy;
  v11 = bodyCopy;
  v12 = [v10 initWithName:nameCopy actionHandler:v14];

  [v12 setLocalizedActionRotorCategory:categoryCopy];

  return v12;
}

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (id)crlaxLabel
{
  crlaxTarget = [(CRLConnectionLineRepAccessibility *)self crlaxTarget];
  shapeInfo = [crlaxTarget shapeInfo];

  localizedName = [shapeInfo localizedName];
  v48 = 0;
  pathSource = [shapeInfo pathSource];
  v7 = objc_opt_class();
  v8 = __CRLAccessibilityCastAsClass(v7, pathSource, 1, &v48);
  if (v48 == 1 || (v9 = v8, pathSource, v47 = 0, [(CRLConnectionLineRepAccessibility *)self crlaxTarget], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_class(), __CRLAccessibilityCastAsClass(v11, v10, 1, &v47), v12 = objc_claimAutoreleasedReturnValue(), v47 == 1))
  {
    abort();
  }

  v13 = v12;

  v14 = 0;
  if (v9 && v13)
  {
    type = [v9 type];
    if (type == 1)
    {
      v16 = v13;
      v18 = +[NSBundle mainBundle];
      v19 = v18;
      v20 = @"angled";
    }

    else
    {
      if (type)
      {
        v14 = 0;
        goto LABEL_13;
      }

      v16 = v13;
      crlaxIsStraightLine = [v13 crlaxIsStraightLine];
      v18 = +[NSBundle mainBundle];
      v19 = v18;
      if (crlaxIsStraightLine)
      {
        v20 = @"straight";
      }

      else
      {
        v20 = @"curved";
      }
    }

    v14 = [v18 localizedStringForKey:v20 value:0 table:0];

    v13 = v16;
  }

LABEL_13:
  if (![shapeInfo isLine])
  {
    v27 = 0;
    v28 = 0;
    goto LABEL_24;
  }

  v45 = v13;
  v46 = localizedName;
  v21 = objc_opt_class();
  headLineEnd = [shapeInfo headLineEnd];
  v23 = __CRLAccessibilityCastAsSafeCategory(v21, headLineEnd, 0, 0);

  v24 = objc_opt_class();
  tailLineEnd = [shapeInfo tailLineEnd];
  v26 = __CRLAccessibilityCastAsSafeCategory(v24, tailLineEnd, 0, 0);

  if (v26 && ([v26 crlaxIsTypeNone] & 1) == 0)
  {
    v29 = +[NSBundle mainBundle];
    v30 = [v29 localizedStringForKey:@"Start: %@" value:0 table:0];
    crlaxStyleInfoDescription = [v26 crlaxStyleInfoDescription];
    v27 = [NSString localizedStringWithFormat:v30, crlaxStyleInfoDescription];

    if (!v23)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v27 = 0;
    if (!v23)
    {
      goto LABEL_21;
    }
  }

  if (([v23 crlaxIsTypeNone] & 1) == 0)
  {
    v44 = +[NSBundle mainBundle];
    v32 = [v44 localizedStringForKey:@"End: %@" value:0 table:0];
    crlaxStyleInfoDescription2 = [v23 crlaxStyleInfoDescription];
    v28 = [NSString localizedStringWithFormat:v32, crlaxStyleInfoDescription2];

    goto LABEL_23;
  }

LABEL_21:
  v28 = 0;
LABEL_23:

  v13 = v45;
  localizedName = v46;
LABEL_24:
  accessibilityDescription = [shapeInfo accessibilityDescription];
  crlaxConnectionDescription = [(CRLConnectionLineRepAccessibility *)self crlaxConnectionDescription];
  v42 = __CRLAccessibilityStringForVariables(1, localizedName, v36, v37, v38, v39, v40, v41, crlaxConnectionDescription);

  return v42;
}

- (id)accessibilityUserInputLabels
{
  crlaxTarget = [(CRLConnectionLineRepAccessibility *)self crlaxTarget];
  shapeInfo = [crlaxTarget shapeInfo];

  if ([shapeInfo isLine])
  {
    crlaxLocalizedName = [shapeInfo crlaxLocalizedName];
    v7 = crlaxLocalizedName;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (id)accessibilityCustomActions
{
  v51.receiver = self;
  v51.super_class = CRLConnectionLineRepAccessibility;
  accessibilityCustomActions = [(CRLCanvasRepAccessibility *)&v51 accessibilityCustomActions];
  v42 = [NSMutableArray arrayWithArray:accessibilityCustomActions];

  if (+[CRLAccessibility isVoiceOverEnabled])
  {
    _crlaxConnectionLineLayout = [(CRLConnectionLineRepAccessibility *)self _crlaxConnectionLineLayout];
    connectedTo = [_crlaxConnectionLineLayout connectedTo];
    connectedFrom = [_crlaxConnectionLineLayout connectedFrom];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Connected Items" value:0 table:0];

    v9 = +[NSMutableArray array];
    [v9 crl_addNonNilObject:connectedTo];
    [v9 crl_addNonNilObject:connectedFrom];
    v39 = v9;
    v38 = [NSSet setWithArray:v9];
    v10 = [CRLCanvasRepAccessibility crlaxDisambiguatedConnectionDescriptionsForSet:?];
    v11 = [(CRLConnectionLineRepAccessibility *)self _crlaxCustomActionForNavigatingToRepWithLayout:connectedTo inRotorCategory:v8 disambiguatedDescriptions:v10];
    [v42 crl_addNonNilObject:v11];

    v40 = v8;
    v37 = v10;
    v12 = [(CRLConnectionLineRepAccessibility *)self _crlaxCustomActionForNavigatingToRepWithLayout:connectedFrom inRotorCategory:v8 disambiguatedDescriptions:v10];
    [v42 crl_addNonNilObject:v12];

    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"Parallel Connections" value:0 table:0];

    if (connectedTo && connectedFrom)
    {
      v34 = connectedFrom;
      v36 = _crlaxConnectionLineLayout;
      v41 = +[NSMutableArray array];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v35 = connectedTo;
      connectedLayouts = [connectedTo connectedLayouts];
      v16 = [connectedLayouts countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v48;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v48 != v18)
            {
              objc_enumerationMutation(connectedLayouts);
            }

            v20 = *(*(&v47 + 1) + 8 * i);
            crlaxLayout = [(CRLCanvasRepAccessibility *)self crlaxLayout];
            crlaxTarget = [crlaxLayout crlaxTarget];
            v23 = crlaxTarget;
            if (v20 == crlaxTarget)
            {
            }

            else
            {
              v24 = [(CRLConnectionLineRepAccessibility *)self crlaxIsAParallelConnectionLineOfLayout:v20];

              if (v24)
              {
                [v41 addObject:v20];
              }
            }
          }

          v17 = [connectedLayouts countByEnumeratingWithState:&v47 objects:v53 count:16];
        }

        while (v17);
      }

      v25 = [NSSet setWithArray:v41];
      v26 = [CRLCanvasRepAccessibility crlaxDisambiguatedConnectionDescriptionsForSet:v25];

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v27 = v41;
      v28 = [v27 countByEnumeratingWithState:&v43 objects:v52 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v44;
        do
        {
          for (j = 0; j != v29; j = j + 1)
          {
            if (*v44 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = [(CRLConnectionLineRepAccessibility *)self _crlaxCustomActionForNavigatingToRepWithLayout:*(*(&v43 + 1) + 8 * j) inRotorCategory:v14 disambiguatedDescriptions:v26];
            [v42 crl_addNonNilObject:v32];
          }

          v29 = [v27 countByEnumeratingWithState:&v43 objects:v52 count:16];
        }

        while (v29);
      }

      connectedTo = v35;
      _crlaxConnectionLineLayout = v36;
      connectedFrom = v34;
    }
  }

  return v42;
}

- (id)accessibilityCustomContent
{
  v10.receiver = self;
  v10.super_class = CRLConnectionLineRepAccessibility;
  accessibilityCustomContent = [(CRLCanvasRepAccessibility *)&v10 accessibilityCustomContent];
  v4 = [accessibilityCustomContent mutableCopy];

  _crlaxStrokeDescription = [(CRLConnectionLineRepAccessibility *)self _crlaxStrokeDescription];
  if ([_crlaxStrokeDescription length])
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Stroke" value:0 table:0];
    v8 = [AXCustomContent customContentWithLabel:v7 value:_crlaxStrokeDescription];
    [v4 addObject:v8];
  }

  return v4;
}

- (id)crlaxDescriptionForLayout:(id)layout
{
  layoutCopy = layout;
  crlaxCanvas = [(CRLCanvasRepAccessibility *)self crlaxCanvas];
  crlaxInteractiveCanvasController = [crlaxCanvas crlaxInteractiveCanvasController];
  crlaxTarget = [crlaxInteractiveCanvasController crlaxTarget];

  v14 = 0;
  v8 = [crlaxTarget repForLayout:layoutCopy];
  v9 = objc_opt_class();
  v10 = __CRLAccessibilityCastAsSafeCategory(v9, v8, 1, &v14);
  if (v14 == 1)
  {
    abort();
  }

  v11 = v10;

  crlaxDescriptionForConnections = [v11 crlaxDescriptionForConnections];

  return crlaxDescriptionForConnections;
}

- (BOOL)crlaxIsAParallelConnectionLineOfLayout:(id)layout
{
  layoutCopy = layout;
  _crlaxConnectionLineLayout = [(CRLConnectionLineRepAccessibility *)self _crlaxConnectionLineLayout];
  connectedTo = [_crlaxConnectionLineLayout connectedTo];
  connectedFrom = [_crlaxConnectionLineLayout connectedFrom];
  v8 = connectedFrom;
  v9 = 0;
  if (connectedTo && connectedFrom)
  {
    connectedTo2 = [layoutCopy connectedTo];
    connectedTo3 = [_crlaxConnectionLineLayout connectedTo];
    if (connectedTo2 == connectedTo3)
    {
      connectedFrom2 = [layoutCopy connectedFrom];
      connectedFrom3 = [_crlaxConnectionLineLayout connectedFrom];
      v12 = connectedFrom2 == connectedFrom3;
    }

    else
    {
      v12 = 0;
    }

    connectedFrom4 = [layoutCopy connectedFrom];
    connectedTo4 = [_crlaxConnectionLineLayout connectedTo];
    if (connectedFrom4 == connectedTo4)
    {
      connectedTo5 = [layoutCopy connectedTo];
      connectedFrom5 = [_crlaxConnectionLineLayout connectedFrom];
      v17 = connectedTo5 == connectedFrom5;
    }

    else
    {
      v17 = 0;
    }

    v9 = v12 || v17;
  }

  return v9;
}

- (id)crlaxConnectionDescription
{
  v3 = [(CRLConnectionLineRepAccessibility *)self _crlaxConnectionDescriptionForHead:0];
  v4 = [(CRLConnectionLineRepAccessibility *)self _crlaxConnectionDescriptionForHead:1];
  if ([v3 length] && objc_msgSend(v4, "length"))
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Connected from %1$@ to %2$@" value:0 table:0];

    v11 = v4;
LABEL_6:
    [NSString localizedStringWithFormat:v6, v3, v11];
    v8 = LABEL_7:;

    goto LABEL_8;
  }

  if ([v3 length])
  {
    v7 = +[NSBundle mainBundle];
    v6 = [v7 localizedStringForKey:@"Connected from %@" value:0 table:0];

    goto LABEL_6;
  }

  if ([v4 length])
  {
    v10 = +[NSBundle mainBundle];
    v6 = [v10 localizedStringForKey:@"Connected to %@" value:0 table:0];

    [NSString localizedStringWithFormat:v6, v4, v11];
    goto LABEL_7;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (id)_crlaxConnectionLineLayout
{
  v8 = 0;
  crlaxLayout = [(CRLCanvasRepAccessibility *)self crlaxLayout];
  crlaxTarget = [crlaxLayout crlaxTarget];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, crlaxTarget, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (id)_crlaxStrokeDescription
{
  v15 = 0;
  crlaxLayout = [(CRLCanvasRepAccessibility *)self crlaxLayout];
  crlaxTarget = [crlaxLayout crlaxTarget];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, crlaxTarget, 1, &v15);
  if (v15 == 1 || (v6 = v5, crlaxTarget, v14 = 0, [v6 styledInfo], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "stroke"), v8 = objc_claimAutoreleasedReturnValue(), v7, v9 = objc_opt_class(), __CRLAccessibilityCastAsSafeCategory(v9, v8, 1, &v14), v10 = objc_claimAutoreleasedReturnValue(), v14 == 1))
  {
    abort();
  }

  v11 = v10;

  crlaxStrokeFullDescription = [v11 crlaxStrokeFullDescription];

  return crlaxStrokeFullDescription;
}

- (id)_crlaxConnectionDescriptionForHead:(BOOL)head
{
  headCopy = head;
  _crlaxConnectionLineLayout = [(CRLConnectionLineRepAccessibility *)self _crlaxConnectionLineLayout];
  v6 = _crlaxConnectionLineLayout;
  if (headCopy)
  {
    connectedTo = [_crlaxConnectionLineLayout connectedTo];
    headMagnetType = [v6 headMagnetType];
  }

  else
  {
    connectedTo = [_crlaxConnectionLineLayout connectedFrom];
    headMagnetType = [v6 tailMagnetType];
  }

  v9 = headMagnetType;
  v10 = [(CRLConnectionLineRepAccessibility *)self crlaxDescriptionForLayout:connectedTo];
  v11 = 0;
  if ([v10 length])
  {
    if (v9 > 3)
    {
      if (v9 > 5)
      {
        if (v9 == 6)
        {
          v13 = [(CRLConnectionLineRepAccessibility *)self _crlaxCustomEdgeConnectionFormatStringForHead:headCopy];
          v11 = [NSString localizedStringWithFormat:v13, v10];
          goto LABEL_21;
        }

        if (v9 != 7)
        {
          goto LABEL_22;
        }

        goto LABEL_17;
      }

      v12 = +[NSBundle mainBundle];
      v13 = v12;
      if (v9 == 4)
      {
        v14 = @"bottom of %@";
      }

      else
      {
        v14 = @"left of %@";
      }
    }

    else
    {
      if (v9 <= 1)
      {
        if (v9)
        {
          if (v9 != 1)
          {
            goto LABEL_22;
          }

          v12 = +[NSBundle mainBundle];
          v13 = v12;
          v14 = @"center of %@";
          goto LABEL_20;
        }

LABEL_17:
        v11 = v10;
        goto LABEL_22;
      }

      v12 = +[NSBundle mainBundle];
      v13 = v12;
      if (v9 == 2)
      {
        v14 = @"top of %@";
      }

      else
      {
        v14 = @"right of %@";
      }
    }

LABEL_20:
    v15 = [v12 localizedStringForKey:v14 value:0 table:0];
    v11 = [NSString localizedStringWithFormat:v15, v10];

LABEL_21:
  }

LABEL_22:

  return v11;
}

- (id)_crlaxCustomEdgeConnectionFormatStringForHead:(BOOL)head
{
  headCopy = head;
  _crlaxConnectionLineLayout = [(CRLConnectionLineRepAccessibility *)self _crlaxConnectionLineLayout];
  v5 = _crlaxConnectionLineLayout;
  if (!_crlaxConnectionLineLayout)
  {
    v6 = 0;
    goto LABEL_26;
  }

  if (headCopy)
  {
    [_crlaxConnectionLineLayout headMagnetNormalizedPosition];
  }

  else
  {
    [_crlaxConnectionLineLayout tailMagnetNormalizedPosition];
  }

  v7 = [CRLCanvasKnobAccessibility crlaxEdgePositionTypeFromNormalizedPosition:?];
  v6 = 0;
  if (v7 <= 3)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v8 = +[NSBundle mainBundle];
        v9 = v8;
        v10 = @"top-right corner of %@";
      }

      else
      {
        v8 = +[NSBundle mainBundle];
        v9 = v8;
        v10 = @"bottom-left corner of %@";
      }
    }

    else
    {
      if (!v7)
      {
        v6 = @"edge of %@";
        goto LABEL_26;
      }

      if (v7 != 1)
      {
        goto LABEL_26;
      }

      v8 = +[NSBundle mainBundle];
      v9 = v8;
      v10 = @"top-left corner of %@";
    }
  }

  else if (v7 <= 5)
  {
    if (v7 == 4)
    {
      v8 = +[NSBundle mainBundle];
      v9 = v8;
      v10 = @"bottom-right corner of %@";
    }

    else
    {
      v8 = +[NSBundle mainBundle];
      v9 = v8;
      v10 = @"top edge of %@";
    }
  }

  else
  {
    switch(v7)
    {
      case 6:
        v8 = +[NSBundle mainBundle];
        v9 = v8;
        v10 = @"bottom edge of %@";
        break;
      case 7:
        v8 = +[NSBundle mainBundle];
        v9 = v8;
        v10 = @"left edge of %@";
        break;
      case 8:
        v8 = +[NSBundle mainBundle];
        v9 = v8;
        v10 = @"right edge of %@";
        break;
      default:
        goto LABEL_26;
    }
  }

  v6 = [v8 localizedStringForKey:v10 value:0 table:0];

LABEL_26:

  return v6;
}

- (id)_crlaxCustomActionForNavigatingToRepWithLayout:(id)layout inRotorCategory:(id)category disambiguatedDescriptions:(id)descriptions
{
  layoutCopy = layout;
  categoryCopy = category;
  descriptionsCopy = descriptions;
  if (layoutCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"Go to %@" value:0 table:0];

    v13 = [CRLCanvasRepAccessibility crlaxBoardItemIDForLayout:layoutCopy];
    if (v13)
    {
      v14 = [descriptionsCopy objectForKeyedSubscript:v13];
      v15 = [NSString localizedStringWithFormat:v12, v14];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1005B6158;
      v19[3] = &unk_10185A938;
      v20 = layoutCopy;
      selfCopy = self;
      v16 = objc_retainBlock(v19);
      v17 = [(CRLConnectionLineRepAccessibility *)self crlaxCustomNavigationActionWithName:v15 inCategory:categoryCopy handlerBody:v16];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end