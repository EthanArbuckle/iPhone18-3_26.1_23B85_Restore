@interface NCPriorityNotificationImageCell
+ (id)getMicaFileURL;
- (CGSize)imgSizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)_layoutSubviews;
- (void)_setupIfNecessary;
- (void)layoutSubviews;
@end

@implementation NCPriorityNotificationImageCell

+ (id)getMicaFileURL
{
  v2 = +[UIScreen mainScreen];
  traitCollection = [v2 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = v5;
  if (userInterfaceIdiom == &dword_0 + 1)
  {
    v7 = @"PriorityNotifications~iPad";
  }

  else
  {
    v7 = @"PriorityNotifications~iPhone";
  }

  v8 = [v5 URLForResource:v7 withExtension:@"ca"];

  return v8;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NCPriorityNotificationImageCell;
  [(NCPriorityNotificationImageCell *)&v4 layoutSubviews];
  [(NCPriorityNotificationImageCell *)self _setupIfNecessary];
  [(NCPriorityNotificationImageCell *)self _layoutSubviews];
  v3 = +[UIColor clearColor];
  [(NCPriorityNotificationImageCell *)self setBackgroundColor:v3];
}

- (CGSize)imgSizeThatFits:(CGSize)fits
{
  height = fits.height;
  v5 = +[UIScreen mainScreen];
  traitCollection = [v5 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  [(NCPriorityNotificationImageCell *)self bounds];
  v9 = userInterfaceIdiom == &dword_0 + 1 || userInterfaceIdiom == &dword_4 + 2;
  v10 = 0.25;
  if (v9)
  {
    v10 = 0.5;
  }

  v11 = v8 * v10;
  packageView = self->_packageView;

  [(BSUICAPackageView *)packageView sizeThatFits:v11, height];
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(NCPriorityNotificationImageCell *)self _setupIfNecessary];
  [(NCPriorityNotificationImageCell *)self imgSizeThatFits:width, height];
  v7 = v6;
  [(UILabel *)self->_captionLabel sizeThatFits:width, height];
  v9 = v7 + v8 + 20.0;
  v10 = width;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)_setupIfNecessary
{
  if (!self->_packageView)
  {
    v3 = [BSUICAPackageView alloc];
    v4 = +[NCPriorityNotificationImageCell getMicaFileURL];
    v5 = [v3 initWithURL:v4];
    packageView = self->_packageView;
    self->_packageView = v5;

    [(NCPriorityNotificationImageCell *)self addSubview:self->_packageView];
  }

  if (!self->_captionLabel)
  {
    v7 = objc_alloc_init(UILabel);
    captionLabel = self->_captionLabel;
    self->_captionLabel = v7;

    [(UILabel *)self->_captionLabel setNumberOfLines:0];
    v9 = +[UIScreen mainScreen];
    traitCollection = [v9 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    v12 = self->_captionLabel;
    v13 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v14 = v13;
    if (userInterfaceIdiom == &dword_4 + 2)
    {
      v15 = @"PRIORITIZATION_EXPLANATION_VISION";
    }

    else
    {
      v15 = @"PRIORITIZATION_EXPLANATION";
    }

    v16 = [v13 localizedStringForKey:v15 value:&stru_4E3F0 table:@"NotificationsSettings"];
    [(UILabel *)v12 setText:v16];

    [(UILabel *)self->_captionLabel setTextAlignment:1];
    [(UILabel *)self->_captionLabel setAdjustsFontSizeToFitWidth:1];
    v17 = self->_captionLabel;
    v18 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [(UILabel *)v17 setFont:v18];

    v19 = self->_captionLabel;

    [(NCPriorityNotificationImageCell *)self addSubview:v19];
  }
}

- (void)_layoutSubviews
{
  if (self->_packageView)
  {
    [(NCPriorityNotificationImageCell *)self bounds];
    [(NCPriorityNotificationImageCell *)self imgSizeThatFits:v3, v4];
    [(BSUICAPackageView *)self->_packageView frame];
    [(NCPriorityNotificationImageCell *)self bounds];
    UIRectCenteredXInRect();
    [(BSUICAPackageView *)self->_packageView setFrame:?];
    captionLabel = self->_captionLabel;
    if (captionLabel)
    {
      [(UILabel *)captionLabel frame];
      v6 = self->_captionLabel;
      [(NCPriorityNotificationImageCell *)self bounds];
      v8 = v7;
      [(NCPriorityNotificationImageCell *)self bounds];
      [(UILabel *)v6 sizeThatFits:v8, v9];
      [(NCPriorityNotificationImageCell *)self bounds];
      UIRectCenteredXInRect();
      v10 = self->_captionLabel;

      [(UILabel *)v10 setFrame:?];
    }
  }
}

@end