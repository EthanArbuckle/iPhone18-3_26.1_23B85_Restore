@interface RootViewController
+ (NSString)disableSwipeDownToDismissNotification;
- (BOOL)lookupItemDidLoad:(id)a3 parameters:(id)a4;
- (RootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)disableSwipeDownToDismiss:(id)a3;
- (void)setPreview:(id)a3;
- (void)setVisibleInClientWindow:(id)a3;
- (void)setupWithCancelButtonTitle:(id)a3 rightBarButtonTitle:(id)a4 showsStoreButton:(BOOL)a5 promptString:(id)a6 askToBuy:(BOOL)a7;
- (void)setupWithClientBundleID:(id)a3 bagType:(int64_t)a4;
- (void)storeButtonPressed:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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

- (RootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_10076FF9C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100743D90(v5, v7, a4);
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for RootViewController();
  v4 = v5.receiver;
  [(RootViewController *)&v5 viewWillAppear:v3];
  sub_1007466CC();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for RootViewController();
  v4 = v5.receiver;
  [(RootViewController *)&v5 viewDidAppear:v3];
  v4[OBJC_IVAR___RootViewController_isViewAppeared] = 1;
  if (v4[OBJC_IVAR___RootViewController_isVisibleInClientWindow] == 1)
  {
    sub_10076B1BC();
  }

  sub_1007466CC();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for RootViewController();
  v4 = v5.receiver;
  [(RootViewController *)&v5 viewWillDisappear:v3];
  if (*&v4[OBJC_IVAR___RootViewController_adAttributionManager])
  {

    sub_1007654DC();
  }

  v4[OBJC_IVAR___RootViewController_startedDisappearTransition] = 1;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_100746414(a3);
}

- (void)disableSwipeDownToDismiss:(id)a3
{
  v4 = sub_10075D7BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075D79C();
  v8 = self;
  sub_1007469E4();

  (*(v5 + 8))(v7, v4);
}

- (void)setupWithClientBundleID:(id)a3 bagType:(int64_t)a4
{
  v5 = sub_10076FF9C();
  v7 = v6;
  v8 = self;
  sub_10074E2D8(v5, v7);
}

- (BOOL)lookupItemDidLoad:(id)a3 parameters:(id)a4
{
  v6 = sub_10076FE4C();
  v7 = a3;
  v8 = self;
  v9 = sub_100744A50(v7, v6);

  sub_10074DAF4();
  v10 = *&v8->SKProductPageExtension_opaque[OBJC_IVAR___RootViewController_rootViewController];
  *&v8->SKProductPageExtension_opaque[OBJC_IVAR___RootViewController_rootViewController] = v9;
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

- (void)setupWithCancelButtonTitle:(id)a3 rightBarButtonTitle:(id)a4 showsStoreButton:(BOOL)a5 promptString:(id)a6 askToBuy:(BOOL)a7
{
  v10 = a4;
  if (a3)
  {
    v12 = sub_10076FF9C();
    v14 = v13;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v12 = 0;
  v14 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = sub_10076FF9C();
  v10 = v16;
  if (a6)
  {
LABEL_4:
    v17 = sub_10076FF9C();
    a6 = v18;
    goto LABEL_8;
  }

LABEL_7:
  v17 = 0;
LABEL_8:
  v19 = self;
  sub_100749680(v12, v14, v15, v10, a5, v17, a6, a7);
}

- (void)storeButtonPressed:(id)a3
{
  v3 = self;
  sub_100749B84();
}

- (void)setVisibleInClientWindow:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for RootViewController();
  v4 = a3;
  v5 = v6.receiver;
  [(RootViewController *)&v6 setVisibleInClientWindow:v4];
  sub_100743B64([v4 BOOLValue]);
}

- (void)setPreview:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10074A22C(v4);
}

@end