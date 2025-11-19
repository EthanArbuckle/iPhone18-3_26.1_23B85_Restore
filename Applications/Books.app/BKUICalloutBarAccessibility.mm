@interface BKUICalloutBarAccessibility
- (void)appear;
- (void)fade;
@end

@implementation BKUICalloutBarAccessibility

- (void)appear
{
  v7.receiver = self;
  v7.super_class = BKUICalloutBarAccessibility;
  [(BKUICalloutBarAccessibility *)&v7 appear];
  v3 = [(BKUICalloutBarAccessibility *)self subviews];
  if ([v3 count])
  {
    v4 = dispatch_time(0, 750000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100133FA0;
    block[3] = &unk_100A033C8;
    v6 = v3;
    dispatch_after(v4, &_dispatch_main_q, block);
  }
}

- (void)fade
{
  if ((byte_100B22DE0 & 1) == 0)
  {
    v2.receiver = self;
    v2.super_class = BKUICalloutBarAccessibility;
    [(BKUICalloutBarAccessibility *)&v2 fade];
  }
}

@end