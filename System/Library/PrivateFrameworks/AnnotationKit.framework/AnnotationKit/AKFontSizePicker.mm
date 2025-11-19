@interface AKFontSizePicker
- (AKFontSizePicker)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (CGSize)_itemSizeInContainer;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)_decreaseSize:(id)a3;
- (void)_handleValueChanged:(id)a3;
- (void)_increaseSize:(id)a3;
- (void)_selectSizeInList;
- (void)_sliderTouchDown:(id)a3;
- (void)_sliderTouchUp:(id)a3;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)setStyle:(int64_t)a3;
- (void)setValue:(double)a3;
@end

@implementation AKFontSizePicker

- (AKFontSizePicker)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  v9.receiver = self;
  v9.super_class = AKFontSizePicker;
  v5 = [(AKFontSizePicker *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    sizeListValues = v5->_sizeListValues;
    v5->_sizeListValues = &unk_2851BAE60;

    [(AKFontSizePicker *)v6 setStyle:a4];
  }

  return v6;
}

- (void)setStyle:(int64_t)a3
{
  v69[4] = *MEMORY[0x277D85DE8];
  if (self->_style != a3)
  {
    v5 = [(AKFontSizePicker *)self label];
    [v5 removeFromSuperview];

    v6 = [(AKFontSizePicker *)self stepper];
    [v6 removeFromSuperview];

    v7 = [(AKFontSizePicker *)self sizeList];
    [v7 removeFromSuperview];

    switch(a3)
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
        v47 = [MEMORY[0x277D75348] labelColor];
        [v46 setTintColor:v47];

        [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v46 setImage:firstValuea forState:0];
        v65 = v46;
        [v46 addTarget:self action:sel__decreaseSize_ forControlEvents:64];
        v48 = [MEMORY[0x277D75220] buttonWithType:1];
        v49 = [MEMORY[0x277D75348] labelColor];
        [v48 setTintColor:v49];

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
        v64 = [v50 topAnchor];
        v63 = [(AKFontSizePicker *)self topAnchor];
        v62 = [v64 constraintEqualToAnchor:v63];
        v69[0] = v62;
        v61 = [v50 bottomAnchor];
        v60 = [(AKFontSizePicker *)self bottomAnchor];
        v58 = [v61 constraintEqualToAnchor:v60];
        v69[1] = v58;
        v51 = [v50 trailingAnchor];
        v52 = [(AKFontSizePicker *)self trailingAnchor];
        v53 = [v51 constraintEqualToAnchor:v52 constant:-10.0];
        v69[2] = v53;
        v54 = [v50 leadingAnchor];
        v55 = [(AKFontSizePicker *)self leadingAnchor];
        v56 = [v54 constraintEqualToAnchor:v55 constant:10.0];
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

        v26 = [(AKFontSizePicker *)self sizeList];
        [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

        v27 = [(AKFontSizePicker *)self sizeList];
        [v27 setDelegate:self];

        v28 = [(AKFontSizePicker *)self sizeList];
        [v28 setDataSource:self];

        v29 = [(AKFontSizePicker *)self sizeList];
        [v29 setPagingEnabled:1];

        v30 = [(AKFontSizePicker *)self sizeList];
        [v30 setShowsHorizontalScrollIndicator:0];

        v31 = [(AKFontSizePicker *)self sizeList];
        [v31 setShowsVerticalScrollIndicator:0];

        v32 = [MEMORY[0x277D75348] clearColor];
        v33 = [(AKFontSizePicker *)self sizeList];
        [v33 setBackgroundColor:v32];

        v34 = [(AKFontSizePicker *)self sizeList];
        [v34 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"AnnotationKit.fontSizePickerIdentifier"];

        v35 = [(AKFontSizePicker *)self sizeList];
        [(AKFontSizePicker *)self addSubview:v35];

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

- (void)setValue:(double)a3
{
  if (self->_value != a3)
  {
    self->_value = a3;
    v4 = +[AKTextAttributesViewController fontSizeNumberFormatter];
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_value];
    v11 = [v4 stringFromNumber:v5];

    v6 = [(AKFontSizePicker *)self label];
    [v6 setText:v11];

    value = self->_value;
    v8 = [(AKFontSizePicker *)self stepper];
    [v8 setValue:value];

    *&value = self->_value;
    v9 = [(AKFontSizePicker *)self slider];
    LODWORD(v10) = LODWORD(value);
    [v9 setValue:v10];

    [(AKFontSizePicker *)self _selectSizeInList];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(AKFontSizePicker *)self style]!= 1)
  {
    v20.receiver = self;
    v20.super_class = AKFontSizePicker;
    v17 = [(AKFontSizePicker *)&v20 hitTest:v7 withEvent:x, y];
    goto LABEL_5;
  }

  v8 = [(AKFontSizePicker *)self stepper];
  [v8 frame];
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
    v17 = [(AKFontSizePicker *)self stepper];
LABEL_5:
    v18 = v17;
    goto LABEL_7;
  }

  v18 = 0;
LABEL_7:

  return v18;
}

- (void)_handleValueChanged:(id)a3
{
  [a3 value];
  [(AKFontSizePicker *)self setValue:v4];

  [(AKFontSizePicker *)self sendActionsForControlEvents:4096];
}

- (void)_sliderTouchDown:(id)a3
{
  v4 = [(AKFontSizePicker *)self willBeginTrackingUpdates];

  if (v4)
  {
    v5 = [(AKFontSizePicker *)self willBeginTrackingUpdates];
    v5[2]();
  }
}

- (void)_sliderTouchUp:(id)a3
{
  v4 = [(AKFontSizePicker *)self didEndTrackingUpdates];

  if (v4)
  {
    v5 = [(AKFontSizePicker *)self didEndTrackingUpdates];
    v5[2]();
  }
}

- (void)_decreaseSize:(id)a3
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

- (void)_increaseSize:(id)a3
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
  v3 = [(AKFontSizePicker *)self sizeListValues];
  v4 = [v3 objectAtIndexedSubscript:0];
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
  v3 = [(AKFontSizePicker *)self sizeList];

  if (v3)
  {
    v4 = [(AKFontSizePicker *)self sizeListValues];
    v5 = [v4 count];

    if (v5)
    {
      v6 = 0;
      do
      {
        v7 = [(AKFontSizePicker *)self sizeListValues];
        v8 = [v7 objectAtIndexedSubscript:v6];

        v9 = MEMORY[0x277CCABB0];
        [(AKFontSizePicker *)self value];
        v10 = [v9 numberWithDouble:?];
        v11 = [v8 indexOfObject:v10];

        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = [MEMORY[0x277CCAA70] indexPathForRow:v11 inSection:v6];
          v13 = [(AKFontSizePicker *)self sizeList];
          [v13 selectItemAtIndexPath:v12 animated:1 scrollPosition:0];
        }

        ++v6;
        v14 = [(AKFontSizePicker *)self sizeListValues];
        v15 = [v14 count];
      }

      while (v6 < v15);
    }
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(AKFontSizePicker *)self sizeListValues];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
  v8 = [v5 row];

  v9 = [v7 objectAtIndexedSubscript:v8];
  [v9 doubleValue];
  [(AKFontSizePicker *)self setValue:?];

  [(AKFontSizePicker *)self sendActionsForControlEvents:4096];
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v7 = [a3 cellForItemAtIndexPath:a4];
  v4 = [v7 contentView];
  v5 = [v4 viewWithTag:1001];

  [v5 setHighlighted:0];
  v6 = [MEMORY[0x277D75348] blackColor];
  [v5 setTextColor:v6];
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v3 = [(AKFontSizePicker *)self sizeListValues];
  v4 = [v3 count];

  return v4;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = [(AKFontSizePicker *)self sizeListValues];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 count];

  return v7;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"AnnotationKit.fontSizePickerIdentifier" forIndexPath:v6];
  v8 = [(AKFontSizePicker *)self sizeListValues];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];
  v10 = [v6 row];

  v11 = [v9 objectAtIndexedSubscript:v10];

  v12 = [v7 contentView];
  v13 = [v12 viewWithTag:1001];

  if (!v13)
  {
    v14 = objc_alloc(MEMORY[0x277D75D18]);
    [v7 bounds];
    v15 = [v14 initWithFrame:?];
    v16 = [(AKFontSizePicker *)self tintColor];
    [v15 setBackgroundColor:v16];

    [v7 setSelectedBackgroundView:v15];
    v17 = objc_alloc(MEMORY[0x277D756B8]);
    v13 = [v17 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v13 setTextAlignment:1];
    [v13 setUserInteractionEnabled:0];
    [v13 setTag:1001];
    v18 = [MEMORY[0x277D75348] whiteColor];
    [v13 setHighlightedTextColor:v18];

    v19 = [v7 contentView];
    [v19 addSubview:v13];
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