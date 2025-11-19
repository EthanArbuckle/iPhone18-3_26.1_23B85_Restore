@interface BTTableSharingCell
- (BTSDevice)currentDevice;
- (BTTableSharingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation BTTableSharingCell

- (BTTableSharingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v10.receiver = self;
  v10.super_class = BTTableSharingCell;
  v5 = [(PSTableCell *)&v10 initWithStyle:a3 reuseIdentifier:a4, a5];
  if (v5)
  {
    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark.circle.fill"];
    v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v6];
    v8 = [MEMORY[0x277D75348] lightGrayColor];
    [v7 setTintColor:v8];

    [(BTTableSharingCell *)v5 setAccessoryView:v7];
  }

  return v5;
}

- (BTSDevice)currentDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_currentDevice);

  return WeakRetained;
}

@end