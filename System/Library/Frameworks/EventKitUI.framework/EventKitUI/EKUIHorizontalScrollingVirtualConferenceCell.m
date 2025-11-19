@interface EKUIHorizontalScrollingVirtualConferenceCell
- (EKUIHorizontalScrollingVirtualConferenceCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (VirtualConferenceRoomTypeSelectionDelegate)delegate;
- (double)_heightOfCells;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
@end

@implementation EKUIHorizontalScrollingVirtualConferenceCell

- (EKUIHorizontalScrollingVirtualConferenceCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v53[1] = *MEMORY[0x1E69E9840];
  v51.receiver = self;
  v51.super_class = EKUIHorizontalScrollingVirtualConferenceCell;
  v4 = [(EKUIHorizontalScrollingVirtualConferenceCell *)&v51 initWithStyle:a3 reuseIdentifier:a4];
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
    v17 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(UICollectionView *)v4->_items setBackgroundColor:v17];

    v18 = v4->_items;
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [(UICollectionView *)v18 registerClass:v19 forCellWithReuseIdentifier:v21];

    v22 = [(EKUIHorizontalScrollingVirtualConferenceCell *)v4 contentView];
    [v22 addSubview:v4->_items];

    v35 = MEMORY[0x1E696ACD8];
    v42 = [(UICollectionView *)v4->_items leadingAnchor];
    v43 = [(EKUIHorizontalScrollingVirtualConferenceCell *)v4 contentView];
    v41 = [v43 leadingAnchor];
    v40 = [v42 constraintEqualToAnchor:v41];
    v52[0] = v40;
    v38 = [(UICollectionView *)v4->_items topAnchor];
    v39 = [(EKUIHorizontalScrollingVirtualConferenceCell *)v4 contentView];
    v37 = [v39 topAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v52[1] = v36;
    v33 = [(UICollectionView *)v4->_items bottomAnchor];
    v34 = [(EKUIHorizontalScrollingVirtualConferenceCell *)v4 contentView];
    v23 = [v34 bottomAnchor];
    v24 = [v33 constraintEqualToAnchor:v23];
    v52[2] = v24;
    v25 = [(UICollectionView *)v4->_items trailingAnchor];
    v26 = [(EKUIHorizontalScrollingVirtualConferenceCell *)v4 contentView];
    v27 = [v26 trailingAnchor];
    v28 = [v25 constraintEqualToAnchor:v27];
    v52[3] = v28;
    v29 = [(UICollectionView *)v4->_items heightAnchor];
    [(EKUIHorizontalScrollingVirtualConferenceCell *)v4 _heightOfCells];
    v30 = [v29 constraintEqualToConstant:?];
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

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v6];

  roomTypes = self->_roomTypes;
  v12 = [v6 row];

  v13 = [(NSArray *)roomTypes objectAtIndex:v12];
  [v10 setCurrentRoomType:v13];
  v14 = [v10 defaultContentConfiguration];
  v15 = [v13 title];
  [v14 setText:v15];

  v16 = [v14 textProperties];
  [v16 setNumberOfLines:2];

  [v14 setImageToTextPadding:10.0];
  [MEMORY[0x1E69669E0] conferenceImageSize];
  v18 = v17;
  v19 = [v14 imageProperties];
  [v19 setReservedLayoutSize:{v18, v18}];

  v20 = [v14 imageProperties];
  [v20 setMaximumSize:{v18, v18}];

  [v10 setContentConfiguration:v14];
  v21 = MEMORY[0x1E69933C0];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __86__EKUIHorizontalScrollingVirtualConferenceCell_collectionView_cellForItemAtIndexPath___block_invoke;
  v27[3] = &unk_1E8441728;
  v22 = v10;
  v28 = v22;
  v29 = v14;
  v23 = v14;
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

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v9 = [(EKUIHorizontalScrollingVirtualConferenceCell *)self delegate];
  roomTypes = self->_roomTypes;
  v7 = [v5 row];

  v8 = [(NSArray *)roomTypes objectAtIndex:v7];
  [v9 selectedRoomType:v8];
}

- (VirtualConferenceRoomTypeSelectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end