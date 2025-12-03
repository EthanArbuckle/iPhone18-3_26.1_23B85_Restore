@interface ConceptDeltaHighlightFeedItemView
- (_TtC13HealthRecords33ConceptDeltaHighlightFeedItemView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ConceptDeltaHighlightFeedItemView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_29D57CF38(change);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_29D57D810();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for ConceptDeltaHighlightFeedItemView();
  [(ConceptDeltaHighlightFeedItemView *)&v3 layoutSubviews];
}

- (_TtC13HealthRecords33ConceptDeltaHighlightFeedItemView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end