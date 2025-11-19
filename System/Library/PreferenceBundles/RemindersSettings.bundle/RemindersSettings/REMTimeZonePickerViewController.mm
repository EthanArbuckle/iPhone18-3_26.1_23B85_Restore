@interface REMTimeZonePickerViewController
- (_TtC17RemindersSettings31REMTimeZonePickerViewController)initWithCoder:(id)a3;
- (_TtC17RemindersSettings31REMTimeZonePickerViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC17RemindersSettings31REMTimeZonePickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)viewDidLoad;
@end

@implementation REMTimeZonePickerViewController

- (_TtC17RemindersSettings31REMTimeZonePickerViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_dataSource) = 0;
  v3 = (self + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_lastConsumedViewModel);
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_searchController) = 0;
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_initialSearchTerm);
  *v4 = 0;
  v4[1] = 0;
  result = sub_23FF0();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_18094();
}

- (_TtC17RemindersSettings31REMTimeZonePickerViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC17RemindersSettings31REMTimeZonePickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_23730();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23720();
  v11 = a3;
  v12 = self;
  sub_19970(v11);

  (*(v7 + 8))(v10, v6);
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = sub_23C90();
  v7 = v6;
  v8 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_presenter);
  v9 = self;
  sub_1203C(v5, v7);
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_19CC8(v4);
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_19F64();
}

@end