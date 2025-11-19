@interface MFDimmableButton
- (unint64_t)autohidePreference;
- (unint64_t)state;
- (void)_setHidden:(BOOL)a3 external:(BOOL)a4;
- (void)_updateDimmedHidingIfNecessary;
- (void)setDimmed:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation MFDimmableButton

- (unint64_t)state
{
  v5.receiver = self;
  v5.super_class = MFDimmableButton;
  v3 = [(MFDimmableButton *)&v5 state];
  if ([(MFDimmableButton *)self isDimmed])
  {
    return v3 | 0x10000;
  }

  else
  {
    return v3;
  }
}

- (void)setDimmed:(BOOL)a3
{
  self->_dimmed = a3;
  [(MFDimmableButton *)self _updateDimmedHidingIfNecessary];

  [(MFDimmableButton *)self setNeedsLayout];
}

- (void)_setHidden:(BOOL)a3 external:(BOOL)a4
{
  v4 = a3;
  if (!a4 || ([(MFDimmableButton *)self setStickyHiddenValue:a3], [(MFDimmableButton *)self autohidePreference]!= 1))
  {
    v6.receiver = self;
    v6.super_class = MFDimmableButton;
    [(MFDimmableButton *)&v6 setHidden:v4];
  }
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MFDimmableButton;
  [(MFDimmableButton *)&v4 setSelected:a3];
  [(MFDimmableButton *)self _updateDimmedHidingIfNecessary];
}

- (void)_updateDimmedHidingIfNecessary
{
  v3 = [(MFDimmableButton *)self autohidePreference];
  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    if (v3 != 2)
    {
      return;
    }

    v4 = 0;
  }

  [(MFDimmableButton *)self _setHidden:v4 external:0];
}

- (unint64_t)autohidePreference
{
  if (![(MFDimmableButton *)self hidesWhenDimmedIfNotSelected])
  {
    return 0;
  }

  if ([(MFDimmableButton *)self isDimmed]&& ![(MFDimmableButton *)self isSelected])
  {
    return 1;
  }

  return 2;
}

@end