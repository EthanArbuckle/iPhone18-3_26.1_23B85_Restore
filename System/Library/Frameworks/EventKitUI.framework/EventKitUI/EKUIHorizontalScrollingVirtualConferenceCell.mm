@interface EKUIHorizontalScrollingVirtualConferenceCell
- (EKUIHorizontalScrollingVirtualConferenceCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (VirtualConferenceRoomTypeSelectionDelegate)delegate;
- (double)_heightOfCells;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
@end

@implementation EKUIHorizontalScrollingVirtualConferenceCell

- (EKUIHorizontalScrollingVirtualConferenceCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v53[1] = *MEMORY[0x1E69E9840];
  v51.receiver = self;
  v51.super_class = EKUIHorizontalScrollingVirtualConferenceCell;
  v4 = [(EKUIHorizontalScrollingVirtualConferenceCell *)&v51 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = MEMORY[0x1E6995588];
    v6 = [MEMORY[0x1E6995558] fractionalWidthDimension:0.5];
    v7 = [MEMORY[0x1E6995558] fractionalHeightDimension:1.0];
    v50 = [v5 sizeWithWidthDimension:v6 heightDimension:v7];

    v49 = [MEMORY[0x1E6995578] itemWithLayoutSize:v50];
    v8 = MEMORY[0x1E6995588];
    v9 = [MEMORY[0x1E6995558] fractionalWidthDimension:0.9];
    v10 = [MEMORY[0x1E6995558] fractionalHeightDimension:1.0];
    v48 = [v8 sizeWithWidthDimension:v9 heightDimension:v10];

    v11 = MEMORY[0x1E6995568];
    v53[0] = v49;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
    v47 = [v11 horizontalGroupWithLayoutSize:v48 subitems:v12];

    v46 = [MEMORY[0x1E6995580] sectionWithGroup:v47];
    v13 = [objc_alloc(MEMORY[0x1E69DC808]) initWithSection:v46];
    v45 = objc_alloc_init(MEMORY[0x1E69DC810]);
    [v45 setScrollDirection:1];
    v44 = v13;
    [v13 setConfiguration:v45];
    v14 = objc_alloc(MEMORY[0x1E69DC7F0]);
    v15 = [v14 initWithFrame:v13 collectionViewLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    items = v4->_items;
    v4->_items = v15;

    [(UICollectionView *)v4->_items setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UICollectionView *)v4->_items setDataSource:v4];
    [(UICollectionView *)v4->_items setDelegate:v4];
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(UICollectionView *)v4->_items setBackgroundColor:systemBackgroundColor];

    v18 = v4->_items;
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [(UICollectionView *)v18 registerClass:v19 forCellWithReuseIdentifier:v21];

    contentView = [(EKUIHorizontalScrollingVirtualConferenceCell *)v4 contentView];
    [contentView addSubview:v4->_items];

    v35 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UICollectionView *)v4->_items leadingAnchor];
    contentView2 = [(EKUIHorizontalScrollingVirtualConferenceCell *)v4 contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v52[0] = v40;
    topAnchor = [(UICollectionView *)v4->_items topAnchor];
    contentView3 = [(EKUIHorizontalScrollingVirtualConferenceCell *)v4 contentView];
    topAnchor2 = [contentView3 topAnchor];
    v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v52[1] = v36;
    bottomAnchor = [(UICollectionView *)v4->_items bottomAnchor];
    contentView4 = [(EKUIHorizontalScrollingVirtualConferenceCell *)v4 contentView];
    bottomAnchor2 = [contentView4 bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v52[2] = v24;
    trailingAnchor = [(UICollectionView *)v4->_items trailingAnchor];
    contentView5 = [(EKUIHorizontalScrollingVirtualConferenceCell *)v4 contentView];
    trailingAnchor2 = [contentView5 trailingAnchor];
    v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v52[3] = v28;
    heightAnchor = [(UICollectionView *)v4->_items heightAnchor];
    [(EKUIHorizontalScrollingVirtualConferenceCell *)v4 _heightOfCells];
    v30 = [heightAnchor constraintEqualToConstant:?];
    v52[4] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:5];
    [v35 activateConstraints:v31];
  }

  return v4;
}

- (double)_heightOfCells
{
  [MEMORY[0x1E69669E0] conferenceImageSize];
  v3 = v2 + 14.0;
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v4 _scaledValueForValue:v3];
  v6 = v5 + 16.0;

  return v6;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:pathCopy];

  roomTypes = self->_roomTypes;
  v12 = [pathCopy row];

  v13 = [(NSArray *)roomTypes objectAtIndex:v12];
  [v10 setCurrentRoomType:v13];
  defaultContentConfiguration = [v10 defaultContentConfiguration];
  title = [v13 title];
  [defaultContentConfiguration setText:title];

  textProperties = [defaultContentConfiguration textProperties];
  [textProperties setNumberOfLines:2];

  [defaultContentConfiguration setImageToTextPadding:10.0];
  [MEMORY[0x1E69669E0] conferenceImageSize];
  v18 = v17;
  imageProperties = [defaultContentConfiguration imageProperties];
  [imageProperties setReservedLayoutSize:{v18, v18}];

  imageProperties2 = [defaultContentConfiguration imageProperties];
  [imageProperties2 setMaximumSize:{v18, v18}];

  [v10 setContentConfiguration:defaultContentConfiguration];
  v21 = MEMORY[0x1E69933C0];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __86__EKUIHorizontalScrollingVirtualConferenceCell_collectionView_cellForItemAtIndexPath___block_invoke;
  v27[3] = &unk_1E8441728;
  v22 = v10;
  v28 = v22;
  v29 = defaultContentConfiguration;
  v23 = defaultContentConfiguration;
  [v21 imageForRoomType:v13 completionHandler:v27];
  v24 = v29;
  v25 = v22;

  return v22;
}

void __86__EKUIHorizontalScrollingVirtualConferenceCell_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__EKUIHorizontalScrollingVirtualConferenceCell_collectionView_cellForItemAtIndexPath___block_invoke_2;
  v9[3] = &unk_1E8440C00;
  v10 = *(a1 + 32);
  v11 = v6;
  v12 = *(a1 + 40);
  v13 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __86__EKUIHorizontalScrollingVirtualConferenceCell_collectionView_cellForItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) currentRoomType];
  v3 = [v2 isEqual:*(a1 + 40)];

  if (v3)
  {
    [*(a1 + 48) setImage:*(a1 + 56)];
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);

    [v5 setContentConfiguration:v4];
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(EKUIHorizontalScrollingVirtualConferenceCell *)self delegate];
  roomTypes = self->_roomTypes;
  v7 = [pathCopy row];

  v8 = [(NSArray *)roomTypes objectAtIndex:v7];
  [delegate selectedRoomType:v8];
}

- (VirtualConferenceRoomTypeSelectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end