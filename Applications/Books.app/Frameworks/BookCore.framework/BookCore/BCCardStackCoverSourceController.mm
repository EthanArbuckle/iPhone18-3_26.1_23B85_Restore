@interface BCCardStackCoverSourceController
+ (BOOL)canUseCoverTransitionForDismissingCardSetViewController:(id)a3 dataSource:(id)a4 coverHost:(id)a5 coverYOffset:(double *)a6 inCoordinatesOfView:(id)a7;
+ (id)coverHostFromPresentingViewController:(id)a3 previousCardSetViewController:(id)a4;
+ (void)revealCoverSourceAtIndex:(int64_t)a3 dataSource:(id)a4 coverHost:(id)a5;
- (BCCardSetViewController)underlyingCardSetViewController;
- (BCCardStackCoverSourceController)initWithCardStackViewController:(id)a3 isDismiss:(BOOL)a4 cardSetViewController:(id)a5 focusedIndex:(int64_t)a6 coverHost:(id)a7 dataSource:(id)a8;
- (BOOL)_hasHiddenCoverSourcesForCardSet:(id)a3;
- (BOOL)canUseCoverTransition;
- (_NSRange)_rangeOfIndexesInRange:(_NSRange)a3 passingTest:(id)a4 aroundInnerRange:(_NSRange)a5;
- (_NSRange)_trimRange:(_NSRange)a3 withTest:(id)a4;
- (_NSRange)horizontalRange;
- (_NSRange)horizontalRangeIncludingFake;
- (_NSRange)visibleCardRange;
- (_NSRange)visibleRange;
- (id)_coverFadeItemsExcludingRange:(_NSRange)a3;
- (id)_coverSourceAtIndex:(int64_t)a3;
- (id)_placeholderCoverSourceForRelativeCoverFrame:(CGRect)a3 inCardView:(id)a4;
- (void)_createImaginaryCovers;
- (void)_findHorizontalRange;
- (void)_findVisibleCoverSources;
- (void)_generateAnimationItems;
- (void)_generateDismissSlideAnimationItems;
- (void)_handlePartiallyVisibleCovers;
- (void)_hideVisibleCoverSources;
- (void)_obtainCardCoverSources;
- (void)_preserveNeededCoverSourceFramesWithNewReferenceView:(id)a3;
- (void)_refreshNeededCoverSources;
- (void)_unhideAllCoverSources;
- (void)_unhideCardCoverSources;
- (void)_unhideCoverSourcesForCardSet:(id)a3;
- (void)finalizeForAnimation;
- (void)hideCardCoverSources;
- (void)performFirstHalfOfProcessing;
- (void)performSecondHalfOfProcessing;
- (void)prepareForAnimation:(BOOL)a3;
- (void)prepareForCoverSourceCapturingWithToViewController:(id)a3 toViewTransform:(CGAffineTransform *)a4 revealCoverBlock:(id)a5 captureCoverFrameBlock:(id)a6;
@end

@implementation BCCardStackCoverSourceController

- (BCCardStackCoverSourceController)initWithCardStackViewController:(id)a3 isDismiss:(BOOL)a4 cardSetViewController:(id)a5 focusedIndex:(int64_t)a6 coverHost:(id)a7 dataSource:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v22.receiver = self;
  v22.super_class = BCCardStackCoverSourceController;
  v18 = [(BCCardStackCoverSourceController *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_cardStackViewController, a3);
    v19->_isDismiss = a4;
    objc_storeStrong(&v19->_cardSetViewController, a5);
    v19->_focusedIndex = a6;
    objc_storeStrong(&v19->_coverHost, a7);
    objc_storeStrong(&v19->_dataSource, a8);
  }

  return v19;
}

+ (void)revealCoverSourceAtIndex:(int64_t)a3 dataSource:(id)a4 coverHost:(id)a5
{
  v7 = a5;
  v8 = [a4 representedObjectForCardAtIndex:a3];
  [v7 revealCoverForRepresentedObject:v8];
}

+ (BOOL)canUseCoverTransitionForDismissingCardSetViewController:(id)a3 dataSource:(id)a4 coverHost:(id)a5 coverYOffset:(double *)a6 inCoordinatesOfView:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [v11 currentCardViewController];
  v16 = [v15 transitioningCardContent];
  v17 = [v16 cardStackTransitioningCardContentCoverSource];
  if (v17 && ![v16 visibilityOfCoverSource:v17 ignoringYAxis:0])
  {
    v44 = [v12 representedObjectForCardAtIndex:{objc_msgSend(v11, "focusedIndex")}];
    v20 = [v13 coverSourceForRepresentedObject:?];
    v21 = v20;
    v18 = v20 != 0;
    v19 = NAN;
    if (a6 && v20)
    {
      [v17 cardStackTransitioningCoverSourceReferenceView];
      v22 = v43 = v21;
      [v17 cardStackTransitioningCoverSourceFrame];
      [v22 convertRect:v14 toView:?];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v21 = v43;
      [v43 cardStackTransitioningCoverSourceReferenceView];
      v31 = v42 = v12;
      [v43 cardStackTransitioningCoverSourceFrame];
      [v31 convertRect:v14 toView:?];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v12 = v42;
      v45.origin.x = v33;
      v45.origin.y = v35;
      v45.size.width = v37;
      v45.size.height = v39;
      MidY = CGRectGetMidY(v45);
      v46.origin.x = v24;
      v46.origin.y = v26;
      v46.size.width = v28;
      v46.size.height = v30;
      v19 = MidY - CGRectGetMidY(v46);
    }
  }

  else
  {
    v18 = 0;
    v19 = NAN;
  }

  if (a6)
  {
    *a6 = v19;
  }

  return v18;
}

+ (id)coverHostFromPresentingViewController:(id)a3 previousCardSetViewController:(id)a4
{
  v5 = a3;
  v6 = [a4 currentCardViewController];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  v10 = [v9 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCCardStackTransitioningCoverHost includePresented:0];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    while (1)
    {
      v11 = [v9 presentingViewController];

      if (!v11)
      {
        break;
      }

      v12 = [v9 presentingViewController];

      v13 = [v12 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCCardStackTransitioningCoverHost includePresented:0];
      v9 = v12;
      if (v13)
      {
        v11 = v13;
        v9 = v12;
        break;
      }
    }
  }

  return v11;
}

- (void)performFirstHalfOfProcessing
{
  v3 = [(BCCardStackCoverSourceController *)self dataSource];
  v4 = [(BCCardStackCoverSourceController *)self cardStackViewController];
  -[BCCardStackCoverSourceController setTotalCoverCount:](self, "setTotalCoverCount:", [v3 numberOfCards:v4]);

  v5 = [(BCCardStackCoverSourceController *)self cardSetViewController];
  v6 = [v5 visibleCardRange];
  [(BCCardStackCoverSourceController *)self setVisibleCardRange:v6, v7];

  if ([(BCCardStackCoverSourceController *)self isDismiss]&& [(BCCardStackCoverSourceController *)self preferSlideForDismiss]&& ([(BCCardStackCoverSourceController *)self cardSetViewController], v8 = objc_claimAutoreleasedReturnValue(), v9 = [(BCCardStackCoverSourceController *)self _hasHiddenCoverSourcesForCardSet:v8], v8, (v9 & 1) == 0))
  {
    [(BCCardStackCoverSourceController *)self setVisibleRange:0x7FFFFFFFFFFFFFFFLL, 0];
    [(BCCardStackCoverSourceController *)self setVisibleCoverSourceByIndex:&__NSDictionary0__struct];
  }

  else
  {
    [(BCCardStackCoverSourceController *)self _findVisibleCoverSources];
  }

  if ([(BCCardStackCoverSourceController *)self canUseCoverTransition]&& (![(BCCardStackCoverSourceController *)self isDismiss]|| ![(BCCardStackCoverSourceController *)self preferSlideForDismiss]))
  {
    if ([(BCCardStackCoverSourceController *)self coversAreInNonHorizontalLayout])
    {
      [(BCCardStackCoverSourceController *)self setHorizontalRange:[(BCCardStackCoverSourceController *)self focusedIndex], 1];
    }

    else
    {
      [(BCCardStackCoverSourceController *)self _findHorizontalRange];
    }

    [(BCCardStackCoverSourceController *)self _createImaginaryCovers];
    if ([(BCCardStackCoverSourceController *)self coversNeedClipping])
    {

      [(BCCardStackCoverSourceController *)self _handlePartiallyVisibleCovers];
    }
  }
}

- (BOOL)canUseCoverTransition
{
  if ([(BCCardStackCoverSourceController *)self visibleRange]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  [(BCCardStackCoverSourceController *)self visibleRange];
  return v4 != 0;
}

- (_NSRange)_rangeOfIndexesInRange:(_NSRange)a3 passingTest:(id)a4 aroundInnerRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v7 = a3.length;
  v8 = a3.location;
  v9 = a4;
  if (v7)
  {
    v10 = v7 + v8 - 1;
    v11 = location;
    while (v11 > v8)
    {
      if ((v9[2](v9, --v11) & 1) == 0)
      {
        v12 = v11 + 1;
        goto LABEL_8;
      }
    }

    v12 = v8;
LABEL_8:
    v13 = location + length;
    if (v13 <= v10)
    {
      v14 = v7 + v8;
      while ((v9[2](v9, v13) & 1) != 0)
      {
        if (v14 == ++v13)
        {
          goto LABEL_14;
        }
      }

      v10 = v13 - 1;
    }

LABEL_14:
    v7 = v10 - v12 + 1;
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v15 = v12;
  v16 = v7;
  result.length = v16;
  result.location = v15;
  return result;
}

- (void)_findVisibleCoverSources
{
  v3 = [(BCCardStackCoverSourceController *)self totalCoverCount];
  v4 = [(BCCardStackCoverSourceController *)self focusedIndex];
  [NSMutableDictionary dictionaryWithCapacity:v3];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_48B64;
  v16[3] = &unk_2C9790;
  v5 = v16[4] = self;
  v17 = v5;
  v6 = objc_retainBlock(v16);
  if ((v6[2])(v6, v4, 0))
  {
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_48C78;
    v13 = &unk_2C97B8;
    v14 = self;
    v15 = v6;
    v7 = [(BCCardStackCoverSourceController *)self _rangeOfIndexesInRange:0 passingTest:v3 aroundInnerRange:&v10, v4, 1];
    v9 = v8;
  }

  else
  {
    v9 = 0;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(BCCardStackCoverSourceController *)self setVisibleRange:v7, v9, v10, v11, v12, v13, v14];
  [(BCCardStackCoverSourceController *)self setVisibleCoverSourceByIndex:v5];
}

- (void)_findHorizontalRange
{
  v3 = [(BCCardStackCoverSourceController *)self visibleCoverSourceByIndex];
  v4 = [NSNumber numberWithInteger:[(BCCardStackCoverSourceController *)self focusedIndex]];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [v5 cardStackTransitioningCoverSourceReferenceView];
  [v5 cardStackTransitioningCoverSourceFrame];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_48E28;
  v13[3] = &unk_2C97E0;
  v13[4] = self;
  v14 = v6;
  MaxY = CGRectGetMaxY(v16);
  v7 = v6;
  v8 = objc_retainBlock(v13);
  v9 = [(BCCardStackCoverSourceController *)self visibleRange];
  v11 = [(BCCardStackCoverSourceController *)self _rangeOfIndexesInRange:v9 passingTest:v10 aroundInnerRange:v8, [(BCCardStackCoverSourceController *)self focusedIndex], 1];
  [(BCCardStackCoverSourceController *)self setHorizontalRange:v11, v12];
}

- (void)_createImaginaryCovers
{
  v3 = [(BCCardStackCoverSourceController *)self visibleRange];
  v5 = v4;
  v6 = [(BCCardStackCoverSourceController *)self horizontalRange];
  v8 = v7;
  v9 = [(BCCardStackCoverSourceController *)self visibleCoverSourceByIndex];
  v10 = [(BCCardStackCoverSourceController *)self visibleCardRange];
  v12 = v10 + v11;
  v13 = [(BCCardStackCoverSourceController *)self visibleRange];
  if (v12 > v13 + v14 && v12 <= [(BCCardStackCoverSourceController *)self totalCoverCount])
  {
    v5 = v12;
  }

  [NSMutableDictionary dictionaryWithCapacity:v5 - v8];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_490D0;
  v19[3] = &unk_2C9808;
  v23 = v6;
  v24 = v6 + v8 - 1;
  v20 = v9;
  v22 = v21 = self;
  v15 = v22;
  v16 = v9;
  v17 = [(BCCardStackCoverSourceController *)self _rangeOfIndexesInRange:v3 passingTest:v5 aroundInnerRange:v19, v6, v8];
  [(BCCardStackCoverSourceController *)self setHorizontalRangeIncludingFake:v17, v18];
  [(BCCardStackCoverSourceController *)self setFakeCoverSourceByIndex:v15];
}

- (_NSRange)_trimRange:(_NSRange)a3 withTest:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = a4;
  if (length)
  {
    v7 = length + location - 1;
    if (location > v7)
    {
      goto LABEL_8;
    }

    while (v6[2](v6, location))
    {
      ++location;
      if (!--length)
      {
        goto LABEL_8;
      }
    }

    if (location == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_8:
      v8 = 0;
      location = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = location;
      if (v7 > location)
      {
        while (v6[2](v6, v7))
        {
          if (--v7 <= location)
          {
            v11 = location;
            goto LABEL_15;
          }
        }

        v11 = v7;
      }

LABEL_15:
      v8 = v11 - location + 1;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = location;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (id)_coverSourceAtIndex:(int64_t)a3
{
  v5 = [(BCCardStackCoverSourceController *)self horizontalRange];
  if (a3 < v5 || a3 - v5 >= v6)
  {
    v7 = [(BCCardStackCoverSourceController *)self fakeCoverSourceByIndex];
  }

  else
  {
    v7 = [(BCCardStackCoverSourceController *)self visibleCoverSourceByIndex];
  }

  v8 = v7;
  v9 = [NSNumber numberWithInteger:a3];
  v10 = [v8 objectForKeyedSubscript:v9];

  return v10;
}

- (void)_handlePartiallyVisibleCovers
{
  v3 = [(BCCardStackCoverSourceController *)self horizontalRangeIncludingFake];
  v5 = v4;
  v6 = [(BCCardStackCoverSourceController *)self horizontalRange];
  v8 = v7;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_49520;
  v14[3] = &unk_2C9830;
  v14[5] = [(BCCardStackCoverSourceController *)self visibleCardRange];
  v14[6] = v9;
  v14[4] = self;
  v15.location = [(BCCardStackCoverSourceController *)self _trimRange:v3 withTest:v5, v14];
  location = v15.location;
  length = v15.length;
  v16.location = v6;
  v16.length = v8;
  v12 = NSUnionRange(v15, v16);
  [(BCCardStackCoverSourceController *)self setHorizontalRangeIncludingFake:v12.location, v12.length];
  v13 = [NSMutableIndexSet indexSetWithIndexesInRange:v6, v8];
  [v13 removeIndexesInRange:{location, length}];
  [(BCCardStackCoverSourceController *)self setClippedCoverIndexes:v13];
}

- (void)prepareForCoverSourceCapturingWithToViewController:(id)a3 toViewTransform:(CGAffineTransform *)a4 revealCoverBlock:(id)a5 captureCoverFrameBlock:(id)a6
{
  v10 = a3;
  v11 = a6;
  (*(a5 + 2))(a5);
  if ([(BCCardStackCoverSourceController *)self preferSlideForDismiss])
  {
    v11[2](v11);
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v12 = [v10 view];
    v13 = v12;
    if (v12)
    {
      [v12 transform];
    }

    else
    {
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
    }

    v14 = *&a4->c;
    v25 = *&a4->a;
    v26 = v14;
    v27 = *&a4->tx;
    v15 = [v10 view];
    v22 = v25;
    v23 = v26;
    v24 = v27;
    [v15 setTransform:&v22];

    v11[2](v11);
    if ([(BCCardStackCoverSourceController *)self canUseCoverTransition])
    {
      v16 = [(BCCardStackCoverSourceController *)self cardStackViewController];
      v17 = [v16 view];
      [(BCCardStackCoverSourceController *)self _preserveNeededCoverSourceFramesWithNewReferenceView:v17];
    }

    v18 = [v10 view];
    v22 = v19;
    v23 = v20;
    v24 = v21;
    [v18 setTransform:&v22];

    [(BCCardStackCoverSourceController *)self _refreshNeededCoverSources];
  }
}

- (void)_preserveNeededCoverSourceFramesWithNewReferenceView:(id)a3
{
  v4 = a3;
  v5 = [(BCCardStackCoverSourceController *)self horizontalRangeIncludingFake];
  v7 = [NSMutableIndexSet indexSetWithIndexesInRange:v5, v6];
  v8 = [(BCCardStackCoverSourceController *)self clippedCoverIndexes];
  [v7 removeIndexes:v8];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_4982C;
  v10[3] = &unk_2C9858;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v7 enumerateIndexesUsingBlock:v10];
}

- (void)_refreshNeededCoverSources
{
  v3 = [(BCCardStackCoverSourceController *)self visibleRange];
  v5 = [NSMutableIndexSet indexSetWithIndexesInRange:v3, v4];
  v6 = [(BCCardStackCoverSourceController *)self horizontalRange];
  [v5 removeIndexesInRange:{v6, v7}];
  v8 = [(BCCardStackCoverSourceController *)self clippedCoverIndexes];
  [v5 addIndexes:v8];

  v9 = [(BCCardStackCoverSourceController *)self visibleCoverSourceByIndex];
  v10 = [v9 mutableCopy];

  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_499A4;
  v15 = &unk_2C9858;
  v16 = self;
  v17 = v10;
  v11 = v10;
  [v5 enumerateIndexesUsingBlock:&v12];
  [(BCCardStackCoverSourceController *)self setVisibleCoverSourceByIndex:v11, v12, v13, v14, v15, v16];
}

- (void)performSecondHalfOfProcessing
{
  if ([(BCCardStackCoverSourceController *)self isDismiss]&& (![(BCCardStackCoverSourceController *)self canUseCoverTransition]|| [(BCCardStackCoverSourceController *)self preferSlideForDismiss]))
  {

    [(BCCardStackCoverSourceController *)self _generateDismissSlideAnimationItems];
  }

  else
  {
    [(BCCardStackCoverSourceController *)self _obtainCardCoverSources];

    [(BCCardStackCoverSourceController *)self _generateAnimationItems];
  }
}

- (id)_placeholderCoverSourceForRelativeCoverFrame:(CGRect)a3 inCardView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  v6 = a4;
  [v6 bounds];
  CGPointAdd();
  v9 = [[BCCardStackTransitioningPlaceholderCoverSource alloc] initWithCoverFrame:v6 referenceView:v7, v8, width, height];

  return v9;
}

- (void)_obtainCardCoverSources
{
  v3 = [(BCCardStackCoverSourceController *)self focusedIndex];
  v56 = [(BCCardStackCoverSourceController *)self cardSetViewController];
  v55 = v3;
  v4 = [v56 cardViewControllerAtIndex:v3];
  v5 = [v4 view];
  [v5 layoutIfNeeded];

  v52 = [v4 transitioningCardContent];
  v6 = [v52 cardStackTransitioningCardContentCoverSource];
  v54 = v4;
  v7 = [v4 view];
  [v6 cardStackTransitioningCoverSourceFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v6 cardStackTransitioningCoverSourceReferenceView];
  [v7 convertRect:v16 fromView:{v9, v11, v13, v15}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = [(BCCardStackCoverSourceController *)self _rangeForCoverMove];
  v27 = v26;
  v28 = [(BCCardStackCoverSourceController *)self _rangeForCardMove];
  v30 = v29;
  v31 = [NSMutableDictionary dictionaryWithCapacity:v27];
  v32 = [NSMutableDictionary dictionaryWithCapacity:v30];
  v53 = objc_alloc_init(NSMutableIndexSet);
  if (v28 < &v28[v30])
  {
    do
    {
      v33 = [v56 cardViewControllerAtIndex:v28];
      v34 = [NSNumber numberWithInteger:v28];
      [v32 setObject:v33 forKeyedSubscript:v34];

      ++v28;
      --v30;
    }

    while (v30);
  }

  v35 = v55;
  if (v25 < &v25[v27])
  {
    while (v35 == v25)
    {
      v36 = v6;
LABEL_19:
      v51 = [NSNumber numberWithInteger:v25];
      [v31 setObject:v36 forKeyedSubscript:v51];

      ++v25;
      if (!--v27)
      {
        goto LABEL_20;
      }
    }

    v37 = [NSNumber numberWithInteger:v25];
    v38 = [v32 objectForKeyedSubscript:v37];

    v39 = [v38 transitioningCardContent];
    v40 = [v39 cardStackTransitioningCardContentCoverSource];
    if (v40)
    {
      v36 = v40;
      if (!-[BCCardStackCoverSourceController isDismiss](self, "isDismiss") || ![v39 visibilityOfCoverSource:v36 ignoringYAxis:0])
      {
LABEL_18:

        goto LABEL_19;
      }
    }

    if ([(BCCardStackCoverSourceController *)self isDismiss])
    {
      v41 = [(BCCardStackCoverSourceController *)self visibleCardRange];
      if (v25 >= v41 && v25 - v41 < v42)
      {
        [v53 addIndex:v25];
      }
    }

    if (v38)
    {
      v43 = [v38 view];
      v44 = self;
      v45 = v18;
      v46 = v20;
    }

    else
    {
      [v56 frameForCardAtIndex:v25 inCoordinatesOfCardAtIndex:v35];
      CGPointAdd();
      v48 = v47;
      v50 = v49;
      v43 = [v54 view];
      v44 = self;
      v45 = v48;
      v46 = v50;
    }

    v36 = [(BCCardStackCoverSourceController *)v44 _placeholderCoverSourceForRelativeCoverFrame:v43 inCardView:v45, v46, v22, v24];

    v35 = v55;
    goto LABEL_18;
  }

LABEL_20:
  [(BCCardStackCoverSourceController *)self setCardByIndex:v32];
  [(BCCardStackCoverSourceController *)self setCardCoverSourceByIndex:v31];
  [(BCCardStackCoverSourceController *)self setVisibleCardIndexesWithAdjustedCoverSource:v53];
}

- (void)_generateAnimationItems
{
  v3 = [(BCCardStackCoverSourceController *)self _rangeForCoverMove];
  v5 = [NSIndexSet indexSetWithIndexesInRange:v3, v4];
  v6 = +[NSMutableArray array];
  v7 = +[NSMutableArray array];
  v8 = [(BCCardStackCoverSourceController *)self focusedIndex];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_4A144;
  v24[3] = &unk_2C9880;
  v25 = v6;
  v26 = v8;
  v24[4] = self;
  v9 = v6;
  [v5 enumerateIndexesUsingBlock:v24];
  v10 = [(BCCardStackCoverSourceController *)self _rangeForCardMove];
  v12 = [NSIndexSet indexSetWithIndexesInRange:v10, v11];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_4A304;
  v20 = &unk_2C9880;
  v22 = v7;
  v23 = v8;
  v21 = self;
  v13 = v7;
  [v12 enumerateIndexesUsingBlock:&v17];
  v14 = [(BCCardStackCoverSourceController *)self _rangeForCoverMove:v17];
  v16 = [(BCCardStackCoverSourceController *)self _coverFadeItemsExcludingRange:v14, v15];
  [(BCCardStackCoverSourceController *)self setCoverMoveItems:v9];
  [(BCCardStackCoverSourceController *)self setCardMoveItems:v13];
  [(BCCardStackCoverSourceController *)self setCoverFadeItems:v16];
}

- (id)_coverFadeItemsExcludingRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(BCCardStackCoverSourceController *)self visibleRange];
  v8 = [NSMutableIndexSet indexSetWithIndexesInRange:v6, v7];
  [v8 removeIndexesInRange:{location, length}];
  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_4A724;
  v15 = &unk_2C9858;
  v17 = v16 = self;
  v9 = v17;
  [v8 enumerateIndexesUsingBlock:&v12];
  v10 = [v9 copy];

  return v10;
}

- (void)_generateDismissSlideAnimationItems
{
  v3 = [(BCCardStackCoverSourceController *)self visibleCardRange];
  v5 = v4;
  v18 = [NSMutableArray arrayWithCapacity:v4];
  if (v3 < &v3[v5])
  {
    do
    {
      v6 = [NSString stringWithFormat:@"%ld-slide", v3];
      v7 = [(BCCardStackTransitionAnimationItem *)[BCCardStackTransitionCardSlideAnimationItem alloc] initWithKey:v6];
      [(BCCardStackTransitionCardSlideAnimationItem *)v7 setIsFocusedCard:v3 == [(BCCardStackCoverSourceController *)self focusedIndex]];
      v8 = [(BCCardStackCoverSourceController *)self cardSetViewController];
      v9 = [v8 cardViewControllerAtIndex:v3];
      [(BCCardStackTransitionCardSlideAnimationItem *)v7 setCard:v9];

      [v18 addObject:v7];
      ++v3;
      --v5;
    }

    while (v5);
  }

  v10 = [(BCCardStackCoverSourceController *)self underlyingCardSetViewController];

  if (v10)
  {
    v11 = [(BCCardStackCoverSourceController *)self underlyingCardSetViewController];
    v12 = [v11 focusedIndex];

    v13 = [NSString stringWithFormat:@"%ld-slide", v12];
    v14 = [(BCCardStackTransitionAnimationItem *)[BCCardStackTransitionCardSlideAnimationItem alloc] initWithKey:v13];
    v15 = [(BCCardStackCoverSourceController *)self underlyingCardSetViewController];
    v16 = [v15 cardViewControllerAtIndex:v12];
    [(BCCardStackTransitionCardSlideAnimationItem *)v14 setCard:v16];

    [v18 addObject:v14];
  }

  v17 = [(BCCardStackCoverSourceController *)self _coverFadeItemsExcludingRange:0, 0];
  [(BCCardStackCoverSourceController *)self setCardSlideItems:v18];
  [(BCCardStackCoverSourceController *)self setCoverFadeItems:v17];
}

- (void)prepareForAnimation:(BOOL)a3
{
  v3 = a3;
  [(BCCardStackCoverSourceController *)self _hideVisibleCoverSources];
  if (v3)
  {
    [(BCCardStackCoverSourceController *)self hideCardCoverSources];
  }

  v5 = [(BCCardStackCoverSourceController *)self focusedIndex];
  v6 = [(BCCardStackCoverSourceController *)self cardByIndex];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4AAE0;
  v7[3] = &unk_2C98A8;
  v7[4] = self;
  v7[5] = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)_hideVisibleCoverSources
{
  v3 = [(BCCardStackCoverSourceController *)self cardStackViewController];
  v4 = [v3 unhideBlocksByCardSet];
  v5 = [(BCCardStackCoverSourceController *)self cardSetViewController];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = +[NSMutableDictionary dictionary];
    v7 = [(BCCardStackCoverSourceController *)self cardStackViewController];
    v8 = [v7 unhideBlocksByCardSet];
    v9 = [(BCCardStackCoverSourceController *)self cardSetViewController];
    [v8 setObject:v6 forKeyedSubscript:v9];
  }

  v10 = [(BCCardStackCoverSourceController *)self visibleCoverSourceByIndex];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_4ACE4;
  v12[3] = &unk_2C98D0;
  v13 = v6;
  v11 = v6;
  [v10 enumerateKeysAndObjectsUsingBlock:v12];
}

- (void)hideCardCoverSources
{
  v3 = [(BCCardStackCoverSourceController *)self cardCoverSourceByIndex];
  v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v3 count]);

  v5 = [(BCCardStackCoverSourceController *)self cardCoverSourceByIndex];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4AE74;
  v7[3] = &unk_2C98D0;
  v8 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];

  [(BCCardStackCoverSourceController *)self setCardCoverSourceUnhideBlocksByIndex:v6];
}

- (void)finalizeForAnimation
{
  if ([(BCCardStackCoverSourceController *)self isDismiss])
  {
    if ([(BCCardStackCoverSourceController *)self isDismissingCardStack])
    {
      [(BCCardStackCoverSourceController *)self _unhideAllCoverSources];
    }

    else
    {
      v3 = [(BCCardStackCoverSourceController *)self cardSetViewController];
      [(BCCardStackCoverSourceController *)self _unhideCoverSourcesForCardSet:v3];
    }
  }

  [(BCCardStackCoverSourceController *)self _unhideCardCoverSources];
  v4 = [(BCCardStackCoverSourceController *)self cardByIndex];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_4AFC8;
  v5[3] = &unk_2C98F8;
  v5[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

- (BOOL)_hasHiddenCoverSourcesForCardSet:(id)a3
{
  v4 = a3;
  v5 = [(BCCardStackCoverSourceController *)self cardStackViewController];
  v6 = [v5 unhideBlocksByCardSet];
  v7 = [v6 objectForKeyedSubscript:v4];

  return v7 != 0;
}

- (void)_unhideAllCoverSources
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [(BCCardStackCoverSourceController *)self cardStackViewController];
  v4 = [v3 unhideBlocksByCardSet];
  v5 = [v4 objectEnumerator];

  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = [v10 allValues];
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          do
          {
            v15 = 0;
            do
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(v11);
              }

              (*(*(*(&v18 + 1) + 8 * v15) + 16))();
              v15 = v15 + 1;
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v13);
        }

        v9 = v9 + 1;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v16 = [(BCCardStackCoverSourceController *)self cardStackViewController];
  v17 = [v16 unhideBlocksByCardSet];
  [v17 removeAllObjects];
}

- (void)_unhideCoverSourcesForCardSet:(id)a3
{
  v4 = a3;
  v5 = [(BCCardStackCoverSourceController *)self cardStackViewController];
  v6 = [v5 unhideBlocksByCardSet];
  v7 = [v6 objectForKeyedSubscript:v4];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 allValues];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v15 + 1) + 8 * v12) + 16))();
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = [(BCCardStackCoverSourceController *)self cardStackViewController];
  v14 = [v13 unhideBlocksByCardSet];
  [v14 setObject:0 forKeyedSubscript:v4];
}

- (void)_unhideCardCoverSources
{
  v2 = [(BCCardStackCoverSourceController *)self cardCoverSourceUnhideBlocksByIndex];
  [v2 enumerateKeysAndObjectsUsingBlock:&stru_2C9938];
}

- (BCCardSetViewController)underlyingCardSetViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_underlyingCardSetViewController);

  return WeakRetained;
}

- (_NSRange)visibleCardRange
{
  length = self->_visibleCardRange.length;
  location = self->_visibleCardRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)visibleRange
{
  length = self->_visibleRange.length;
  location = self->_visibleRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)horizontalRange
{
  length = self->_horizontalRange.length;
  location = self->_horizontalRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)horizontalRangeIncludingFake
{
  length = self->_horizontalRangeIncludingFake.length;
  location = self->_horizontalRangeIncludingFake.location;
  result.length = length;
  result.location = location;
  return result;
}

@end