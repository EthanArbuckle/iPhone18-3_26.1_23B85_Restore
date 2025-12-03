@interface SWCollaborationDetailViewModel
- (BOOL)showManageButton;
- (NSArray)customCollaborators;
- (NSItemProvider)itemProvider;
- (NSString)customContentTitle;
- (NSString)manageButtonTitle;
- (SWCollaborationDetailViewModel)init;
- (SWCollaborationDetailViewModel)initWithHighlight:(id)highlight;
- (SWHighlight)highlight;
- (UICloudSharingControllerDelegate)cloudSharingControllerDelegate;
- (void)highlightCenterHighlightsDidChange:(id)change;
- (void)setCustomCollaborators:(id)collaborators;
- (void)setCustomContentTitle:(id)title;
- (void)setHighlight:(id)highlight;
- (void)setItemProvider:(id)provider;
- (void)setManageButtonTitle:(id)title;
- (void)setShowManageButton:(BOOL)button;
@end

@implementation SWCollaborationDetailViewModel

- (NSItemProvider)itemProvider
{
  v3 = OBJC_IVAR___SWCollaborationDetailViewModel_itemProvider;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setItemProvider:(id)provider
{
  v5 = OBJC_IVAR___SWCollaborationDetailViewModel_itemProvider;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = provider;
  providerCopy = provider;
  selfCopy = self;

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1BBC27108(providerCopy, sub_1BBC286D4, v9);
}

- (UICloudSharingControllerDelegate)cloudSharingControllerDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (SWHighlight)highlight
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_1BBC40ABC();

  return v5;
}

- (void)setHighlight:(id)highlight
{
  swift_getKeyPath();
  swift_getKeyPath();
  highlightCopy = highlight;
  selfCopy = self;
  sub_1BBC40ACC();
}

- (NSString)customContentTitle
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_1BBC40ABC();

  if (v6)
  {
    v4 = sub_1BBC410BC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCustomContentTitle:(id)title
{
  if (title)
  {
    sub_1BBC410EC();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_1BBC40ACC();
}

- (NSArray)customCollaborators
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_1BBC40ABC();

  if (v6)
  {
    sub_1BBC1D534(0, &qword_1EBCA5378, 0x1E697B6E8);
    v4 = sub_1BBC4116C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCustomCollaborators:(id)collaborators
{
  if (collaborators)
  {
    sub_1BBC1D534(0, &qword_1EBCA5378, 0x1E697B6E8);
    sub_1BBC4117C();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_1BBC40ACC();
}

- (NSString)manageButtonTitle
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_1BBC40ABC();

  v4 = sub_1BBC410BC();

  return v4;
}

- (void)setManageButtonTitle:(id)title
{
  sub_1BBC410EC();
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_1BBC40ACC();
}

- (BOOL)showManageButton
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_1BBC40ABC();

  return v5;
}

- (void)setShowManageButton:(BOOL)button
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_1BBC40ACC();
}

- (SWCollaborationDetailViewModel)initWithHighlight:(id)highlight
{
  highlightCopy = highlight;
  v5 = sub_1BBC2655C(highlight);

  return v5;
}

- (SWCollaborationDetailViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)highlightCenterHighlightsDidChange:(id)change
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5228, &unk_1BBC446E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v10 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_1BBC40ABC();

  sub_1BBC22424(v8);

  sub_1BBC27FF0(v8, &qword_1EBCA5228, &unk_1BBC446E0);
}

@end