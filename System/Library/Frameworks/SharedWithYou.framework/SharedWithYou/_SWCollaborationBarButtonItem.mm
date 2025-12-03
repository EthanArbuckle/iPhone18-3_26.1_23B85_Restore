@interface _SWCollaborationBarButtonItem
- (BOOL)isContentShared;
- (NSItemProvider)itemProvider;
- (SWHighlight)highlight;
- (UICloudSharingControllerDelegate)cloudSharingControllerDelegate;
- (_SWCollaborationBarButtonItem)initWithCollaborationButtonView:(id)view;
- (_SWCollaborationBarButtonItem)initWithHighlight:(id)highlight;
- (_SWCollaborationBarButtonItem)initWithHighlight:(id)highlight detailViewListContent:(id)content;
- (_SWCollaborationBarButtonItem)initWithItemProvider:(id)provider;
- (unint64_t)activeParticipantCount;
- (void)setActiveParticipantCount:(unint64_t)count;
- (void)setCloudSharingControllerDelegate:(id)delegate;
- (void)setDetailViewListContent:(id)content;
- (void)setHighlight:(id)highlight;
- (void)setItemProvider:(id)provider;
- (void)setManageButtonTitle:(id)title;
@end

@implementation _SWCollaborationBarButtonItem

- (NSItemProvider)itemProvider
{
  collaborationButtonView = [(_SWCollaborationBarButtonItem *)self collaborationButtonView];
  buttonView = [collaborationButtonView buttonView];
  itemProvider = [buttonView itemProvider];

  return itemProvider;
}

- (void)setItemProvider:(id)provider
{
  providerCopy = provider;
  collaborationButtonView = [(_SWCollaborationBarButtonItem *)self collaborationButtonView];
  buttonView = [collaborationButtonView buttonView];
  [buttonView setItemProvider:providerCopy];
}

- (UICloudSharingControllerDelegate)cloudSharingControllerDelegate
{
  collaborationButtonView = [(_SWCollaborationBarButtonItem *)self collaborationButtonView];
  buttonView = [collaborationButtonView buttonView];
  cloudSharingControllerDelegate = [buttonView cloudSharingControllerDelegate];

  return cloudSharingControllerDelegate;
}

- (void)setCloudSharingControllerDelegate:(id)delegate
{
  delegateCopy = delegate;
  collaborationButtonView = [(_SWCollaborationBarButtonItem *)self collaborationButtonView];
  buttonView = [collaborationButtonView buttonView];
  [buttonView setCloudSharingControllerDelegate:delegateCopy];
}

- (unint64_t)activeParticipantCount
{
  collaborationButtonView = [(_SWCollaborationBarButtonItem *)self collaborationButtonView];
  buttonView = [collaborationButtonView buttonView];
  activeParticipantCount = [buttonView activeParticipantCount];

  return activeParticipantCount;
}

- (void)setActiveParticipantCount:(unint64_t)count
{
  collaborationButtonView = [(_SWCollaborationBarButtonItem *)self collaborationButtonView];
  buttonView = [collaborationButtonView buttonView];
  [buttonView setActiveParticipantCount:count];
}

- (BOOL)isContentShared
{
  collaborationButtonView = [(_SWCollaborationBarButtonItem *)self collaborationButtonView];
  buttonView = [collaborationButtonView buttonView];
  isContentShared = [buttonView isContentShared];

  return isContentShared;
}

- (_SWCollaborationBarButtonItem)initWithCollaborationButtonView:(id)view
{
  viewCopy = view;
  v14.receiver = self;
  v14.super_class = _SWCollaborationBarButtonItem;
  v5 = [(_SWCollaborationBarButtonItem *)&v14 init];
  v6 = v5;
  if (v5)
  {
    [(_SWCollaborationBarButtonItem *)v5 setCollaborationButtonView:viewCopy];
    [(_SWCollaborationBarButtonItem *)v6 setCustomView:viewCopy];
    objc_initWeak(&location, v6);
    v7 = MEMORY[0x1E69DC928];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65___SWCollaborationBarButtonItem_initWithCollaborationButtonView___block_invoke;
    v10[3] = &unk_1E7FDDDE0;
    v11 = viewCopy;
    objc_copyWeak(&v12, &location);
    v8 = [v7 elementWithUncachedProvider:v10];
    [(_SWCollaborationBarButtonItem *)v6 _dci_setMenuRepresentation:v8];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (_SWCollaborationBarButtonItem)initWithItemProvider:(id)provider
{
  providerCopy = provider;
  v5 = [(SWCollaborationView *)[_SWCollaborationButtonView alloc] initWithItemProvider:providerCopy];

  v6 = [(_SWCollaborationBarButtonItem *)self initWithCollaborationButtonView:v5];
  return v6;
}

- (void)setDetailViewListContent:(id)content
{
  contentCopy = content;
  collaborationButtonView = [(_SWCollaborationBarButtonItem *)self collaborationButtonView];
  buttonView = [collaborationButtonView buttonView];
  [buttonView setDetailViewListContent:contentCopy];
}

- (void)setManageButtonTitle:(id)title
{
  titleCopy = title;
  collaborationButtonView = [(_SWCollaborationBarButtonItem *)self collaborationButtonView];
  buttonView = [collaborationButtonView buttonView];
  [buttonView setManageButtonTitle:titleCopy];
}

- (SWHighlight)highlight
{
  selfCopy = self;
  collaborationButtonView = [(_SWCollaborationBarButtonItem *)selfCopy collaborationButtonView];
  v4 = sub_1BBC2EF14(collaborationButtonView, sel_buttonView);

  collaborationHighlight = [*(v4 + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController) collaborationHighlight];

  return collaborationHighlight;
}

- (void)setHighlight:(id)highlight
{
  highlightCopy = highlight;
  selfCopy = self;
  collaborationButtonView = [(_SWCollaborationBarButtonItem *)selfCopy collaborationButtonView];
  v6 = sub_1BBC2EF14(collaborationButtonView, sel_buttonView);

  [*(v6 + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController) setCollaborationHighlight_];
}

- (_SWCollaborationBarButtonItem)initWithHighlight:(id)highlight
{
  v5 = objc_allocWithZone(_SWCollaborationDetailViewController);
  highlightCopy = highlight;
  initWithHighlight_ = [v5 initWithHighlight_];
  v8 = objc_allocWithZone(type metadata accessor for _SWCollaborationButtonViewImpl());
  v9 = sub_1BBC2C860(initWithHighlight_);
  initWithTypeErasedButtonView_ = [objc_allocWithZone(_SWCollaborationButtonView) initWithTypeErasedButtonView_];
  v11 = [(_SWCollaborationBarButtonItem *)self initWithCollaborationButtonView:initWithTypeErasedButtonView_];

  return v11;
}

- (_SWCollaborationBarButtonItem)initWithHighlight:(id)highlight detailViewListContent:(id)content
{
  v7 = objc_allocWithZone(_SWCollaborationDetailViewController);
  highlightCopy = highlight;
  contentCopy = content;
  v10 = [v7 initWithHighlight:highlightCopy listContent:contentCopy];
  v11 = objc_allocWithZone(type metadata accessor for _SWCollaborationButtonViewImpl());
  v12 = sub_1BBC2C860(v10);
  initWithTypeErasedButtonView_ = [objc_allocWithZone(_SWCollaborationButtonView) initWithTypeErasedButtonView_];
  v14 = [(_SWCollaborationBarButtonItem *)self initWithCollaborationButtonView:initWithTypeErasedButtonView_];

  return v14;
}

@end