@interface DNSTableCell
- (DNSTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation DNSTableCell

- (DNSTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v6.receiver = self;
  v6.super_class = DNSTableCell;
  return [(DNSTableCell *)&v6 initWithStyle:3 reuseIdentifier:a4 specifier:a5];
}

@end