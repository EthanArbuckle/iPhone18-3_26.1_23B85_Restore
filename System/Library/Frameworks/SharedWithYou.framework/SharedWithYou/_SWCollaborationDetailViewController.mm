@interface _SWCollaborationDetailViewController
- (NSItemProvider)itemProvider;
- (SWCollaborationDetailViewModel)viewModel;
- (SWHighlight)collaborationHighlight;
- (UICloudSharingControllerDelegate)cloudSharingControllerDelegate;
- (_SWCollaborationDetailViewController)initWithHighlight:(id)highlight listContent:(id)content;
- (_SWCollaborationDetailViewController)initWithItemProvider:(id)provider;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)setCloudSharingControllerDelegate:(id)delegate;
- (void)setCollaborationHighlight:(id)highlight;
- (void)setItemProvider:(id)provider;
- (void)setListContentView:(id)view;
- (void)setManageButtonTitle:(id)title;
@end

@implementation _SWCollaborationDetailViewController

- (void)setItemProvider:(id)provider
{
  providerCopy = provider;
  viewModel = [(_SWCollaborationDetailViewController *)self viewModel];
  [viewModel setItemProvider:providerCopy];
}

- (NSItemProvider)itemProvider
{
  viewModel = [(_SWCollaborationDetailViewController *)self viewModel];
  itemProvider = [viewModel itemProvider];

  return itemProvider;
}

- (void)setCloudSharingControllerDelegate:(id)delegate
{
  delegateCopy = delegate;
  viewModel = [(_SWCollaborationDetailViewController *)self viewModel];
  [viewModel setCloudSharingControllerDelegate:delegateCopy];
}

- (UICloudSharingControllerDelegate)cloudSharingControllerDelegate
{
  viewModel = [(_SWCollaborationDetailViewController *)self viewModel];
  cloudSharingControllerDelegate = [viewModel cloudSharingControllerDelegate];

  return cloudSharingControllerDelegate;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  [container preferredContentSize];

  [(_SWCollaborationDetailViewController *)self setPreferredContentSize:?];
}

- (void)setManageButtonTitle:(id)title
{
  titleCopy = title;
  if (titleCopy)
  {
    v8 = titleCopy;
    viewModel = [(_SWCollaborationDetailViewController *)self viewModel];
    manageButtonTitle = [viewModel manageButtonTitle];

    titleCopy = v8;
    if (manageButtonTitle != v8)
    {
      viewModel2 = [(_SWCollaborationDetailViewController *)self viewModel];
      [viewModel2 setManageButtonTitle:v8];

      titleCopy = v8;
    }
  }
}

- (_SWCollaborationDetailViewController)initWithItemProvider:(id)provider
{
  if (provider)
  {
    self = [(_SWCollaborationDetailViewController *)self initWithItemProvider_impl:?];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SWCollaborationDetailViewModel)viewModel
{
  selfCopy = self;
  result = [(_SWCollaborationDetailViewController *)selfCopy typeErasedViewModel];
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

- (void)setListContentView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  _SWCollaborationDetailViewController.setListContentView(_:)(viewCopy);
}

- (SWHighlight)collaborationHighlight
{
  selfCopy = self;
  viewModel = [(_SWCollaborationDetailViewController *)selfCopy viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();

  return v5;
}

- (void)setCollaborationHighlight:(id)highlight
{
  highlightCopy = highlight;
  selfCopy = self;
  viewModel = [(_SWCollaborationDetailViewController *)selfCopy viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = highlightCopy;
  sub_1BBC40ACC();
}

- (_SWCollaborationDetailViewController)initWithHighlight:(id)highlight listContent:(id)content
{
  swift_getObjectType();
  highlightCopy = highlight;
  v7 = sub_1BBC3CA9C(highlight, content);
  swift_deallocPartialClassInstance();
  return v7;
}

@end