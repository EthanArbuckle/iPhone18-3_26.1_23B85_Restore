@interface AKFillableShapeStylePicker
- (AKFillableShapeStylePicker)initWithFrame:(CGRect)frame controller:(id)controller;
- (void)_styleButtonPressed:(id)pressed;
- (void)_updateImagesForAnnotationType:(id)type;
- (void)revalidateItems:(id)items;
- (void)setShowFill:(BOOL)fill;
@end

@implementation AKFillableShapeStylePicker

- (AKFillableShapeStylePicker)initWithFrame:(CGRect)frame controller:(id)controller
{
  v24.receiver = self;
  v24.super_class = AKFillableShapeStylePicker;
  v4 = [(AKModernToolbarPicker *)&v24 initWithFrame:controller controller:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    v4->_showFill = 1;
    array = [MEMORY[0x277CBEB18] array];
    if ([&unk_2851BAA10 count])
    {
      v7 = 0;
      v8 = *MEMORY[0x277CBF3A0];
      v9 = *(MEMORY[0x277CBF3A0] + 8);
      v10 = *(MEMORY[0x277CBF3A0] + 16);
      v11 = *(MEMORY[0x277CBF3A0] + 24);
      do
      {
        v12 = [&unk_2851BAA10 objectAtIndexedSubscript:v7];
        integerValue = [v12 integerValue];

        v14 = [[AKToggleButton alloc] initWithFrame:0 templateImage:1 autoUpdatesColor:v8, v9, v10, v11];
        [(NSArray *)array addObject:v14];
        layer = [(AKToggleButton *)v14 layer];
        [layer setCornerRadius:10.0];

        systemFillColor = [MEMORY[0x277D75348] systemFillColor];
        [(AKToggleButton *)v14 setTintColor:systemFillColor];

        [(AKToggleButton *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
        widthAnchor = [(AKToggleButton *)v14 widthAnchor];
        v18 = [widthAnchor constraintEqualToConstant:36.0];
        [v18 setActive:1];

        heightAnchor = [(AKToggleButton *)v14 heightAnchor];
        v20 = [heightAnchor constraintEqualToConstant:36.0];
        [v20 setActive:1];

        [(AKToggleButton *)v14 addTarget:v5 action:sel__styleButtonPressed_ forControlEvents:64];
        [(AKToggleButton *)v14 setTag:integerValue];
        stackview = [(AKModernToolbarPicker *)v5 stackview];
        [stackview addArrangedSubview:v14];

        ++v7;
      }

      while (v7 < [&unk_2851BAA10 count]);
    }

    buttons = v5->_buttons;
    v5->_buttons = array;
  }

  return v5;
}

- (void)setShowFill:(BOOL)fill
{
  self->_showFill = fill;
  stackview = [(AKModernToolbarPicker *)self stackview];
  arrangedSubviews = [stackview arrangedSubviews];
  firstObject = [arrangedSubviews firstObject];
  [firstObject setHidden:!self->_showFill];
}

- (void)_styleButtonPressed:(id)pressed
{
  [pressed tag];

  MEMORY[0x2821F9670](self, sel_setCurrentTag_);
}

- (void)revalidateItems:(id)items
{
  v45 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  controller = [(AKModernToolbarPicker *)self controller];
  allObjects = [itemsCopy allObjects];
  firstObject = [allObjects firstObject];
  [(AKFillableShapeStylePicker *)self _updateImagesForAnnotationType:firstObject];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  stackview = [(AKModernToolbarPicker *)self stackview];
  subviews = [stackview subviews];

  v10 = [subviews countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v40;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v39 + 1) + 8 * i) setSelected:0];
      }

      v11 = [subviews countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v11);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = itemsCopy;
  v15 = [v14 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (!v15)
  {

LABEL_23:
    stackview2 = [(AKModernToolbarPicker *)self stackview];
    arrangedSubviews = [stackview2 arrangedSubviews];
    v25 = [arrangedSubviews objectAtIndex:1];

    stackview3 = [(AKModernToolbarPicker *)self stackview];
    arrangedSubviews2 = [stackview3 arrangedSubviews];
    v30 = [arrangedSubviews2 objectAtIndex:2];

    stackview4 = [(AKModernToolbarPicker *)self stackview];
    arrangedSubviews3 = [stackview4 arrangedSubviews];
    v33 = [arrangedSubviews3 objectAtIndex:3];

    [controller validateSender:v25];
    [controller validateSender:v30];
    [controller validateSender:v33];

    goto LABEL_24;
  }

  v16 = v15;
  v34 = controller;
  v17 = 0;
  v18 = *v36;
  do
  {
    for (j = 0; j != v16; ++j)
    {
      if (*v36 != v18)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v35 + 1) + 8 * j);
      if (objc_opt_respondsToSelector())
      {
        fillColor = [v20 fillColor];
        v22 = fillColor;
        if (fillColor && CGColorGetAlpha([fillColor CGColor]) != 0.0)
        {
          v17 = 1;
        }
      }
    }

    v16 = [v14 countByEnumeratingWithState:&v35 objects:v43 count:16];
  }

  while (v16);

  controller = v34;
  if ((v17 & 1) == 0)
  {
    goto LABEL_23;
  }

  stackview5 = [(AKModernToolbarPicker *)self stackview];
  arrangedSubviews4 = [stackview5 arrangedSubviews];
  v25 = [arrangedSubviews4 objectAtIndex:0];

  [v25 setSelected:1];
LABEL_24:
}

- (void)_updateImagesForAnnotationType:(id)type
{
  v39[4] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = MEMORY[0x277D75C80];
  traitCollection = [(AKFillableShapeStylePicker *)self traitCollection];
  v7 = [v5 traitCollectionWithUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

  objc_opt_class();
  v34 = typeCopy;
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x277D755B8];
    +[AKController akBundle];
    v32 = v9 = @"AK_Attribute_Arrow_Stroke_Thin";
    v30 = [v8 imageNamed:@"AK_Attribute_Arrow_Stroke_Thin" inBundle:? compatibleWithTraitCollection:?];
    v39[0] = v30;
    v33 = @"AK_Attribute_Arrow_Stroke_Thick";
    v10 = @"AK_Attribute_Arrow_Stroke_Medium";
    v11 = v39;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v12 = MEMORY[0x277D755B8];
      v32 = +[AKController akBundle];
      [v12 imageNamed:@"AK_Attribute_Circle_Filled" inBundle:? compatibleWithTraitCollection:?];
      v30 = v33 = @"AK_Attribute_Circle_Stroke_Thick";
      v38 = v30;
      v10 = @"AK_Attribute_Circle_Stroke_Medium";
      v9 = @"AK_Attribute_Circle_Stroke_Thin";
      v11 = &v38;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v26 = MEMORY[0x277D755B8];
        v32 = +[AKController akBundle];
        [v26 imageNamed:@"AK_Attribute_Bubble_Filled" inBundle:? compatibleWithTraitCollection:?];
        v30 = v33 = @"AK_Attribute_Bubble_Stroke_Thick";
        v37 = v30;
        v10 = @"AK_Attribute_Bubble_Stroke_Medium";
        v9 = @"AK_Attribute_Bubble_Stroke_Thin";
        v11 = &v37;
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v28 = MEMORY[0x277D755B8];
        v29 = +[AKController akBundle];
        v32 = v29;
        if (isKindOfClass)
        {
          [v28 imageNamed:@"AK_Attribute_Triangle_Filled" inBundle:v29 compatibleWithTraitCollection:v7];
          v30 = v33 = @"AK_Attribute_Triangle_Stroke_Thick";
          v36 = v30;
          v10 = @"AK_Attribute_Triangle_Stroke_Medium";
          v9 = @"AK_Attribute_Triangle_Stroke_Thin";
          v11 = &v36;
        }

        else
        {
          [v28 imageNamed:@"AK_Attribute_Square_Filled" inBundle:v29 compatibleWithTraitCollection:v7];
          v30 = v33 = @"AK_Attribute_Square_Stroke_Thick";
          v35 = v30;
          v10 = @"AK_Attribute_Square_Stroke_Medium";
          v9 = @"AK_Attribute_Square_Stroke_Thin";
          v11 = &v35;
        }
      }
    }
  }

  v13 = MEMORY[0x277D755B8];
  v14 = +[AKController akBundle];
  v15 = [v13 imageNamed:v9 inBundle:v14 compatibleWithTraitCollection:v7];
  v11[1] = v15;
  v16 = MEMORY[0x277D755B8];
  v17 = +[AKController akBundle];
  v18 = [v16 imageNamed:v10 inBundle:v17 compatibleWithTraitCollection:v7];
  v11[2] = v18;
  v19 = MEMORY[0x277D755B8];
  v20 = +[AKController akBundle];
  v21 = [v19 imageNamed:v33 inBundle:v20 compatibleWithTraitCollection:v7];
  v11[3] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];

  if ([(NSArray *)self->_buttons count])
  {
    v23 = 0;
    do
    {
      v24 = [(NSArray *)self->_buttons objectAtIndexedSubscript:v23];
      v25 = [v22 objectAtIndexedSubscript:v23];
      [v24 setImage:v25 forState:0];
      [v24 setTemplateImage:v25];

      ++v23;
    }

    while (v23 < [(NSArray *)self->_buttons count]);
  }
}

@end