@interface MapItemDetailView.Coordinator
- (_TtCV15_MapKit_SwiftUIP33_88864655A4452E6E3BB4AF822A3E769217MapItemDetailView11Coordinator)init;
- (void)mapItemDetailViewControllerDidFinish:(id)a3;
@end

@implementation MapItemDetailView.Coordinator

- (void)mapItemDetailViewControllerDidFinish:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCV15_MapKit_SwiftUIP33_88864655A4452E6E3BB4AF822A3E769217MapItemDetailView11Coordinator_didRequestDismissal);
  if (v3)
  {
    v4 = *&self->didRequestDismissal[OBJC_IVAR____TtCV15_MapKit_SwiftUIP33_88864655A4452E6E3BB4AF822A3E769217MapItemDetailView11Coordinator_didRequestDismissal];
    v5 = self;
    v6 = sub_213CD4E28(v3);
    v3(v6);

    sub_213CCE520(v3);
  }
}

- (_TtCV15_MapKit_SwiftUIP33_88864655A4452E6E3BB4AF822A3E769217MapItemDetailView11Coordinator)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtCV15_MapKit_SwiftUIP33_88864655A4452E6E3BB4AF822A3E769217MapItemDetailView11Coordinator_didRequestDismissal);
  v4 = type metadata accessor for MapItemDetailView.Coordinator();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(MapItemDetailView.Coordinator *)&v6 init];
}

@end