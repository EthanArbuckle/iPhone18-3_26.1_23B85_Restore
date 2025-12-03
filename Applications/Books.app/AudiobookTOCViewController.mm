@interface AudiobookTOCViewController
- (_TtC5Books26AudiobookTOCViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_traitCollectionDidChangeWithSender:(id)sender previousTraitCollection:(id)collection;
- (void)dealloc;
- (void)onAppWillEnterForegroundWithNotification:(id)notification;
- (void)scrollViewDidScroll:(id)scroll;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateTimeRemaining;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AudiobookTOCViewController

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for AudiobookTOCViewController();
  [(AudiobookTOCViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1003DF128();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1003DFD80(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AudiobookTOCViewController();
  v4 = v5.receiver;
  [(AudiobookTOCViewController *)&v5 viewDidAppear:appearCopy];
  sub_10042C670();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AudiobookTOCViewController();
  v4 = v5.receiver;
  [(AudiobookTOCViewController *)&v5 viewWillDisappear:disappearCopy];
  sub_1003E1ADC();
}

- (void)_traitCollectionDidChangeWithSender:(id)sender previousTraitCollection:(id)collection
{
  swift_unknownObjectRetain();
  collectionCopy = collection;
  selfCopy = self;
  sub_1007A3504();
  swift_unknownObjectRelease();
  sub_1003E3740();

  sub_1000074E0(&v8);
}

- (void)updateTimeRemaining
{
  selfCopy = self;
  sub_1003E1FC0();
}

- (void)onAppWillEnterForegroundWithNotification:(id)notification
{
  selfCopy = self;
  view = [(AudiobookTOCViewController *)selfCopy view];
  if (view)
  {
    v4 = view;
    window = [view window];

    v6 = selfCopy;
    if (window)
    {

      sub_10042C670();
      v6 = selfCopy;
    }
  }

  else
  {
    __break(1u);
  }
}

- (_TtC5Books26AudiobookTOCViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_10079B9A4();

  if (v8 >> 62)
  {
    v6 = sub_1007A38D4();
  }

  else
  {
    v6 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_100796E74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796E14();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1003E2770(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_100796E74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796E14();
  viewCopy = view;
  selfCopy = self;
  sub_1003E3A34();

  (*(v7 + 8))(v9, v6);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1003E2FC4(scrollCopy);
}

@end