@interface SFCreditCardFillingViewController
- (SFCreditCardFillingViewController)initWithFormAutocompleteState:(id)a3;
- (SFFormAutocompleteState)formAutocompleteState;
- (double)_calculateCellWidthForCollectionViewWidth:(double)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)_cardDataChanged:(id)a3;
- (void)_loadCardData;
- (void)_scrollToPreviouslySelectedEmptyVirtualCardIfBalanceIncreased;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SFCreditCardFillingViewController

- (SFCreditCardFillingViewController)initWithFormAutocompleteState:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFCreditCardFillingViewController;
  v5 = [(SFCreditCardFillingViewController *)&v10 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_formAutocompleteState, v4);
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v6 selector:sel__cardDataChanged_ name:*MEMORY[0x1E69DDBC0] object:0];

    v8 = v6;
  }

  return v6;
}

- (double)_calculateCellWidthForCollectionViewWidth:(double)a3
{
  if (self->_lastLayoutWidth == a3)
  {
    return self->_cachedCellWidth;
  }

  self->_lastLayoutWidth = a3;
  v4 = 30;
  while (v4 != 5)
  {
    v3 = floor((a3 - v4) / floor((a3 - v4) / 180.0));
    v4 -= 5;
    if (v3 <= 285.0)
    {
      goto LABEL_8;
    }
  }

  v3 = 180.0;
LABEL_8:
  self->_cachedCellWidth = v3;
  return v3;
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DC810]);
  [v3 setScrollDirection:1];
  v4 = objc_alloc(MEMORY[0x1E69DC808]);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __45__SFCreditCardFillingViewController_loadView__block_invoke;
  v27[3] = &unk_1E8490318;
  v27[4] = self;
  v5 = [v4 initWithSectionProvider:v27 configuration:v3];
  v6 = [objc_alloc(MEMORY[0x1E69DC7F0]) initWithFrame:v5 collectionViewLayout:{0.0, 0.0, 320.0, 47.0}];
  collectionView = self->_collectionView;
  self->_collectionView = v6;

  v8 = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:v8];

  [(UICollectionView *)self->_collectionView setDataSource:self];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
  [(UICollectionView *)self->_collectionView setClipsToBounds:1];
  [(UICollectionView *)self->_collectionView setDelaysContentTouches:0];
  [(UICollectionView *)self->_collectionView setAlwaysBounceHorizontal:0];
  v9 = self->_collectionView;
  v10 = objc_opt_class();
  v11 = +[SFCreditCardCollectionViewCell reuseIdentifier];
  [(UICollectionView *)v9 registerClass:v10 forCellWithReuseIdentifier:v11];

  v12 = self->_collectionView;
  v13 = objc_opt_class();
  v14 = +[SFScanningCreditCardCollectionViewCell reuseIdentifier];
  [(UICollectionView *)v12 registerClass:v13 forCellWithReuseIdentifier:v14];

  v15 = self->_collectionView;
  v16 = objc_opt_class();
  v17 = +[SFCreditCardSeparator reuseIdentifier];
  [(UICollectionView *)v15 registerClass:v16 forSupplementaryViewOfKind:@"SFCreditCardSeparator" withReuseIdentifier:v17];

  v18 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v19 = [MEMORY[0x1E69DCAB8] sf_imageNamed:@"CreditCardShadowLeft"];
  v20 = [v18 initWithImage:v19];
  leftShadowView = self->_leftShadowView;
  self->_leftShadowView = v20;

  [(UICollectionView *)self->_collectionView addSubview:self->_leftShadowView];
  v22 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v23 = [MEMORY[0x1E69DCAB8] sf_imageNamed:@"CreditCardShadowRight"];
  v24 = [v22 initWithImage:v23];
  rightShadowView = self->_rightShadowView;
  self->_rightShadowView = v24;

  [(UICollectionView *)self->_collectionView addSubview:self->_rightShadowView];
  [(SFCreditCardFillingViewController *)self setView:self->_collectionView];
  v26 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v26 addObserver:self selector:sel__cardDataChanged_ name:*MEMORY[0x1E69C9158] object:0];
}

id __45__SFCreditCardFillingViewController_loadView__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v34[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 == 1)
  {
    +[SFScanningCreditCardCollectionViewCell desiredCellWidth];
    v7 = fmax(v6, *(*(a1 + 32) + 1032));
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [v5 container];
    [v9 contentSize];
    [v8 _calculateCellWidthForCollectionViewWidth:?];
    v7 = v10;
  }

  v11 = MEMORY[0x1E6995588];
  v12 = [MEMORY[0x1E6995558] absoluteDimension:v7];
  v13 = [MEMORY[0x1E6995558] fractionalHeightDimension:1.0];
  v14 = [v11 sizeWithWidthDimension:v12 heightDimension:v13];

  v15 = [MEMORY[0x1E6995578] itemWithLayoutSize:v14];
  v16 = MEMORY[0x1E6995588];
  v17 = [MEMORY[0x1E6995558] absoluteDimension:v7];
  v18 = [MEMORY[0x1E6995558] fractionalHeightDimension:1.0];
  v19 = [v16 sizeWithWidthDimension:v17 heightDimension:v18];

  v20 = MEMORY[0x1E6995568];
  v34[0] = v15;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v22 = [v20 horizontalGroupWithLayoutSize:v19 subitems:v21];

  v23 = [MEMORY[0x1E6995580] sectionWithGroup:v22];
  v24 = [*(*(a1 + 32) + 992) count];
  if (a2 == 1 && v24)
  {
    v25 = MEMORY[0x1E6995588];
    v26 = [MEMORY[0x1E6995558] absoluteDimension:1.0];
    v27 = [MEMORY[0x1E6995558] absoluteDimension:24.0];
    v28 = [v25 sizeWithWidthDimension:v26 heightDimension:v27];

    v29 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v28 elementKind:@"SFCreditCardSeparator" alignment:3];
    v33 = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
    [v23 setBoundarySupplementaryItems:v30];
  }

  return v23;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SFCreditCardFillingViewController;
  [(SFCreditCardFillingViewController *)&v4 viewWillAppear:a3];
  [(SFCreditCardFillingViewController *)self _loadCardData];
}

- (void)_loadCardData
{
  objc_initWeak(&location, self);
  v2 = [MEMORY[0x1E69E3090] sharedCreditCardDataController];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__SFCreditCardFillingViewController__loadCardData__block_invoke;
  v3[3] = &unk_1E8491CE8;
  objc_copyWeak(&v4, &location);
  [v2 getCreditCardDataWithCompletionHandler:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __50__SFCreditCardFillingViewController__loadCardData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__SFCreditCardFillingViewController__loadCardData__block_invoke_2;
  v5[3] = &unk_1E8490298;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __50__SFCreditCardFillingViewController__loadCardData__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [*(a1 + 32) safari_filterObjectsUsingBlock:&__block_literal_global_20];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(v6 + 124, v5);
    [v6[125] reloadData];
    [v6 _scrollToPreviouslySelectedEmptyVirtualCardIfBalanceIncreased];

    WeakRetained = v6;
  }
}

- (void)_scrollToPreviouslySelectedEmptyVirtualCardIfBalanceIncreased
{
  v3 = [(SFCreditCardFillingViewController *)self formAutocompleteState];
  v4 = [v3 previouslySelectedVirtualCardWhereUserRequestedToIncreaseBalance];
  v5 = v4;
  if (v4)
  {
    creditCards = self->_creditCards;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __98__SFCreditCardFillingViewController__scrollToPreviouslySelectedEmptyVirtualCardIfBalanceIncreased__block_invoke;
    v12[3] = &unk_1E8491D10;
    v13 = v4;
    v7 = [(NSArray *)creditCards indexOfObjectPassingTest:v12];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v3 setPreviouslySelectedVirtualCardWhereUserRequestedToIncreaseBalance:0];
    }

    else
    {
      v8 = v7;
      v9 = [(NSArray *)self->_creditCards objectAtIndexedSubscript:v7];
      v10 = [v9 isCardBalanceZeroOrNegative];

      if ((v10 & 1) == 0)
      {
        v11 = [MEMORY[0x1E696AC88] indexPathForRow:v8 inSection:0];
        [(UICollectionView *)self->_collectionView scrollToItemAtIndexPath:v11 atScrollPosition:16 animated:1];
        [v3 setPreviouslySelectedVirtualCardWhereUserRequestedToIncreaseBalance:0];
      }
    }
  }
}

uint64_t __98__SFCreditCardFillingViewController__scrollToPreviouslySelectedEmptyVirtualCardIfBalanceIncreased__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 balance];

  if (v4)
  {
    v5 = [v3 hasSameCreditCardInformationAs:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)viewDidLayoutSubviews
{
  v31.receiver = self;
  v31.super_class = SFCreditCardFillingViewController;
  [(SFCreditCardFillingViewController *)&v31 viewDidLayoutSubviews];
  [(UICollectionView *)self->_collectionView contentSize];
  v4 = v3;
  [(UICollectionView *)self->_collectionView bounds];
  v6 = v5;
  v7 = [(UICollectionView *)self->_collectionView superview];
  [v7 bounds];
  v9 = v8;

  v10 = -2.0;
  if (v9 >= 52.0)
  {
    v10 = 5.0;
  }

  v11 = 0.0;
  [(UICollectionView *)self->_collectionView setFrame:0.0, v10, v6, 47.0];
  [(UICollectionView *)self->_collectionView contentInset];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if (v4 <= v6)
  {
    _SFRoundFloatToPixels();
    v11 = v18;
  }

  [(UICollectionView *)self->_collectionView setContentInset:v13, v11, v15, v17];
  collectionView = self->_collectionView;
  if (v6 <= 450.0)
  {
    [(UICollectionView *)collectionView _setContinuousCornerRadius:0.0];
    [(UIImageView *)self->_leftShadowView setAlpha:0.0];
    [(UIImageView *)self->_rightShadowView setAlpha:0.0];
  }

  else
  {
    [(UICollectionView *)collectionView _setContinuousCornerRadius:12.0];
    v20 = [(UIImageView *)self->_leftShadowView image];
    [v20 size];
    v22 = v21;
    v24 = v23;

    [(UICollectionView *)self->_collectionView contentOffset];
    SFChromeVisibilityForScrollDistance();
    [(UIImageView *)self->_leftShadowView setAlpha:?];
    [(UICollectionView *)self->_collectionView bounds];
    [(UIImageView *)self->_leftShadowView setFrame:CGRectGetMinX(v32), 0.0, v22, v24];
    v25 = [(UIImageView *)self->_rightShadowView image];
    [v25 size];
    v27 = v26;
    v29 = v28;

    [(UICollectionView *)self->_collectionView contentOffset];
    SFChromeVisibilityForScrollDistance();
    [(UIImageView *)self->_rightShadowView setAlpha:1.0 - v30];
    [(UICollectionView *)self->_collectionView bounds];
    [(UIImageView *)self->_rightShadowView setFrame:v6 + CGRectGetMinX(v33) - v27, 0.0, v27, v29];
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 section];
  if (v9 == 1)
  {
    v11 = +[SFScanningCreditCardCollectionViewCell reuseIdentifier];
    v4 = [v7 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v8];
  }

  else
  {
    if (v9)
    {
      goto LABEL_6;
    }

    v10 = +[SFCreditCardCollectionViewCell reuseIdentifier];
    v4 = [v7 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:v8];

    v11 = -[NSArray objectAtIndexedSubscript:](self->_creditCards, "objectAtIndexedSubscript:", [v8 row]);
    [v4 configureViewWithCardData:v11];
  }

LABEL_6:

  return v4;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[SFCreditCardSeparator reuseIdentifier];
  v11 = [v9 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v10 forIndexPath:v7];

  return v11;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  creditCards = self->_creditCards;
  v4 = +[_SFCreditCardCaptureViewController canCapture];
  v5 = 1;
  if (creditCards)
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return creditCards != 0;
  }
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  if (a4)
  {
    return 1;
  }

  else
  {
    return [(NSArray *)self->_creditCards count];
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_formAutocompleteState);
  v6 = [v9 section];
  if (v6 == 1)
  {
    [WeakRetained captureCreditCardDataWithCameraAndFill];
  }

  else if (!v6)
  {
    v7 = -[NSArray objectAtIndexedSubscript:](self->_creditCards, "objectAtIndexedSubscript:", [v9 row]);
    v8 = [_SFTextSuggestion textSuggestionWithCreditCardData:v7];

    [WeakRetained autoFillTextSuggestion:v8];
  }
}

- (void)_cardDataChanged:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__SFCreditCardFillingViewController__cardDataChanged___block_invoke;
  block[3] = &unk_1E848F810;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (SFFormAutocompleteState)formAutocompleteState
{
  WeakRetained = objc_loadWeakRetained(&self->_formAutocompleteState);

  return WeakRetained;
}

@end