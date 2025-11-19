@interface MFTimezoneCollectionViewCell
- (MFTimezoneCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)_configureWithCityName:(id)a3;
- (void)setCurrentCityName:(id)a3;
@end

@implementation MFTimezoneCollectionViewCell

- (MFTimezoneCollectionViewCell)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = MFTimezoneCollectionViewCell;
  v3 = [(MFTimezoneCollectionViewCell *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(MFTimezoneCollectionViewCell *)v3 defaultContentConfiguration];
    v6 = _EFLocalizedString();
    [v5 setText:v6];

    [(MFTimezoneCollectionViewCell *)v4 setContentConfiguration:v5];
    v7 = [MEMORY[0x1E695DFE8] localTimeZone];
    v8 = [MFTimezoneHelper cityForTimeZone:v7];
    v9 = [v8 displayName];
    [(MFTimezoneCollectionViewCell *)v4 setCurrentCityName:v9];
  }

  return v4;
}

- (void)setCurrentCityName:(id)a3
{
  v5 = a3;
  if (self->_currentCityName != v5)
  {
    objc_storeStrong(&self->_currentCityName, a3);
    [(MFTimezoneCollectionViewCell *)self _configureWithCityName:v5];
  }
}

- (void)_configureWithCityName:(id)a3
{
  v8[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E69DC7B8]) initWithText:v4];
  v6 = objc_alloc_init(MEMORY[0x1E69DC7A8]);
  v8[0] = v6;
  v8[1] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  [(MFTimezoneCollectionViewCell *)self setAccessories:v7];
}

@end