@interface MailActionVerticalGroupedCell
- (MailActionVerticalGroupedCell)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
- (void)setVerticalGroupedCellType:(unint64_t)type;
@end

@implementation MailActionVerticalGroupedCell

- (MailActionVerticalGroupedCell)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = MailActionVerticalGroupedCell;
  v3 = [(MailActionCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(MailActionVerticalGroupedCell *)v3 contentView];
    v6 = objc_opt_new();
    heightAnchor = [contentView heightAnchor];
    v8 = [heightAnchor constraintGreaterThanOrEqualToConstant:26.0 + 26.0];
    [v6 addObject:v8];

    [NSLayoutConstraint activateConstraints:v6];
    [(MailActionVerticalGroupedCell *)v4 setVerticalGroupedCellType:0];
  }

  return v4;
}

- (void)setVerticalGroupedCellType:(unint64_t)type
{
  self->_verticalGroupedCellType = type;
  contentView = [(MailActionVerticalGroupedCell *)self contentView];
  superview = [contentView superview];

  verticalGroupedCellType = self->_verticalGroupedCellType;
  if (verticalGroupedCellType > 1)
  {
    if (verticalGroupedCellType == 2)
    {
      if (MUISolariumFeatureEnabled())
      {
        goto LABEL_15;
      }

      layer = [superview layer];
      [layer setMaskedCorners:12];
      goto LABEL_14;
    }

    if (verticalGroupedCellType == 3 && (MUISolariumFeatureEnabled() & 1) == 0)
    {
      layer = [superview layer];
      [layer setMaskedCorners:0];
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

      layer2 = [superview layer];
      [layer2 setCornerRadius:10.0];

      layer = [superview layer];
      [layer setMaskedCorners:15];
      goto LABEL_14;
    }

    if (verticalGroupedCellType == 1 && (MUISolariumFeatureEnabled() & 1) == 0)
    {
      layer = [superview layer];
      [layer setMaskedCorners:3];
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