@interface AKFontSizePicker
- (AKFontSizePicker)initWithFrame:(CGRect)frame style:(int64_t)style;
- (CGSize)_itemSizeInContainer;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)_decreaseSize:(id)size;
- (void)_handleValueChanged:(id)changed;
- (void)_increaseSize:(id)size;
- (void)_selectSizeInList;
- (void)_sliderTouchDown:(id)down;
- (void)_sliderTouchUp:(id)up;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)setStyle:(int64_t)style;
- (void)setValue:(double)value;
@end

@implementation AKFontSizePicker

- (AKFontSizePicker)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v9.receiver = self;
  v9.super_class = AKFontSizePicker;
  v5 = [(AKFontSizePicker *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    sizeListValues = v5->_sizeListValues;
    v5->_sizeListValues = &unk_2851BAE60;

    [(AKFontSizePicker *)v6 setStyle:style];
  }

  return v6;
}

- (void)setStyle:(int64_t)style
{
  v69[4] = *MEMORY[0x277D85DE8];
  if (self->_style != style)
  {
    label = [(AKFontSizePicker *)self label];
    [label removeFromSuperview];

    stepper = [(AKFontSizePicker *)self stepper];
    [stepper removeFromSuperview];

    sizeList = [(AKFontSizePicker *)self sizeList];
    [sizeList removeFromSuperview];

    switch(style)
    {
      case 3:
        firstValuea = [MEMORY[0x277D755B8] systemImageNamed:@"textformat.size.smaller"];
        v66 = [MEMORY[0x277D755B8] systemImageNamed:@"textformat.size.larger"];
        v41 = objc_alloc(MEMORY[0x277D75A30]);
        v42 = [v41 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        [v42 setTranslatesAutoresizingMaskIntoConstraints:0];
        LODWORD(v43) = 9.0;
        [v42 setMinimumValue:v43];
        LODWORD(v44) = 1125122048;
        [v42 setMaximumValue:v44];
        [(AKFontSizePicker *)self value];
        *&v45 = v45;
        [v42 setValue:v45];
        [v42 addTarget:self action:sel__handleValueChanged_ forControlEvents:4096];
        [v42 addTarget:self action:sel__sliderTouchUp_ forControlEvents:64];
        [v42 addTarget:self action:sel__sliderTouchUp_ forControlEvents:128];
        [v42 addTarget:self action:sel__sliderTouchUp_ forControlEvents:256];
        [v42 addTarget:self action:sel__sliderTouchDown_ forControlEvents:1];
        [(AKFontSizePicker *)self setSlider:v42];
        v46 = [MEMORY[0x277D75220] buttonWithType:1];
        labelColor = [MEMORY[0x277D75348] labelColor];
        [v46 setTintColor:labelColor];

        [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v46 setImage:firstValuea forState:0];
        v65 = v46;
        [v46 addTarget:self action:sel__decreaseSize_ forControlEvents:64];
        v48 = [MEMORY[0x277D75220] buttonWithType:1];
        labelColor2 = [MEMORY[0x277D75348] labelColor];
        [v48 setTintColor:labelColor2];

        [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v48 setImage:v66 forState:0];
        [v48 addTarget:self action:sel__increaseSize_ forControlEvents:64];
        v50 = objc_alloc_init(MEMORY[0x277D75A68]);
        [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
        [(AKFontSizePicker *)self addSubview:v50];
        [v50 addArrangedSubview:v46];
        [v50 addArrangedSubview:v42];
        [v50 addArrangedSubview:v48];
        [v50 setSpacing:10.0];
        [v50 setAxis:0];
        [v50 setAlignment:3];
        v59 = MEMORY[0x277CCAAD0];
        topAnchor = [v50 topAnchor];
        topAnchor2 = [(AKFontSizePicker *)self topAnchor];
        v62 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v69[0] = v62;
        bottomAnchor = [v50 bottomAnchor];
        bottomAnchor2 = [(AKFontSizePicker *)self bottomAnchor];
        v58 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v69[1] = v58;
        trailingAnchor = [v50 trailingAnchor];
        trailingAnchor2 = [(AKFontSizePicker *)self trailingAnchor];
        v53 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
        v69[2] = v53;
        leadingAnchor = [v50 leadingAnchor];
        leadingAnchor2 = [(AKFontSizePicker *)self leadingAnchor];
        v56 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
        v69[3] = v56;
        v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:4];
        [v59 activateConstraints:v57];

        return;
      case 2:
        firstValue = objc_opt_new();
        [firstValue setScrollDirection:1];
        [firstValue setMinimumInteritemSpacing:0.0];
        [firstValue setMinimumLineSpacing:0.0];
        [(AKFontSizePicker *)self _itemSizeInContainer];
        [firstValue setItemSize:?];
        v24 = objc_alloc(MEMORY[0x277D752A0]);
        [(AKFontSizePicker *)self bounds];
        v25 = [v24 initWithFrame:firstValue collectionViewLayout:?];
        [(AKFontSizePicker *)self setSizeList:v25];

        sizeList2 = [(AKFontSizePicker *)self sizeList];
        [sizeList2 setTranslatesAutoresizingMaskIntoConstraints:0];

        sizeList3 = [(AKFontSizePicker *)self sizeList];
        [sizeList3 setDelegate:self];

        sizeList4 = [(AKFontSizePicker *)self sizeList];
        [sizeList4 setDataSource:self];

        sizeList5 = [(AKFontSizePicker *)self sizeList];
        [sizeList5 setPagingEnabled:1];

        sizeList6 = [(AKFontSizePicker *)self sizeList];
        [sizeList6 setShowsHorizontalScrollIndicator:0];

        sizeList7 = [(AKFontSizePicker *)self sizeList];
        [sizeList7 setShowsVerticalScrollIndicator:0];

        clearColor = [MEMORY[0x277D75348] clearColor];
        sizeList8 = [(AKFontSizePicker *)self sizeList];
        [sizeList8 setBackgroundColor:clearColor];

        sizeList9 = [(AKFontSizePicker *)self sizeList];
        [sizeList9 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"AnnotationKit.fontSizePickerIdentifier"];

        sizeList10 = [(AKFontSizePicker *)self sizeList];
        [(AKFontSizePicker *)self addSubview:sizeList10];

        v36 = _NSDictionaryOfVariableBindings(&cfstr_Sizelist.isa, self->_sizeList, 0);
        v37 = MEMORY[0x277CCAAD0];
        v38 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[_sizeList]|" options:0 metrics:0 views:v36];
        [v37 activateConstraints:v38];

        v39 = MEMORY[0x277CCAAD0];
        v40 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_sizeList]|" options:0 metrics:0 views:v36];
        [v39 activateConstraints:v40];

        break;
      case 1:
        v8 = objc_alloc(MEMORY[0x277D756B8]);
        v9 = *MEMORY[0x277CBF3A0];
        v10 = *(MEMORY[0x277CBF3A0] + 8);
        v11 = *(MEMORY[0x277CBF3A0] + 16);
        v12 = *(MEMORY[0x277CBF3A0] + 24);
        firstValue = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], v10, v11, v12}];
        [firstValue setTranslatesAutoresizingMaskIntoConstraints:0];
        [firstValue setUserInteractionEnabled:0];
        v13 = +[AKTextAttributesViewController fontSizeNumberFormatter];
        v14 = MEMORY[0x277CCABB0];
        [(AKFontSizePicker *)self value];
        v15 = [v14 numberWithDouble:?];
        v16 = [v13 stringFromNumber:v15];
        [firstValue setText:v16];

        [(AKFontSizePicker *)self setLabel:firstValue];
        v17 = [objc_alloc(MEMORY[0x277D75AC0]) initWithFrame:{v9, v10, v11, v12}];
        [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v17 setMinimumValue:4.0];
        [v17 setMaximumValue:200.0];
        [(AKFontSizePicker *)self value];
        [v17 setValue:?];
        [v17 addTarget:self action:sel__handleValueChanged_ forControlEvents:4096];
        [(AKFontSizePicker *)self setStepper:v17];
        [(AKFontSizePicker *)self addSubview:firstValue];
        [(AKFontSizePicker *)self addSubview:v17];
        v18 = _NSDictionaryOfVariableBindings(&cfstr_LabelStepper.isa, firstValue, v17, 0);
        v19 = MEMORY[0x277CCAAD0];
        v20 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[label]|" options:0 metrics:0 views:v18];
        [v19 activateConstraints:v20];

        v21 = [MEMORY[0x277CCAAD0] constraintWithItem:v17 attribute:10 relatedBy:0 toItem:firstValue attribute:10 multiplier:1.0 constant:0.0];
        [v21 setActive:1];

        v22 = MEMORY[0x277CCAAD0];
        v23 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-(16)-[label]-(8)-[stepper]-(16)-|" options:0 metrics:0 views:v18];
        [v22 activateConstraints:v23];

        break;
      default:
        return;
    }
  }
}

- (void)setValue:(double)value
{
  if (self->_value != value)
  {
    self->_value = value;
    v4 = +[AKTextAttributesViewController fontSizeNumberFormatter];
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_value];
    v11 = [v4 stringFromNumber:v5];

    label = [(AKFontSizePicker *)self label];
    [label setText:v11];

    value = self->_value;
    stepper = [(AKFontSizePicker *)self stepper];
    [stepper setValue:value];

    *&value = self->_value;
    slider = [(AKFontSizePicker *)self slider];
    LODWORD(v10) = LODWORD(value);
    [slider setValue:v10];

    [(AKFontSizePicker *)self _selectSizeInList];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([(AKFontSizePicker *)self style]!= 1)
  {
    v20.receiver = self;
    v20.super_class = AKFontSizePicker;
    stepper2 = [(AKFontSizePicker *)&v20 hitTest:eventCopy withEvent:x, y];
    goto LABEL_5;
  }

  stepper = [(AKFontSizePicker *)self stepper];
  [stepper frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v23.origin.x = v10;
  v23.origin.y = v12;
  v23.size.width = v14;
  v23.size.height = v16;
  v22.x = x;
  v22.y = y;
  if (CGRectContainsPoint(v23, v22))
  {
    stepper2 = [(AKFontSizePicker *)self stepper];
LABEL_5:
    v18 = stepper2;
    goto LABEL_7;
  }

  v18 = 0;
LABEL_7:

  return v18;
}

- (void)_handleValueChanged:(id)changed
{
  [changed value];
  [(AKFontSizePicker *)self setValue:v4];

  [(AKFontSizePicker *)self sendActionsForControlEvents:4096];
}

- (void)_sliderTouchDown:(id)down
{
  willBeginTrackingUpdates = [(AKFontSizePicker *)self willBeginTrackingUpdates];

  if (willBeginTrackingUpdates)
  {
    willBeginTrackingUpdates2 = [(AKFontSizePicker *)self willBeginTrackingUpdates];
    willBeginTrackingUpdates2[2]();
  }
}

- (void)_sliderTouchUp:(id)up
{
  didEndTrackingUpdates = [(AKFontSizePicker *)self didEndTrackingUpdates];

  if (didEndTrackingUpdates)
  {
    didEndTrackingUpdates2 = [(AKFontSizePicker *)self didEndTrackingUpdates];
    didEndTrackingUpdates2[2]();
  }
}

- (void)_decreaseSize:(id)size
{
  [(AKFontSizePicker *)self value];
  v5 = fmax(v4 + -1.0, 4.0);
  [(AKFontSizePicker *)self value];
  if (v5 != v6)
  {
    [(AKFontSizePicker *)self setValue:v5];

    [(AKFontSizePicker *)self sendActionsForControlEvents:4096];
  }
}

- (void)_increaseSize:(id)size
{
  [(AKFontSizePicker *)self value];
  v5 = v4 + 1.0;
  if (v5 <= 200.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 200.0;
  }

  [(AKFontSizePicker *)self value];
  if (v6 != v7)
  {
    [(AKFontSizePicker *)self setValue:v6];

    [(AKFontSizePicker *)self sendActionsForControlEvents:4096];
  }
}

- (CGSize)_itemSizeInContainer
{
  sizeListValues = [(AKFontSizePicker *)self sizeListValues];
  v4 = [sizeListValues objectAtIndexedSubscript:0];
  v5 = [v4 count];

  [(AKFontSizePicker *)self frame];
  v6 = (CGRectGetWidth(v10) + v5 * -30.0) / v5 + 30.0;
  [(AKFontSizePicker *)self frame];
  Height = CGRectGetHeight(v11);
  v8 = v6;
  result.height = Height;
  result.width = v8;
  return result;
}

- (void)_selectSizeInList
{
  sizeList = [(AKFontSizePicker *)self sizeList];

  if (sizeList)
  {
    sizeListValues = [(AKFontSizePicker *)self sizeListValues];
    v5 = [sizeListValues count];

    if (v5)
    {
      v6 = 0;
      do
      {
        sizeListValues2 = [(AKFontSizePicker *)self sizeListValues];
        v8 = [sizeListValues2 objectAtIndexedSubscript:v6];

        v9 = MEMORY[0x277CCABB0];
        [(AKFontSizePicker *)self value];
        v10 = [v9 numberWithDouble:?];
        v11 = [v8 indexOfObject:v10];

        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = [MEMORY[0x277CCAA70] indexPathForRow:v11 inSection:v6];
          sizeList2 = [(AKFontSizePicker *)self sizeList];
          [sizeList2 selectItemAtIndexPath:v12 animated:1 scrollPosition:0];
        }

        ++v6;
        sizeListValues3 = [(AKFontSizePicker *)self sizeListValues];
        v15 = [sizeListValues3 count];
      }

      while (v6 < v15);
    }
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  sizeListValues = [(AKFontSizePicker *)self sizeListValues];
  v7 = [sizeListValues objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  v8 = [pathCopy row];

  v9 = [v7 objectAtIndexedSubscript:v8];
  [v9 doubleValue];
  [(AKFontSizePicker *)self setValue:?];

  [(AKFontSizePicker *)self sendActionsForControlEvents:4096];
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  v7 = [view cellForItemAtIndexPath:path];
  contentView = [v7 contentView];
  v5 = [contentView viewWithTag:1001];

  [v5 setHighlighted:0];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [v5 setTextColor:blackColor];
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  sizeListValues = [(AKFontSizePicker *)self sizeListValues];
  v4 = [sizeListValues count];

  return v4;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  sizeListValues = [(AKFontSizePicker *)self sizeListValues];
  v6 = [sizeListValues objectAtIndexedSubscript:section];
  v7 = [v6 count];

  return v7;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"AnnotationKit.fontSizePickerIdentifier" forIndexPath:pathCopy];
  sizeListValues = [(AKFontSizePicker *)self sizeListValues];
  v9 = [sizeListValues objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  v10 = [pathCopy row];

  v11 = [v9 objectAtIndexedSubscript:v10];

  contentView = [v7 contentView];
  v13 = [contentView viewWithTag:1001];

  if (!v13)
  {
    v14 = objc_alloc(MEMORY[0x277D75D18]);
    [v7 bounds];
    v15 = [v14 initWithFrame:?];
    tintColor = [(AKFontSizePicker *)self tintColor];
    [v15 setBackgroundColor:tintColor];

    [v7 setSelectedBackgroundView:v15];
    v17 = objc_alloc(MEMORY[0x277D756B8]);
    v13 = [v17 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v13 setTextAlignment:1];
    [v13 setUserInteractionEnabled:0];
    [v13 setTag:1001];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v13 setHighlightedTextColor:whiteColor];

    contentView2 = [v7 contentView];
    [contentView2 addSubview:v13];
  }

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v11];
  [v13 setText:v20];

  v21 = _NSDictionaryOfVariableBindings(&cfstr_Label_0.isa, v13, 0);
  v22 = MEMORY[0x277CCAAD0];
  v23 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[label]|" options:0 metrics:0 views:v21];
  [v22 activateConstraints:v23];

  v24 = MEMORY[0x277CCAAD0];
  v25 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[label]|" options:0 metrics:0 views:v21];
  [v24 activateConstraints:v25];

  return v7;
}

@end