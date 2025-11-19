@interface AKLineStylePicker
- (AKLineStylePicker)initWithFrame:(CGRect)a3 lineType:(unint64_t)a4 controller:(id)a5;
- (id)_buttonImagesForType:(unint64_t)a3;
- (int64_t)_shapeTagForType:(unint64_t)a3;
- (void)_styleButtonPressed:(id)a3;
- (void)revalidateItems:(id)a3;
@end

@implementation AKLineStylePicker

- (AKLineStylePicker)initWithFrame:(CGRect)a3 lineType:(unint64_t)a4 controller:(id)a5
{
  v26.receiver = self;
  v26.super_class = AKLineStylePicker;
  v6 = [(AKModernToolbarPicker *)&v26 initWithFrame:a5 controller:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v7 = v6;
  if (v6)
  {
    v6->_lineType = a4;
    v6->_lineStyle = [(AKLineStylePicker *)v6 _shapeTagForType:a4];
    v8 = [(AKLineStylePicker *)v7 _buttonImagesForType:a4];
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
        v16 = [v15 integerValue];

        v17 = [[AKToggleButton alloc] initWithFrame:v14 templateImage:1 autoUpdatesColor:v10, v11, v12, v13];
        v18 = [(AKToggleButton *)v17 layer];
        [v18 setCornerRadius:10.0];

        v19 = [MEMORY[0x277D75348] systemFillColor];
        [(AKToggleButton *)v17 setTintColor:v19];

        [(AKToggleButton *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
        v20 = [(AKToggleButton *)v17 widthAnchor];
        v21 = [v20 constraintEqualToConstant:36.0];
        [v21 setActive:1];

        v22 = [(AKToggleButton *)v17 heightAnchor];
        v23 = [v22 constraintEqualToConstant:36.0];
        [v23 setActive:1];

        [(AKToggleButton *)v17 addTarget:v7 action:sel__styleButtonPressed_ forControlEvents:64];
        [(AKToggleButton *)v17 setImage:v14 forState:0];
        [(AKToggleButton *)v17 setTag:v16];
        v24 = [(AKModernToolbarPicker *)v7 stackview];
        [v24 addArrangedSubview:v17];

        ++v9;
      }

      while (v9 < [v8 count]);
    }
  }

  return v7;
}

- (void)_styleButtonPressed:(id)a3
{
  [a3 tag];

  MEMORY[0x2821F9670](self, sel_setCurrentTag_);
}

- (int64_t)_shapeTagForType:(unint64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return qword_23F4D8F18[a3];
  }
}

- (id)_buttonImagesForType:(unint64_t)a3
{
  v25[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D75C80];
  v5 = [(AKLineStylePicker *)self traitCollection];
  v6 = [v4 traitCollectionWithUserInterfaceStyle:{objc_msgSend(v5, "userInterfaceStyle")}];

  switch(a3)
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

- (void)revalidateItems:(id)a3
{
  v16 = [(AKModernToolbarPicker *)self controller];
  v4 = [MEMORY[0x277D75220] buttonWithType:0];
  [v4 setTag:self->_lineStyle];
  [v16 validateSender:v4];
  v5 = [v4 isSelected];
  v6 = [(AKModernToolbarPicker *)self stackview];
  v7 = [v6 subviews];
  v8 = [v7 count];

  if (v8)
  {
    v9 = 0;
    do
    {
      v10 = [(AKModernToolbarPicker *)self stackview];
      v11 = [v10 subviews];
      v12 = [v11 objectAtIndexedSubscript:v9];

      [v12 setSelected:0];
      [v16 validateSender:v12];
      [v12 setSelected:{objc_msgSend(v12, "isSelected") & v5}];

      ++v9;
      v13 = [(AKModernToolbarPicker *)self stackview];
      v14 = [v13 subviews];
      v15 = [v14 count];
    }

    while (v9 < v15);
  }
}

@end