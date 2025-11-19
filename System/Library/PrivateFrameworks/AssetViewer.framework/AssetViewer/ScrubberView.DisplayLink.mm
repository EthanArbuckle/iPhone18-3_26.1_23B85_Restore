@interface ScrubberView.DisplayLink
- (_TtCC11AssetViewer12ScrubberViewP33_82866A5555A2CDB794CEBCFE6A3F2A7D11DisplayLink)init;
- (void)handleLink:(id)a3;
@end

@implementation ScrubberView.DisplayLink

- (void)handleLink:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCC11AssetViewer12ScrubberViewP33_82866A5555A2CDB794CEBCFE6A3F2A7D11DisplayLink_linkFired);
  if (v3)
  {
    v4 = self;
    sub_24124AD38(v3);
    v3(v4);

    sub_2412186FC(v3);
  }
}

- (_TtCC11AssetViewer12ScrubberViewP33_82866A5555A2CDB794CEBCFE6A3F2A7D11DisplayLink)init
{
  v2 = (&self->super.isa + OBJC_IVAR____TtCC11AssetViewer12ScrubberViewP33_82866A5555A2CDB794CEBCFE6A3F2A7D11DisplayLink_linkFired);
  *v2 = 0;
  v2[1] = 0;
  *(&self->super.isa + OBJC_IVAR____TtCC11AssetViewer12ScrubberViewP33_82866A5555A2CDB794CEBCFE6A3F2A7D11DisplayLink_link) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for ScrubberView.DisplayLink();
  return [(ScrubberView.DisplayLink *)&v4 init];
}

@end