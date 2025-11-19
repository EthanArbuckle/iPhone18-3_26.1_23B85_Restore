@interface BAXWebPageAccessibilityObjectWrapper
+ (id)BAXLocalizedNumberForNumber:(id)a3 numberStyle:(unint64_t)a4 maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)a5;
- (BOOL)_accessibilityIsRTL;
- (BOOL)_accessibilityScrollWithDirection:(int64_t)a3;
- (BOOL)_bkaxIsInteractiveElement:(id)a3;
- (BOOL)_isElementVisible:(id)a3 forRootElement:(id)a4;
- (BOOL)_modifySyntheticElement:(id)a3 withRootElement:(id)a4 forInteractiveElements:(id)a5;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityInternalTextLinkCustomRotors;
- (id)_accessibilityScrollStatus;
- (id)_axPageScrollString;
- (id)_baxHeadingsRotor;
- (id)_baxHighlightRotor;
- (id)_previousInteractiveElement:(id)a3;
- (id)accessibilityCustomActions;
- (id)accessibilityCustomRotors;
- (id)accessibilityElements;
- (id)accessibilityHitTest:(CGPoint)a3;
- (id)bkaxAdditionalAXElementsForCurrentPage;
- (int64_t)accessibilityContainerType;
- (void)_addInteractiveDescendantsOfElement:(id)a3 toArray:(id)a4 rootElement:(id)a5;
- (void)_appendPageTurnToLastElementIgnoringImages:(BOOL)a3;
- (void)_dispatchPageScrolledNotification;
- (void)_handlePageTurnTraitForRootElement:(id)a3;
- (void)_handleSyntheticElementFor:(id)a3 attributedValue:(id)a4 accessibilityFrame:(CGRect)a5 interactiveElements:(id)a6 rootElement:(id)a7;
- (void)_handleSyntheticImageElementFor:(id)a3 attributedValue:(id)a4 accessibilityFrame:(CGRect)a5 interactiveElements:(id)a6 rootElement:(id)a7;
- (void)_linkSubElementForElement:(id)a3;
- (void)_sanitizeCachedElements;
- (void)baxInvalidateCaches;
- (void)postWebAXNotification:(unsigned int)a3 notificationData:(id)a4;
@end

@implementation BAXWebPageAccessibilityObjectWrapper

- (BOOL)isAccessibilityElement
{
  if (BEBooksWebKitAccessibility())
  {
    [BEAccessibilityReadingState registerBookContentWrapper:self];
  }

  v3 = [(BAXWebPageAccessibilityObjectWrapper *)self _iosAccessibilityAttributeValue:2025];
  v4 = [v3 BOOLValue];

  if (!v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = BAXWebPageAccessibilityObjectWrapper;
  return [(BAXWebPageAccessibilityObjectWrapper *)&v6 isAccessibilityElement];
}

- (id)accessibilityElements
{
  [BEAccessibilityReadingState registerBookContentWrapper:self];
  v3 = +[NSMutableArray array];
  if ((BEBooksWebKitAccessibility() & 1) == 0)
  {
    v9.receiver = self;
    v9.super_class = BAXWebPageAccessibilityObjectWrapper;
    v4 = [(BAXWebPageAccessibilityObjectWrapper *)&v9 accessibilityElements];
    v5 = [NSMutableArray arrayWithArray:v4];

    v3 = v5;
  }

  v6 = [(BAXWebPageAccessibilityObjectWrapper *)self bkaxAdditionalAXElementsForCurrentPage];
  [v3 addObjectsFromArray:v6];

  [(BAXWebPageAccessibilityObjectWrapper *)self _baxSetIsTurningCounter:0];
  v7 = [v3 copy];

  return v7;
}

- (int64_t)accessibilityContainerType
{
  v3.receiver = self;
  v3.super_class = BAXWebPageAccessibilityObjectWrapper;
  return [(BAXWebPageAccessibilityObjectWrapper *)&v3 accessibilityContainerType];
}

- (id)accessibilityHitTest:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (BEBooksWebKitAccessibility())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(BAXWebPageAccessibilityObjectWrapper *)self bkaxAdditionalAXElementsForCurrentPage];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          [v11 accessibilityFrame];
          v21.x = x;
          v21.y = y;
          if (CGRectContainsPoint(v22, v21))
          {
            v12 = v11;

            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = BAXWebPageAccessibilityObjectWrapper;
    v12 = [(BAXWebPageAccessibilityObjectWrapper *)&v14 accessibilityHitTest:x, y];
  }

LABEL_13:

  return v12;
}

- (id)bkaxAdditionalAXElementsForCurrentPage
{
  v3 = +[NSMutableArray array];
  v4 = objc_opt_class();
  v28.receiver = self;
  v28.super_class = BAXWebPageAccessibilityObjectWrapper;
  v5 = [(BAXWebPageAccessibilityObjectWrapper *)&v28 accessibilityElements];
  v6 = [v5 firstObject];
  v7 = __BAXCastAsSafeCategory(v4, v6, 0, 0);

  if (!v7)
  {
LABEL_20:
    [(BAXWebPageAccessibilityObjectWrapper *)self _handlePageTurnTraitForRootElement:v7];
    v25 = [(BAXWebPageAccessibilityObjectWrapper *)self _baxCachedAccessibilityElementTree];
    v26 = [v25 copy];

    goto LABEL_21;
  }

  v8 = +[BEAccessibilityReadingState currentReadingState];
  if ([v8 isPaginated])
  {

LABEL_6:
    v11 = [(BAXWebPageAccessibilityObjectWrapper *)self _baxCachedAccessibilityElementTree];
    if (!v11 || (v12 = v11, -[BAXWebPageAccessibilityObjectWrapper _baxCachedAccessibilityElementTree](self, "_baxCachedAccessibilityElementTree"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 count], v13, v12, !v14))
    {
      if ((BEBooksWebKitAccessibility() & 1) == 0)
      {
        [(BAXWebPageAccessibilityObjectWrapper *)self _accessibilitySetBoolValue:1 forKey:@"CurrentlyFindingInteractiveDescendants"];
      }

      v15 = [(BAXWebPageAccessibilityObjectWrapper *)self baxStoredVisibleLinkInfos];

      if (!v15)
      {
        v16 = +[NSMutableArray array];
        [(BAXWebPageAccessibilityObjectWrapper *)self baxSetStoredVisibleLinkInfos:v16];
      }

      [(BAXWebPageAccessibilityObjectWrapper *)self _addInteractiveDescendantsOfElement:v7 toArray:v3 rootElement:v7];
      if ((BEBooksWebKitAccessibility() & 1) == 0)
      {
        [(BAXWebPageAccessibilityObjectWrapper *)self _accessibilitySetBoolValue:0 forKey:@"CurrentlyFindingInteractiveDescendants"];
      }

      [(BAXWebPageAccessibilityObjectWrapper *)self _baxSetCachedAccessibilityElementTree:v3];
      v17 = +[BEAccessibilityReadingState currentReadingState];
      if ([v17 isPaginated])
      {
      }

      else
      {
        v18 = +[BEAccessibilityReadingState currentReadingState];
        v19 = [v18 isFixedLayoutBook];

        if ((v19 & 1) == 0)
        {
          [(BAXWebPageAccessibilityObjectWrapper *)self _sanitizeCachedElements];
        }
      }
    }

    v20 = [(BAXWebPageAccessibilityObjectWrapper *)self _baxCachedAccessibilityElementTree];
    v21 = [v20 count];

    if (!v21)
    {
      v22 = [[BAXTextAccessibilityElement alloc] initWithAccessibilityContainer:v7];
      v23 = BAXLocString(@"swipe.hint");
      [(BAXTextAccessibilityElement *)v22 setAccessibilityHint:v23];

      v29 = v22;
      v24 = [NSArray arrayWithObjects:&v29 count:1];
      [(BAXWebPageAccessibilityObjectWrapper *)self _baxSetCachedAccessibilityElementTree:v24];
    }

    goto LABEL_20;
  }

  v9 = +[BEAccessibilityReadingState currentReadingState];
  v10 = [v9 isFixedLayoutBook];

  if (v10)
  {
    goto LABEL_6;
  }

  [v7 accessibilityVisibleContentRect];
  if (CGRectGetMaxY(v31) >= 0.0)
  {
    goto LABEL_6;
  }

  v26 = &__NSArray0__struct;
LABEL_21:

  return v26;
}

- (void)_sanitizeCachedElements
{
  v3 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [(BAXWebPageAccessibilityObjectWrapper *)self _baxCachedAccessibilityElementTree];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        [v10 accessibilityFrame];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v19 = +[BEAccessibilityReadingState currentReadingState];
        v20 = [v19 screenHeight];

        v21 = +[BEAccessibilityReadingState currentReadingState];
        v22 = [v21 screenWidth];

        v28.origin.x = 0.0;
        v28.origin.y = 0.0;
        v28.size.width = v22;
        v28.size.height = v20;
        v29.origin.x = v12;
        v29.origin.y = v14;
        v29.size.width = v16;
        v29.size.height = v18;
        if (CGRectIntersectsRect(v28, v29))
        {
          [v3 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  [(BAXWebPageAccessibilityObjectWrapper *)self _baxSetCachedAccessibilityElementTree:v3];
}

- (void)_appendPageTurnToLastElementIgnoringImages:(BOOL)a3
{
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BAXWebPageAccessibilityObjectWrapper *)self _baxCachedAccessibilityElementTree];
  v5 = [v4 reverseObjectEnumerator];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (v3)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }

        [v10 setAccessibilityTraits:{objc_msgSend(v10, "accessibilityTraits") | UIAccessibilityTraitCausesPageTurn}];
        goto LABEL_12;
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (void)_addInteractiveDescendantsOfElement:(id)a3 toArray:(id)a4 rootElement:(id)a5
{
  v81 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v81 accessibilityElementCount];
  if (v10)
  {
    v11 = v10;
    v77 = 0;
    v12 = 0;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    do
    {
      v16 = objc_opt_class();
      v17 = [v81 accessibilityElementAtIndex:v12];
      v18 = __BAXCastAsSafeCategory(v16, v17, 0, 0);

      if (v18)
      {
        if (!BEBooksWebKitAccessibility())
        {
          if ([(BAXWebPageAccessibilityObjectWrapper *)self _bkaxIsInteractiveElement:v18])
          {
            [v9 accessibilityVisibleContentRect];
            v28 = v27;
            v30 = v29;
            v32 = v31;
            v34 = v33;
            [v18 accessibilityFrame];
            v83.x = v35;
            v83.y = v36;
            v84.origin.x = v28;
            v84.origin.y = v30;
            v84.size.width = v32;
            v84.size.height = v34;
            if (CGRectContainsPoint(v84, v83))
            {
              if (![(BAXWebPageAccessibilityObjectWrapper *)self _isElementImage:v18])
              {
                v37 = +[BEAccessibilityReadingState currentReadingState];
                v38 = [v37 isFixedLayoutBook];

                if (!v38)
                {
                  goto LABEL_22;
                }
              }

              v39 = [v18 accessibilityAttributedValue];
              [v18 accessibilityFrame];
              [(BAXWebPageAccessibilityObjectWrapper *)self _handleSyntheticImageElementFor:v18 attributedValue:v39 accessibilityFrame:v8 interactiveElements:v9 rootElement:?];
            }
          }

LABEL_43:
          [(BAXWebPageAccessibilityObjectWrapper *)self _addInteractiveDescendantsOfElement:v18 toArray:v8 rootElement:v9];
          goto LABEL_44;
        }

        if (!-[BAXWebPageAccessibilityObjectWrapper _isElementVisible:forRootElement:](self, "_isElementVisible:forRootElement:", v18, v9) || ![v18 isAccessibilityElement])
        {
          goto LABEL_43;
        }

        [v18 accessibilityFrame];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;
        if ([(BAXWebPageAccessibilityObjectWrapper *)self _isElementLink:v18])
        {
          [(BAXWebPageAccessibilityObjectWrapper *)self _linkSubElementForElement:v81];
        }

        if (![(BAXWebPageAccessibilityObjectWrapper *)self _isElementStaticText:v18])
        {
          if (([v8 containsObject:v18] & 1) == 0)
          {
            if (-[BAXWebPageAccessibilityObjectWrapper _isElementImage:](self, "_isElementImage:", v18) || (+[BEAccessibilityReadingState currentReadingState](BEAccessibilityReadingState, "currentReadingState"), v40 = objc_claimAutoreleasedReturnValue(), v41 = [v40 isFixedLayoutBook], v40, v41))
            {
              v42 = v8;
              v43 = [v18 accessibilityLabel];
              v44 = [NSAttributedString alloc];
              if (v43)
              {
                [v18 accessibilityLabel];
              }

              else
              {
                BAXLocString(@"image");
              }
              v73 = ;
              v74 = [v44 initWithString:v73];

              [v18 accessibilityFrame];
              v8 = v42;
              [(BAXWebPageAccessibilityObjectWrapper *)self _handleSyntheticImageElementFor:v18 attributedValue:v74 accessibilityFrame:v42 interactiveElements:v9 rootElement:?];

              goto LABEL_43;
            }

LABEL_22:
            [v8 addObject:v18];
          }

          goto LABEL_43;
        }

        if ((v77 & 1) == 0)
        {
          if (v11 == &dword_0 + 1)
          {
            v45 = [v8 lastObject];
            if (-[BAXWebPageAccessibilityObjectWrapper _isElementLink:](self, "_isElementLink:", v18) && ([v18 accessibilityFrame], v78 = v47, v79 = v46, v75 = v49, v76 = v48, objc_msgSend(v45, "accessibilityFrame"), v89.origin.x = v50, v89.origin.y = v51, v89.size.width = v52, v89.size.height = v53, v85.origin.y = v78, v85.origin.x = v79, v85.size.height = v75, v85.size.width = v76, CGRectIntersectsRect(v85, v89)))
            {
              [(BAXWebPageAccessibilityObjectWrapper *)self _linkSubElementForElement:v18];
            }

            else
            {
              v72 = [v18 accessibilityAttributedValue];
              [(BAXWebPageAccessibilityObjectWrapper *)self _handleSyntheticElementFor:v18 attributedValue:v72 accessibilityFrame:v8 interactiveElements:v9 rootElement:v20, v22, v24, v26];
            }

            v77 = 0;
          }

          else
          {
            v80 = v8;
            v54 = [v18 accessibilityLabel];
            v55 = [v54 mutableCopy];

            for (i = 1; i != v11; ++i)
            {
              v57 = objc_opt_class();
              v58 = [v81 accessibilityElementAtIndex:i];
              v59 = __BAXCastAsSafeCategory(v57, v58, 0, 0);

              if ([(BAXWebPageAccessibilityObjectWrapper *)self _isElementStaticText:v59])
              {
                v60 = [v59 accessibilityLabel];
                if (v60)
                {
                  [v55 appendString:v60];
                }

                v86.origin.x = v20;
                v86.origin.y = v22;
                v86.size.width = v24;
                v86.size.height = v26;
                v90.origin.x = CGRectZero.origin.x;
                v90.origin.y = y;
                v90.size.width = width;
                v90.size.height = height;
                v61 = CGRectEqualToRect(v86, v90);
                [v59 accessibilityFrame];
                x = v62;
                v65 = v64;
                v67 = v66;
                v69 = v68;
                if (!v61)
                {
                  v87.origin.x = v20;
                  v87.origin.y = v22;
                  v87.size.width = v24;
                  v87.size.height = v26;
                  v88 = CGRectUnion(v87, *&x);
                  x = v88.origin.x;
                  v65 = v88.origin.y;
                  v67 = v88.size.width;
                  v69 = v88.size.height;
                }

                v26 = v69;
                v24 = v67;
                v22 = v65;
                v20 = x;
              }

              else
              {
                v70 = [[NSAttributedString alloc] initWithString:v55];
                [(BAXWebPageAccessibilityObjectWrapper *)self _handleSyntheticElementFor:v81 attributedValue:v70 accessibilityFrame:v80 interactiveElements:v9 rootElement:v20, v22, v24, v26];

                v60 = v55;
                v55 = [[NSMutableString alloc] initWithString:&stru_20BC0];
                v26 = height;
                v24 = width;
                v22 = y;
                v20 = CGRectZero.origin.x;
              }
            }

            v8 = v80;
            if ([v55 length])
            {
              v71 = [[NSAttributedString alloc] initWithString:v55];
              [(BAXWebPageAccessibilityObjectWrapper *)self _handleSyntheticElementFor:v81 attributedValue:v71 accessibilityFrame:v80 interactiveElements:v9 rootElement:v20, v22, v24, v26];
            }

            v77 = 1;
          }

          goto LABEL_43;
        }

        v77 = 1;
      }

LABEL_44:

      ++v12;
    }

    while (v12 != v11);
  }
}

- (void)baxInvalidateCaches
{
  if (BEBooksWebKitAccessibility())
  {
    [(BAXWebPageAccessibilityObjectWrapper *)self _baxSetCachedAccessibilityElementTree:0];
    [(BAXWebPageAccessibilityObjectWrapper *)self _baxSetIsTurningCounter:[(BAXWebPageAccessibilityObjectWrapper *)self _baxIsTurningCounter]- 1];
    [(BAXWebPageAccessibilityObjectWrapper *)self baxSetStoredLinkRotor:0];
    [(BAXWebPageAccessibilityObjectWrapper *)self baxSetStoredHighlightRotor:0];
    [(BAXWebPageAccessibilityObjectWrapper *)self baxSetStoredHighlightRotorIndex:&off_21870];
    [(BAXWebPageAccessibilityObjectWrapper *)self baxSetStoredVisibleLinkInfos:0];
    [(BAXWebPageAccessibilityObjectWrapper *)self baxSetStoredLinkRotorIndex:&off_21870];
    [(BAXWebPageAccessibilityObjectWrapper *)self baxSetStoredHeadingsRotor:0];
    [(BAXWebPageAccessibilityObjectWrapper *)self baxSetStoredHeadingsRotorIndex:&off_21870];
    [(BAXWebPageAccessibilityObjectWrapper *)self baxSetStoredVisibleLinkElements:0];

    [(BAXWebPageAccessibilityObjectWrapper *)self _dispatchPageScrolledNotification];
  }
}

- (void)_handlePageTurnTraitForRootElement:(id)a3
{
  v10 = a3;
  v4 = +[BEAccessibilityReadingState currentReadingState];
  v5 = [v4 isSpreadWithChapterBoundary];

  if (!v5 || ([v10 accessibilityFrame], v6 != 0.0))
  {
LABEL_5:
    [(BAXWebPageAccessibilityObjectWrapper *)self _appendPageTurnToLastElementIgnoringImages:AXRequestingClient() == 11];
    goto LABEL_6;
  }

  v7 = +[BEAccessibilityReadingState currentReadingState];
  if ([v7 isRTL])
  {
    [v10 accessibilityFrame];
    v9 = v8;

    if (v9 != 0.0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_6:
}

- (BOOL)_bkaxIsInteractiveElement:(id)a3
{
  v3 = a3;
  v4 = objc_getAssociatedObject(v3, [@"StoredIsInteractiveElement" hash]);
  v5 = v4;
  if (v4)
  {
    LOBYTE(v6) = [v4 BOOLValue];
  }

  else
  {
    if ([v3 isAccessibilityElement])
    {
      v6 = [v3 baxElementIsInteractive];
    }

    else
    {
      v6 = 0;
    }

    v7 = [NSNumber numberWithBool:v6];
    v8 = v3;
    objc_setAssociatedObject(v8, [@"StoredIsInteractiveElement" hash], v7, &dword_0 + 1);
  }

  return v6;
}

- (void)_linkSubElementForElement:(id)a3
{
  v4 = a3;
  v8 = [[UIAccessibilityLinkSubelement alloc] initWithAccessibilityContainer:v4];
  v5 = [v4 accessibilityLabel];
  [v8 setAccessibilityLabel:v5];

  v6 = [(BAXWebPageAccessibilityObjectWrapper *)self baxStoredVisibleLinkInfos];
  [v6 addObject:v8];

  v7 = [(BAXWebPageAccessibilityObjectWrapper *)self baxStoredVisibleLinkElements];
  [v7 addObject:v4];
}

- (id)_previousInteractiveElement:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [v3 reverseObjectEnumerator];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v5 = v8;
            goto LABEL_12;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_modifySyntheticElement:(id)a3 withRootElement:(id)a4 forInteractiveElements:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    [v7 trimElementSpanningPageBoundary];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          v16 = [v15 accessibilityValue];
          v17 = [v7 accessibilityValue];
          if ([v16 isEqualToString:v17])
          {
            [v15 accessibilityFrame];
            v19 = v18;
            v21 = v20;
            v23 = v22;
            v25 = v24;
            [v7 accessibilityFrame];
            v39.origin.x = v26;
            v39.origin.y = v27;
            v39.size.width = v28;
            v39.size.height = v29;
            v38.origin.x = v19;
            v38.origin.y = v21;
            v38.size.width = v23;
            v38.size.height = v25;
            v30 = CGRectEqualToRect(v38, v39);

            if (v30)
            {

              goto LABEL_14;
            }
          }

          else
          {
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v12);
    }

    [v10 addObject:v7];
    v31 = 1;
  }

  else
  {
LABEL_14:
    v31 = 0;
  }

  return v31;
}

- (void)_handleSyntheticElementFor:(id)a3 attributedValue:(id)a4 accessibilityFrame:(CGRect)a5 interactiveElements:(id)a6 rootElement:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v39 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  if ([v16 count])
  {
    for (i = 0; [v16 count] > i; ++i)
    {
      v19 = [v16 objectAtIndexedSubscript:i];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v21 = [v16 objectAtIndexedSubscript:i];
        if ([(BAXWebPageAccessibilityObjectWrapper *)self _isElementLink:v39])
        {
          v22 = [v39 accessibilityLabel];
          v23 = [v21 accessibilityLabel];
          if ([v22 isEqualToString:v23])
          {
            [v39 accessibilityFrame];
            v25 = v24;
            v27 = v26;
            v29 = v28;
            v31 = v30;
            [v21 accessibilityFrame];
            v42.origin.x = v32;
            v42.origin.y = v33;
            v42.size.width = v34;
            v42.size.height = v35;
            v41.origin.x = v25;
            v41.origin.y = v27;
            v41.size.width = v29;
            v41.size.height = v31;
            v36 = CGRectEqualToRect(v41, v42);

            if (v36)
            {
              goto LABEL_14;
            }

            continue;
          }
        }
      }
    }
  }

  v37 = [[BAXTextAccessibilityElement alloc] initWithReferenceElement:v39 container:self attributedValue:v15 accessibilityFrame:x, y, width, height];
  if ([(BAXWebPageAccessibilityObjectWrapper *)self _modifySyntheticElement:v37 withRootElement:v17 forInteractiveElements:v16])
  {
    v38 = [(BAXWebPageAccessibilityObjectWrapper *)self _previousInteractiveElement:v16];
    [(BAXTextAccessibilityElement *)v37 setPreviousNavigableElement:v38];
    [v38 setNextNavigableElement:v37];
  }

LABEL_14:
}

- (void)_handleSyntheticImageElementFor:(id)a3 attributedValue:(id)a4 accessibilityFrame:(CGRect)a5 interactiveElements:(id)a6 rootElement:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = a6;
  v15 = a4;
  v16 = a3;
  v18 = [[BAXTextAccessibilityElement alloc] initWithReferenceElement:v16 container:self attributedValue:v15 accessibilityFrame:x, y, width, height];

  [v14 addObject:v18];
  v17 = [(BAXWebPageAccessibilityObjectWrapper *)self _previousInteractiveElement:v14];

  [(BAXTextAccessibilityElement *)v18 setPreviousNavigableElement:v17];
  [v17 setNextNavigableElement:v18];
}

- (BOOL)_isElementVisible:(id)a3 forRootElement:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 _accessibilityTextMarkerRange];
  [v6 accessibilityBoundsForTextMarkers:v7];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v5 accessibilityVisibleContentRect];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v25.origin.x = v17;
  v25.origin.y = v19;
  v25.size.width = v21;
  v25.size.height = v23;
  v26.origin.x = v9;
  v26.origin.y = v11;
  v26.size.width = v13;
  v26.size.height = v15;
  LOBYTE(v6) = CGRectIntersectsRect(v25, v26);

  return v6;
}

- (id)accessibilityCustomActions
{
  if (BEBooksWebKitAccessibility())
  {
    v3 = [UIImageSymbolConfiguration configurationWithPointSize:30.0];
    v4 = +[NSMutableArray array];
    v5 = +[BEAccessibilityReadingState currentReadingState];
    v6 = [v5 isVisiblePageBookmarked];
    v7 = [UIAccessibilityCustomAction alloc];
    if (v6)
    {
      v8 = @"unbookmark.page";
    }

    else
    {
      v8 = @"bookmark.page";
    }

    if (v6)
    {
      v9 = @"bookmark.fill";
    }

    else
    {
      v9 = @"bookmark";
    }

    v10 = BAXLocString(v8);
    v11 = [UIImage systemImageNamed:v9 withConfiguration:v3];
    v12 = [v7 initWithName:v10 image:v11 actionHandler:&stru_20660];

    [v4 addObject:v12];
    v13 = [v5 hasVisibleControls];
    v14 = [UIAccessibilityCustomAction alloc];
    if (v13)
    {
      v15 = @"hide.controls";
    }

    else
    {
      v15 = @"show.controls";
    }

    if (v13)
    {
      v16 = @"eye.slash";
    }

    else
    {
      v16 = @"eye";
    }

    v17 = BAXLocString(v15);
    v18 = [UIImage systemImageNamed:v16 withConfiguration:v3];
    v19 = [v14 initWithName:v17 image:v18 actionHandler:&stru_20680];

    [v4 addObject:v19];
    if (UIAccessibilityIsSwitchControlRunning())
    {
      v20 = +[BEAccessibilityReadingState currentReadingState];
      v21 = [v20 isRTL];

      v22 = @"arrow.left";
      v42 = v12;
      if (v21)
      {
        v23 = @"arrow.right";
      }

      else
      {
        v23 = @"arrow.left";
      }

      if (!v21)
      {
        v22 = @"arrow.right";
      }

      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_4700;
      v45[3] = &unk_206A8;
      if (v21)
      {
        v24 = 5;
      }

      else
      {
        v24 = 6;
      }

      if (v21)
      {
        v25 = 6;
      }

      else
      {
        v25 = 5;
      }

      v45[4] = self;
      v45[5] = v24;
      v26 = v22;
      v27 = v23;
      v41 = v19;
      v28 = objc_retainBlock(v45);
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_4724;
      v44[3] = &unk_206A8;
      v44[4] = self;
      v44[5] = v25;
      v40 = objc_retainBlock(v44);
      v29 = [UIAccessibilityCustomAction alloc];
      v30 = BAXLocString(@"turn.to.previous.page.action");
      v31 = [UIImage systemImageNamed:v27 withConfiguration:v3];

      v32 = [v29 initWithName:v30 image:v31 actionHandler:v28];
      v33 = [UIAccessibilityCustomAction alloc];
      v34 = BAXLocString(@"turn.to.next.page.action");
      v35 = [UIImage systemImageNamed:v26 withConfiguration:v3];

      v36 = [v33 initWithName:v34 image:v35 actionHandler:v40];
      v46[0] = v32;
      v46[1] = v36;
      v37 = [NSArray arrayWithObjects:v46 count:2];
      [v4 addObjectsFromArray:v37];

      v12 = v42;
      v19 = v41;
    }

    v38 = [v4 copy];
  }

  else
  {
    v43.receiver = self;
    v43.super_class = BAXWebPageAccessibilityObjectWrapper;
    v38 = [(BAXWebPageAccessibilityObjectWrapper *)&v43 accessibilityCustomActions];
  }

  return v38;
}

- (id)accessibilityCustomRotors
{
  v3 = +[NSMutableArray array];
  v4 = [(BAXWebPageAccessibilityObjectWrapper *)self _accessibilityInternalTextLinkCustomRotors];

  if (v4)
  {
    v5 = [(BAXWebPageAccessibilityObjectWrapper *)self baxStoredLinkRotor];
    [v3 addObject:v5];
  }

  v6 = [(BAXWebPageAccessibilityObjectWrapper *)self _baxHighlightRotor];

  if (v6)
  {
    v7 = [(BAXWebPageAccessibilityObjectWrapper *)self baxStoredHighlightRotor];
    [v3 addObject:v7];
  }

  v8 = [(BAXWebPageAccessibilityObjectWrapper *)self _baxHeadingsRotor];

  if (v8)
  {
    v9 = [(BAXWebPageAccessibilityObjectWrapper *)self baxStoredHeadingsRotor];
    [v3 addObject:v9];
  }

  if ([v3 count])
  {
    v10 = [v3 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_baxHeadingsRotor
{
  v3 = [(BAXWebPageAccessibilityObjectWrapper *)self baxStoredHeadingsRotor];
  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = [UIAccessibilityCustomRotor alloc];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_4988;
    v6[3] = &unk_206D0;
    objc_copyWeak(&v7, &location);
    v6[4] = self;
    v3 = [v4 initWithSystemType:3 itemSearchBlock:v6];
    [v3 setVisibleInTouchRotor:1];
    [(BAXWebPageAccessibilityObjectWrapper *)self baxSetStoredHeadingsRotor:v3];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (id)_baxHighlightRotor
{
  v3 = [(BAXWebPageAccessibilityObjectWrapper *)self baxStoredHighlightRotor];
  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = [UIAccessibilityCustomRotor alloc];
    v5 = BAXLocString(@"highlights");
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_4D24;
    v7[3] = &unk_206D0;
    objc_copyWeak(&v8, &location);
    v7[4] = self;
    v3 = [v4 initWithName:v5 itemSearchBlock:v7];

    [v3 setVisibleInTouchRotor:1];
    [(BAXWebPageAccessibilityObjectWrapper *)self baxSetStoredHighlightRotor:v3];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (id)_accessibilityInternalTextLinkCustomRotors
{
  if (!BEBooksWebKitAccessibility())
  {
    v8.receiver = self;
    v8.super_class = BAXWebPageAccessibilityObjectWrapper;
    v5 = [(BAXWebPageAccessibilityObjectWrapper *)&v8 _accessibilityInternalTextLinkCustomRotors];
    goto LABEL_10;
  }

  v3 = [(BAXWebPageAccessibilityObjectWrapper *)self baxStoredVisibleLinkInfos];
  if (![v3 count])
  {
    goto LABEL_8;
  }

  objc_initWeak(&location, self);
  v4 = [(BAXWebPageAccessibilityObjectWrapper *)self baxStoredLinkRotor];
  if (!v4)
  {
    v6 = [UIAccessibilityCustomRotor alloc];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_522C;
    v9[3] = &unk_206D0;
    objc_copyWeak(&v11, &location);
    v10 = v3;
    v4 = [v6 initWithSystemType:1 itemSearchBlock:v9];
    [(BAXWebPageAccessibilityObjectWrapper *)self baxSetStoredLinkRotor:v4];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  objc_destroyWeak(&location);
LABEL_7:
  v13 = v4;
  v5 = [NSArray arrayWithObjects:&v13 count:1];

LABEL_9:
LABEL_10:

  return v5;
}

- (BOOL)_accessibilityScrollWithDirection:(int64_t)a3
{
  v5 = BEBooksWebKitAccessibility();
  if (v5)
  {
    if (a3 == 6)
    {
      LOBYTE(v5) = [(BAXWebPageAccessibilityObjectWrapper *)&v7 accessibilityScroll:3, self, BAXWebPageAccessibilityObjectWrapper, v8.receiver, v8.super_class];
    }

    else if (a3 == 5)
    {
      LOBYTE(v5) = [(BAXWebPageAccessibilityObjectWrapper *)&v8 accessibilityScroll:4, v7.receiver, v7.super_class, self, BAXWebPageAccessibilityObjectWrapper];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  v5 = BEBooksWebKitAccessibility();
  if (v5)
  {
    v6 = +[BEAccessibilityReadingState currentReadingState];
    if ([v6 bookLayout] == &dword_0 + 2)
    {
    }

    else
    {
      v7 = +[BEAccessibilityReadingState currentReadingState];
      v8 = [v7 bookLayout];

      if (v8 != &dword_0 + 3)
      {
        v9 = +[BEAccessibilityReadingState currentReadingState];
        v10 = [v9 isRTL];

        if (a3 == 1)
        {
LABEL_14:
          v11 = @"previous";
          goto LABEL_23;
        }

        if (a3 != 2)
        {
          if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 4)
          {
            v12 = @"next";
            v13 = @"previous";
          }

          else
          {
            if (a3 != 6 && a3 != 3)
            {
              goto LABEL_24;
            }

            v12 = @"previous";
            v13 = @"next";
          }

          if (v10)
          {
            v11 = v13;
          }

          else
          {
            v11 = v12;
          }

          goto LABEL_23;
        }

LABEL_13:
        v11 = @"next";
LABEL_23:
        [BEAXWebContentUtilities turnPageWithDirection:v11];
LABEL_24:
        [(BAXWebPageAccessibilityObjectWrapper *)self _baxSetIsTurningCounter:[(BAXWebPageAccessibilityObjectWrapper *)self _baxIsTurningCounter]+ 1];
        [(BAXWebPageAccessibilityObjectWrapper *)self _baxSetCachedAccessibilityElementTree:0];
        return v5;
      }
    }

    v15.receiver = self;
    v15.super_class = BAXWebPageAccessibilityObjectWrapper;
    if ([(BAXWebPageAccessibilityObjectWrapper *)&v15 accessibilityScroll:a3]|| [(BAXWebPageAccessibilityObjectWrapper *)self _accessibilityScrollWithDirection:a3]|| a3 > 6)
    {
      goto LABEL_24;
    }

    if (((1 << a3) & 0x34) == 0)
    {
      if (((1 << a3) & 0x4A) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return v5;
}

- (void)_dispatchPageScrolledNotification
{
  if ([(BAXWebPageAccessibilityObjectWrapper *)self _baxIsTurningCounter]<= 0)
  {
    v3 = UIAccessibilityPageScrolledNotification;
    v4 = [(BAXWebPageAccessibilityObjectWrapper *)self _axPageScrollString];
    v5 = [v4 string];
    [(BAXWebPageAccessibilityObjectWrapper *)self postWebAXNotification:v3 notificationData:v5];

    [(BAXWebPageAccessibilityObjectWrapper *)self _baxSetIsTurningCounter:0];
  }
}

- (void)postWebAXNotification:(unsigned int)a3 notificationData:(id)a4
{
  v6 = a4;
  v7 = +[BEAccessibilityReadingState currentReadingState];
  if (([v7 delayForDocumentChanged] & 1) == 0)
  {
    v8 = +[BEAccessibilityReadingState currentReadingState];
    [v8 newDocumentFinishedLoading];
  }

  v9 = dispatch_time(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_589C;
  block[3] = &unk_20738;
  block[4] = self;
  v12 = v6;
  v13 = a3;
  v10 = v6;
  dispatch_after(v9, &_dispatch_main_q, block);
}

- (id)_accessibilityScrollStatus
{
  v3 = +[BEAccessibilityReadingState currentReadingState];
  v4 = [v3 pageCount];

  v5 = +[BEAccessibilityReadingState currentReadingState];
  v6 = [v5 currentPageNumber];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = BAXLocString(@"loading.book");
  }

  else
  {
    v8 = BAXLocString(@"page.num.of %@ %@");
    v9 = [NSNumber numberWithInteger:v6];
    v10 = [BAXWebPageAccessibilityObjectWrapper BAXLocalizedNumberForNumber:v9 numberStyle:1 maximumNumberOfDigitsAfterDecimalSeparator:0];
    v11 = [NSNumber numberWithUnsignedInteger:v4];
    v12 = [BAXWebPageAccessibilityObjectWrapper BAXLocalizedNumberForNumber:v11 numberStyle:1 maximumNumberOfDigitsAfterDecimalSeparator:0];
    v13 = [(BAXWebPageAccessibilityObjectWrapper *)self _axPageScrollString];
    v14 = [NSString stringWithFormat:v8, v10, v12, v13];
    v7 = __BAXStringForVariables(v14, v15, v16, v17, v18, v19, v20, v21, @"__BAXStringForVariablesSentinel");
  }

  return v7;
}

+ (id)BAXLocalizedNumberForNumber:(id)a3 numberStyle:(unint64_t)a4 maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)a5
{
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setNumberStyle:a4];
  [v8 setMaximumFractionDigits:a5];
  v9 = [v8 stringFromNumber:v7];

  return v9;
}

- (id)_axPageScrollString
{
  v2 = +[BEAccessibilityReadingState currentReadingState];
  v3 = [v2 visibleAnnotations];

  v4 = [v3 count];
  v5 = +[BEAccessibilityReadingState currentReadingState];
  v6 = [v5 pageCount];

  v7 = +[BEAccessibilityReadingState currentReadingState];
  v8 = [v7 currentPage];
  v10 = v9;

  if (v8)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = +[BEAccessibilityReadingState currentReadingState];
    v8 = [v12 currentPageNumber];
  }

  if (v6 == 0x7FFFFFFFFFFFFFFFLL || v6 == 0)
  {
    v15 = BAXLocString(@"page.num.of.loading");
    if (!v4)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v14 = BAXLocString(@"page.num.of.with.total.single %lu %lu");
    v15 = [NSString stringWithFormat:v14, v8, v6];

    if (!v4)
    {
      goto LABEL_19;
    }
  }

  v16 = BAXLocString(@"%lu note(s)");
  if (v16)
  {
    v17 = [NSString localizedStringWithFormat:v16, v4];
    v4 = __BAXStringForVariables(0, v18, v19, v20, v21, v22, v23, v24, v17);
  }

  else
  {
    v4 = 0;
  }

LABEL_19:
  v25 = +[BEAccessibilityReadingState currentReadingState];
  v26 = [v25 isVisiblePageBookmarked];

  if (v26)
  {
    v27 = BAXLocString(@"has.bookmark");
    v35 = __BAXStringForVariables(v4, v28, v29, v30, v31, v32, v33, v34, v27);

    v4 = v35;
  }

  v36 = [NSMutableAttributedString alloc];
  v44 = __BAXStringForVariables(v15, v37, v38, v39, v40, v41, v42, v43, v4);
  v45 = v44;
  if (v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = &stru_20BC0;
  }

  v50 = @"UIAccessibilityTokenLowPitch";
  v51 = kCFBooleanTrue;
  v47 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
  v48 = [v36 initWithString:v46 attributes:v47];

  return v48;
}

- (BOOL)_accessibilityIsRTL
{
  v2 = +[BEAccessibilityReadingState currentReadingState];
  v3 = [v2 isRTL];

  return v3;
}

@end