@interface _SWCollaborationButtonViewImpl
- (BOOL)isContentShared;
- (NSItemProvider)itemProvider;
- (UICloudSharingControllerDelegate)cloudSharingControllerDelegate;
- (UIImage)headerImage;
- (_SWCollaborationButtonViewImpl)initWithFrame:(CGRect)frame;
- (_SWCollaborationButtonViewImpl)initWithItemProvider:(id)provider;
- (unint64_t)activeParticipantCount;
- (void)buttonTapped:(id)tapped;
- (void)layoutSubviews;
- (void)prepareForPopoverPresentation:(id)presentation;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)setActiveParticipantCount:(unint64_t)count;
- (void)setHeaderImage:(id)image;
- (void)setIsContentShared:(BOOL)shared;
- (void)tintColorDidChange;
- (void)updatePlaceHolderSymbolScale:(int64_t)scale weight:(int64_t)weight pointSize:(double)size;
@end

@implementation _SWCollaborationButtonViewImpl

- (UICloudSharingControllerDelegate)cloudSharingControllerDelegate
{
  cloudSharingControllerDelegate = [*(self + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController) cloudSharingControllerDelegate];

  return cloudSharingControllerDelegate;
}

- (unint64_t)activeParticipantCount
{
  v3 = OBJC_IVAR____SWCollaborationButtonViewImpl_activeParticipantCount;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setActiveParticipantCount:(unint64_t)count
{
  v5 = OBJC_IVAR____SWCollaborationButtonViewImpl_activeParticipantCount;
  swift_beginAccess();
  *(self + v5) = count;
  selfCopy = self;
  sub_1BBC2B848(count);
}

- (UIImage)headerImage
{
  v3 = OBJC_IVAR____SWCollaborationButtonViewImpl_headerImage;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHeaderImage:(id)image
{
  imageCopy = image;
  selfCopy = self;
  sub_1BBC306FC(image);
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = swift_getObjectType();
  [(_SWCollaborationButtonViewImpl *)&v2 layoutSubviews];
}

- (void)tintColorDidChange
{
  selfCopy = self;
  _SWCollaborationButtonViewImpl.tintColorDidChange()();
}

- (void)buttonTapped:(id)tapped
{
  if (tapped)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1BBC412BC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1BBC2DF2C();

  sub_1BBC27FF0(v6, &unk_1EBCA5650, &unk_1BBC45070);
}

- (void)updatePlaceHolderSymbolScale:(int64_t)scale weight:(int64_t)weight pointSize:(double)size
{
  v5 = *(self + OBJC_IVAR____SWCollaborationButtonViewImpl_attributionView);
  selfCopy = self;
  sub_1BBC4094C();
}

- (_SWCollaborationButtonViewImpl)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)prepareForPopoverPresentation:(id)presentation
{
  presentationCopy = presentation;
  selfCopy = self;
  sub_1BBC30C88(&selRef_collaborationViewWillPresentPopover_);
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_1BBC30C88(&selRef_collaborationViewDidDismissPopover_);
}

- (NSItemProvider)itemProvider
{
  itemProvider = [*(self + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController) itemProvider];

  return itemProvider;
}

- (BOOL)isContentShared
{
  if (*(self + OBJC_IVAR____SWCollaborationButtonViewImpl__isContentShared))
  {
    LOBYTE(collaborationHighlight) = 1;
  }

  else
  {
    collaborationHighlight = [*(self + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController) collaborationHighlight];
    if (collaborationHighlight)
    {

      LOBYTE(collaborationHighlight) = 1;
    }
  }

  return collaborationHighlight;
}

- (void)setIsContentShared:(BOOL)shared
{
  v4 = *(self + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController);
  selfCopy = self;
  collaborationHighlight = [v4 collaborationHighlight];
  if (collaborationHighlight)
  {
  }

  else
  {
    *(selfCopy + OBJC_IVAR____SWCollaborationButtonViewImpl__isContentShared) = shared;
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = selfCopy;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1BBC310FC;
    *(v8 + 24) = v7;
    aBlock[4] = sub_1BBC31100;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BBC2C494;
    aBlock[3] = &block_descriptor_61;
    v9 = _Block_copy(aBlock);
    v10 = selfCopy;

    [v6 performWithoutAnimation_];
    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }
}

- (_SWCollaborationButtonViewImpl)initWithItemProvider:(id)provider
{
  ObjectType = swift_getObjectType();
  v5 = objc_allocWithZone(_SWCollaborationDetailViewController);
  providerCopy = provider;
  v7 = [v5 initWithItemProvider:providerCopy impl:?];
  v8 = objc_allocWithZone(ObjectType);
  v9 = sub_1BBC2C860(v7);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

@end