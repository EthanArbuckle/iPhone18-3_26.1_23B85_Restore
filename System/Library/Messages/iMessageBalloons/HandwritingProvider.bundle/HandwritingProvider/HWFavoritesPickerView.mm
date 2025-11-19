@interface HWFavoritesPickerView
- (BOOL)shouldShowShadows;
- (CGSize)cellSize;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (HWFavoritesPickerDelegate)delegate;
- (HWFavoritesPickerView)initWithCoder:(id)a3;
- (HWFavoritesPickerView)initWithFrame:(CGRect)a3;
- (id)_cellViewForUUID:(id)a3;
- (id)cachedThumbnailForItem:(id)a3 inCell:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_adjustLayoutForLandscapeEditingMode:(BOOL)a3 animate:(BOOL)a4;
- (void)_cellButtonDown:(id)a3;
- (void)_cellButtonUp:(id)a3;
- (void)_commonInit;
- (void)_deleteItem:(id)a3;
- (void)_longPress:(id)a3;
- (void)clearThumbnailCache;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)reloadData;
- (void)resetScrollPosition;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setItems:(id)a3;
- (void)setLayoutMode:(unint64_t)a3;
- (void)showShadows;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateShadowVisiblity;
@end

@implementation HWFavoritesPickerView

- (HWFavoritesPickerView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HWFavoritesPickerView;
  v3 = [(HWFavoritesPickerView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HWFavoritesPickerView *)v3 _commonInit];
  }

  return v4;
}

- (HWFavoritesPickerView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HWFavoritesPickerView;
  v3 = [(HWFavoritesPickerView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(HWFavoritesPickerView *)v3 _commonInit];
  }

  return v4;
}

- (void)dealloc
{
  [(UICollectionView *)self->_collectionView removeObserver:self forKeyPath:@"contentSize"];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HWFavoritesPickerView;
  [(HWFavoritesPickerView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = HWFavoritesPickerView;
  [(HWFavoritesPickerView *)&v3 layoutSubviews];
  [(HWFavoritesPickerView *)self updateShadowVisiblity];
}

- (void)_commonInit
{
  if (qword_32288 != -1)
  {
    sub_13968();
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"didReceiveMemoryWarning:" name:UIApplicationDidReceiveMemoryWarningNotification object:0];

  self->_empty = 1;
  v4 = +[NSMutableDictionary dictionary];
  itemCache = self->_itemCache;
  self->_itemCache = v4;

  v6 = objc_alloc_init(NSOperationQueue);
  thumbnailQueue = self->_thumbnailQueue;
  self->_thumbnailQueue = v6;

  [(NSOperationQueue *)self->_thumbnailQueue setName:@"Handwriting_Thumbnail_Render_Queue"];
  [(NSOperationQueue *)self->_thumbnailQueue setMaxConcurrentOperationCount:-1];
  v37 = objc_alloc_init(UICollectionViewFlowLayout);
  [v37 setScrollDirection:1];
  [v37 setSectionInset:{0.0, 0.0, 0.0, 0.0}];
  [v37 setMinimumInteritemSpacing:*&qword_32358];
  [v37 setMinimumLineSpacing:*&qword_32350];
  v8 = [UICollectionView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v12 = [v8 initWithFrame:v37 collectionViewLayout:{CGRectZero.origin.x, y, width, height}];
  collectionView = self->_collectionView;
  self->_collectionView = v12;

  [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = +[UIColor clearColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:v14];

  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setDataSource:self];
  [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
  [(UICollectionView *)self->_collectionView setShowsVerticalScrollIndicator:0];
  [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"reuseIdentifier"];
  [(UICollectionView *)self->_collectionView addObserver:self forKeyPath:@"contentSize" options:0 context:0];
  v15 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  emptyLabel = self->_emptyLabel;
  self->_emptyLabel = v15;

  [(UILabel *)self->_emptyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v17) = 1132068864;
  [(UILabel *)self->_emptyLabel setContentHuggingPriority:0 forAxis:v17];
  LODWORD(v18) = 1132068864;
  [(UILabel *)self->_emptyLabel setContentCompressionResistancePriority:0 forAxis:v18];
  v19 = +[NSBundle hw_handwritingPluginBundle];
  v20 = [v19 localizedStringForKey:@"Your last %@ handwritten messages appear here in Recents." value:&stru_28B70 table:@"HWFavoritesPickerView"];
  v21 = [NSString stringWithFormat:v20, &off_29BB0];
  [(UILabel *)self->_emptyLabel setText:v21];

  v22 = +[UIColor favoritesLabelColor];
  [(UILabel *)self->_emptyLabel setTextColor:v22];

  [(UILabel *)self->_emptyLabel setTextAlignment:1];
  v23 = [UIFont systemFontOfSize:*(&xmmword_32360 + 1) weight:UIFontWeightLight];
  [(UILabel *)self->_emptyLabel setFont:v23];

  [(UILabel *)self->_emptyLabel setNumberOfLines:0];
  [(UILabel *)self->_emptyLabel setHidden:1];
  [(HWFavoritesPickerView *)self addSubview:self->_collectionView];
  [(HWFavoritesPickerView *)self addSubview:self->_emptyLabel];
  v24 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"_longPress:"];
  longPressRecognizer = self->_longPressRecognizer;
  self->_longPressRecognizer = v24;

  [(UICollectionView *)self->_collectionView addGestureRecognizer:self->_longPressRecognizer];
  v26 = _NSDictionaryOfVariableBindings(@"_collectionView, _emptyLabel", self->_collectionView, self->_emptyLabel, 0);
  v27 = [NSLayoutConstraint constraintWithItem:self->_emptyLabel attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:*&qword_32390];
  emptyLabelRight = self->_emptyLabelRight;
  self->_emptyLabelRight = v27;

  v29 = [NSLayoutConstraint constraintWithItem:self->_emptyLabel attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:*&qword_32380];
  emptyLabelLeft = self->_emptyLabelLeft;
  self->_emptyLabelLeft = v29;

  v31 = [NSLayoutConstraint constraintWithItem:self->_emptyLabel attribute:12 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:*&qword_32378];
  emptyLabelVerticalBaseline = self->_emptyLabelVerticalBaseline;
  self->_emptyLabelVerticalBaseline = v31;

  v33 = [NSLayoutConstraint constraintWithItem:self->_emptyLabel attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
  emptyLabelVerticalCenter = self->_emptyLabelVerticalCenter;
  self->_emptyLabelVerticalCenter = v33;

  [(NSLayoutConstraint *)self->_emptyLabelRight setActive:1];
  [(NSLayoutConstraint *)self->_emptyLabelLeft setActive:1];
  [(NSLayoutConstraint *)self->_emptyLabelVerticalBaseline setActive:1];
  [(NSLayoutConstraint *)self->_emptyLabelVerticalCenter setActive:0];
  v35 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_collectionView]|" options:0 metrics:0 views:v26];
  [NSLayoutConstraint activateConstraints:v35];

  v36 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_collectionView]|" options:0 metrics:0 views:v26];
  [NSLayoutConstraint activateConstraints:v36];
}

- (void)reloadData
{
  v3 = [(HWFavoritesPickerView *)self collectionView];
  [v3 reloadData];

  [(HWFavoritesPickerView *)self updateShadowVisiblity];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = HWFavoritesPickerView;
  v4 = a3;
  [(HWFavoritesPickerView *)&v8 traitCollectionDidChange:v4];
  v5 = [(HWFavoritesPickerView *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(HWFavoritesPickerView *)self clearThumbnailCache];
  }
}

- (void)resetScrollPosition
{
  if ([(NSArray *)self->_items count])
  {
    if ([(HWFavoritesPickerView *)self effectiveUserInterfaceLayoutDirection]== &dword_0 + 1)
    {
      v3 = 32;
    }

    else
    {
      v3 = 8;
    }

    collectionView = self->_collectionView;
    v5 = [NSIndexPath indexPathForItem:0 inSection:0];
    [(UICollectionView *)collectionView scrollToItemAtIndexPath:v5 atScrollPosition:v3 animated:0];
  }
}

- (void)setItems:(id)a3
{
  v6 = a3;
  empty = self->_empty;
  if (empty)
  {
    self->_empty = [v6 count] == 0;
  }

  objc_storeStrong(&self->_items, a3);
  [(UICollectionView *)self->_collectionView reloadData];
  if (empty && [(NSArray *)self->_items count]&& [(HWFavoritesPickerView *)self effectiveUserInterfaceLayoutDirection]== &dword_0 + 1)
  {
    [(HWFavoritesPickerView *)self resetScrollPosition];
  }
}

- (void)_longPress:(id)a3
{
  if ([a3 state] == &dword_0 + 1)
  {

    [(HWFavoritesPickerView *)self setEditing:1 animated:1];
  }
}

- (void)setLayoutMode:(unint64_t)a3
{
  if (self->_layoutMode == a3)
  {
    return;
  }

  self->_layoutMode = a3;
  v26 = [(UICollectionView *)self->_collectionView collectionViewLayout];
  if (a3 == 1)
  {
    v6 = qword_323B0;
    v7 = qword_32398;
    v8 = unk_323A0;
    top = *&qword_32330;
    left = *algn_32338;
    right = *(&xmmword_32340 + 1);
    bottom = *&xmmword_32340;
    if (!HWDeviceIsiPhone())
    {
      v22 = *&xmmword_32360;
LABEL_13:
      [v26 setMinimumInteritemSpacing:v22];
      goto LABEL_14;
    }

    [(HWFavoritesPickerView *)self showShadows];
    [(HWFavoritesPickerView *)self updateShadowVisiblity];
  }

  else
  {
    if (a3 == 2)
    {
      v6 = qword_32390;
      v7 = qword_32378;
      v8 = *&qword_32380;
      if (HWDeviceIsiPhone())
      {
        v9 = +[UIScreen mainScreen];
        [v9 bounds];
        v11 = v10;

        v12 = +[UIScreen mainScreen];
        [v12 bounds];
        v14 = v13;

        if (v11 < v14)
        {
          v14 = v11;
        }

        [(HWFavoritesPickerView *)self cellSize];
        v16 = v15;
        [(HWFavoritesPickerView *)self lineSpacing];
        right = (v14 - (v17 + v17 + v16 * 3.0)) * 0.5;
        top = *&qword_32310;
        bottom = *&xmmword_32320;
        left = right;
        goto LABEL_14;
      }

      top = *&qword_32310;
      left = *algn_32318;
      right = *(&xmmword_32320 + 1);
      bottom = *&xmmword_32320;
      v22 = *&qword_32358;
      goto LABEL_13;
    }

    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v7 = 0;
    v8 = 0.0;
    v6 = 0;
  }

LABEL_14:
  [(NSLayoutConstraint *)self->_emptyLabelRight setConstant:*&v6];
  [(NSLayoutConstraint *)self->_emptyLabelLeft setConstant:v8];
  [(NSLayoutConstraint *)self->_emptyLabelVerticalBaseline setConstant:*&v7];
  [(UICollectionView *)self->_collectionView setContentInset:top, left, bottom, right];
  v23 = a3 == 2;
  v24 = a3 == 2;
  v25 = !v23;
  [(NSLayoutConstraint *)self->_emptyLabelVerticalCenter setActive:v25];
  [(NSLayoutConstraint *)self->_emptyLabelVerticalBaseline setActive:v24];
  [(HWFavoritesPickerView *)self layoutIfNeeded];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  editing = self->_editing;
  [(HWFavoritesPickerView *)self setEditing:?];
  if (v5)
  {
    if (HWDeviceIsiPhone())
    {
      v8 = +[UIApplication sharedApplication];
      v9 = [v8 keyWindow];
    }

    else
    {
      v9 = 0;
    }

    v11 = +[UIApplication sharedApplication];
    v12 = [v11 keyWindow];
    v13 = [v12 firstResponder];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;

      v9 = v14;
    }

    if (!v9)
    {
      v15 = [(HWFavoritesPickerView *)self window];

      if (v15)
      {
        v9 = [(HWFavoritesPickerView *)self window];
      }

      else
      {
        v16 = +[UIApplication sharedApplication];
        v9 = [v16 keyWindow];
      }
    }

    SBSSetInterceptsMenuButton();
    if (!self->_homeButtonGestureRecognizer || ([v9 gestureRecognizers], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "containsObject:", self->_homeButtonGestureRecognizer), v17, (v18 & 1) == 0))
    {
      v19 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_homeButtonClicked:"];
      homeButtonGestureRecognizer = self->_homeButtonGestureRecognizer;
      self->_homeButtonGestureRecognizer = v19;

      [(UITapGestureRecognizer *)self->_homeButtonGestureRecognizer setAllowedPressTypes:&off_29BE8];
      [v9 addGestureRecognizer:self->_homeButtonGestureRecognizer];
    }
  }

  else
  {
    v10 = self->_homeButtonGestureRecognizer;
    if (!v10)
    {
      goto LABEL_18;
    }

    v9 = [(UITapGestureRecognizer *)v10 view];
    [v9 removeGestureRecognizer:self->_homeButtonGestureRecognizer];
    SBSSetInterceptsMenuButton();
  }

LABEL_18:
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = [(UICollectionView *)self->_collectionView visibleCells];
  v22 = [v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v27;
    do
    {
      v25 = 0;
      do
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [*(*(&v26 + 1) + 8 * v25) setEditing:v5 animated:v4];
        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v23);
  }

  if (editing != v5 && self->_layoutMode == 1 && HWDeviceIsiPhone())
  {
    [(HWFavoritesPickerView *)self _adjustLayoutForLandscapeEditingMode:v5 animate:v4];
  }

  [(HWFavoritesPickerView *)self updateShadowVisiblity];
}

- (void)_deleteItem:(id)a3
{
  v4 = [a3 tag];
  v5 = [(HWFavoritesPickerView *)self items];
  v6 = [v5 count];

  if (v4 < v6)
  {
    v7 = [(HWFavoritesPickerView *)self items];
    v8 = [v7 objectAtIndex:v4];

    v9 = self->_collectionView;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_B170;
    v13[3] = &unk_287D0;
    v14 = v8;
    v15 = self;
    v16 = v9;
    v17 = v4;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_B258;
    v12[3] = &unk_287F8;
    v12[4] = self;
    v10 = v9;
    v11 = v8;
    [(UICollectionView *)v10 performBatchUpdates:v13 completion:v12];
  }
}

- (void)_cellButtonDown:(id)a3
{
  v4 = [a3 tag];
  v5 = [(HWFavoritesPickerView *)self items];
  v6 = [v5 count];

  if (v4 < v6)
  {
    v8 = [(HWFavoritesPickerView *)self _indexPathForIndex:v4];
    v7 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:v8];
    [v7 setHighlighted:1];
    [(UILongPressGestureRecognizer *)self->_longPressRecognizer setEnabled:0];
  }
}

- (void)_cellButtonUp:(id)a3
{
  v4 = [a3 tag];
  v5 = [(HWFavoritesPickerView *)self items];
  v6 = [v5 count];

  if (v4 < v6)
  {
    v8 = [(HWFavoritesPickerView *)self _indexPathForIndex:v4];
    v7 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:v8];
    [v7 setHighlighted:0];
    [(UILongPressGestureRecognizer *)self->_longPressRecognizer setEnabled:1];
  }
}

- (CGSize)cellSize
{
  v3 = *(&_PlatformSpec + 1);
  v2 = *&_PlatformSpec;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:{@"contentSize", a4, a5, a6}])
  {

    [(HWFavoritesPickerView *)self updateShadowVisiblity];
  }
}

- (BOOL)shouldShowShadows
{
  if (HWDeviceIsiPhone() && self->_layoutMode == 1)
  {
    v3 = [(HWFavoritesPickerView *)self items];
    if ([v3 count])
    {
      v4 = ![(HWFavoritesPickerView *)self isEditing];
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)showShadows
{
  if (!self->_leftShadow && !self->_rightShadow)
  {
    v3 = [UIImage hw_pluginImageNamed:@"shadow"];
    v26 = [v3 resizableImageWithCapInsets:0 resizingMode:{1.0, 0.0, 0.0, 0.0}];

    v4 = [UIImage hw_pluginImageNamed:@"shadow"];
    v25 = [v4 hw_flippedImage];

    v5 = [[UIImageView alloc] initWithImage:v25];
    leftShadow = self->_leftShadow;
    self->_leftShadow = v5;

    [(UIImageView *)self->_leftShadow setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)self->_leftShadow setContentMode:0];
    v7 = [[UIImageView alloc] initWithImage:v26];
    rightShadow = self->_rightShadow;
    self->_rightShadow = v7;

    [(UIImageView *)self->_rightShadow setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)self->_rightShadow setContentMode:0];
    [(HWFavoritesPickerView *)self insertSubview:self->_rightShadow above:self->_collectionView];
    [(HWFavoritesPickerView *)self insertSubview:self->_leftShadow above:self->_collectionView];
    v9 = [(UIImageView *)self->_rightShadow image];
    [v9 size];
    v10 = [NSNumber numberWithDouble:?];

    v11 = _NSDictionaryOfVariableBindings(@"_rightShadow, _leftShadow", self->_rightShadow, self->_leftShadow, 0);
    v12 = _NSDictionaryOfVariableBindings(@"width", v10, 0);
    v13 = [(UIImageView *)self->_leftShadow heightAnchor];
    v14 = [v13 constraintEqualToConstant:*(&_PlatformSpec + 1)];
    [v14 setActive:1];

    v15 = [(UIImageView *)self->_leftShadow centerYAnchor];
    v16 = [(UICollectionView *)self->_collectionView centerYAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    [v17 setActive:1];

    v18 = [(UIImageView *)self->_rightShadow heightAnchor];
    v19 = [v18 constraintEqualToConstant:*(&_PlatformSpec + 1)];
    [v19 setActive:1];

    v20 = [(UIImageView *)self->_rightShadow centerYAnchor];
    v21 = [(UICollectionView *)self->_collectionView centerYAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    [v22 setActive:1];

    v23 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[_rightShadow(width)]|" options:0x10000 metrics:v12 views:v11];
    [NSLayoutConstraint activateConstraints:v23];

    v24 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_leftShadow(width)]" options:0x10000 metrics:v12 views:v11];
    [NSLayoutConstraint activateConstraints:v24];
  }
}

- (void)updateShadowVisiblity
{
  if (self->_leftShadow && self->_rightShadow)
  {
    v3 = [(HWFavoritesPickerView *)self shouldShowShadows];
    [(UICollectionView *)self->_collectionView contentOffset];
    v5 = v4;
    [(UICollectionView *)self->_collectionView contentSize];
    v7 = v6;
    [(UICollectionView *)self->_collectionView frame];
    if (v7 > v8 && v5 + 1.0 + v8 <= v7)
    {
      v9 = v3;
    }

    else
    {
      v9 = 0;
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_B9C8;
    v10[3] = &unk_28820;
    v10[4] = self;
    v11 = (v5 > 0.0) & v3;
    v12 = v9;
    [UIView animateWithDuration:v10 animations:0.18];
  }
}

- (void)_adjustLayoutForLandscapeEditingMode:(BOOL)a3 animate:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(HWFavoritesPickerView *)self delegate];
  [v7 pickerOffsetForEditMode:self];
  v9 = v8;
  [(UICollectionView *)self->_collectionView contentInset];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v30 = v16;
  [(UICollectionView *)self->_collectionView contentOffset];
  v31 = v18;
  v19 = v9 + v13;
  v20 = v17 - v9;
  v21 = v13 - v9;
  v22 = v9 + v17;
  if (v5)
  {
    v23 = v17 - v9;
  }

  else
  {
    v23 = v9 + v17;
  }

  if (v5)
  {
    v24 = v19;
  }

  else
  {
    v24 = v21;
  }

  if (!v4)
  {
    if (v5)
    {
      [v7 pickerDidEnterEditMode:self];
    }

    else
    {
      [v7 pickerDidExitEditMode:self];
    }

    v29 = [(HWFavoritesPickerView *)self collectionView];
    [v29 setContentInset:{v11, v24, v15, v30}];

    v26 = [(HWFavoritesPickerView *)self collectionView];
    v27 = v26;
    v28 = v23;
    goto LABEL_15;
  }

  if (v5)
  {
    [v7 pickerDidEnterEditMode:self];
    v25 = [(HWFavoritesPickerView *)self collectionView];
    [v25 setContentInset:{v11, v19, v15, v30}];

    v26 = [(HWFavoritesPickerView *)self collectionView];
    v27 = v26;
    v28 = v20;
LABEL_15:
    [v26 setContentOffset:{v28, v31}];

    goto LABEL_16;
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_BC4C;
  v32[3] = &unk_28848;
  v33 = v7;
  v34 = self;
  v35 = v11;
  v36 = v21;
  v37 = v15;
  v38 = v30;
  v39 = v22;
  v40 = v31;
  [UIView animateWithDuration:v32 animations:0.09];

LABEL_16:
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(HWFavoritesPickerView *)self isEditing])
  {
    [(HWFavoritesPickerView *)self setEditing:0 animated:1];
  }

  else
  {
    v8 = [(HWFavoritesPickerView *)self selectionHandler];

    if (v8)
    {
      v9 = [(HWFavoritesPickerView *)self items];

      if (v9)
      {
        v10 = [(HWFavoritesPickerView *)self items];
        v11 = [v10 objectAtIndex:{objc_msgSend(v7, "row")}];

        v12 = [(HWFavoritesPickerView *)self selectionHandler];
        (v12)[2](v12, v11);
      }
    }
  }

  v13 = dispatch_time(0, 50000000);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_BE84;
  v16[3] = &unk_28870;
  v17 = v6;
  v18 = v7;
  v14 = v7;
  v15 = v6;
  dispatch_after(v13, &_dispatch_main_q, v16);
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = *(&_PlatformSpec + 1);
  v5 = *&_PlatformSpec;
  result.height = v6;
  result.width = v5;
  return result;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(HWFavoritesPickerView *)self items:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"reuseIdentifier" forIndexPath:v6];
  v8 = [(HWFavoritesPickerView *)self items];

  if (v8)
  {
    v9 = [(HWFavoritesPickerView *)self _indexForIndexPath:v6];
    v10 = [(HWFavoritesPickerView *)self items];
    v11 = [v10 objectAtIndex:v9];

    v12 = [v11 uuid];
    v13 = [v12 UUIDString];
    [v7 setUuidString:v13];

    v14 = [(HWFavoritesPickerView *)self cachedThumbnailForItem:v11 inCell:v7];
    v15 = [v7 imageView];
    [v15 setImage:v14];

    v16 = [v7 deleteButton];
    [v16 setTag:v9];

    v17 = [v7 deleteButton];
    [v17 addTarget:self action:"_cellButtonDown:" forControlEvents:1];

    v18 = [v7 deleteButton];
    [v18 addTarget:self action:"_cellButtonUp:" forControlEvents:192];

    v19 = [v7 deleteButton];
    [v19 addTarget:self action:"_deleteItem:" forControlEvents:64];

    [v7 setEditing:{-[HWFavoritesPickerView isEditing](self, "isEditing")}];
  }

  return v7;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v6 = a4;
  [v6 setEditing:{-[HWFavoritesPickerView isEditing](self, "isEditing")}];
}

- (id)cachedThumbnailForItem:(id)a3 inCell:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 uuid];
  v9 = [v8 UUIDString];

  if (!v9)
  {
    v12 = 0;
    goto LABEL_9;
  }

  v10 = [(NSMutableDictionary *)self->_itemCache objectForKey:v9];
  v11 = +[NSNull null];

  if (v10 == v11)
  {
    goto LABEL_7;
  }

  if (!v10)
  {
    itemCache = self->_itemCache;
    v14 = +[NSNull null];
    [(NSMutableDictionary *)itemCache setObject:v14 forKey:v9];

    objc_initWeak(&location, self);
    objc_initWeak(&from, self->_itemCache);
    objc_initWeak(&v25, v7);
    v15 = [(HWFavoritesPickerView *)self traitCollection];
    v16 = [v15 userInterfaceStyle];

    thumbnailQueue = self->_thumbnailQueue;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_C3CC;
    v19[3] = &unk_288C0;
    v20 = v6;
    v24[1] = v16;
    objc_copyWeak(&v22, &from);
    objc_copyWeak(&v23, &v25);
    v21 = v9;
    objc_copyWeak(v24, &location);
    [(NSOperationQueue *)thumbnailQueue addOperationWithBlock:v19];
    objc_destroyWeak(v24);

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v22);

    objc_destroyWeak(&v25);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v12 = v10;
LABEL_8:

LABEL_9:

  return v12;
}

- (id)_cellViewForUUID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(UICollectionView *)self->_collectionView visibleCells];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v9 uuidString];
          v11 = [v10 isEqualToString:v4];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
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
    v6 = 0;
  }

  return v6;
}

- (void)clearThumbnailCache
{
  [(NSMutableDictionary *)self->_itemCache removeAllObjects];

  [(HWFavoritesPickerView *)self reloadData];
}

- (HWFavoritesPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end