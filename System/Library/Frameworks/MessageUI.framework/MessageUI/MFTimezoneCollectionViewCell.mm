@interface MFTimezoneCollectionViewCell
- (MFTimezoneCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_configureWithCityName:(id)name;
- (void)setCurrentCityName:(id)name;
@end

@implementation MFTimezoneCollectionViewCell

- (MFTimezoneCollectionViewCell)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = MFTimezoneCollectionViewCell;
  v3 = [(MFTimezoneCollectionViewCell *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    defaultContentConfiguration = [(MFTimezoneCollectionViewCell *)v3 defaultContentConfiguration];
    v6 = _EFLocalizedString();
    [defaultContentConfiguration setText:v6];

    [(MFTimezoneCollectionViewCell *)v4 setContentConfiguration:defaultContentConfiguration];
    localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
    v8 = [MFTimezoneHelper cityForTimeZone:localTimeZone];
    displayName = [v8 displayName];
    [(MFTimezoneCollectionViewCell *)v4 setCurrentCityName:displayName];
  }

  return v4;
}

- (void)setCurrentCityName:(id)name
{
  nameCopy = name;
  if (self->_currentCityName != nameCopy)
  {
    objc_storeStrong(&self->_currentCityName, name);
    [(MFTimezoneCollectionViewCell *)self _configureWithCityName:nameCopy];
  }
}

- (void)_configureWithCityName:(id)name
{
  v8[2] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = [objc_alloc(MEMORY[0x1E69DC7B8]) initWithText:nameCopy];
  v6 = objc_alloc_init(MEMORY[0x1E69DC7A8]);
  v8[0] = v6;
  v8[1] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  [(MFTimezoneCollectionViewCell *)self setAccessories:v7];
}

@end