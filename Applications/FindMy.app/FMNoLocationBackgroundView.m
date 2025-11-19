@interface FMNoLocationBackgroundView
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FMNoLocationBackgroundView

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMNoLocationBackgroundView();
  v4 = a3;
  v5 = v6.receiver;
  [(FMNoLocationBackgroundView *)&v6 traitCollectionDidChange:v4];
  sub_100019994();
}

@end