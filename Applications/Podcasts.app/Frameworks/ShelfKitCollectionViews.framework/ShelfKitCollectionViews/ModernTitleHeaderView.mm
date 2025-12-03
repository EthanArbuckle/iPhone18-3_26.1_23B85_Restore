@interface ModernTitleHeaderView
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation ModernTitleHeaderView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  ModernTitleHeaderView.traitCollectionDidChange(_:)(v9);
}

- (void)updateConstraints
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(ModernTitleHeaderView *)&v4 updateConstraints];
  traitCollection = [v2 traitCollection];
  sub_170488(traitCollection);
}

@end