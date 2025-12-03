@interface CRLSEBoardPickerViewController
- (_TtC24FreeformSharingExtension30CRLSEBoardPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)cancel:(id)cancel;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation CRLSEBoardPickerViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100053D04();
}

- (void)cancel:(id)cancel
{
  selfCopy = self;
  navigationController = [(CRLSEBoardPickerViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v4 = navigationController;
  }
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
  sub_1000570B8(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (_TtC24FreeformSharingExtension30CRLSEBoardPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end