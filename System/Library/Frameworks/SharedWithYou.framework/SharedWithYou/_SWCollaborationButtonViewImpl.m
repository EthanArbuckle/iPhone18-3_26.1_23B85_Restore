@interface _SWCollaborationButtonViewImpl
- (BOOL)isContentShared;
- (NSItemProvider)itemProvider;
- (UICloudSharingControllerDelegate)cloudSharingControllerDelegate;
- (UIImage)headerImage;
- (_SWCollaborationButtonViewImpl)initWithFrame:(CGRect)a3;
- (_SWCollaborationButtonViewImpl)initWithItemProvider:(id)a3;
- (unint64_t)activeParticipantCount;
- (void)buttonTapped:(id)a3;
- (void)layoutSubviews;
- (void)prepareForPopoverPresentation:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)setActiveParticipantCount:(unint64_t)a3;
- (void)setHeaderImage:(id)a3;
- (void)setIsContentShared:(BOOL)a3;
- (void)tintColorDidChange;
- (void)updatePlaceHolderSymbolScale:(int64_t)a3 weight:(int64_t)a4 pointSize:(double)a5;
@end

@implementation _SWCollaborationButtonViewImpl

- (UICloudSharingControllerDelegate)cloudSharingControllerDelegate
{
  v2 = [*(self + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController) cloudSharingControllerDelegate];

  return v2;
}

- (unint64_t)activeParticipantCount
{
  v3 = OBJC_IVAR____SWCollaborationButtonViewImpl_activeParticipantCount;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setActiveParticipantCount:(unint64_t)a3
{
  v5 = OBJC_IVAR____SWCollaborationButtonViewImpl_activeParticipantCount;
  swift_beginAccess();
  *(self + v5) = a3;
  v6 = self;
  sub_1BBC2B848(a3);
}

- (UIImage)headerImage
{
  v3 = OBJC_IVAR____SWCollaborationButtonViewImpl_headerImage;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHeaderImage:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1BBC306FC(a3);
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = swift_getObjectType();
  [(_SWCollaborationButtonViewImpl *)&v2 layoutSubviews];
}

- (void)tintColorDidChange
{
  v2 = self;
  _SWCollaborationButtonViewImpl.tintColorDidChange()();
}

- (void)buttonTapped:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1BBC412BC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1BBC2DF2C();

  sub_1BBC27FF0(v6, &unk_1EBCA5650, &unk_1BBC45070);
}

- (void)updatePlaceHolderSymbolScale:(int64_t)a3 weight:(int64_t)a4 pointSize:(double)a5
{
  v5 = *(self + OBJC_IVAR____SWCollaborationButtonViewImpl_attributionView);
  v6 = self;
  sub_1BBC4094C();
}

- (_SWCollaborationButtonViewImpl)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)prepareForPopoverPresentation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BBC30C88(&selRef_collaborationViewWillPresentPopover_);
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BBC30C88(&selRef_collaborationViewDidDismissPopover_);
}

- (NSItemProvider)itemProvider
{
  v2 = [*(self + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController) itemProvider];

  return v2;
}

- (BOOL)isContentShared
{
  if (*(self + OBJC_IVAR____SWCollaborationButtonViewImpl__isContentShared))
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [*(self + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController) collaborationHighlight];
    if (v4)
    {

      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

- (void)setIsContentShared:(BOOL)a3
{
  v4 = *(self + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController);
  v11 = self;
  v5 = [v4 collaborationHighlight];
  if (v5)
  {
  }

  else
  {
    *(v11 + OBJC_IVAR____SWCollaborationButtonViewImpl__isContentShared) = a3;
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v11;
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
    v10 = v11;

    [v6 performWithoutAnimation_];
    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }
}

- (_SWCollaborationButtonViewImpl)initWithItemProvider:(id)a3
{
  ObjectType = swift_getObjectType();
  v5 = objc_allocWithZone(_SWCollaborationDetailViewController);
  v6 = a3;
  v7 = [v5 initWithItemProvider:v6 impl:?];
  v8 = objc_allocWithZone(ObjectType);
  v9 = sub_1BBC2C860(v7);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

@end