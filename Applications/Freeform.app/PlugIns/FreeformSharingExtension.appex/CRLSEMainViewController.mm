@interface CRLSEMainViewController
- (_TtC24FreeformSharingExtension23CRLSEMainViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)cancel:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)loadView;
- (void)observedTraitsDidChange;
- (void)save:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CRLSEMainViewController

- (void)loadView
{
  v2 = self;
  sub_1000272EC();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100028514();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10002A67C(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CRLSEMainViewController();
  v4 = v9.receiver;
  [(CRLSEMainViewController *)&v9 viewWillDisappear:v3];
  v5 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_boardPickerContentSizeObservation;
  v6 = *&v4[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_boardPickerContentSizeObservation];
  if (v6)
  {
    v7 = v6;
    sub_10007DC64();

    v8 = *&v4[v5];
  }

  else
  {
    v8 = 0;
  }

  *&v4[v5] = 0;
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10002AAFC();
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for CRLSEMainViewController();
  [(CRLSEMainViewController *)&v6 dealloc];
}

- (void)observedTraitsDidChange
{
  v2 = self;
  sub_10002AF30();
}

- (void)save:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100032A9C();
}

- (void)cancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100032C34();
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_10007DF44();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007DF24();
  v10 = a3;
  v11 = self;
  sub_100030CA4(v10);

  (*(v7 + 8))(v9, v6);
}

- (_TtC24FreeformSharingExtension23CRLSEMainViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_10007E444();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100031228(v5, v7, a4);
}

@end