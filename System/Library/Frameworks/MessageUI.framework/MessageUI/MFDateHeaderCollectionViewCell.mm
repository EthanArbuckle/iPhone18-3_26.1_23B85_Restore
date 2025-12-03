@interface MFDateHeaderCollectionViewCell
- (MFDateHeaderCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)updateSecondaryTextWithDate:(id)date;
@end

@implementation MFDateHeaderCollectionViewCell

- (MFDateHeaderCollectionViewCell)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = MFDateHeaderCollectionViewCell;
  v3 = [(MFDateHeaderCollectionViewCell *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    defaultContentConfiguration = [(MFDateHeaderCollectionViewCell *)v3 defaultContentConfiguration];
    v6 = _EFLocalizedString();
    [defaultContentConfiguration setText:v6];

    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"calendar"];
    [defaultContentConfiguration setImage:v7];

    datePickerHeaderColor = [MEMORY[0x1E69DC888] datePickerHeaderColor];
    secondaryTextProperties = [defaultContentConfiguration secondaryTextProperties];
    [secondaryTextProperties setColor:datePickerHeaderColor];

    [(MFDateHeaderCollectionViewCell *)v4 setContentConfiguration:defaultContentConfiguration];
  }

  return v4;
}

- (void)updateSecondaryTextWithDate:(id)date
{
  v5 = [MEMORY[0x1E696AB78] ef_formatDate:date style:3];
  contentConfiguration = [(MFDateHeaderCollectionViewCell *)self contentConfiguration];
  [contentConfiguration setSecondaryText:v5];
  [(MFDateHeaderCollectionViewCell *)self setContentConfiguration:contentConfiguration];
}

@end