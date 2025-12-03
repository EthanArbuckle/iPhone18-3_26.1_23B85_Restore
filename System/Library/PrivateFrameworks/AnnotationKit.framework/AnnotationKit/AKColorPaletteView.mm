@interface AKColorPaletteView
- (AKColorPaletteView)initWithCoder:(id)coder;
- (AKColorPaletteView)initWithFrame:(CGRect)frame;
- (CGSize)_itemSizeInContainer;
- (id)_indexPathOfColor:(id)color;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_commonInit;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)layoutSubviews;
- (void)scrollToCurrentColor;
- (void)setColor:(id)color;
- (void)setScrollDirection:(int64_t)direction;
@end

@implementation AKColorPaletteView

- (AKColorPaletteView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AKColorPaletteView;
  v3 = [(AKColorPaletteView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(AKColorPaletteView *)v3 _commonInit];
  }

  return v4;
}

- (AKColorPaletteView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AKColorPaletteView;
  v3 = [(AKColorPaletteView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v30[0] = whiteColor;
  blackColor = [MEMORY[0x277D75348] blackColor];
  v30[1] = blackColor;
  akColorPickerPurple = [MEMORY[0x277D75348] akColorPickerPurple];
  v30[2] = akColorPickerPurple;
  akColorPickerBlue = [MEMORY[0x277D75348] akColorPickerBlue];
  v30[3] = akColorPickerBlue;
  akColorPickerGreen = [MEMORY[0x277D75348] akColorPickerGreen];
  v30[4] = akColorPickerGreen;
  akColorPickerYellow = [MEMORY[0x277D75348] akColorPickerYellow];
  v30[5] = akColorPickerYellow;
  akColorPickerOrange = [MEMORY[0x277D75348] akColorPickerOrange];
  v30[6] = akColorPickerOrange;
  akColorPickerRed = [MEMORY[0x277D75348] akColorPickerRed];
  v30[7] = akColorPickerRed;
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

  collectionView = [(AKColorPaletteView *)self collectionView];
  [collectionView setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionView2 = [(AKColorPaletteView *)self collectionView];
  [collectionView2 setDelegate:self];

  collectionView3 = [(AKColorPaletteView *)self collectionView];
  [collectionView3 setDataSource:self];

  collectionView4 = [(AKColorPaletteView *)self collectionView];
  [collectionView4 setPagingEnabled:1];

  collectionView5 = [(AKColorPaletteView *)self collectionView];
  [collectionView5 setShowsHorizontalScrollIndicator:0];

  collectionView6 = [(AKColorPaletteView *)self collectionView];
  [collectionView6 setShowsVerticalScrollIndicator:0];

  clearColor = [MEMORY[0x277D75348] clearColor];
  collectionView7 = [(AKColorPaletteView *)self collectionView];
  [collectionView7 setBackgroundColor:clearColor];

  collectionView8 = [(AKColorPaletteView *)self collectionView];
  [collectionView8 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"AnnotationKit.colorPickerReuseIdentifier"];

  collectionView9 = [(AKColorPaletteView *)self collectionView];
  [(AKColorPaletteView *)self addSubview:collectionView9];

  v25 = _NSDictionaryOfVariableBindings(&cfstr_Collectionview.isa, self->_collectionView, 0);
  v26 = MEMORY[0x277CCAAD0];
  v27 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_collectionView]|" options:0 metrics:0 views:v25];
  [v26 activateConstraints:v27];

  v28 = MEMORY[0x277CCAAD0];
  v29 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[_collectionView]|" options:0 metrics:0 views:v25];
  [v28 activateConstraints:v29];
}

- (void)setScrollDirection:(int64_t)direction
{
  self->_scrollDirection = direction;
  v8 = objc_opt_new();
  [v8 setScrollDirection:self->_scrollDirection];
  [v8 setMinimumInteritemSpacing:0.0];
  [v8 setMinimumLineSpacing:0.0];
  if ([(AKColorPaletteView *)self scrollDirection])
  {
    [v8 setSectionInset:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
    colors = [(AKColorPaletteView *)self colors];
    reverseObjectEnumerator = [colors reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    [(AKColorPaletteView *)self setColors:allObjects];
  }

  else
  {
    [v8 setSectionInset:{4.0, 4.0, 4.0, 4.0}];
  }

  [(AKColorPaletteView *)self _itemSizeInContainer];
  [v8 setItemSize:?];
  collectionView = [(AKColorPaletteView *)self collectionView];
  [collectionView setCollectionViewLayout:v8 animated:0];
}

- (void)layoutSubviews
{
  collectionView = [(AKColorPaletteView *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  [(AKColorPaletteView *)self _itemSizeInContainer];
  [collectionViewLayout setItemSize:?];
}

- (void)scrollToCurrentColor
{
  color = [(AKColorPaletteView *)self color];

  if (color)
  {
    color2 = [(AKColorPaletteView *)self color];
    v7 = [(AKColorPaletteView *)self _indexPathOfColor:color2];

    v5 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{objc_msgSend(v7, "section")}];
    if (v7)
    {
      collectionView = [(AKColorPaletteView *)self collectionView];
      [collectionView scrollToItemAtIndexPath:v5 atScrollPosition:8 animated:0];
    }
  }
}

- (void)setColor:(id)color
{
  colorCopy = color;
  if (self->_color != colorCopy)
  {
    v11 = colorCopy;
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = [(AKColorPaletteView *)self _indexPathOfColor:self->_color];
    v8 = [(AKColorPaletteView *)self _indexPathOfColor:v11];
    objc_storeStrong(&self->_color, color);
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
      collectionView = [(AKColorPaletteView *)self collectionView];
      allObjects = [v6 allObjects];
      [collectionView reloadItemsAtIndexPaths:allObjects];
    }

    colorCopy = v11;
  }
}

- (CGSize)_itemSizeInContainer
{
  colors = [(AKColorPaletteView *)self colors];
  v4 = [colors count];

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

- (id)_indexPathOfColor:(id)color
{
  v20 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  colors = [(AKColorPaletteView *)self colors];
  v6 = [colors countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(colors);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([colorCopy akIsEqualToColor:v11])
        {
          colors2 = [(AKColorPaletteView *)self colors];
          v9 = [colors2 indexOfObject:v11];
        }
      }

      v7 = [colors countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  colors = [(AKColorPaletteView *)self colors];
  v7 = [pathCopy row];

  v8 = [colors objectAtIndexedSubscript:v7];
  [(AKColorPaletteView *)self setColor:v8];

  [(AKColorPaletteView *)self sendActionsForControlEvents:4096];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(AKColorPaletteView *)self colors:view];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"AnnotationKit.colorPickerReuseIdentifier" forIndexPath:pathCopy];
  v8 = [v7 viewWithTag:1001];
  v9 = v8;
  if (v7 && !v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    [v9 setContentMode:9];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 setTag:1001];
    [v9 setClipsToBounds:0];
    contentView = [v7 contentView];
    [contentView addSubview:v9];

    scrollDirection = [(AKColorPaletteView *)self scrollDirection];
    v12 = 39.0;
    if (scrollDirection)
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

  colors = [(AKColorPaletteView *)self colors];
  v22 = [pathCopy row];

  v23 = [colors objectAtIndexedSubscript:v22];

  color = [(AKColorPaletteView *)self color];
  v25 = [color akIsEqualToColor:v23];

  scrollDirection2 = [(AKColorPaletteView *)self scrollDirection];
  v27 = 39.0;
  if (scrollDirection2)
  {
    v27 = 24.0;
  }

  v28 = [MEMORY[0x277D755B8] ak_colorSwatchPickerImageWithColor:v23 size:v25 selected:{v27, v27}];
  [v9 setImage:v28];

  return v7;
}

@end