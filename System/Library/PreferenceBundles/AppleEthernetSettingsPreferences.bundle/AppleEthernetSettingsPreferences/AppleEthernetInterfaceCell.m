@interface AppleEthernetInterfaceCell
- (AppleEthernetInterfaceCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)initializeWithInterface:(id)a3;
- (void)prepareForReuse;
@end

@implementation AppleEthernetInterfaceCell

- (AppleEthernetInterfaceCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = AppleEthernetInterfaceCell;
  v4 = [(AppleEthernetInterfaceCell *)&v7 initWithStyle:1 reuseIdentifier:a4];
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
  v3 = [(AppleEthernetInterfaceCell *)self textLabel];
  [v3 setText:0];
}

- (void)initializeWithInterface:(id)a3
{
  v5 = [a3 displayName];
  v4 = [(AppleEthernetInterfaceCell *)self textLabel];
  [v4 setText:v5];
}

@end