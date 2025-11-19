@interface AKColorPaletteView
- (AKColorPaletteView)initWithCoder:(id)a3;
- (AKColorPaletteView)initWithFrame:(CGRect)a3;
- (CGSize)_itemSizeInContainer;
- (id)_indexPathOfColor:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_commonInit;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)layoutSubviews;
- (void)scrollToCurrentColor;
- (void)setColor:(id)a3;
- (void)setScrollDirection:(int64_t)a3;
@end

@implementation AKColorPaletteView

- (AKColorPaletteView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AKColorPaletteView;
  v3 = [(AKColorPaletteView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(AKColorPaletteView *)v3 _commonInit];
  }

  return v4;
}

- (AKColorPaletteView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AKColorPaletteView;
  v3 = [(AKColorPaletteView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(AKColorPaletteView *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  v30[8] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75348] whiteColor];
  v30[0] = v3;
  v4 = [MEMORY[0x277D75348] blackColor];
  v30[1] = v4;
  v5 = [MEMORY[0x277D75348] akColorPickerPurple];
  v30[2] = v5;
  v6 = [MEMORY[0x277D75348] akColorPickerBlue];
  v30[3] = v6;
  v7 = [MEMORY[0x277D75348] akColorPickerGreen];
  v30[4] = v7;
  v8 = [MEMORY[0x277D75348] akColorPickerYellow];
  v30[5] = v8;
  v9 = [MEMORY[0x277D75348] akColorPickerOrange];
  v30[6] = v9;
  v10 = [MEMORY[0x277D75348] akColorPickerRed];
  v30[7] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:8];
  [(AKColorPaletteView *)self setColors:v11];

  v12 = objc_opt_new();
  [v12 setScrollDirection:0];
  [v12 setMinimumInteritemSpacing:0.0];
  [v12 setMinimumLineSpacing:0.0];
  [(AKColorPaletteView *)self _itemSizeInContainer];
  [v12 setItemSize:?];
  v13 = objc_alloc(MEMORY[0x277D752A0]);
  [(AKColorPaletteView *)self frame];
  v14 = [v13 initWithFrame:v12 collectionViewLayout:?];
  [(AKColorPaletteView *)self setCollectionView:v14];

  v15 = [(AKColorPaletteView *)self collectionView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(AKColorPaletteView *)self collectionView];
  [v16 setDelegate:self];

  v17 = [(AKColorPaletteView *)self collectionView];
  [v17 setDataSource:self];

  v18 = [(AKColorPaletteView *)self collectionView];
  [v18 setPagingEnabled:1];

  v19 = [(AKColorPaletteView *)self collectionView];
  [v19 setShowsHorizontalScrollIndicator:0];

  v20 = [(AKColorPaletteView *)self collectionView];
  [v20 setShowsVerticalScrollIndicator:0];

  v21 = [MEMORY[0x277D75348] clearColor];
  v22 = [(AKColorPaletteView *)self collectionView];
  [v22 setBackgroundColor:v21];

  v23 = [(AKColorPaletteView *)self collectionView];
  [v23 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"AnnotationKit.colorPickerReuseIdentifier"];

  v24 = [(AKColorPaletteView *)self collectionView];
  [(AKColorPaletteView *)self addSubview:v24];

  v25 = _NSDictionaryOfVariableBindings(&cfstr_Collectionview.isa, self->_collectionView, 0);
  v26 = MEMORY[0x277CCAAD0];
  v27 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_collectionView]|" options:0 metrics:0 views:v25];
  [v26 activateConstraints:v27];

  v28 = MEMORY[0x277CCAAD0];
  v29 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[_collectionView]|" options:0 metrics:0 views:v25];
  [v28 activateConstraints:v29];
}

- (void)setScrollDirection:(int64_t)a3
{
  self->_scrollDirection = a3;
  v8 = objc_opt_new();
  [v8 setScrollDirection:self->_scrollDirection];
  [v8 setMinimumInteritemSpacing:0.0];
  [v8 setMinimumLineSpacing:0.0];
  if ([(AKColorPaletteView *)self scrollDirection])
  {
    [v8 setSectionInset:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
    v4 = [(AKColorPaletteView *)self colors];
    v5 = [v4 reverseObjectEnumerator];
    v6 = [v5 allObjects];
    [(AKColorPaletteView *)self setColors:v6];
  }

  else
  {
    [v8 setSectionInset:{4.0, 4.0, 4.0, 4.0}];
  }

  [(AKColorPaletteView *)self _itemSizeInContainer];
  [v8 setItemSize:?];
  v7 = [(AKColorPaletteView *)self collectionView];
  [v7 setCollectionViewLayout:v8 animated:0];
}

- (void)layoutSubviews
{
  v3 = [(AKColorPaletteView *)self collectionView];
  v4 = [v3 collectionViewLayout];

  [(AKColorPaletteView *)self _itemSizeInContainer];
  [v4 setItemSize:?];
}

- (void)scrollToCurrentColor
{
  v3 = [(AKColorPaletteView *)self color];

  if (v3)
  {
    v4 = [(AKColorPaletteView *)self color];
    v7 = [(AKColorPaletteView *)self _indexPathOfColor:v4];

    v5 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{objc_msgSend(v7, "section")}];
    if (v7)
    {
      v6 = [(AKColorPaletteView *)self collectionView];
      [v6 scrollToItemAtIndexPath:v5 atScrollPosition:8 animated:0];
    }
  }
}

- (void)setColor:(id)a3
{
  v5 = a3;
  if (self->_color != v5)
  {
    v11 = v5;
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = [(AKColorPaletteView *)self _indexPathOfColor:self->_color];
    v8 = [(AKColorPaletteView *)self _indexPathOfColor:v11];
    objc_storeStrong(&self->_color, a3);
    if (v7)
    {
      [v6 addObject:v7];
    }

    if (v8)
    {
      [v6 addObject:v8];
    }

    if ([v6 count])
    {
      v9 = [(AKColorPaletteView *)self collectionView];
      v10 = [v6 allObjects];
      [v9 reloadItemsAtIndexPaths:v10];
    }

    v5 = v11;
  }
}

- (CGSize)_itemSizeInContainer
{
  v3 = [(AKColorPaletteView *)self colors];
  v4 = [v3 count];

  [(AKColorPaletteView *)self frame];
  IsEmpty = CGRectIsEmpty(v11);
  v6 = 24.0;
  Height = 24.0;
  if (!IsEmpty)
  {
    [(AKColorPaletteView *)self frame];
    Height = CGRectGetHeight(v12);
    [(AKColorPaletteView *)self frame];
    Width = CGRectGetWidth(v13);
    if ([(AKColorPaletteView *)self scrollDirection])
    {
      v6 = fmax((Width + v4 * -24.0) / v4, 0.0) + 24.0;
    }

    else
    {
      v6 = Width + -8.0;
      Height = fmax((Height + -8.0 + v4 * -39.0) / v4, 4.0) + 39.0;
    }
  }

  v9 = Height;
  result.height = v9;
  result.width = v6;
  return result;
}

- (id)_indexPathOfColor:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(AKColorPaletteView *)self colors];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v4 akIsEqualToColor:v11])
        {
          v12 = [(AKColorPaletteView *)self colors];
          v9 = [v12 indexOfObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [MEMORY[0x277CCAA70] indexPathForItem:v9 inSection:0];
      goto LABEL_14;
    }
  }

  else
  {
  }

  v13 = 0;
LABEL_14:

  return v13;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(AKColorPaletteView *)self colors];
  v7 = [v5 row];

  v8 = [v6 objectAtIndexedSubscript:v7];
  [(AKColorPaletteView *)self setColor:v8];

  [(AKColorPaletteView *)self sendActionsForControlEvents:4096];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(AKColorPaletteView *)self colors:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"AnnotationKit.colorPickerReuseIdentifier" forIndexPath:v6];
  v8 = [v7 viewWithTag:1001];
  v9 = v8;
  if (v7 && !v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    [v9 setContentMode:9];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 setTag:1001];
    [v9 setClipsToBounds:0];
    v10 = [v7 contentView];
    [v10 addSubview:v9];

    v11 = [(AKColorPaletteView *)self scrollDirection];
    v12 = 39.0;
    if (v11)
    {
      v12 = 24.0;
    }

    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
    v14 = _NSDictionaryOfVariableBindings(&cfstr_ImageviewSize.isa, v9, v13, 0);
    v15 = MEMORY[0x277CCAAD0];
    v16 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:[imageView(size)]" options:0 metrics:v14 views:v14];
    [v15 activateConstraints:v16];

    v17 = MEMORY[0x277CCAAD0];
    v18 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[imageView(size)]" options:0 metrics:v14 views:v14];
    [v17 activateConstraints:v18];

    v19 = [MEMORY[0x277CCAAD0] constraintWithItem:v9 attribute:9 relatedBy:0 toItem:v7 attribute:9 multiplier:1.0 constant:0.0];
    [v19 setActive:1];

    v20 = [MEMORY[0x277CCAAD0] constraintWithItem:v9 attribute:10 relatedBy:0 toItem:v7 attribute:10 multiplier:1.0 constant:0.0];
    [v20 setActive:1];
  }

  v21 = [(AKColorPaletteView *)self colors];
  v22 = [v6 row];

  v23 = [v21 objectAtIndexedSubscript:v22];

  v24 = [(AKColorPaletteView *)self color];
  v25 = [v24 akIsEqualToColor:v23];

  v26 = [(AKColorPaletteView *)self scrollDirection];
  v27 = 39.0;
  if (v26)
  {
    v27 = 24.0;
  }

  v28 = [MEMORY[0x277D755B8] ak_colorSwatchPickerImageWithColor:v23 size:v25 selected:{v27, v27}];
  [v9 setImage:v28];

  return v7;
}

@end