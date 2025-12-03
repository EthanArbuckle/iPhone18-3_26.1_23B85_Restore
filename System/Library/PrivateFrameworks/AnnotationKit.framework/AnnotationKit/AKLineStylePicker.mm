@interface AKLineStylePicker
- (AKLineStylePicker)initWithFrame:(CGRect)frame lineType:(unint64_t)type controller:(id)controller;
- (id)_buttonImagesForType:(unint64_t)type;
- (int64_t)_shapeTagForType:(unint64_t)type;
- (void)_styleButtonPressed:(id)pressed;
- (void)revalidateItems:(id)items;
@end

@implementation AKLineStylePicker

- (AKLineStylePicker)initWithFrame:(CGRect)frame lineType:(unint64_t)type controller:(id)controller
{
  v26.receiver = self;
  v26.super_class = AKLineStylePicker;
  v6 = [(AKModernToolbarPicker *)&v26 initWithFrame:controller controller:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v7 = v6;
  if (v6)
  {
    v6->_lineType = type;
    v6->_lineStyle = [(AKLineStylePicker *)v6 _shapeTagForType:type];
    v8 = [(AKLineStylePicker *)v7 _buttonImagesForType:type];
    if ([v8 count])
    {
      v9 = 0;
      v10 = *MEMORY[0x277CBF3A0];
      v11 = *(MEMORY[0x277CBF3A0] + 8);
      v12 = *(MEMORY[0x277CBF3A0] + 16);
      v13 = *(MEMORY[0x277CBF3A0] + 24);
      do
      {
        v14 = [v8 objectAtIndexedSubscript:v9];
        v15 = [&unk_2851BA9F8 objectAtIndexedSubscript:v9];
        integerValue = [v15 integerValue];

        v17 = [[AKToggleButton alloc] initWithFrame:v14 templateImage:1 autoUpdatesColor:v10, v11, v12, v13];
        layer = [(AKToggleButton *)v17 layer];
        [layer setCornerRadius:10.0];

        systemFillColor = [MEMORY[0x277D75348] systemFillColor];
        [(AKToggleButton *)v17 setTintColor:systemFillColor];

        [(AKToggleButton *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
        widthAnchor = [(AKToggleButton *)v17 widthAnchor];
        v21 = [widthAnchor constraintEqualToConstant:36.0];
        [v21 setActive:1];

        heightAnchor = [(AKToggleButton *)v17 heightAnchor];
        v23 = [heightAnchor constraintEqualToConstant:36.0];
        [v23 setActive:1];

        [(AKToggleButton *)v17 addTarget:v7 action:sel__styleButtonPressed_ forControlEvents:64];
        [(AKToggleButton *)v17 setImage:v14 forState:0];
        [(AKToggleButton *)v17 setTag:integerValue];
        stackview = [(AKModernToolbarPicker *)v7 stackview];
        [stackview addArrangedSubview:v17];

        ++v9;
      }

      while (v9 < [v8 count]);
    }
  }

  return v7;
}

- (void)_styleButtonPressed:(id)pressed
{
  [pressed tag];

  MEMORY[0x2821F9670](self, sel_setCurrentTag_);
}

- (int64_t)_shapeTagForType:(unint64_t)type
{
  if (type > 2)
  {
    return 0;
  }

  else
  {
    return qword_23F4D8F18[type];
  }
}

- (id)_buttonImagesForType:(unint64_t)type
{
  v25[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D75C80];
  traitCollection = [(AKLineStylePicker *)self traitCollection];
  v6 = [v4 traitCollectionWithUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

  switch(type)
  {
    case 2uLL:
      v14 = MEMORY[0x277D755B8];
      v8 = +[AKController akBundle];
      v9 = [v14 imageNamed:@"AK_Attribute_ArrowDouble_Stroke_Thin" inBundle:v8 compatibleWithTraitCollection:v6];
      v23 = v9;
      v10 = @"AK_Attribute_ArrowDouble_Stroke_Thick";
      v11 = @"AK_Attribute_ArrowDouble_Stroke_Medium";
      v12 = &v23;
      goto LABEL_7;
    case 1uLL:
      v13 = MEMORY[0x277D755B8];
      v8 = +[AKController akBundle];
      v9 = [v13 imageNamed:@"AK_Attribute_Arrow_Stroke_Thin" inBundle:v8 compatibleWithTraitCollection:v6];
      v24 = v9;
      v10 = @"AK_Attribute_Arrow_Stroke_Thick";
      v11 = @"AK_Attribute_Arrow_Stroke_Medium";
      v12 = &v24;
      goto LABEL_7;
    case 0uLL:
      v7 = MEMORY[0x277D755B8];
      v8 = +[AKController akBundle];
      v9 = [v7 imageNamed:@"AK_Attribute_Line_Stroke_Thin" inBundle:v8 compatibleWithTraitCollection:v6];
      v25[0] = v9;
      v10 = @"AK_Attribute_Line_Stroke_Thick";
      v11 = @"AK_Attribute_Line_Stroke_Medium";
      v12 = v25;
LABEL_7:
      v15 = MEMORY[0x277D755B8];
      v16 = +[AKController akBundle];
      v17 = [v15 imageNamed:v11 inBundle:v16 compatibleWithTraitCollection:v6];
      v12[1] = v17;
      v18 = MEMORY[0x277D755B8];
      v19 = +[AKController akBundle];
      v20 = [v18 imageNamed:v10 inBundle:v19 compatibleWithTraitCollection:v6];
      v12[2] = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];

      goto LABEL_9;
  }

  v21 = 0;
LABEL_9:

  return v21;
}

- (void)revalidateItems:(id)items
{
  controller = [(AKModernToolbarPicker *)self controller];
  v4 = [MEMORY[0x277D75220] buttonWithType:0];
  [v4 setTag:self->_lineStyle];
  [controller validateSender:v4];
  isSelected = [v4 isSelected];
  stackview = [(AKModernToolbarPicker *)self stackview];
  subviews = [stackview subviews];
  v8 = [subviews count];

  if (v8)
  {
    v9 = 0;
    do
    {
      stackview2 = [(AKModernToolbarPicker *)self stackview];
      subviews2 = [stackview2 subviews];
      v12 = [subviews2 objectAtIndexedSubscript:v9];

      [v12 setSelected:0];
      [controller validateSender:v12];
      [v12 setSelected:{objc_msgSend(v12, "isSelected") & isSelected}];

      ++v9;
      stackview3 = [(AKModernToolbarPicker *)self stackview];
      subviews3 = [stackview3 subviews];
      v15 = [subviews3 count];
    }

    while (v9 < v15);
  }
}

@end