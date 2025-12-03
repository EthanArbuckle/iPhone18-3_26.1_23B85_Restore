@interface MFDimmableButton
- (unint64_t)autohidePreference;
- (unint64_t)state;
- (void)_setHidden:(BOOL)hidden external:(BOOL)external;
- (void)_updateDimmedHidingIfNecessary;
- (void)setDimmed:(BOOL)dimmed;
- (void)setSelected:(BOOL)selected;
@end

@implementation MFDimmableButton

- (unint64_t)state
{
  v5.receiver = self;
  v5.super_class = MFDimmableButton;
  state = [(MFDimmableButton *)&v5 state];
  if ([(MFDimmableButton *)self isDimmed])
  {
    return state | 0x10000;
  }

  else
  {
    return state;
  }
}

- (void)setDimmed:(BOOL)dimmed
{
  self->_dimmed = dimmed;
  [(MFDimmableButton *)self _updateDimmedHidingIfNecessary];

  [(MFDimmableButton *)self setNeedsLayout];
}

- (void)_setHidden:(BOOL)hidden external:(BOOL)external
{
  hiddenCopy = hidden;
  if (!external || ([(MFDimmableButton *)self setStickyHiddenValue:hidden], [(MFDimmableButton *)self autohidePreference]!= 1))
  {
    v6.receiver = self;
    v6.super_class = MFDimmableButton;
    [(MFDimmableButton *)&v6 setHidden:hiddenCopy];
  }
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = MFDimmableButton;
  [(MFDimmableButton *)&v4 setSelected:selected];
  [(MFDimmableButton *)self _updateDimmedHidingIfNecessary];
}

- (void)_updateDimmedHidingIfNecessary
{
  autohidePreference = [(MFDimmableButton *)self autohidePreference];
  if (autohidePreference == 1)
  {
    v4 = 1;
  }

  else
  {
    if (autohidePreference != 2)
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