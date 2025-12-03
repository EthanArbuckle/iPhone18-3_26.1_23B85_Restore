@interface LibraryViewController
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation LibraryViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_F4C48();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for LibraryViewController();
  v4 = v5.receiver;
  [(VerticalStackViewController *)&v5 viewDidAppear:appearCopy];
  if (v4[OBJC_IVAR____TtC16MusicApplication21LibraryViewController_shouldRecordPageMetrics] == 1)
  {
    sub_F5668();
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for LibraryViewController();
  v4 = v7.receiver;
  [(VerticalStackViewController *)&v7 viewWillDisappear:disappearCopy];
  v5 = OBJC_IVAR____TtC16MusicApplication21LibraryViewController_shouldSkipRecordingPageMetricsForEditingStateChange;
  v6 = v4[OBJC_IVAR____TtC16MusicApplication21LibraryViewController_shouldSkipRecordingPageMetricsForEditingStateChange];
  v4[OBJC_IVAR____TtC16MusicApplication21LibraryViewController_shouldSkipRecordingPageMetricsForEditingStateChange] = 1;
  [v4 setEditing:0 animated:{0, v7.receiver, v7.super_class}];
  v4[v5] = v6;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  sub_F4E8C(editing, animated);
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for LibraryViewController();
  changeCopy = change;
  v5 = v6.receiver;
  [(LibraryViewController *)&v6 traitCollectionDidChange:changeCopy];
  sub_F5090(0);
  sub_F539C();
}

@end