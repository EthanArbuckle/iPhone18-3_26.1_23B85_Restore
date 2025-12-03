@interface CRLSEMainViewController
- (_TtC24FreeformSharingExtension23CRLSEMainViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)cancel:(id)cancel;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)loadView;
- (void)observedTraitsDidChange;
- (void)save:(id)save;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CRLSEMainViewController

- (void)loadView
{
  selfCopy = self;
  sub_1000272EC();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100028514();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10002A67C(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CRLSEMainViewController();
  v4 = v9.receiver;
  [(CRLSEMainViewController *)&v9 viewWillDisappear:disappearCopy];
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
  selfCopy = self;
  sub_10002AAFC();
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for CRLSEMainViewController();
  [(CRLSEMainViewController *)&v6 dealloc];
}

- (void)observedTraitsDidChange
{
  selfCopy = self;
  sub_10002AF30();
}

- (void)save:(id)save
{
  saveCopy = save;
  selfCopy = self;
  sub_100032A9C();
}

- (void)cancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_100032C34();
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_10007DF44();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007DF24();
  viewCopy = view;
  selfCopy = self;
  sub_100030CA4(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (_TtC24FreeformSharingExtension23CRLSEMainViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_10007E444();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100031228(v5, v7, bundle);
}

@end