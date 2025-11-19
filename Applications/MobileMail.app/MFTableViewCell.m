@interface MFTableViewCell
- (double)accessoryWidth;
- (void)prepareForReuse;
- (void)setDisabled:(BOOL)a3;
- (void)willTransitionToState:(unint64_t)a3;
@end

@implementation MFTableViewCell

- (double)accessoryWidth
{
  if (![(MFTableViewCell *)self isEditing])
  {
    if ([(MFTableViewCell *)self accessoryType])
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0.0;
    goto LABEL_6;
  }

  if (![(MFTableViewCell *)self editingAccessoryType])
  {
    goto LABEL_5;
  }

LABEL_3:
  [objc_opt_class() defaultAccessoryWidth];
  v4 = v3;
LABEL_6:
  if ([(MFTableViewCell *)self isEditing]&& [(MFTableViewCell *)self showsReorderControl])
  {
    return v4 + 35.0;
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = MFTableViewCell;
  [(MFTableViewCell *)&v3 prepareForReuse];
  [(MFTableViewCell *)self setDisabled:0];
}

- (void)willTransitionToState:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = MFTableViewCell;
  [(MFTableViewCell *)&v5 willTransitionToState:?];
  if ([(MFTableViewCell *)self shouldDisableWhileEditing])
  {
    [(MFTableViewCell *)self setDisabled:a3 != 0];
  }
}

- (void)setDisabled:(BOOL)a3
{
  v4 = !a3;
  [(MFTableViewCell *)self setUserInteractionEnabled:v4];

  [(MFTableViewCell *)self setSelectionStyle:v4];
}

@end