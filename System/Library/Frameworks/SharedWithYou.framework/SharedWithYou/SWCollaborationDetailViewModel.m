@interface SWCollaborationDetailViewModel
- (BOOL)showManageButton;
- (NSArray)customCollaborators;
- (NSItemProvider)itemProvider;
- (NSString)customContentTitle;
- (NSString)manageButtonTitle;
- (SWCollaborationDetailViewModel)init;
- (SWCollaborationDetailViewModel)initWithHighlight:(id)a3;
- (SWHighlight)highlight;
- (UICloudSharingControllerDelegate)cloudSharingControllerDelegate;
- (void)highlightCenterHighlightsDidChange:(id)a3;
- (void)setCustomCollaborators:(id)a3;
- (void)setCustomContentTitle:(id)a3;
- (void)setHighlight:(id)a3;
- (void)setItemProvider:(id)a3;
- (void)setManageButtonTitle:(id)a3;
- (void)setShowManageButton:(BOOL)a3;
@end

@implementation SWCollaborationDetailViewModel

- (NSItemProvider)itemProvider
{
  v3 = OBJC_IVAR___SWCollaborationDetailViewModel_itemProvider;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setItemProvider:(id)a3
{
  v5 = OBJC_IVAR___SWCollaborationDetailViewModel_itemProvider;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
  v8 = self;

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1BBC27108(v7, sub_1BBC286D4, v9);
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
  v3 = self;
  sub_1BBC40ABC();

  return v5;
}

- (void)setHighlight:(id)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a3;
  v6 = self;
  sub_1BBC40ACC();
}

- (NSString)customContentTitle
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
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

- (void)setCustomContentTitle:(id)a3
{
  if (a3)
  {
    sub_1BBC410EC();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  sub_1BBC40ACC();
}

- (NSArray)customCollaborators
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
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

- (void)setCustomCollaborators:(id)a3
{
  if (a3)
  {
    sub_1BBC1D534(0, &qword_1EBCA5378, 0x1E697B6E8);
    sub_1BBC4117C();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  sub_1BBC40ACC();
}

- (NSString)manageButtonTitle
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  sub_1BBC40ABC();

  v4 = sub_1BBC410BC();

  return v4;
}

- (void)setManageButtonTitle:(id)a3
{
  sub_1BBC410EC();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  sub_1BBC40ACC();
}

- (BOOL)showManageButton
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  sub_1BBC40ABC();

  return v5;
}

- (void)setShowManageButton:(BOOL)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  sub_1BBC40ACC();
}

- (SWCollaborationDetailViewModel)initWithHighlight:(id)a3
{
  v4 = a3;
  v5 = sub_1BBC2655C(a3);

  return v5;
}

- (SWCollaborationDetailViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)highlightCenterHighlightsDidChange:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5228, &unk_1BBC446E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v10 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = self;
  sub_1BBC40ABC();

  sub_1BBC22424(v8);

  sub_1BBC27FF0(v8, &qword_1EBCA5228, &unk_1BBC446E0);
}

@end