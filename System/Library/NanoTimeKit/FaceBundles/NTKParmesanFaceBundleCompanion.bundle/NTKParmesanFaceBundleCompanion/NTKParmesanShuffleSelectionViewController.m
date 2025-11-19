@interface NTKParmesanShuffleSelectionViewController
- (void)loadView;
- (void)passiveContentDataSourceAvailableTypesDidChange:(id)a3;
- (void)passiveContentDataSourcePreviewAssetsDidChange:(id)a3;
- (void)passiveContentPeoplePickerDataSourceChanged:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation NTKParmesanShuffleSelectionViewController

- (void)loadView
{
  v2 = self;
  sub_23BF3D468();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_23BF3E00C(a3);
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ParmesanShuffleSelectionViewController();
  v2 = v3.receiver;
  [(NTKParmesanShuffleSelectionViewController *)&v3 viewDidLayoutSubviews];
  sub_23BF42B40();
}

- (void)passiveContentDataSourceAvailableTypesDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23BF4BAD4(&unk_284EBF378, sub_23BF4BF38, &unk_284EBF390);
}

- (void)passiveContentDataSourcePreviewAssetsDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23BF4BAD4(&unk_284EBF328, sub_23BF4BDBC, &unk_284EBF340);
}

- (void)passiveContentPeoplePickerDataSourceChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23BF49414(v4);
}

@end