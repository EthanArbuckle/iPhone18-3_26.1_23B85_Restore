@interface GestureInstructionView
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (GestureInstructionView)initWithFrame:(CGRect)frame;
- (void)_addInstructionWithImageName:(id)name titleKey:(id)key descriptionKey:(id)descriptionKey bundle:(id)bundle;
- (void)_updateUI;
- (void)layoutSubviews;
@end

@implementation GestureInstructionView

- (GestureInstructionView)initWithFrame:(CGRect)frame
{
  v25.receiver = self;
  v25.super_class = GestureInstructionView;
  v3 = [(GestureInstructionView *)&v25 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor blackColor];
    [(GestureInstructionView *)v3 setBackgroundColor:v4];

    panGestureRecognizer = [(GestureInstructionView *)v3 panGestureRecognizer];
    [panGestureRecognizer setDelegate:v3];

    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = objc_alloc_init(UILabel);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v7;

    v9 = v3->_titleLabel;
    v10 = +[UIColor whiteColor];
    [(UILabel *)v9 setTextColor:v10];

    v11 = v3->_titleLabel;
    v12 = [v6 localizedStringForKey:@"GESTURE_INSTRUCTION_TITLE" value:&stru_24D60 table:@"DigitalTouchBalloonProvider-Localizable"];
    [(UILabel *)v11 setText:v12];

    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle1];
    v14 = +[UIApplication sharedApplication];
    preferredContentSizeCategory = [v14 preferredContentSizeCategory];
    v16 = _UIContentSizeCategoryCompareToContentSizeCategory();

    if (v16 == 1)
    {
      v17 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
      v18 = [v13 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v17];

      v13 = v18;
    }

    [v13 _scaledValueForValue:30.0];
    v19 = v3->_titleLabel;
    v20 = [UIFont systemFontOfSize:?];
    [(UILabel *)v19 setFont:v20];

    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    [(UILabel *)v3->_titleLabel sizeToFit];
    [(GestureInstructionView *)v3 addSubview:v3->_titleLabel];
    v21 = [NSMutableArray arrayWithCapacity:6];
    itemViews = v3->_itemViews;
    v3->_itemViews = v21;

    [(GestureInstructionView *)v3 _addInstructionWithImageName:@"legend-sketch" titleKey:@"GESTURE_TITLE_SKETCH" descriptionKey:@"GESTURE_INSTRUCTION_SKETCH" bundle:v6];
    [(GestureInstructionView *)v3 _addInstructionWithImageName:@"legend-tap" titleKey:@"GESTURE_TITLE_TAP" descriptionKey:@"GESTURE_INSTRUCTION_TAP" bundle:v6];
    [(GestureInstructionView *)v3 _addInstructionWithImageName:@"legend-anger" titleKey:@"GESTURE_TITLE_ANGER" descriptionKey:@"GESTURE_INSTRUCTION_ANGER" bundle:v6];
    [(GestureInstructionView *)v3 _addInstructionWithImageName:@"legend-kiss" titleKey:@"GESTURE_TITLE_KISS" descriptionKey:@"GESTURE_INSTRUCTION_KISS" bundle:v6];
    [(GestureInstructionView *)v3 _addInstructionWithImageName:@"legend-heartbeat" titleKey:@"GESTURE_TITLE_HEARTBEAT" descriptionKey:@"GESTURE_INSTRUCTION_HEARTBEAT" bundle:v6];
    [(GestureInstructionView *)v3 _addInstructionWithImageName:@"legend-heartbreak" titleKey:@"GESTURE_TITLE_HEARTBREAK" descriptionKey:@"GESTURE_INSTRUCTION_HEARTBREAK" bundle:v6];
    v23 = v3;
  }

  return v3;
}

- (void)_addInstructionWithImageName:(id)name titleKey:(id)key descriptionKey:(id)descriptionKey bundle:(id)bundle
{
  bundleCopy = bundle;
  descriptionKeyCopy = descriptionKey;
  nameCopy = name;
  v15 = [bundleCopy localizedStringForKey:key value:&stru_24D60 table:@"DigitalTouchBalloonProvider-Localizable"];
  v13 = [bundleCopy localizedStringForKey:descriptionKeyCopy value:&stru_24D60 table:@"DigitalTouchBalloonProvider-Localizable"];

  v14 = [[GestureInstructionItemView alloc] initWithImageName:nameCopy title:v15 description:v13];
  [(GestureInstructionItemView *)v14 setUserInteractionEnabled:0];
  [(GestureInstructionView *)self addSubview:v14];
  [(NSMutableArray *)self->_itemViews addObject:v14];
}

- (void)_updateUI
{
  [(GestureInstructionView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v7 preferredContentSizeCategory];
  if (_UIContentSizeCategoryIsAccessibilityContentSizeCategory())
  {
    v9 = 10.0;
  }

  else
  {
    v9 = 0.0;
  }

  UIRoundToViewScale();
  v11 = v10;
  [(UILabel *)self->_titleLabel sizeThatFits:?];
  [(UILabel *)self->_titleLabel setFrame:v9, 20.0, v11, v12];
  [(UILabel *)self->_titleLabel frame];
  MaxY = CGRectGetMaxY(v30);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = self->_itemViews;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        [v19 sizeThatFits:{v4, v6, v25}];
        v21 = v20;
        v22 = MaxY + 20.0;
        v24 = v23 + -v9 * 2.0;
        [v19 setFrame:{v9, v22, v24, v20}];
        v31.origin.x = v9;
        v31.origin.y = v22;
        v31.size.width = v24;
        v31.size.height = v21;
        MaxY = CGRectGetMaxY(v31);
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }

  [(GestureInstructionView *)self setContentSize:v4, MaxY + 6.0];
}

- (void)layoutSubviews
{
  [(GestureInstructionView *)self _updateUI];
  [(GestureInstructionView *)self bounds];
  v4 = v3;
  [(GestureInstructionView *)self contentSize];
  if (v4 - v5 <= 40.0)
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  else
  {
    top = (v4 - v5) * 0.5 + -20.0;
    left = 0.0;
    bottom = 0.0;
    right = 0.0;
  }

  [(GestureInstructionView *)self setContentInset:top, left, bottom, right];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  objc_opt_class();
  if (((objc_opt_isKindOfClass() & 1) == 0 || ([beginCopy view], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 == self)) && (-[GestureInstructionView bounds](self, "bounds"), v7 = v6, -[GestureInstructionView contentSize](self, "contentSize"), v7 <= v8))
  {
    v11.receiver = self;
    v11.super_class = GestureInstructionView;
    v9 = [(GestureInstructionView *)&v11 gestureRecognizerShouldBegin:beginCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    view = [recognizerCopy view];
    if (view != self)
    {
      v10 = 1;
      goto LABEL_8;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view2 = [gestureRecognizerCopy view];
    v10 = view2 != self;

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v10 = 0;
  if (isKindOfClass)
  {
LABEL_8:
  }

LABEL_9:

  return v10;
}

@end