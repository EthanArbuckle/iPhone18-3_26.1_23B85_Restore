@interface CRLConnectionLineRepAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (BOOL)crlaxIsAParallelConnectionLineOfLayout:(id)a3;
- (id)_crlaxConnectionDescriptionForHead:(BOOL)a3;
- (id)_crlaxConnectionLineLayout;
- (id)_crlaxCustomActionForNavigatingToRepWithLayout:(id)a3 inRotorCategory:(id)a4 disambiguatedDescriptions:(id)a5;
- (id)_crlaxCustomEdgeConnectionFormatStringForHead:(BOOL)a3;
- (id)_crlaxStrokeDescription;
- (id)accessibilityCustomActions;
- (id)accessibilityCustomContent;
- (id)accessibilityUserInputLabels;
- (id)crlaxConnectionDescription;
- (id)crlaxCustomNavigationActionWithName:(id)a3 inCategory:(id)a4 handlerBody:(id)a5;
- (id)crlaxDescriptionForLayout:(id)a3;
- (id)crlaxLabel;
@end

@implementation CRLConnectionLineRepAccessibility

- (id)crlaxCustomNavigationActionWithName:(id)a3 inCategory:(id)a4 handlerBody:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [UIAccessibilityCustomAction alloc];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10014C96C;
  v14[3] = &unk_101840280;
  v15 = v7;
  v11 = v7;
  v12 = [v10 initWithName:v9 actionHandler:v14];

  [v12 setLocalizedActionRotorCategory:v8];

  return v12;
}

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (id)crlaxLabel
{
  v3 = [(CRLConnectionLineRepAccessibility *)self crlaxTarget];
  v4 = [v3 shapeInfo];

  v5 = [v4 localizedName];
  v48 = 0;
  v6 = [v4 pathSource];
  v7 = objc_opt_class();
  v8 = __CRLAccessibilityCastAsClass(v7, v6, 1, &v48);
  if (v48 == 1 || (v9 = v8, v6, v47 = 0, [(CRLConnectionLineRepAccessibility *)self crlaxTarget], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_class(), __CRLAccessibilityCastAsClass(v11, v10, 1, &v47), v12 = objc_claimAutoreleasedReturnValue(), v47 == 1))
  {
    abort();
  }

  v13 = v12;

  v14 = 0;
  if (v9 && v13)
  {
    v15 = [v9 type];
    if (v15 == 1)
    {
      v16 = v13;
      v18 = +[NSBundle mainBundle];
      v19 = v18;
      v20 = @"angled";
    }

    else
    {
      if (v15)
      {
        v14 = 0;
        goto LABEL_13;
      }

      v16 = v13;
      v17 = [v13 crlaxIsStraightLine];
      v18 = +[NSBundle mainBundle];
      v19 = v18;
      if (v17)
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
  if (![v4 isLine])
  {
    v27 = 0;
    v28 = 0;
    goto LABEL_24;
  }

  v45 = v13;
  v46 = v5;
  v21 = objc_opt_class();
  v22 = [v4 headLineEnd];
  v23 = __CRLAccessibilityCastAsSafeCategory(v21, v22, 0, 0);

  v24 = objc_opt_class();
  v25 = [v4 tailLineEnd];
  v26 = __CRLAccessibilityCastAsSafeCategory(v24, v25, 0, 0);

  if (v26 && ([v26 crlaxIsTypeNone] & 1) == 0)
  {
    v29 = +[NSBundle mainBundle];
    v30 = [v29 localizedStringForKey:@"Start: %@" value:0 table:0];
    v31 = [v26 crlaxStyleInfoDescription];
    v27 = [NSString localizedStringWithFormat:v30, v31];

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
    v33 = [v23 crlaxStyleInfoDescription];
    v28 = [NSString localizedStringWithFormat:v32, v33];

    goto LABEL_23;
  }

LABEL_21:
  v28 = 0;
LABEL_23:

  v13 = v45;
  v5 = v46;
LABEL_24:
  v34 = [v4 accessibilityDescription];
  v35 = [(CRLConnectionLineRepAccessibility *)self crlaxConnectionDescription];
  v42 = __CRLAccessibilityStringForVariables(1, v5, v36, v37, v38, v39, v40, v41, v35);

  return v42;
}

- (id)accessibilityUserInputLabels
{
  v2 = [(CRLConnectionLineRepAccessibility *)self crlaxTarget];
  v3 = [v2 shapeInfo];

  if ([v3 isLine])
  {
    v4 = [v3 crlaxLocalizedName];
    v7 = v4;
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
  v3 = [(CRLCanvasRepAccessibility *)&v51 accessibilityCustomActions];
  v42 = [NSMutableArray arrayWithArray:v3];

  if (+[CRLAccessibility isVoiceOverEnabled])
  {
    v4 = [(CRLConnectionLineRepAccessibility *)self _crlaxConnectionLineLayout];
    v5 = [v4 connectedTo];
    v6 = [v4 connectedFrom];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Connected Items" value:0 table:0];

    v9 = +[NSMutableArray array];
    [v9 crl_addNonNilObject:v5];
    [v9 crl_addNonNilObject:v6];
    v39 = v9;
    v38 = [NSSet setWithArray:v9];
    v10 = [CRLCanvasRepAccessibility crlaxDisambiguatedConnectionDescriptionsForSet:?];
    v11 = [(CRLConnectionLineRepAccessibility *)self _crlaxCustomActionForNavigatingToRepWithLayout:v5 inRotorCategory:v8 disambiguatedDescriptions:v10];
    [v42 crl_addNonNilObject:v11];

    v40 = v8;
    v37 = v10;
    v12 = [(CRLConnectionLineRepAccessibility *)self _crlaxCustomActionForNavigatingToRepWithLayout:v6 inRotorCategory:v8 disambiguatedDescriptions:v10];
    [v42 crl_addNonNilObject:v12];

    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"Parallel Connections" value:0 table:0];

    if (v5 && v6)
    {
      v34 = v6;
      v36 = v4;
      v41 = +[NSMutableArray array];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v35 = v5;
      v15 = [v5 connectedLayouts];
      v16 = [v15 countByEnumeratingWithState:&v47 objects:v53 count:16];
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
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v47 + 1) + 8 * i);
            v21 = [(CRLCanvasRepAccessibility *)self crlaxLayout];
            v22 = [v21 crlaxTarget];
            v23 = v22;
            if (v20 == v22)
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

          v17 = [v15 countByEnumeratingWithState:&v47 objects:v53 count:16];
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

      v5 = v35;
      v4 = v36;
      v6 = v34;
    }
  }

  return v42;
}

- (id)accessibilityCustomContent
{
  v10.receiver = self;
  v10.super_class = CRLConnectionLineRepAccessibility;
  v3 = [(CRLCanvasRepAccessibility *)&v10 accessibilityCustomContent];
  v4 = [v3 mutableCopy];

  v5 = [(CRLConnectionLineRepAccessibility *)self _crlaxStrokeDescription];
  if ([v5 length])
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Stroke" value:0 table:0];
    v8 = [AXCustomContent customContentWithLabel:v7 value:v5];
    [v4 addObject:v8];
  }

  return v4;
}

- (id)crlaxDescriptionForLayout:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRepAccessibility *)self crlaxCanvas];
  v6 = [v5 crlaxInteractiveCanvasController];
  v7 = [v6 crlaxTarget];

  v14 = 0;
  v8 = [v7 repForLayout:v4];
  v9 = objc_opt_class();
  v10 = __CRLAccessibilityCastAsSafeCategory(v9, v8, 1, &v14);
  if (v14 == 1)
  {
    abort();
  }

  v11 = v10;

  v12 = [v11 crlaxDescriptionForConnections];

  return v12;
}

- (BOOL)crlaxIsAParallelConnectionLineOfLayout:(id)a3
{
  v4 = a3;
  v5 = [(CRLConnectionLineRepAccessibility *)self _crlaxConnectionLineLayout];
  v6 = [v5 connectedTo];
  v7 = [v5 connectedFrom];
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v10 = [v4 connectedTo];
    v11 = [v5 connectedTo];
    if (v10 == v11)
    {
      v13 = [v4 connectedFrom];
      v14 = [v5 connectedFrom];
      v12 = v13 == v14;
    }

    else
    {
      v12 = 0;
    }

    v15 = [v4 connectedFrom];
    v16 = [v5 connectedTo];
    if (v15 == v16)
    {
      v18 = [v4 connectedTo];
      v19 = [v5 connectedFrom];
      v17 = v18 == v19;
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
  v2 = [(CRLCanvasRepAccessibility *)self crlaxLayout];
  v3 = [v2 crlaxTarget];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, v3, 1, &v8);
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
  v2 = [(CRLCanvasRepAccessibility *)self crlaxLayout];
  v3 = [v2 crlaxTarget];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, v3, 1, &v15);
  if (v15 == 1 || (v6 = v5, v3, v14 = 0, [v6 styledInfo], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "stroke"), v8 = objc_claimAutoreleasedReturnValue(), v7, v9 = objc_opt_class(), __CRLAccessibilityCastAsSafeCategory(v9, v8, 1, &v14), v10 = objc_claimAutoreleasedReturnValue(), v14 == 1))
  {
    abort();
  }

  v11 = v10;

  v12 = [v11 crlaxStrokeFullDescription];

  return v12;
}

- (id)_crlaxConnectionDescriptionForHead:(BOOL)a3
{
  v3 = a3;
  v5 = [(CRLConnectionLineRepAccessibility *)self _crlaxConnectionLineLayout];
  v6 = v5;
  if (v3)
  {
    v7 = [v5 connectedTo];
    v8 = [v6 headMagnetType];
  }

  else
  {
    v7 = [v5 connectedFrom];
    v8 = [v6 tailMagnetType];
  }

  v9 = v8;
  v10 = [(CRLConnectionLineRepAccessibility *)self crlaxDescriptionForLayout:v7];
  v11 = 0;
  if ([v10 length])
  {
    if (v9 > 3)
    {
      if (v9 > 5)
      {
        if (v9 == 6)
        {
          v13 = [(CRLConnectionLineRepAccessibility *)self _crlaxCustomEdgeConnectionFormatStringForHead:v3];
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

- (id)_crlaxCustomEdgeConnectionFormatStringForHead:(BOOL)a3
{
  v3 = a3;
  v4 = [(CRLConnectionLineRepAccessibility *)self _crlaxConnectionLineLayout];
  v5 = v4;
  if (!v4)
  {
    v6 = 0;
    goto LABEL_26;
  }

  if (v3)
  {
    [v4 headMagnetNormalizedPosition];
  }

  else
  {
    [v4 tailMagnetNormalizedPosition];
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

- (id)_crlaxCustomActionForNavigatingToRepWithLayout:(id)a3 inRotorCategory:(id)a4 disambiguatedDescriptions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"Go to %@" value:0 table:0];

    v13 = [CRLCanvasRepAccessibility crlaxBoardItemIDForLayout:v8];
    if (v13)
    {
      v14 = [v10 objectForKeyedSubscript:v13];
      v15 = [NSString localizedStringWithFormat:v12, v14];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1005B6158;
      v19[3] = &unk_10185A938;
      v20 = v8;
      v21 = self;
      v16 = objc_retainBlock(v19);
      v17 = [(CRLConnectionLineRepAccessibility *)self crlaxCustomNavigationActionWithName:v15 inCategory:v9 handlerBody:v16];
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