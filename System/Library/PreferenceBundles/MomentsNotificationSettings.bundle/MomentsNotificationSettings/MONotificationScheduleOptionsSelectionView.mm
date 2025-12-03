@interface MONotificationScheduleOptionsSelectionView
+ (id)notificationScheduleOptionImageForType:(unint64_t)type;
+ (id)notificationScheduleOptionLabelForType:(unint64_t)type;
+ (id)notificationScheduleOptionsSelectionViewOfType:(unint64_t)type;
+ (id)notificationSettingsBundle;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MONotificationScheduleOptionsSelectionView)initWithFrame:(CGRect)frame;
- (MONotificationScheduleSelectionViewDelegate)delegate;
- (id)_newSelectionLabelIsEncapsulated:(BOOL)encapsulated;
- (id)_selectionImageViewTintColorSelected:(BOOL)selected;
- (void)_configureSelectionImageViewIfNecessary;
- (void)_configureSelectionLabelIfNecessary;
- (void)_handleLocationViewPress:(id)press;
- (void)_layoutSelectionImageView;
- (void)_layoutSelectionLabel;
- (void)_swapSelectionLabelsOnToggledSelected:(BOOL)selected;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation MONotificationScheduleOptionsSelectionView

+ (id)notificationScheduleOptionsSelectionViewOfType:(unint64_t)type
{
  v4 = [[MONotificationScheduleOptionsSelectionView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(MONotificationScheduleOptionsSelectionView *)v4 setSelectionType:type];

  return v4;
}

+ (id)notificationSettingsBundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

+ (id)notificationScheduleOptionLabelForType:(unint64_t)type
{
  v4 = +[MONotificationScheduleOptionsSelectionView notificationSettingsBundle];
  v5 = v4;
  if (type > 2)
  {
    v6 = @"<unknown>";
  }

  else
  {
    v6 = [v4 localizedStringForKey:off_C420[type] value:&stru_C5D8 table:0];
  }

  return v6;
}

+ (id)notificationScheduleOptionImageForType:(unint64_t)type
{
  v4 = +[MONotificationScheduleOptionsSelectionView notificationSettingsBundle];
  if (type > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [UIImage imageNamed:off_C438[type] inBundle:v4];
  }

  return v5;
}

- (MONotificationScheduleOptionsSelectionView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = MONotificationScheduleOptionsSelectionView;
  v3 = [(MONotificationScheduleOptionsSelectionView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[UILongPressGestureRecognizer alloc] initWithTarget:v3 action:"_handleLocationViewPress:"];
    longPressGestureRecognizer = v3->_longPressGestureRecognizer;
    v3->_longPressGestureRecognizer = v4;

    [(UILongPressGestureRecognizer *)v3->_longPressGestureRecognizer setDelegate:v3];
    [(UILongPressGestureRecognizer *)v3->_longPressGestureRecognizer setMinimumPressDuration:0.0];
    [(UILongPressGestureRecognizer *)v3->_longPressGestureRecognizer setCancelPastAllowableMovement:1];
    [(MONotificationScheduleOptionsSelectionView *)v3 addGestureRecognizer:v3->_longPressGestureRecognizer];
    layer = [(MONotificationScheduleOptionsSelectionView *)v3 layer];
    [layer setAllowsGroupOpacity:1];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(MONotificationScheduleOptionsSelectionView *)self _configureSelectionImageViewIfNecessary];
  [(MONotificationScheduleOptionsSelectionView *)self _configureSelectionLabelIfNecessary];
  selectionImageView = self->_selectionImageView;
  if (selectionImageView)
  {
    [(UIImageView *)selectionImageView frame];
    v7 = CGRectGetHeight(v14) + 16.0;
  }

  else
  {
    v7 = 0.0;
  }

  [(UILabel *)self->_selectionLabel sizeThatFits:width + -10.0, height];
  v9 = v8 * 1.42;
  v10 = v8 * 1.42 * 0.5;
  if (v10 <= 10.0)
  {
    v9 = v10 + 10.0;
  }

  v11 = ceil(v7 + v9 + 10.0);
  v12 = width;
  result.height = v11;
  result.width = v12;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MONotificationScheduleOptionsSelectionView;
  [(MONotificationScheduleOptionsSelectionView *)&v3 layoutSubviews];
  [(MONotificationScheduleOptionsSelectionView *)self _configureSelectionImageViewIfNecessary];
  [(MONotificationScheduleOptionsSelectionView *)self _configureSelectionLabelIfNecessary];
  [(MONotificationScheduleOptionsSelectionView *)self _layoutSelectionImageView];
  [(MONotificationScheduleOptionsSelectionView *)self _layoutSelectionLabel];
}

- (void)_configureSelectionImageViewIfNecessary
{
  if (!self->_selectionImageView)
  {
    v7 = [objc_opt_class() notificationScheduleOptionImageForType:{-[MONotificationScheduleOptionsSelectionView selectionType](self, "selectionType")}];
    v3 = [[UIImageView alloc] initWithImage:v7];
    selectionImageView = self->_selectionImageView;
    self->_selectionImageView = v3;

    [(UIImageView *)self->_selectionImageView setContentMode:1];
    v5 = self->_selectionImageView;
    v6 = [(MONotificationScheduleOptionsSelectionView *)self _selectionImageViewTintColorSelected:[(MONotificationScheduleOptionsSelectionView *)self isSelected]];
    [(UIImageView *)v5 setTintColor:v6];

    [(UIImageView *)self->_selectionImageView setUserInteractionEnabled:0];
    [(MONotificationScheduleOptionsSelectionView *)self addSubview:self->_selectionImageView];
  }
}

- (id)_selectionImageViewTintColorSelected:(BOOL)selected
{
  if (selected)
  {
    +[UIColor systemBlueColor];
  }

  else
  {
    +[UIColor grayColor];
  }
  v3 = ;

  return v3;
}

- (void)_configureSelectionLabelIfNecessary
{
  p_selectionLabel = &self->_selectionLabel;
  if (self->_selectionLabel || [(MONotificationScheduleOptionsSelectionView *)self isSelected])
  {
    p_selectionLabel = &self->_encapsulatedSelectionLabel;
    if (self->_encapsulatedSelectionLabel || ![(MONotificationScheduleOptionsSelectionView *)self isSelected])
    {
      return;
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(MONotificationScheduleOptionsSelectionView *)self _newSelectionLabelIsEncapsulated:v4];
  v6 = *p_selectionLabel;
  *p_selectionLabel = v5;

  _objc_release_x1();
}

- (id)_newSelectionLabelIsEncapsulated:(BOOL)encapsulated
{
  encapsulatedCopy = encapsulated;
  v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v6 = [objc_opt_class() notificationScheduleOptionLabelForType:{-[MONotificationScheduleOptionsSelectionView selectionType](self, "selectionType")}];
  [v5 setText:v6];

  v7 = &UIFontTextStyleCallout;
  if (!encapsulatedCopy)
  {
    v7 = &UIFontTextStyleFootnote;
  }

  v8 = [UIFont preferredFontForTextStyle:*v7];
  [v5 setFont:v8];

  [v5 setUserInteractionEnabled:0];
  [v5 setAdjustsFontSizeToFitWidth:1];
  [v5 setTextAlignment:1];
  [(MONotificationScheduleOptionsSelectionView *)self addSubview:v5];
  if (encapsulatedCopy)
  {
    v9 = +[UIColor systemBlueColor];
    v10 = objc_alloc_init(NSTextEncapsulation);
    [v10 setColor:v9];
    [v10 setScale:2];
    [v10 setStyle:1];
    [v10 setPlatterSize:1];
    [v10 setShape:2];
    [v5 _setTextEncapsulation:v10];
    v11 = +[UIColor systemBackgroundColor];
    [v5 setTextColor:v11];
    [v5 setAccessibilityTraits:UIAccessibilityTraitSelected];
  }

  return v5;
}

- (void)_layoutSelectionImageView
{
  selectionImageView = self->_selectionImageView;
  if (selectionImageView)
  {
    [(UIImageView *)selectionImageView frame];
    [(MONotificationScheduleOptionsSelectionView *)self bounds];
    UIRectCenteredXInRect();
    UIRectRoundToScale();
    v4 = self->_selectionImageView;

    [(UIImageView *)v4 setFrame:?];
  }
}

- (void)_layoutSelectionLabel
{
  selectionLabel = self->_selectionLabel;
  if (selectionLabel)
  {
    v4 = selectionLabel;
  }

  else
  {
    v4 = self->_encapsulatedSelectionLabel;
    if (!v4)
    {
      return;
    }
  }

  v21 = v4;
  [(UILabel *)v4 frame];
  [(MONotificationScheduleOptionsSelectionView *)self bounds];
  [(MONotificationScheduleOptionsSelectionView *)self _selectionLabelLayoutRectForRect:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UILabel *)v21 sizeThatFits:v9, v11];
  v23.origin.x = v6;
  v23.origin.y = v8;
  v23.size.width = v10;
  v23.size.height = v12;
  CGRectGetWidth(v23);
  [(MONotificationScheduleOptionsSelectionView *)self bounds];
  UIRectCenteredXInRect();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(UIImageView *)self->_selectionImageView frame];
  CGRectGetMaxY(v24);
  v25.origin.x = v14;
  v25.origin.y = v16;
  v25.size.width = v18;
  v25.size.height = v20;
  CGRectGetHeight(v25);
  [(UIImageView *)self->_selectionImageView frame];
  CGRectGetMaxY(v26);
  UIRectRoundToScale();
  [(UILabel *)v21 setFrame:?];
}

- (void)_swapSelectionLabelsOnToggledSelected:(BOOL)selected
{
  selectedCopy = selected;
  [(MONotificationScheduleOptionsSelectionView *)self _configureSelectionLabelIfNecessary];
  if (!selectedCopy)
  {
    p_encapsulatedSelectionLabel = &self->_encapsulatedSelectionLabel;
    encapsulatedSelectionLabel = self->_encapsulatedSelectionLabel;
    if (encapsulatedSelectionLabel)
    {
      v7 = &OBJC_IVAR___MONotificationScheduleOptionsSelectionView__selectionLabel;
      goto LABEL_6;
    }

LABEL_7:
    v8 = 0;
    v9 = 0;
    goto LABEL_8;
  }

  p_encapsulatedSelectionLabel = &self->_selectionLabel;
  encapsulatedSelectionLabel = self->_selectionLabel;
  if (!encapsulatedSelectionLabel)
  {
    goto LABEL_7;
  }

  v7 = &OBJC_IVAR___MONotificationScheduleOptionsSelectionView__encapsulatedSelectionLabel;
LABEL_6:
  v8 = encapsulatedSelectionLabel;
  v9 = *(&self->super.super.super.isa + *v7);
  v10 = *p_encapsulatedSelectionLabel;
  *p_encapsulatedSelectionLabel = 0;

LABEL_8:
  [(MONotificationScheduleOptionsSelectionView *)self _layoutSelectionLabel];
  [v9 setAlpha:0.0];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __84__MONotificationScheduleOptionsSelectionView__swapSelectionLabelsOnToggledSelected___block_invoke;
  v15[3] = &unk_C3B0;
  v16 = v9;
  v17 = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __84__MONotificationScheduleOptionsSelectionView__swapSelectionLabelsOnToggledSelected___block_invoke_2;
  v13[3] = &unk_C3D8;
  v14 = v17;
  v11 = v17;
  v12 = v9;
  [UIView animateWithDuration:0 delay:v15 options:v13 animations:0.15 completion:0.0];
}

id __84__MONotificationScheduleOptionsSelectionView__swapSelectionLabelsOnToggledSelected___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (highlighted)
  {

    [(MONotificationScheduleOptionsSelectionView *)self setAlpha:0.5];
  }

  else
  {
    v5[5] = v3;
    v5[6] = v4;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __61__MONotificationScheduleOptionsSelectionView_setHighlighted___block_invoke;
    v5[3] = &unk_C400;
    v5[4] = self;
    [UIView animateWithDuration:v5 animations:0.25];
  }
}

- (void)_handleLocationViewPress:(id)press
{
  state = [press state];
  if ((state - 4) >= 2)
  {
    if (state == &dword_0 + 1)
    {
      v6 = 1;
      goto LABEL_8;
    }

    if (state != &dword_0 + 3)
    {
      return;
    }

    if (![(MONotificationScheduleOptionsSelectionView *)self isSelected])
    {
      [(MONotificationScheduleOptionsSelectionView *)self setSelected:1];
      delegate = [(MONotificationScheduleOptionsSelectionView *)self delegate];
      [delegate notificationScheduleSelectionViewDidGetSelected:self];
    }
  }

  v6 = 0;
LABEL_8:

  [(MONotificationScheduleOptionsSelectionView *)self setHighlighted:v6];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  if (self->_longPressGestureRecognizer == recognizer)
  {
    gestureRecognizerCopy = gestureRecognizer;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (MONotificationScheduleSelectionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end