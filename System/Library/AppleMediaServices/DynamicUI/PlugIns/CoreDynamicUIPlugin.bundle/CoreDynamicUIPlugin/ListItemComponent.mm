@interface ListItemComponent
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ListItemComponent

- (void)prepareForReuse
{
  v2 = self;
  sub_4B66C();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_4C1DC(&selRef_layoutSubviews);
}

@end