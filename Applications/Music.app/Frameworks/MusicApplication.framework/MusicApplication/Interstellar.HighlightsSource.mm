@interface Interstellar.HighlightsSource
- (void)highlightCenter:(id)a3 didRemoveHighlights:(id)a4;
@end

@implementation Interstellar.HighlightsSource

- (void)highlightCenter:(id)a3 didRemoveHighlights:(id)a4
{
  v4 = (&self->super.isa + OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_resolver);
  v5 = *(&self->super.isa + OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_resolver);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  v6 = self;
  sub_44F118(v5);
  sub_44B93C();
}

@end