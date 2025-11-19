@interface MFDateHeaderCollectionViewCell
- (MFDateHeaderCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)updateSecondaryTextWithDate:(id)a3;
@end

@implementation MFDateHeaderCollectionViewCell

- (MFDateHeaderCollectionViewCell)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = MFDateHeaderCollectionViewCell;
  v3 = [(MFDateHeaderCollectionViewCell *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(MFDateHeaderCollectionViewCell *)v3 defaultContentConfiguration];
    v6 = _EFLocalizedString();
    [v5 setText:v6];

    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"calendar"];
    [v5 setImage:v7];

    v8 = [MEMORY[0x1E69DC888] datePickerHeaderColor];
    v9 = [v5 secondaryTextProperties];
    [v9 setColor:v8];

    [(MFDateHeaderCollectionViewCell *)v4 setContentConfiguration:v5];
  }

  return v4;
}

- (void)updateSecondaryTextWithDate:(id)a3
{
  v5 = [MEMORY[0x1E696AB78] ef_formatDate:a3 style:3];
  v4 = [(MFDateHeaderCollectionViewCell *)self contentConfiguration];
  [v4 setSecondaryText:v5];
  [(MFDateHeaderCollectionViewCell *)self setContentConfiguration:v4];
}

@end