@interface FMNoLocationBackgroundView
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FMNoLocationBackgroundView

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMNoLocationBackgroundView();
  changeCopy = change;
  v5 = v6.receiver;
  [(FMNoLocationBackgroundView *)&v6 traitCollectionDidChange:changeCopy];
  sub_100019994();
}

@end