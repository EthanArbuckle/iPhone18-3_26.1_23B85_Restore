@interface MFTimeHeaderCollectionViewCell
- (MFTimeHeaderCollectionViewCell)initWithFrame:(CGRect)a3;
- (MFTimeHeaderCollectionViewCellDelegate)delegate;
- (UISwitch)switchView;
- (void)showTimeWheelCell:(id)a3;
- (void)updateSecondaryTextWithTime:(id)a3 timeSwitchEnabled:(BOOL)a4;
@end

@implementation MFTimeHeaderCollectionViewCell

- (MFTimeHeaderCollectionViewCell)initWithFrame:(CGRect)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = MFTimeHeaderCollectionViewCell;
  v3 = [(MFTimeHeaderCollectionViewCell *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(MFTimeHeaderCollectionViewCell *)v3 defaultContentConfiguration];
    v6 = _EFLocalizedString();
    [v5 setText:v6];

    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"clock"];
    [v5 setImage:v7];

    v8 = [MEMORY[0x1E69DC888] datePickerHeaderColor];
    v9 = [v5 secondaryTextProperties];
    [v9 setColor:v8];

    [(MFTimeHeaderCollectionViewCell *)v4 setContentConfiguration:v5];
    v10 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    v11 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v10 placement:1];
    v15[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [(MFTimeHeaderCollectionViewCell *)v4 setAccessories:v12];

    [v10 addTarget:v4 action:sel_showTimeWheelCell_ forControlEvents:4096];
    objc_storeWeak(&v4->_switchView, v10);
  }

  return v4;
}

- (void)showTimeWheelCell:(id)a3
{
  v5 = a3;
  v4 = [(MFTimeHeaderCollectionViewCell *)self delegate];
  [v4 datePickerTimeHeaderCollectionViewCell:self showTime:{objc_msgSend(v5, "isOn")}];
}

- (void)updateSecondaryTextWithTime:(id)a3 timeSwitchEnabled:(BOOL)a4
{
  v4 = a4;
  v8 = [MEMORY[0x1E696AB78] ef_formatDate:a3 style:4];
  v6 = [(MFTimeHeaderCollectionViewCell *)self contentConfiguration];
  [v6 setSecondaryText:v8];
  [(MFTimeHeaderCollectionViewCell *)self setContentConfiguration:v6];
  v7 = [(MFTimeHeaderCollectionViewCell *)self switchView];
  if ([v7 isOn] != v4)
  {
    [v7 setOn:v4];
    [(MFTimeHeaderCollectionViewCell *)self showTimeWheelCell:v7];
  }
}

- (MFTimeHeaderCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UISwitch)switchView
{
  WeakRetained = objc_loadWeakRetained(&self->_switchView);

  return WeakRetained;
}

@end