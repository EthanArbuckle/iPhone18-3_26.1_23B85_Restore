@interface ArtistViewController
- (void)scrollViewDidScroll:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ArtistViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1E4B60();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(VerticalStackViewController *)&v6 viewWillAppear:v3];
  v5 = v4[OBJC_IVAR____TtC16MusicApplication20ArtistViewController__visible];
  v4[OBJC_IVAR____TtC16MusicApplication20ArtistViewController__visible] = 1;
  if ((v5 & 1) == 0)
  {
    sub_1E685C();
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(VerticalStackViewController *)&v6 viewWillDisappear:v3];
  v5 = v4[OBJC_IVAR____TtC16MusicApplication20ArtistViewController__visible];
  v4[OBJC_IVAR____TtC16MusicApplication20ArtistViewController__visible] = 0;
  if (v5 == 1)
  {
    sub_1E685C();
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = self;
  v12.super_class = ObjectType;
  v9 = self;
  [(VerticalStackViewController *)&v12 viewDidAppear:v3];
  v10 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v11 = MetricsEvent.Page.libraryArtistDetail.unsafeMutableAddressor();
  sub_1EC1F8(v11, v8, type metadata accessor for MetricsEvent.Page);
  (*(&stru_68.reloff + (swift_isaMask & *v10)))(v8, 0, 0, 0, 0, 0);
  sub_1EC260(v8, type metadata accessor for MetricsEvent.Page);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1E616C();
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1EB768();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1E644C(a3);
}

@end