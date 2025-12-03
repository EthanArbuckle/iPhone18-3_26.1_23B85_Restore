@interface DNSTableCell
- (DNSTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation DNSTableCell

- (DNSTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = DNSTableCell;
  return [(DNSTableCell *)&v6 initWithStyle:3 reuseIdentifier:identifier specifier:specifier];
}

@end