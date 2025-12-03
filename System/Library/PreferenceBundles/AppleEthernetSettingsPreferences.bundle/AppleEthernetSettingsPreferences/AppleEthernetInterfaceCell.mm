@interface AppleEthernetInterfaceCell
- (AppleEthernetInterfaceCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)initializeWithInterface:(id)interface;
- (void)prepareForReuse;
@end

@implementation AppleEthernetInterfaceCell

- (AppleEthernetInterfaceCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = AppleEthernetInterfaceCell;
  v4 = [(AppleEthernetInterfaceCell *)&v7 initWithStyle:1 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(AppleEthernetInterfaceCell *)v4 setAccessoryType:1];
  }

  return v5;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = AppleEthernetInterfaceCell;
  [(AppleEthernetInterfaceCell *)&v4 prepareForReuse];
  textLabel = [(AppleEthernetInterfaceCell *)self textLabel];
  [textLabel setText:0];
}

- (void)initializeWithInterface:(id)interface
{
  displayName = [interface displayName];
  textLabel = [(AppleEthernetInterfaceCell *)self textLabel];
  [textLabel setText:displayName];
}

@end