@interface BTTableSharingCell
- (BTSDevice)currentDevice;
- (BTTableSharingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation BTTableSharingCell

- (BTTableSharingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v10.receiver = self;
  v10.super_class = BTTableSharingCell;
  specifier = [(PSTableCell *)&v10 initWithStyle:style reuseIdentifier:identifier, specifier];
  if (specifier)
  {
    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark.circle.fill"];
    v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v6];
    lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
    [v7 setTintColor:lightGrayColor];

    [(BTTableSharingCell *)specifier setAccessoryView:v7];
  }

  return specifier;
}

- (BTSDevice)currentDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_currentDevice);

  return WeakRetained;
}

@end