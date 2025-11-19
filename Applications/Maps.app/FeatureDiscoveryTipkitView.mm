@interface FeatureDiscoveryTipkitView
- (void)setTopPadding:(double)a3;
- (void)updateContent:(id)a3;
- (void)updateForSizeClassChange;
@end

@implementation FeatureDiscoveryTipkitView

- (void)setTopPadding:(double)a3
{
  *&self->MUFeatureDiscoveryAnnotationView_opaque[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_topPadding] = a3;
  v3 = self;
  sub_10021533C();
}

- (void)updateContent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002162E0(v4);
}

- (void)updateForSizeClassChange
{
  v2 = self;
  sub_1002171DC();
}

@end