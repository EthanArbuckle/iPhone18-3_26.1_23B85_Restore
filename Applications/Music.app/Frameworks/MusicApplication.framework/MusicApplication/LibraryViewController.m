@interface LibraryViewController
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation LibraryViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_F4C48();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for LibraryViewController();
  v4 = v5.receiver;
  [(VerticalStackViewController *)&v5 viewDidAppear:v3];
  if (v4[OBJC_IVAR____TtC16MusicApplication21LibraryViewController_shouldRecordPageMetrics] == 1)
  {
    sub_F5668();
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for LibraryViewController();
  v4 = v7.receiver;
  [(VerticalStackViewController *)&v7 viewWillDisappear:v3];
  v5 = OBJC_IVAR____TtC16MusicApplication21LibraryViewController_shouldSkipRecordingPageMetricsForEditingStateChange;
  v6 = v4[OBJC_IVAR____TtC16MusicApplication21LibraryViewController_shouldSkipRecordingPageMetricsForEditingStateChange];
  v4[OBJC_IVAR____TtC16MusicApplication21LibraryViewController_shouldSkipRecordingPageMetricsForEditingStateChange] = 1;
  [v4 setEditing:0 animated:{0, v7.receiver, v7.super_class}];
  v4[v5] = v6;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_F4E8C(a3, a4);
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for LibraryViewController();
  v4 = a3;
  v5 = v6.receiver;
  [(LibraryViewController *)&v6 traitCollectionDidChange:v4];
  sub_F5090(0);
  sub_F539C();
}

@end