@interface _SWCollaborationDetailViewController
- (NSItemProvider)itemProvider;
- (SWCollaborationDetailViewModel)viewModel;
- (SWHighlight)collaborationHighlight;
- (UICloudSharingControllerDelegate)cloudSharingControllerDelegate;
- (_SWCollaborationDetailViewController)initWithHighlight:(id)a3 listContent:(id)a4;
- (_SWCollaborationDetailViewController)initWithItemProvider:(id)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)setCloudSharingControllerDelegate:(id)a3;
- (void)setCollaborationHighlight:(id)a3;
- (void)setItemProvider:(id)a3;
- (void)setListContentView:(id)a3;
- (void)setManageButtonTitle:(id)a3;
@end

@implementation _SWCollaborationDetailViewController

- (void)setItemProvider:(id)a3
{
  v4 = a3;
  v5 = [(_SWCollaborationDetailViewController *)self viewModel];
  [v5 setItemProvider:v4];
}

- (NSItemProvider)itemProvider
{
  v2 = [(_SWCollaborationDetailViewController *)self viewModel];
  v3 = [v2 itemProvider];

  return v3;
}

- (void)setCloudSharingControllerDelegate:(id)a3
{
  v4 = a3;
  v5 = [(_SWCollaborationDetailViewController *)self viewModel];
  [v5 setCloudSharingControllerDelegate:v4];
}

- (UICloudSharingControllerDelegate)cloudSharingControllerDelegate
{
  v2 = [(_SWCollaborationDetailViewController *)self viewModel];
  v3 = [v2 cloudSharingControllerDelegate];

  return v3;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  [a3 preferredContentSize];

  [(_SWCollaborationDetailViewController *)self setPreferredContentSize:?];
}

- (void)setManageButtonTitle:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = [(_SWCollaborationDetailViewController *)self viewModel];
    v6 = [v5 manageButtonTitle];

    v4 = v8;
    if (v6 != v8)
    {
      v7 = [(_SWCollaborationDetailViewController *)self viewModel];
      [v7 setManageButtonTitle:v8];

      v4 = v8;
    }
  }
}

- (_SWCollaborationDetailViewController)initWithItemProvider:(id)a3
{
  if (a3)
  {
    self = [(_SWCollaborationDetailViewController *)self initWithItemProvider_impl:?];
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SWCollaborationDetailViewModel)viewModel
{
  v2 = self;
  result = [(_SWCollaborationDetailViewController *)v2 typeErasedViewModel];
  if (result)
  {

    type metadata accessor for CollaborationDetailViewModel(0);
    v4 = swift_dynamicCastClassUnconditional();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)setListContentView:(id)a3
{
  v4 = a3;
  v5 = self;
  _SWCollaborationDetailViewController.setListContentView(_:)(v4);
}

- (SWHighlight)collaborationHighlight
{
  v2 = self;
  v3 = [(_SWCollaborationDetailViewController *)v2 viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();

  return v5;
}

- (void)setCollaborationHighlight:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(_SWCollaborationDetailViewController *)v5 viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v4;
  sub_1BBC40ACC();
}

- (_SWCollaborationDetailViewController)initWithHighlight:(id)a3 listContent:(id)a4
{
  swift_getObjectType();
  v6 = a3;
  v7 = sub_1BBC3CA9C(a3, a4);
  swift_deallocPartialClassInstance();
  return v7;
}

@end