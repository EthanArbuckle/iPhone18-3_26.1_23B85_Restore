@interface MailActionVerticalGroupedCell
- (MailActionVerticalGroupedCell)initWithFrame:(CGRect)a3;
- (void)prepareForReuse;
- (void)setVerticalGroupedCellType:(unint64_t)a3;
@end

@implementation MailActionVerticalGroupedCell

- (MailActionVerticalGroupedCell)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = MailActionVerticalGroupedCell;
  v3 = [(MailActionCell *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(MailActionVerticalGroupedCell *)v3 contentView];
    v6 = objc_opt_new();
    v7 = [v5 heightAnchor];
    v8 = [v7 constraintGreaterThanOrEqualToConstant:26.0 + 26.0];
    [v6 addObject:v8];

    [NSLayoutConstraint activateConstraints:v6];
    [(MailActionVerticalGroupedCell *)v4 setVerticalGroupedCellType:0];
  }

  return v4;
}

- (void)setVerticalGroupedCellType:(unint64_t)a3
{
  self->_verticalGroupedCellType = a3;
  v4 = [(MailActionVerticalGroupedCell *)self contentView];
  v8 = [v4 superview];

  verticalGroupedCellType = self->_verticalGroupedCellType;
  if (verticalGroupedCellType > 1)
  {
    if (verticalGroupedCellType == 2)
    {
      if (MUISolariumFeatureEnabled())
      {
        goto LABEL_15;
      }

      v6 = [v8 layer];
      [v6 setMaskedCorners:12];
      goto LABEL_14;
    }

    if (verticalGroupedCellType == 3 && (MUISolariumFeatureEnabled() & 1) == 0)
    {
      v6 = [v8 layer];
      [v6 setMaskedCorners:0];
      goto LABEL_14;
    }
  }

  else
  {
    if (!verticalGroupedCellType)
    {
      if (MUISolariumFeatureEnabled())
      {
        goto LABEL_15;
      }

      v7 = [v8 layer];
      [v7 setCornerRadius:10.0];

      v6 = [v8 layer];
      [v6 setMaskedCorners:15];
      goto LABEL_14;
    }

    if (verticalGroupedCellType == 1 && (MUISolariumFeatureEnabled() & 1) == 0)
    {
      v6 = [v8 layer];
      [v6 setMaskedCorners:3];
LABEL_14:
    }
  }

LABEL_15:
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = MailActionVerticalGroupedCell;
  [(MailActionCell *)&v3 prepareForReuse];
  [(MailActionVerticalGroupedCell *)self setVerticalGroupedCellType:0];
}

@end