@interface ModernTitleHeaderView
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
@end

@implementation ModernTitleHeaderView

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  ModernTitleHeaderView.traitCollectionDidChange(_:)(v9);
}

- (void)updateConstraints
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(ModernTitleHeaderView *)&v4 updateConstraints];
  v3 = [v2 traitCollection];
  sub_170488(v3);
}

@end