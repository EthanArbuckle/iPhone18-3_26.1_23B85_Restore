@interface AMUINotificationIndicatorView
- (AMUINotificationIndicatorView)initWithNotificationCount:(unint64_t)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)_attributedStringForNotificationCount:(unint64_t)a3;
- (id)_fontForNotificationIndicatorLabel;
- (id)_notificationIndicatorImage;
- (void)_configureNotificationIndicatorLabelIfNecessary;
- (void)layoutSubviews;
- (void)setHideNotificationCount:(BOOL)a3;
- (void)setNotificationCount:(unint64_t)a3;
@end

@implementation AMUINotificationIndicatorView

- (AMUINotificationIndicatorView)initWithNotificationCount:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = AMUINotificationIndicatorView;
  v4 = [(AMUINotificationIndicatorView *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_notificationCount = a3;
    v4->_hideNotificationCount = 1;
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"amui-notification-indicator-view, count:%lu", a3];
    [(AMUINotificationIndicatorView *)v5 setAccessibilityIdentifier:v6];
  }

  return v5;
}

- (void)setNotificationCount:(unint64_t)a3
{
  if (self->_notificationCount != a3)
  {
    self->_notificationCount = a3;
    [(AMUINotificationIndicatorView *)self setNeedsLayout];
  }
}

- (void)setHideNotificationCount:(BOOL)a3
{
  if (self->_hideNotificationCount != a3)
  {
    self->_hideNotificationCount = a3;
    [(UILabel *)self->_notificationIndicatorLabel removeFromSuperview];
    notificationIndicatorLabel = self->_notificationIndicatorLabel;
    self->_notificationIndicatorLabel = 0;

    [(AMUINotificationIndicatorView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(AMUINotificationIndicatorView *)self _configureNotificationIndicatorLabelIfNecessary];
  notificationIndicatorLabel = self->_notificationIndicatorLabel;

  [(UILabel *)notificationIndicatorLabel sizeThatFits:width, height];
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = AMUINotificationIndicatorView;
  [(AMUINotificationIndicatorView *)&v4 layoutSubviews];
  [(AMUINotificationIndicatorView *)self _configureNotificationIndicatorLabelIfNecessary];
  notificationIndicatorLabel = self->_notificationIndicatorLabel;
  [(AMUINotificationIndicatorView *)self bounds];
  [(UILabel *)notificationIndicatorLabel setFrame:?];
}

- (void)_configureNotificationIndicatorLabelIfNecessary
{
  notificationIndicatorLabel = self->_notificationIndicatorLabel;
  if (notificationIndicatorLabel)
  {
    goto LABEL_5;
  }

  if ([(AMUINotificationIndicatorView *)self notificationCount])
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_notificationIndicatorLabel;
    self->_notificationIndicatorLabel = v5;

    v7 = self->_notificationIndicatorLabel;
    v8 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UILabel *)v7 setTextColor:v8];

    [(AMUINotificationIndicatorView *)self addSubview:self->_notificationIndicatorLabel];
  }

  notificationIndicatorLabel = self->_notificationIndicatorLabel;
  if (notificationIndicatorLabel)
  {
LABEL_5:
    v9 = [(AMUINotificationIndicatorView *)self _attributedStringForNotificationCount:[(AMUINotificationIndicatorView *)self notificationCount]];
    [(UILabel *)notificationIndicatorLabel setAttributedText:v9];
  }
}

- (id)_fontForNotificationIndicatorLabel
{
  v2 = [MEMORY[0x277CF0D60] preferredFontProvider];
  v3 = [v2 preferredFontForTextStyle:*MEMORY[0x277D76968] hiFontStyle:1];

  return v3;
}

- (id)_notificationIndicatorImage
{
  v2 = MEMORY[0x277D755D0];
  v3 = [(AMUINotificationIndicatorView *)self _fontForNotificationIndicatorLabel];
  v4 = [v2 configurationWithFont:v3];

  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"circlebadge.fill" withConfiguration:v4];
  v6 = [v5 imageWithRenderingMode:2];

  return v6;
}

- (id)_attributedStringForNotificationCount:(unint64_t)a3
{
  v5 = [(AMUINotificationIndicatorView *)self _notificationIndicatorImage];
  v6 = objc_alloc_init(MEMORY[0x277D74270]);
  [v6 setImage:v5];
  v7 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v6];
  v8 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:v7];
  if (![(AMUINotificationIndicatorView *)self hideNotificationCount])
  {
    v9 = MEMORY[0x277CCABB8];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v11 = [v9 localizedStringFromNumber:v10 numberStyle:0];

    v12 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v11];
    if ([(AMUINotificationIndicatorView *)self _shouldReverseLayoutDirection])
    {
      [v12 appendAttributedString:v8];
      v13 = v12;

      v8 = v13;
    }

    else
    {
      [v8 appendAttributedString:v12];
    }
  }

  return v8;
}

@end