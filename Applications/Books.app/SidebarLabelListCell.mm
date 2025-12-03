@interface SidebarLabelListCell
- (BOOL)isEditing;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)_traitCollectionDidChangeWithSender:(id)sender previousTraitCollection:(id)collection;
- (void)prepareForReuse;
- (void)setEditing:(BOOL)editing;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation SidebarLabelListCell

- (BOOL)isEditing
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SidebarLabelListCell();
  return [(SidebarLabelListCell *)&v3 isEditing];
}

- (void)setEditing:(BOOL)editing
{
  editingCopy = editing;
  v5 = type metadata accessor for SidebarLabelListCell();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isEditing = [(SidebarLabelListCell *)&v9 isEditing];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(SidebarLabelListCell *)&v8 setEditing:editingCopy];
  if (isEditing != [(SidebarLabelListCell *)selfCopy isEditing])
  {
    sub_1005E16F8([(SidebarLabelListCell *)selfCopy isEditing]);
  }
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_10079B264();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079B244();
  selfCopy = self;
  sub_1005E064C();

  (*(v5 + 8))(v7, v4);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1005E0B9C();
}

- (void)_traitCollectionDidChangeWithSender:(id)sender previousTraitCollection:(id)collection
{
  swift_unknownObjectRetain();
  collectionCopy = collection;
  selfCopy = self;
  sub_1007A3504();
  swift_unknownObjectRelease();
  sub_1005E0D88(collection);

  sub_1000074E0(&v8);
}

- (void)textFieldDidBeginEditing:(id)editing
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_editingCell);
    *(Strong + OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_editingCell) = self;
    editingCopy = editing;
    selfCopy = self;

    swift_unknownObjectRelease();
  }
}

- (void)textFieldDidEndEditing:(id)editing
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_100526C08(selfCopy);
    swift_unknownObjectRelease();
  }
}

@end