@interface Interstellar.HighlightsSource
- (void)highlightCenter:(id)center didRemoveHighlights:(id)highlights;
@end

@implementation Interstellar.HighlightsSource

- (void)highlightCenter:(id)center didRemoveHighlights:(id)highlights
{
  v4 = (&self->super.isa + OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_resolver);
  v5 = *(&self->super.isa + OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_resolver);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  selfCopy = self;
  sub_44F118(v5);
  sub_44B93C();
}

@end