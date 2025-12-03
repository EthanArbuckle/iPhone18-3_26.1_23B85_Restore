@interface AnimationView
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation AnimationView

- (void)layoutSubviews
{
  selfCopy = self;
  AnimationView.layoutSubviews()();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  AnimationView.traitCollectionDidChange(_:)(v9);
}

@end