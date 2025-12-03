@interface RouteStepLabelListView
+ (double)heightForWidth:(double)width route:(id)route step:(id)step idiom:(int64_t)idiom;
+ (id)_spacingForNumberOfStrings:(unint64_t)strings isEVStep:(BOOL)step;
+ (id)colorsForStrings:(id)strings route:(id)route step:(id)step tableMode:(BOOL)mode;
+ (id)fontsForStrings:(id)strings route:(id)route step:(id)step tableMode:(BOOL)mode;
- (RouteStepLabelListView)initWithRoute:(id)route step:(id)step tableMode:(BOOL)mode;
- (id)attributedStringForString:(id)string inStrings:(id)strings forStep:(id)step font:(id)font;
- (void)layoutToFitSize:(CGSize)size;
- (void)setRoute:(id)route step:(id)step tableMode:(BOOL)mode;
@end

@implementation RouteStepLabelListView

- (void)layoutToFitSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [objc_opt_class() _spacingForNumberOfStrings:-[NSMutableArray count](self->super._labels isEVStep:{"count"), self->_isEVStep}];
  v7.receiver = self;
  v7.super_class = RouteStepLabelListView;
  [(LabelListView *)&v7 layoutToFitSize:v6 spacings:width, height];
}

- (void)setRoute:(id)route step:(id)step tableMode:(BOOL)mode
{
  modeCopy = mode;
  routeCopy = route;
  stepCopy = step;
  self->_isEVStep = [stepCopy isEVChargerStep];
  [(RouteStepLabelListView *)self setTableMode:modeCopy];
  v9 = [(NSMutableArray *)self->super._labels count];
  v10 = objc_opt_class();
  v11 = [v10 stringsForRoute:routeCopy step:stepCopy tableMode:modeCopy];
  v37 = [v10 voiceOverStringsForRoute:routeCopy step:stepCopy tableMode:modeCopy];
  v12 = [v10 fontsForStrings:v11 route:routeCopy step:stepCopy tableMode:modeCopy];
  v39 = stepCopy;
  v40 = [v10 colorsForStrings:v11 route:routeCopy step:stepCopy tableMode:modeCopy];
  v13 = [v11 count];
  v14 = v13;
  v41 = v12;
  if (v13 >= v9)
  {
    v16 = v37;
    if (v13 > v9)
    {
      v17 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
      v18 = v9;
      v36 = v13;
      do
      {
        v19 = [v11 objectAtIndexedSubscript:v18];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = [v12 objectAtIndexedSubscript:v18];
          v21 = [(RouteStepLabelListView *)self attributedStringForString:v19 inStrings:v11 forStep:v39 font:v20];

          v22 = [v16 objectAtIndexedSubscript:v18];
          v23 = [v41 objectAtIndexedSubscript:v18];
          [v40 objectAtIndexedSubscript:v18];
          v25 = v24 = v17;
          [(LabelListView *)self addLabelWithText:v19 attributedText:v21 accessibilityText:v22 font:v23 color:v25];

          v17 = v24;
          v16 = v37;

          v12 = v41;
          v14 = v36;
        }

        ++v18;
      }

      while (v14 != v18);
      v14 = v9;
    }
  }

  else
  {
    do
    {
      lastObject = [(NSMutableArray *)self->super._labels lastObject];
      [lastObject removeFromSuperview];
      [(NSMutableArray *)self->super._labels removeLastObject];

      --v9;
    }

    while (v9 > v14);
    v16 = v37;
  }

  if (v14)
  {
    v26 = 0;
    do
    {
      v27 = v14;
      v28 = [(NSMutableArray *)self->super._labels objectAtIndexedSubscript:v26];
      v29 = [v11 objectAtIndexedSubscript:v26];
      v30 = [v12 objectAtIndexedSubscript:v26];
      v31 = [(RouteStepLabelListView *)self attributedStringForString:v29 inStrings:v11 forStep:v39 font:v30];

      if (v31)
      {
        [v28 setAttributedText:v31];
      }

      else
      {
        v32 = [v11 objectAtIndexedSubscript:v26];
        [v28 setText:v32];
      }

      v33 = [v16 objectAtIndexedSubscript:v26];
      [v28 setAccessibilityLabel:v33];

      v12 = v41;
      v34 = [v41 objectAtIndexedSubscript:v26];
      [v28 setFont:v34];

      v35 = [v40 objectAtIndexedSubscript:v26];
      [v28 setTextColor:v35];

      ++v26;
      v14 = v27;
    }

    while (v27 != v26);
  }
}

- (RouteStepLabelListView)initWithRoute:(id)route step:(id)step tableMode:(BOOL)mode
{
  modeCopy = mode;
  routeCopy = route;
  stepCopy = step;
  v31.receiver = self;
  v31.super_class = RouteStepLabelListView;
  v10 = [(LabelListView *)&v31 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v11 = v10;
  if (v10)
  {
    [(RouteStepLabelListView *)v10 setAccessibilityIdentifier:@"RouteStepLabelList"];
    v11->_isEVStep = [stepCopy isEVChargerStep];
    v12 = objc_opt_class();
    v30 = v11;
    [(RouteStepLabelListView *)v11 setTableMode:modeCopy];
    v13 = [v12 stringsForRoute:routeCopy step:stepCopy tableMode:modeCopy];
    v29 = [v12 voiceOverStringsForRoute:routeCopy step:stepCopy tableMode:modeCopy];
    v28 = [v12 fontsForStrings:v13 route:routeCopy step:stepCopy tableMode:modeCopy];
    v26 = routeCopy;
    v27 = [v12 colorsForStrings:v13 route:routeCopy step:stepCopy tableMode:modeCopy];
    v14 = [v13 count];
    if (v14)
    {
      v15 = v14;
      for (i = 0; i != v15; ++i)
      {
        v17 = [v13 objectAtIndexedSubscript:i];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = [v28 objectAtIndexedSubscript:i];
          v19 = [(RouteStepLabelListView *)v30 attributedStringForString:v17 inStrings:v13 forStep:stepCopy font:v18];

          v20 = [v29 objectAtIndexedSubscript:i];
          [v28 objectAtIndexedSubscript:i];
          v22 = v21 = stepCopy;
          v23 = [v27 objectAtIndexedSubscript:i];
          [(LabelListView *)v30 addLabelWithText:v17 attributedText:v19 accessibilityText:v20 font:v22 color:v23];

          stepCopy = v21;
        }
      }
    }

    v11 = v30;
    v24 = v30;

    routeCopy = v26;
  }

  return v11;
}

- (id)attributedStringForString:(id)string inStrings:(id)strings forStep:(id)step font:(id)font
{
  stringCopy = string;
  stringsCopy = strings;
  fontCopy = font;
  if ([step isEVChargerStep] && (objc_msgSend(stringsCopy, "lastObject"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(stringCopy, "isEqualToString:", v12), v12, v13))
  {
    v14 = [UIImage systemImageNamed:@"bolt.circle.fill"];
    [fontCopy pointSize];
    v15 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:2 scale:?];
    v16 = [v14 imageWithConfiguration:v15];

    v17 = [v16 imageWithRenderingMode:2];
    v18 = +[UIColor systemGreenColor];
    v19 = [v17 _flatImageWithColor:v18];

    if (v19)
    {
      v20 = objc_alloc_init(NSTextAttachment);
      [v20 setImage:v19];
      [fontCopy capHeight];
      v22 = v21;
      [v19 size];
      v24 = (v22 - v23) * 0.5;
      [v19 size];
      v26 = v25;
      [v19 size];
      [v20 setBounds:{0.0, v24, v26, v27}];
      v28 = [NSMutableAttributedString alloc];
      v29 = [NSAttributedString attributedStringWithAttachment:v20];
      v30 = [v28 initWithAttributedString:v29];

      v31 = [[NSAttributedString alloc] initWithString:@" "];
      [v30 appendAttributedString:v31];
      v32 = [[NSAttributedString alloc] initWithString:stringCopy];
      [v30 appendAttributedString:v32];
      v33 = [v30 copy];
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

+ (id)_spacingForNumberOfStrings:(unint64_t)strings isEVStep:(BOOL)step
{
  stepCopy = step;
  v5 = [self spacingForNumberOfStrings:strings];
  v6 = v5;
  if (stepCopy && [v5 count])
  {
    v7 = [v6 mutableCopy];
    [v7 replaceObjectAtIndex:objc_msgSend(v7 withObject:{"count") - 1, &off_1016E6608}];
    v8 = [v7 copy];
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

+ (double)heightForWidth:(double)width route:(id)route step:(id)step idiom:(int64_t)idiom
{
  stepCopy = step;
  routeCopy = route;
  v11 = [self stringsForRoute:routeCopy step:stepCopy tableMode:0];
  v12 = [self fontsForStrings:v11 route:routeCopy step:stepCopy tableMode:0];

  v13 = [v11 count];
  isEVChargerStep = [stepCopy isEVChargerStep];

  v15 = [self _spacingForNumberOfStrings:v13 isEVStep:isEVChargerStep];
  [self heightForWidth:v11 strings:v12 fonts:v15 spacings:width];
  v17 = v16;

  return v17;
}

+ (id)colorsForStrings:(id)strings route:(id)route step:(id)step tableMode:(BOOL)mode
{
  v6 = [strings count];
  if (v6)
  {
    v7 = v6;
    v8 = [NSMutableArray arrayWithCapacity:v6];
    v9 = +[UIColor blackColor];
    [v8 addObject:v9];

    v10 = v7 - 1;
    if (v7 != 1)
    {
      do
      {
        v11 = [UIColor colorWithWhite:0.501960814 alpha:1.0];
        [v8 addObject:v11];

        --v10;
      }

      while (v10);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)fontsForStrings:(id)strings route:(id)route step:(id)step tableMode:(BOOL)mode
{
  v6 = [strings count];
  if (v6)
  {
    v7 = v6;
    v8 = [NSMutableArray arrayWithCapacity:v6];
    v9 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v9 userInterfaceIdiom];

    if (userInterfaceIdiom == 5)
    {
      do
      {
        v11 = +[UIFont system17];
        [v8 addObject:v11];

        --v7;
      }

      while (v7);
    }

    else
    {
      v12 = +[UIFont system17Bold];
      [v8 addObject:v12];

      v13 = v7 - 1;
      if (v7 != 1)
      {
        do
        {
          v14 = +[UIFont system15];
          [v8 addObject:v14];

          --v13;
        }

        while (v13);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end