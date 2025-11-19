@interface EKUICalendarListContentConfiguration
- (id)copyWithZone:(_NSZone *)a3;
- (id)makeContentView;
@end

@implementation EKUICalendarListContentConfiguration

- (id)makeContentView
{
  v3 = objc_alloc_init(EKUICalendarListViewHeaderContentView);
  [(EKUICalendarListViewHeaderContentView *)v3 setConfiguration:self];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = EKUICalendarListContentConfiguration;
  return [(EKUICalendarListContentConfiguration *)&v4 copy];
}

@end