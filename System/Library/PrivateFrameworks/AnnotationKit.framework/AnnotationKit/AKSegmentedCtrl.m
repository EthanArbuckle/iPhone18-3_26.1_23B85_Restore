@interface AKSegmentedCtrl
- (AKSegmentedCtrl)initWithImages:(id)a3;
- (BOOL)isEnabledForSegment:(unint64_t)a3;
- (BOOL)isSelectedForSegment:(unint64_t)a3;
- (id)segmentAtIndex:(unint64_t)a3;
- (id)segmentForTag:(int64_t)a3;
- (int64_t)tagForSegment:(unint64_t)a3;
- (unint64_t)segmentCount;
- (void)_buttonTapped:(id)a3;
- (void)_commonInit;
- (void)_configureForNewImages;
- (void)_setSelected:(BOOL)a3 forSegment:(unint64_t)a4;
- (void)deselectAllSegments;
- (void)selectSegmentWithTag:(int64_t)a3;
- (void)setEnabled:(BOOL)a3 forSegment:(unint64_t)a4;
- (void)setSelected:(BOOL)a3 forSegment:(unint64_t)a4;
- (void)setTag:(int64_t)a3 forSegment:(unint64_t)a4;
@end

@implementation AKSegmentedCtrl

- (AKSegmentedCtrl)initWithImages:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AKSegmentedCtrl;
  v5 = [(AKSegmentedCtrl *)&v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v5)
  {
    v6 = [v4 copy];
    images = v5->_images;
    v5->_images = v6;

    [(AKSegmentedCtrl *)v5 _commonInit];
  }

  return v5;
}

- (void)_commonInit
{
  v3 = [MEMORY[0x277CBEA60] array];
  buttons = self->_buttons;
  self->_buttons = v3;

  self->_selectedSegment = 0x7FFFFFFFFFFFFFFFLL;

  MEMORY[0x2821F9670](self, sel__configureForNewImages);
}

- (void)_configureForNewImages
{
  v59 = *MEMORY[0x277D85DE8];
  [(AKSegmentedCtrl *)self setSelectedSegment:0x7FFFFFFFFFFFFFFFLL];
  buttons = self->_buttons;
  v47 = 480;
  self->_buttons = 0;

  v4 = [(AKSegmentedCtrl *)self subviews];
  [v4 makeObjectsPerformSelector:sel_removeFromSuperview];

  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_images, "count")}];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = self->_images;
  v6 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v54;
    v9 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v54 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v53 + 1) + 8 * i);
        v15 = [[AKToggleButton alloc] initWithFrame:v14 templateImage:1 autoUpdatesColor:v9, v10, v11, v12];
        [(AKToggleButton *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
        [(AKToggleButton *)v15 setShouldTintNormalImage:1];
        v16 = [(AKToggleButton *)v15 layer];
        [v16 setCornerRadius:3.0];

        v17 = [(AKToggleButton *)v15 widthAnchor];
        v18 = [v17 constraintEqualToConstant:29.0];
        [v18 setActive:1];

        v19 = [(AKToggleButton *)v15 heightAnchor];
        v20 = [v19 constraintEqualToConstant:29.0];
        [v20 setActive:1];

        [(AKToggleButton *)v15 setImage:v14 forState:0];
        [(AKToggleButton *)v15 addTarget:self action:sel__buttonTapped_ forControlEvents:64];
        [v5 addObject:v15];
      }

      v7 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v7);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v21 = v5;
  v22 = [v21 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = 0;
    v25 = *v50;
    v26 = *MEMORY[0x277CBF3A0];
    v27 = *(MEMORY[0x277CBF3A0] + 8);
    v28 = *(MEMORY[0x277CBF3A0] + 16);
    v29 = *(MEMORY[0x277CBF3A0] + 24);
    do
    {
      v30 = 0;
      v31 = v24;
      do
      {
        if (*v50 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v32 = *(*(&v49 + 1) + 8 * v30);
        v24 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v26, v27, v28, v29}];
        [(AKSegmentedCtrl *)v24 setTranslatesAutoresizingMaskIntoConstraints:0];
        [(AKSegmentedCtrl *)self addSubview:v24];
        if (v31)
        {
          v33 = 0.0;
          v34 = v24;
          v35 = v31;
          v36 = 2;
        }

        else
        {
          v33 = -10.0;
          v34 = v24;
          v35 = self;
          v36 = 1;
        }

        v37 = [MEMORY[0x277CCAAD0] constraintWithItem:v34 attribute:1 relatedBy:0 toItem:v35 attribute:v36 multiplier:1.0 constant:{v33, v47}];
        [v37 setActive:1];

        v38 = [v21 lastObject];

        if (v32 == v38)
        {
          v39 = [MEMORY[0x277CCAAD0] constraintWithItem:v24 attribute:2 relatedBy:0 toItem:self attribute:2 multiplier:1.0 constant:10.0];
          [v39 setActive:1];
        }

        v40 = [MEMORY[0x277CCAAD0] constraintWithItem:v24 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:0.0];
        [v40 setActive:1];

        v41 = [MEMORY[0x277CCAAD0] constraintWithItem:v24 attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:0.0];
        [v41 setActive:1];

        if (v31)
        {
          v42 = [MEMORY[0x277CCAAD0] constraintWithItem:v24 attribute:7 relatedBy:0 toItem:v31 attribute:7 multiplier:1.0 constant:0.0];
          [v42 setActive:1];
        }

        [(AKSegmentedCtrl *)v24 addSubview:v32];
        v43 = [MEMORY[0x277CCAAD0] constraintWithItem:v32 attribute:9 relatedBy:0 toItem:v24 attribute:9 multiplier:1.0 constant:0.0];
        [v43 setActive:1];

        v44 = [MEMORY[0x277CCAAD0] constraintWithItem:v32 attribute:10 relatedBy:0 toItem:v24 attribute:10 multiplier:1.0 constant:0.0];
        [v44 setActive:1];

        ++v30;
        v31 = v24;
      }

      while (v23 != v30);
      v23 = [v21 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v23);
  }

  v45 = [v21 copy];
  v46 = *(&self->super.super.super.super.isa + v47);
  *(&self->super.super.super.super.isa + v47) = v45;
}

- (void)_buttonTapped:(id)a3
{
  v6 = a3;
  v4 = [(AKSegmentedCtrl *)self buttons];
  v5 = [v4 indexOfObject:v6];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    -[AKSegmentedCtrl _setSelected:forSegment:](self, "_setSelected:forSegment:", [v6 isSelected], v5);
    [(AKSegmentedCtrl *)self sendActionsForControlEvents:4096];
  }
}

- (void)_setSelected:(BOOL)a3 forSegment:(unint64_t)a4
{
  v4 = a3;
  v19 = *MEMORY[0x277D85DE8];
  v6 = [(AKSegmentedCtrl *)self segmentAtIndex:a4];
  if ([v6 isSelected] != v4)
  {
    [v6 setSelected:v4];
  }

  if (![(AKSegmentedCtrl *)self selectionType])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = self->_buttons;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if (v13 != v6 && [*(*(&v14 + 1) + 8 * i) isSelected])
          {
            [v13 setSelected:0];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    if (-[NSMutableOrderedSet count](self->_selectionStack, "count") == 1 && ([v6 isSelected] & 1) == 0)
    {
      [v6 setSelected:1];
    }

    buttons = self->_buttons;
    goto LABEL_20;
  }

  if ([(AKSegmentedCtrl *)self selectionType]== 1)
  {
    buttons = self->_buttons;
LABEL_20:
    [(AKSegmentedCtrl *)self setSelectedSegment:[(NSArray *)buttons indexOfObject:v6, v14]];
  }
}

- (void)setSelected:(BOOL)a3 forSegment:(unint64_t)a4
{
  v5 = a3;
  v7 = [(AKSegmentedCtrl *)self buttons];
  v8 = [v7 count];

  if (v8 <= a4)
  {
    NSLog(&cfstr_SegmentIndexLu.isa, a4);
  }

  else
  {
    v9 = [(AKSegmentedCtrl *)self segmentAtIndex:a4];
    if ([v9 isSelected] != v5)
    {
      [(AKSegmentedCtrl *)self _setSelected:v5 forSegment:a4];
    }
  }
}

- (BOOL)isSelectedForSegment:(unint64_t)a3
{
  v5 = [(AKSegmentedCtrl *)self buttons];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    return 0;
  }

  v7 = [(AKSegmentedCtrl *)self segmentAtIndex:a3];
  v8 = [v7 isSelected];

  return v8;
}

- (void)selectSegmentWithTag:(int64_t)a3
{
  v5 = [(AKSegmentedCtrl *)self segmentForTag:a3];
  v4 = [(NSArray *)self->_buttons indexOfObject:v5];
  if (([v5 isSelected] & 1) == 0)
  {
    [(AKSegmentedCtrl *)self _setSelected:1 forSegment:v4];
  }
}

- (void)deselectAllSegments
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(AKSegmentedCtrl *)self selectionType]== 1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [(AKSegmentedCtrl *)self buttons];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v9 + 1) + 8 * i);
          if ([v8 isSelected])
          {
            [(AKSegmentedCtrl *)self _setSelected:0 forSegment:[(NSArray *)self->_buttons indexOfObject:v8]];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

- (void)setEnabled:(BOOL)a3 forSegment:(unint64_t)a4
{
  v4 = a3;
  v5 = [(AKSegmentedCtrl *)self segmentAtIndex:a4];
  [v5 setEnabled:v4];
}

- (BOOL)isEnabledForSegment:(unint64_t)a3
{
  v3 = [(AKSegmentedCtrl *)self segmentAtIndex:a3];
  v4 = [v3 isEnabled];

  return v4;
}

- (id)segmentAtIndex:(unint64_t)a3
{
  v5 = [(AKSegmentedCtrl *)self buttons];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(AKSegmentedCtrl *)self buttons];
    v8 = [v7 objectAtIndexedSubscript:a3];
  }

  return v8;
}

- (void)setTag:(int64_t)a3 forSegment:(unint64_t)a4
{
  v5 = [(AKSegmentedCtrl *)self segmentAtIndex:a4];
  [v5 setTag:a3];
}

- (int64_t)tagForSegment:(unint64_t)a3
{
  v3 = [(AKSegmentedCtrl *)self segmentAtIndex:a3];
  v4 = [v3 tag];

  return v4;
}

- (id)segmentForTag:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_buttons;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 tag] == a3)
        {
          v11 = v10;

          v7 = v11;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)segmentCount
{
  v2 = [(AKSegmentedCtrl *)self buttons];
  v3 = [v2 count];

  return v3;
}

@end