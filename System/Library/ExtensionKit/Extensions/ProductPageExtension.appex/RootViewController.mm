@interface RootViewController
+ (NSString)disableSwipeDownToDismissNotification;
- (BOOL)lookupItemDidLoad:(id)load parameters:(id)parameters;
- (RootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)disableSwipeDownToDismiss:(id)dismiss;
- (void)setPreview:(id)preview;
- (void)setVisibleInClientWindow:(id)window;
- (void)setupWithCancelButtonTitle:(id)title rightBarButtonTitle:(id)buttonTitle showsStoreButton:(BOOL)button promptString:(id)string askToBuy:(BOOL)buy;
- (void)setupWithClientBundleID:(id)d bagType:(int64_t)type;
- (void)storeButtonPressed:(id)pressed;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation RootViewController

+ (NSString)disableSwipeDownToDismissNotification
{
  if (qword_1009415E0 != -1)
  {
    swift_once();
  }

  v3 = qword_1009A3478;

  return v3;
}

- (RootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_10076FF9C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100743D90(v5, v7, bundle);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for RootViewController();
  v4 = v5.receiver;
  [(RootViewController *)&v5 viewWillAppear:appearCopy];
  sub_1007466CC();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for RootViewController();
  v4 = v5.receiver;
  [(RootViewController *)&v5 viewDidAppear:appearCopy];
  v4[OBJC_IVAR___RootViewController_isViewAppeared] = 1;
  if (v4[OBJC_IVAR___RootViewController_isVisibleInClientWindow] == 1)
  {
    sub_10076B1BC();
  }

  sub_1007466CC();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for RootViewController();
  v4 = v5.receiver;
  [(RootViewController *)&v5 viewWillDisappear:disappearCopy];
  if (*&v4[OBJC_IVAR___RootViewController_adAttributionManager])
  {

    sub_1007654DC();
  }

  v4[OBJC_IVAR___RootViewController_startedDisappearTransition] = 1;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100746414(disappear);
}

- (void)disableSwipeDownToDismiss:(id)dismiss
{
  v4 = sub_10075D7BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075D79C();
  selfCopy = self;
  sub_1007469E4();

  (*(v5 + 8))(v7, v4);
}

- (void)setupWithClientBundleID:(id)d bagType:(int64_t)type
{
  v5 = sub_10076FF9C();
  v7 = v6;
  selfCopy = self;
  sub_10074E2D8(v5, v7);
}

- (BOOL)lookupItemDidLoad:(id)load parameters:(id)parameters
{
  v6 = sub_10076FE4C();
  loadCopy = load;
  selfCopy = self;
  v9 = sub_100744A50(loadCopy, v6);

  sub_10074DAF4();
  v10 = *&selfCopy->SKProductPageExtension_opaque[OBJC_IVAR___RootViewController_rootViewController];
  *&selfCopy->SKProductPageExtension_opaque[OBJC_IVAR___RootViewController_rootViewController] = v9;
  v11 = v9;

  sub_10074650C();
  if (qword_1009414D8 != -1)
  {
    swift_once();
  }

  qword_100963B50 = &off_1008A3218;
  swift_unknownObjectWeakAssign();

  return 0;
}

- (void)setupWithCancelButtonTitle:(id)title rightBarButtonTitle:(id)buttonTitle showsStoreButton:(BOOL)button promptString:(id)string askToBuy:(BOOL)buy
{
  buttonTitleCopy = buttonTitle;
  if (title)
  {
    v12 = sub_10076FF9C();
    v14 = v13;
    if (buttonTitleCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (string)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v12 = 0;
  v14 = 0;
  if (!buttonTitle)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = sub_10076FF9C();
  buttonTitleCopy = v16;
  if (string)
  {
LABEL_4:
    v17 = sub_10076FF9C();
    string = v18;
    goto LABEL_8;
  }

LABEL_7:
  v17 = 0;
LABEL_8:
  selfCopy = self;
  sub_100749680(v12, v14, v15, buttonTitleCopy, button, v17, string, buy);
}

- (void)storeButtonPressed:(id)pressed
{
  selfCopy = self;
  sub_100749B84();
}

- (void)setVisibleInClientWindow:(id)window
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for RootViewController();
  windowCopy = window;
  v5 = v6.receiver;
  [(RootViewController *)&v6 setVisibleInClientWindow:windowCopy];
  sub_100743B64([windowCopy BOOLValue]);
}

- (void)setPreview:(id)preview
{
  previewCopy = preview;
  selfCopy = self;
  sub_10074A22C(previewCopy);
}

@end