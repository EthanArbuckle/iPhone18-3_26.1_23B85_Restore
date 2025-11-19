@interface CRLSEBoardPickerViewController
- (_TtC24FreeformSharingExtension30CRLSEBoardPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)cancel:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation CRLSEBoardPickerViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100053D04();
}

- (void)cancel:(id)a3
{
  v5 = self;
  v3 = [(CRLSEBoardPickerViewController *)v5 navigationController];
  if (v3)
  {
    v4 = v3;
  }
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
  sub_1000570B8(v10);

  (*(v7 + 8))(v9, v6);
}

- (_TtC24FreeformSharingExtension30CRLSEBoardPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end