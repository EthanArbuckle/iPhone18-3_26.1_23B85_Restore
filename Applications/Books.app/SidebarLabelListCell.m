@interface SidebarLabelListCell
- (BOOL)isEditing;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)_traitCollectionDidChangeWithSender:(id)a3 previousTraitCollection:(id)a4;
- (void)prepareForReuse;
- (void)setEditing:(BOOL)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation SidebarLabelListCell

- (BOOL)isEditing
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SidebarLabelListCell();
  return [(SidebarLabelListCell *)&v3 isEditing];
}

- (void)setEditing:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for SidebarLabelListCell();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(SidebarLabelListCell *)&v9 isEditing];
  v8.receiver = v6;
  v8.super_class = v5;
  [(SidebarLabelListCell *)&v8 setEditing:v3];
  if (v7 != [(SidebarLabelListCell *)v6 isEditing])
  {
    sub_1005E16F8([(SidebarLabelListCell *)v6 isEditing]);
  }
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_10079B264();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079B244();
  v8 = self;
  sub_1005E064C();

  (*(v5 + 8))(v7, v4);
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1005E0B9C();
}

- (void)_traitCollectionDidChangeWithSender:(id)a3 previousTraitCollection:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_1007A3504();
  swift_unknownObjectRelease();
  sub_1005E0D88(a4);

  sub_1000074E0(&v8);
}

- (void)textFieldDidBeginEditing:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_editingCell);
    *(Strong + OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_editingCell) = self;
    v6 = a3;
    v7 = self;

    swift_unknownObjectRelease();
  }
}

- (void)textFieldDidEndEditing:(id)a3
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = self;
    sub_100526C08(v4);
    swift_unknownObjectRelease();
  }
}

@end