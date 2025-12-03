@interface NCNotificationListDisplayStyleSelectionView
+ (id)notificationListDisplayStyleSelectionImageForType:(unint64_t)type;
+ (id)notificationListDisplayStyleSelectionImageNameForType:(unint64_t)type;
+ (id)notificationListDisplayStyleSelectionLabelTitleForType:(unint64_t)type;
+ (id)notificationListDisplayStyleSelectionViewOfType:(unint64_t)type;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (CGRect)_selectionLabelLayoutRectForRect:(CGRect)rect;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NCNotificationListDisplayStyleSelectionView)initWithFrame:(CGRect)frame;
- (NCNotificationListDisplayStyleSelectionViewDelegate)delegate;
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
- (void)setSelected:(BOOL)selected;
@end

@implementation NCNotificationListDisplayStyleSelectionView

+ (id)notificationListDisplayStyleSelectionViewOfType:(unint64_t)type
{
  v4 = [[NCNotificationListDisplayStyleSelectionView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(NCNotificationListDisplayStyleSelectionView *)v4 setSelectionType:type];

  return v4;
}

+ (id)notificationListDisplayStyleSelectionLabelTitleForType:(unint64_t)type
{
  if (type > 2)
  {
    v5 = @"<unknown>";
  }

  else
  {
    v3 = *(&off_4D4B8 + type);
    v4 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v5 = [v4 localizedStringForKey:v3 value:&stru_4E3F0 table:@"NotificationsSettings"];
  }

  return v5;
}

+ (id)notificationListDisplayStyleSelectionImageNameForType:(unint64_t)type
{
  v4 = NCDeviceTypePrefix();
  if (type > 2)
  {
    v5 = &stru_4E3F0;
  }

  else
  {
    v5 = *(&off_4D4D0 + type);
  }

  v6 = [NSString stringWithFormat:@"%@-%@", v4, v5];

  return v6;
}

+ (id)notificationListDisplayStyleSelectionImageForType:(unint64_t)type
{
  v4 = +[UIScreen mainScreen];
  traitCollection = [v4 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom > 1)
  {
    v15 = 0;
  }

  else
  {
    v7 = [objc_opt_class() notificationListDisplayStyleSelectionImageNameForType:type];
    v8 = +[BSPlatform sharedInstance];
    homeButtonType = [v8 homeButtonType];

    if (userInterfaceIdiom == &dword_0 + 1 && homeButtonType != &dword_0 + 2)
    {
      v11 = [v7 stringByAppendingString:@"-legacy"];

      v7 = v11;
    }

    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [UIImage imageNamed:v7 inBundle:v12];
    v14 = NCDeviceImageWithDefaultSystemClock(v13);

    v15 = [v14 imageWithRenderingMode:2];
  }

  return v15;
}

- (NCNotificationListDisplayStyleSelectionView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = NCNotificationListDisplayStyleSelectionView;
  v3 = [(NCNotificationListDisplayStyleSelectionView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[UILongPressGestureRecognizer alloc] initWithTarget:v3 action:"_handleLocationViewPress:"];
    longPressGestureRecognizer = v3->_longPressGestureRecognizer;
    v3->_longPressGestureRecognizer = v4;

    [(UILongPressGestureRecognizer *)v3->_longPressGestureRecognizer setDelegate:v3];
    [(UILongPressGestureRecognizer *)v3->_longPressGestureRecognizer setMinimumPressDuration:0.0];
    [(UILongPressGestureRecognizer *)v3->_longPressGestureRecognizer setCancelPastAllowableMovement:1];
    [(NCNotificationListDisplayStyleSelectionView *)v3 addGestureRecognizer:v3->_longPressGestureRecognizer];
    layer = [(NCNotificationListDisplayStyleSelectionView *)v3 layer];
    [layer setAllowsGroupOpacity:1];
  }

  return v3;
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    selectedCopy = selected;
    self->_selected = selected;
    [(NCNotificationListDisplayStyleSelectionView *)self _swapSelectionLabelsOnToggledSelected:?];
    selectionImageView = [(NCNotificationListDisplayStyleSelectionView *)self selectionImageView];
    v7 = [(NCNotificationListDisplayStyleSelectionView *)self _selectionImageViewTintColorSelected:selectedCopy];
    [selectionImageView setTintColor:v7];

    [(NCNotificationListDisplayStyleSelectionView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(NCNotificationListDisplayStyleSelectionView *)self _configureSelectionImageViewIfNecessary];
  [(NCNotificationListDisplayStyleSelectionView *)self _configureSelectionLabelIfNecessary];
  selectionImageView = self->_selectionImageView;
  if (selectionImageView)
  {
    [(UIImageView *)selectionImageView frame];
    v7 = CGRectGetHeight(v14) + 25.0;
  }

  else
  {
    v7 = 0.0;
  }

  [(UILabel *)self->_selectionLabel sizeThatFits:width + -10.0, height];
  v9 = v8 * 1.42;
  v10 = v8 * 1.42 * 0.5;
  if (v10 <= 20.0)
  {
    v9 = v10 + 20.0;
  }

  v11 = ceil(v7 + v9 + 25.0);
  v12 = width;
  result.height = v11;
  result.width = v12;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NCNotificationListDisplayStyleSelectionView;
  [(NCNotificationListDisplayStyleSelectionView *)&v3 layoutSubviews];
  [(NCNotificationListDisplayStyleSelectionView *)self _configureSelectionImageViewIfNecessary];
  [(NCNotificationListDisplayStyleSelectionView *)self _configureSelectionLabelIfNecessary];
  [(NCNotificationListDisplayStyleSelectionView *)self _layoutSelectionImageView];
  [(NCNotificationListDisplayStyleSelectionView *)self _layoutSelectionLabel];
}

- (void)_configureSelectionImageViewIfNecessary
{
  if (!self->_selectionImageView)
  {
    v7 = [objc_opt_class() notificationListDisplayStyleSelectionImageForType:{-[NCNotificationListDisplayStyleSelectionView selectionType](self, "selectionType")}];
    v3 = [[UIImageView alloc] initWithImage:v7];
    selectionImageView = self->_selectionImageView;
    self->_selectionImageView = v3;

    v5 = self->_selectionImageView;
    v6 = [(NCNotificationListDisplayStyleSelectionView *)self _selectionImageViewTintColorSelected:[(NCNotificationListDisplayStyleSelectionView *)self isSelected]];
    [(UIImageView *)v5 setTintColor:v6];

    [(UIImageView *)self->_selectionImageView setUserInteractionEnabled:0];
    [(NCNotificationListDisplayStyleSelectionView *)self addSubview:self->_selectionImageView];
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
  if (self->_selectionLabel || [(NCNotificationListDisplayStyleSelectionView *)self isSelected])
  {
    p_selectionLabel = &self->_encapsulatedSelectionLabel;
    if (self->_encapsulatedSelectionLabel || ![(NCNotificationListDisplayStyleSelectionView *)self isSelected])
    {
      return;
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  *p_selectionLabel = [(NCNotificationListDisplayStyleSelectionView *)self _newSelectionLabelIsEncapsulated:v4];

  _objc_release_x1();
}

- (id)_newSelectionLabelIsEncapsulated:(BOOL)encapsulated
{
  encapsulatedCopy = encapsulated;
  v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v6 = [objc_opt_class() notificationListDisplayStyleSelectionLabelTitleForType:{-[NCNotificationListDisplayStyleSelectionView selectionType](self, "selectionType")}];
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
  [(NCNotificationListDisplayStyleSelectionView *)self addSubview:v5];
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
    [v5 setColor:v11];
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
    [(NCNotificationListDisplayStyleSelectionView *)self bounds];
    UIRectCenteredXInRect();
    image = [(UIImageView *)self->_selectionImageView image];
    [image size];

    UIRectRoundToScale();
    v5 = self->_selectionImageView;

    [(UIImageView *)v5 setFrame:?];
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
  [(NCNotificationListDisplayStyleSelectionView *)self bounds];
  [(NCNotificationListDisplayStyleSelectionView *)self _selectionLabelLayoutRectForRect:?];
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
  [(NCNotificationListDisplayStyleSelectionView *)self bounds];
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

    if (![(NCNotificationListDisplayStyleSelectionView *)self isSelected])
    {
      [(NCNotificationListDisplayStyleSelectionView *)self setSelected:1];
      delegate = [(NCNotificationListDisplayStyleSelectionView *)self delegate];
      [delegate notificationListDisplayStyleSelectionViewDidGetSelected:self];
    }
  }

  v6 = 0;
LABEL_8:

  [(NCNotificationListDisplayStyleSelectionView *)self setHighlighted:v6];
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

- (CGRect)_selectionLabelLayoutRectForRect:(CGRect)rect
{
  _UIRectInset(self, a2, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, 0.0, 5.0, 0.0, 5.0);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_swapSelectionLabelsOnToggledSelected:(BOOL)selected
{
  selectedCopy = selected;
  [(NCNotificationListDisplayStyleSelectionView *)self _configureSelectionLabelIfNecessary];
  if (!selectedCopy)
  {
    p_encapsulatedSelectionLabel = &self->_encapsulatedSelectionLabel;
    encapsulatedSelectionLabel = self->_encapsulatedSelectionLabel;
    if (encapsulatedSelectionLabel)
    {
      v7 = &OBJC_IVAR___NCNotificationListDisplayStyleSelectionView__selectionLabel;
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

  v7 = &OBJC_IVAR___NCNotificationListDisplayStyleSelectionView__encapsulatedSelectionLabel;
LABEL_6:
  v8 = encapsulatedSelectionLabel;
  v9 = *(&self->super.super.super.isa + *v7);
  v10 = *p_encapsulatedSelectionLabel;
  *p_encapsulatedSelectionLabel = 0;

LABEL_8:
  [(NCNotificationListDisplayStyleSelectionView *)self _layoutSelectionLabel];
  [v9 setAlpha:0.0];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_94F8;
  v15[3] = &unk_4D0D8;
  v16 = v9;
  v17 = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_953C;
  v13[3] = &unk_4D498;
  v14 = v17;
  v11 = v17;
  v12 = v9;
  [UIView animateWithDuration:0 delay:v15 options:v13 animations:0.15 completion:0.0];
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (highlighted)
  {

    [(NCNotificationListDisplayStyleSelectionView *)self setAlpha:0.5];
  }

  else
  {
    v5[5] = v3;
    v5[6] = v4;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_95D8;
    v5[3] = &unk_4D388;
    v5[4] = self;
    [UIView animateWithDuration:v5 animations:0.25];
  }
}

- (NCNotificationListDisplayStyleSelectionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end