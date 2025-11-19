@interface NCNotificationListDisplayStyleSelectionView
+ (id)notificationListDisplayStyleSelectionImageForType:(unint64_t)a3;
+ (id)notificationListDisplayStyleSelectionImageNameForType:(unint64_t)a3;
+ (id)notificationListDisplayStyleSelectionLabelTitleForType:(unint64_t)a3;
+ (id)notificationListDisplayStyleSelectionViewOfType:(unint64_t)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (CGRect)_selectionLabelLayoutRectForRect:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NCNotificationListDisplayStyleSelectionView)initWithFrame:(CGRect)a3;
- (NCNotificationListDisplayStyleSelectionViewDelegate)delegate;
- (id)_newSelectionLabelIsEncapsulated:(BOOL)a3;
- (id)_selectionImageViewTintColorSelected:(BOOL)a3;
- (void)_configureSelectionImageViewIfNecessary;
- (void)_configureSelectionLabelIfNecessary;
- (void)_handleLocationViewPress:(id)a3;
- (void)_layoutSelectionImageView;
- (void)_layoutSelectionLabel;
- (void)_swapSelectionLabelsOnToggledSelected:(BOOL)a3;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation NCNotificationListDisplayStyleSelectionView

+ (id)notificationListDisplayStyleSelectionViewOfType:(unint64_t)a3
{
  v4 = [[NCNotificationListDisplayStyleSelectionView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(NCNotificationListDisplayStyleSelectionView *)v4 setSelectionType:a3];

  return v4;
}

+ (id)notificationListDisplayStyleSelectionLabelTitleForType:(unint64_t)a3
{
  if (a3 > 2)
  {
    v5 = @"<unknown>";
  }

  else
  {
    v3 = *(&off_4D4B8 + a3);
    v4 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v5 = [v4 localizedStringForKey:v3 value:&stru_4E3F0 table:@"NotificationsSettings"];
  }

  return v5;
}

+ (id)notificationListDisplayStyleSelectionImageNameForType:(unint64_t)a3
{
  v4 = NCDeviceTypePrefix();
  if (a3 > 2)
  {
    v5 = &stru_4E3F0;
  }

  else
  {
    v5 = *(&off_4D4D0 + a3);
  }

  v6 = [NSString stringWithFormat:@"%@-%@", v4, v5];

  return v6;
}

+ (id)notificationListDisplayStyleSelectionImageForType:(unint64_t)a3
{
  v4 = +[UIScreen mainScreen];
  v5 = [v4 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 > 1)
  {
    v15 = 0;
  }

  else
  {
    v7 = [objc_opt_class() notificationListDisplayStyleSelectionImageNameForType:a3];
    v8 = +[BSPlatform sharedInstance];
    v9 = [v8 homeButtonType];

    if (v6 == &dword_0 + 1 && v9 != &dword_0 + 2)
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

- (NCNotificationListDisplayStyleSelectionView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = NCNotificationListDisplayStyleSelectionView;
  v3 = [(NCNotificationListDisplayStyleSelectionView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[UILongPressGestureRecognizer alloc] initWithTarget:v3 action:"_handleLocationViewPress:"];
    longPressGestureRecognizer = v3->_longPressGestureRecognizer;
    v3->_longPressGestureRecognizer = v4;

    [(UILongPressGestureRecognizer *)v3->_longPressGestureRecognizer setDelegate:v3];
    [(UILongPressGestureRecognizer *)v3->_longPressGestureRecognizer setMinimumPressDuration:0.0];
    [(UILongPressGestureRecognizer *)v3->_longPressGestureRecognizer setCancelPastAllowableMovement:1];
    [(NCNotificationListDisplayStyleSelectionView *)v3 addGestureRecognizer:v3->_longPressGestureRecognizer];
    v6 = [(NCNotificationListDisplayStyleSelectionView *)v3 layer];
    [v6 setAllowsGroupOpacity:1];
  }

  return v3;
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    v4 = a3;
    self->_selected = a3;
    [(NCNotificationListDisplayStyleSelectionView *)self _swapSelectionLabelsOnToggledSelected:?];
    v6 = [(NCNotificationListDisplayStyleSelectionView *)self selectionImageView];
    v7 = [(NCNotificationListDisplayStyleSelectionView *)self _selectionImageViewTintColorSelected:v4];
    [v6 setTintColor:v7];

    [(NCNotificationListDisplayStyleSelectionView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (id)_selectionImageViewTintColorSelected:(BOOL)a3
{
  if (a3)
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

- (id)_newSelectionLabelIsEncapsulated:(BOOL)a3
{
  v3 = a3;
  v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v6 = [objc_opt_class() notificationListDisplayStyleSelectionLabelTitleForType:{-[NCNotificationListDisplayStyleSelectionView selectionType](self, "selectionType")}];
  [v5 setText:v6];

  v7 = &UIFontTextStyleCallout;
  if (!v3)
  {
    v7 = &UIFontTextStyleFootnote;
  }

  v8 = [UIFont preferredFontForTextStyle:*v7];
  [v5 setFont:v8];

  [v5 setUserInteractionEnabled:0];
  [v5 setAdjustsFontSizeToFitWidth:1];
  [v5 setTextAlignment:1];
  [(NCNotificationListDisplayStyleSelectionView *)self addSubview:v5];
  if (v3)
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
    v4 = [(UIImageView *)self->_selectionImageView image];
    [v4 size];

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

- (void)_handleLocationViewPress:(id)a3
{
  v4 = [a3 state];
  if ((v4 - 4) >= 2)
  {
    if (v4 == &dword_0 + 1)
    {
      v6 = 1;
      goto LABEL_8;
    }

    if (v4 != &dword_0 + 3)
    {
      return;
    }

    if (![(NCNotificationListDisplayStyleSelectionView *)self isSelected])
    {
      [(NCNotificationListDisplayStyleSelectionView *)self setSelected:1];
      v5 = [(NCNotificationListDisplayStyleSelectionView *)self delegate];
      [v5 notificationListDisplayStyleSelectionViewDidGetSelected:self];
    }
  }

  v6 = 0;
LABEL_8:

  [(NCNotificationListDisplayStyleSelectionView *)self setHighlighted:v6];
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  if (self->_longPressGestureRecognizer == a3)
  {
    v5 = a4;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (CGRect)_selectionLabelLayoutRectForRect:(CGRect)a3
{
  _UIRectInset(self, a2, a3.origin, *&a3.origin.y, a3.size, *&a3.size.height, 0.0, 5.0, 0.0, 5.0);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_swapSelectionLabelsOnToggledSelected:(BOOL)a3
{
  v3 = a3;
  [(NCNotificationListDisplayStyleSelectionView *)self _configureSelectionLabelIfNecessary];
  if (!v3)
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

- (void)setHighlighted:(BOOL)a3
{
  if (a3)
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