@interface MFTimeHeaderCollectionViewCell
- (MFTimeHeaderCollectionViewCell)initWithFrame:(CGRect)frame;
- (MFTimeHeaderCollectionViewCellDelegate)delegate;
- (UISwitch)switchView;
- (void)showTimeWheelCell:(id)cell;
- (void)updateSecondaryTextWithTime:(id)time timeSwitchEnabled:(BOOL)enabled;
@end

@implementation MFTimeHeaderCollectionViewCell

- (MFTimeHeaderCollectionViewCell)initWithFrame:(CGRect)frame
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = MFTimeHeaderCollectionViewCell;
  v3 = [(MFTimeHeaderCollectionViewCell *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    defaultContentConfiguration = [(MFTimeHeaderCollectionViewCell *)v3 defaultContentConfiguration];
    v6 = _EFLocalizedString();
    [defaultContentConfiguration setText:v6];

    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"clock"];
    [defaultContentConfiguration setImage:v7];

    datePickerHeaderColor = [MEMORY[0x1E69DC888] datePickerHeaderColor];
    secondaryTextProperties = [defaultContentConfiguration secondaryTextProperties];
    [secondaryTextProperties setColor:datePickerHeaderColor];

    [(MFTimeHeaderCollectionViewCell *)v4 setContentConfiguration:defaultContentConfiguration];
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

- (void)showTimeWheelCell:(id)cell
{
  cellCopy = cell;
  delegate = [(MFTimeHeaderCollectionViewCell *)self delegate];
  [delegate datePickerTimeHeaderCollectionViewCell:self showTime:{objc_msgSend(cellCopy, "isOn")}];
}

- (void)updateSecondaryTextWithTime:(id)time timeSwitchEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v8 = [MEMORY[0x1E696AB78] ef_formatDate:time style:4];
  contentConfiguration = [(MFTimeHeaderCollectionViewCell *)self contentConfiguration];
  [contentConfiguration setSecondaryText:v8];
  [(MFTimeHeaderCollectionViewCell *)self setContentConfiguration:contentConfiguration];
  switchView = [(MFTimeHeaderCollectionViewCell *)self switchView];
  if ([switchView isOn] != enabledCopy)
  {
    [switchView setOn:enabledCopy];
    [(MFTimeHeaderCollectionViewCell *)self showTimeWheelCell:switchView];
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