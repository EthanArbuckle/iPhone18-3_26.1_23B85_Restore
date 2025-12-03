@interface NTKParmesanShuffleSelectionViewController
- (void)loadView;
- (void)passiveContentDataSourceAvailableTypesDidChange:(id)change;
- (void)passiveContentDataSourcePreviewAssetsDidChange:(id)change;
- (void)passiveContentPeoplePickerDataSourceChanged:(id)changed;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NTKParmesanShuffleSelectionViewController

- (void)loadView
{
  selfCopy = self;
  sub_23BF3D468();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_23BF3E00C(appear);
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ParmesanShuffleSelectionViewController();
  v2 = v3.receiver;
  [(NTKParmesanShuffleSelectionViewController *)&v3 viewDidLayoutSubviews];
  sub_23BF42B40();
}

- (void)passiveContentDataSourceAvailableTypesDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_23BF4BAD4(&unk_284EBF378, sub_23BF4BF38, &unk_284EBF390);
}

- (void)passiveContentDataSourcePreviewAssetsDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_23BF4BAD4(&unk_284EBF328, sub_23BF4BDBC, &unk_284EBF340);
}

- (void)passiveContentPeoplePickerDataSourceChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_23BF49414(changedCopy);
}

@end