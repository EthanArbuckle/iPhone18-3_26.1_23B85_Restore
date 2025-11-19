@interface _SWCollaborationBarButtonItem
- (BOOL)isContentShared;
- (NSItemProvider)itemProvider;
- (SWHighlight)highlight;
- (UICloudSharingControllerDelegate)cloudSharingControllerDelegate;
- (_SWCollaborationBarButtonItem)initWithCollaborationButtonView:(id)a3;
- (_SWCollaborationBarButtonItem)initWithHighlight:(id)a3;
- (_SWCollaborationBarButtonItem)initWithHighlight:(id)a3 detailViewListContent:(id)a4;
- (_SWCollaborationBarButtonItem)initWithItemProvider:(id)a3;
- (unint64_t)activeParticipantCount;
- (void)setActiveParticipantCount:(unint64_t)a3;
- (void)setCloudSharingControllerDelegate:(id)a3;
- (void)setDetailViewListContent:(id)a3;
- (void)setHighlight:(id)a3;
- (void)setItemProvider:(id)a3;
- (void)setManageButtonTitle:(id)a3;
@end

@implementation _SWCollaborationBarButtonItem

- (NSItemProvider)itemProvider
{
  v2 = [(_SWCollaborationBarButtonItem *)self collaborationButtonView];
  v3 = [v2 buttonView];
  v4 = [v3 itemProvider];

  return v4;
}

- (void)setItemProvider:(id)a3
{
  v4 = a3;
  v6 = [(_SWCollaborationBarButtonItem *)self collaborationButtonView];
  v5 = [v6 buttonView];
  [v5 setItemProvider:v4];
}

- (UICloudSharingControllerDelegate)cloudSharingControllerDelegate
{
  v2 = [(_SWCollaborationBarButtonItem *)self collaborationButtonView];
  v3 = [v2 buttonView];
  v4 = [v3 cloudSharingControllerDelegate];

  return v4;
}

- (void)setCloudSharingControllerDelegate:(id)a3
{
  v4 = a3;
  v6 = [(_SWCollaborationBarButtonItem *)self collaborationButtonView];
  v5 = [v6 buttonView];
  [v5 setCloudSharingControllerDelegate:v4];
}

- (unint64_t)activeParticipantCount
{
  v2 = [(_SWCollaborationBarButtonItem *)self collaborationButtonView];
  v3 = [v2 buttonView];
  v4 = [v3 activeParticipantCount];

  return v4;
}

- (void)setActiveParticipantCount:(unint64_t)a3
{
  v5 = [(_SWCollaborationBarButtonItem *)self collaborationButtonView];
  v4 = [v5 buttonView];
  [v4 setActiveParticipantCount:a3];
}

- (BOOL)isContentShared
{
  v2 = [(_SWCollaborationBarButtonItem *)self collaborationButtonView];
  v3 = [v2 buttonView];
  v4 = [v3 isContentShared];

  return v4;
}

- (_SWCollaborationBarButtonItem)initWithCollaborationButtonView:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _SWCollaborationBarButtonItem;
  v5 = [(_SWCollaborationBarButtonItem *)&v14 init];
  v6 = v5;
  if (v5)
  {
    [(_SWCollaborationBarButtonItem *)v5 setCollaborationButtonView:v4];
    [(_SWCollaborationBarButtonItem *)v6 setCustomView:v4];
    objc_initWeak(&location, v6);
    v7 = MEMORY[0x1E69DC928];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65___SWCollaborationBarButtonItem_initWithCollaborationButtonView___block_invoke;
    v10[3] = &unk_1E7FDDDE0;
    v11 = v4;
    objc_copyWeak(&v12, &location);
    v8 = [v7 elementWithUncachedProvider:v10];
    [(_SWCollaborationBarButtonItem *)v6 _dci_setMenuRepresentation:v8];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (_SWCollaborationBarButtonItem)initWithItemProvider:(id)a3
{
  v4 = a3;
  v5 = [(SWCollaborationView *)[_SWCollaborationButtonView alloc] initWithItemProvider:v4];

  v6 = [(_SWCollaborationBarButtonItem *)self initWithCollaborationButtonView:v5];
  return v6;
}

- (void)setDetailViewListContent:(id)a3
{
  v4 = a3;
  v6 = [(_SWCollaborationBarButtonItem *)self collaborationButtonView];
  v5 = [v6 buttonView];
  [v5 setDetailViewListContent:v4];
}

- (void)setManageButtonTitle:(id)a3
{
  v4 = a3;
  v6 = [(_SWCollaborationBarButtonItem *)self collaborationButtonView];
  v5 = [v6 buttonView];
  [v5 setManageButtonTitle:v4];
}

- (SWHighlight)highlight
{
  v2 = self;
  v3 = [(_SWCollaborationBarButtonItem *)v2 collaborationButtonView];
  v4 = sub_1BBC2EF14(v3, sel_buttonView);

  v5 = [*(v4 + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController) collaborationHighlight];

  return v5;
}

- (void)setHighlight:(id)a3
{
  v4 = a3;
  v7 = self;
  v5 = [(_SWCollaborationBarButtonItem *)v7 collaborationButtonView];
  v6 = sub_1BBC2EF14(v5, sel_buttonView);

  [*(v6 + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController) setCollaborationHighlight_];
}

- (_SWCollaborationBarButtonItem)initWithHighlight:(id)a3
{
  v5 = objc_allocWithZone(_SWCollaborationDetailViewController);
  v6 = a3;
  v7 = [v5 initWithHighlight_];
  v8 = objc_allocWithZone(type metadata accessor for _SWCollaborationButtonViewImpl());
  v9 = sub_1BBC2C860(v7);
  v10 = [objc_allocWithZone(_SWCollaborationButtonView) initWithTypeErasedButtonView_];
  v11 = [(_SWCollaborationBarButtonItem *)self initWithCollaborationButtonView:v10];

  return v11;
}

- (_SWCollaborationBarButtonItem)initWithHighlight:(id)a3 detailViewListContent:(id)a4
{
  v7 = objc_allocWithZone(_SWCollaborationDetailViewController);
  v8 = a3;
  v9 = a4;
  v10 = [v7 initWithHighlight:v8 listContent:v9];
  v11 = objc_allocWithZone(type metadata accessor for _SWCollaborationButtonViewImpl());
  v12 = sub_1BBC2C860(v10);
  v13 = [objc_allocWithZone(_SWCollaborationButtonView) initWithTypeErasedButtonView_];
  v14 = [(_SWCollaborationBarButtonItem *)self initWithCollaborationButtonView:v13];

  return v14;
}

@end