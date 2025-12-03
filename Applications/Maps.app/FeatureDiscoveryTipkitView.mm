@interface FeatureDiscoveryTipkitView
- (void)setTopPadding:(double)padding;
- (void)updateContent:(id)content;
- (void)updateForSizeClassChange;
@end

@implementation FeatureDiscoveryTipkitView

- (void)setTopPadding:(double)padding
{
  *&self->MUFeatureDiscoveryAnnotationView_opaque[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_topPadding] = padding;
  selfCopy = self;
  sub_10021533C();
}

- (void)updateContent:(id)content
{
  contentCopy = content;
  selfCopy = self;
  sub_1002162E0(contentCopy);
}

- (void)updateForSizeClassChange
{
  selfCopy = self;
  sub_1002171DC();
}

@end