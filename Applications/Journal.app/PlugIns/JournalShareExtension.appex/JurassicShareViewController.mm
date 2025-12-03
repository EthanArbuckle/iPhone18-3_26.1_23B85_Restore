@interface JurassicShareViewController
- (_TtC21JournalShareExtension27JurassicShareViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)cancelTapped:(id)tapped;
- (void)dealloc;
- (void)doneTapped:(id)tapped;
- (void)extensionWillEnterForeground;
- (void)presentKeyboard;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation JurassicShareViewController

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for JurassicShareViewController();
  [(JurassicShareViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100033B64();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for JurassicShareViewController();
  v4 = v5.receiver;
  [(JurassicShareViewController *)&v5 viewWillAppear:appearCopy];
  sub_1000352E0();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for JurassicShareViewController();
  v4 = v6.receiver;
  [(JurassicShareViewController *)&v6 viewDidAppear:appearCopy];
  v4[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_hasAppeared] = 1;
  v5 = OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_presentsKeyboardAutomatically;
  if (v4[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_presentsKeyboardAutomatically] == 1)
  {
    [v4 presentKeyboard];
    v4[v5] = 0;
  }
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_100035EA8();
}

- (void)extensionWillEnterForeground
{
  v3 = sub_100007210(&qword_10014CBD8);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_100101324();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_100101304();
  selfCopy = self;
  v8 = sub_1001012F4();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = selfCopy;
  sub_1000D73F8(0, 0, v5, &unk_10010CBD0, v9);
}

- (_TtC21JournalShareExtension27JurassicShareViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_100100FD4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100036548(v5, v7, bundle);
}

- (void)doneTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_10003CE18();
}

- (void)cancelTapped:(id)tapped
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  selfCopy = self;
  tappedCopy = tapped;
  sub_1000D24E8(selfCopy, tapped, sub_10003C854, v5);
}

- (void)presentKeyboard
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_hasAppeared) == 1)
  {
    [*(&self->super.super.super.isa + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_textView) becomeFirstResponder];
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_presentsKeyboardAutomatically) = 1;
  }
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_photoAssets);
  if (v4 >> 62)
  {
    selfCopy = self;
    v5 = sub_100101DA4();
    self = selfCopy;
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = qword_10014B6B8;
  selfCopy2 = self;
  if (v6 != -1)
  {
    v11 = selfCopy2;
    swift_once();
    selfCopy2 = v11;
  }

  v8 = qword_100158620;

  if (v8 >= v5)
  {
    return v5;
  }

  else
  {
    return v8;
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = sub_1000FFA44();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000FFA24();
  viewCopy = view;
  selfCopy = self;
  sub_10003C368(viewCopy);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

@end