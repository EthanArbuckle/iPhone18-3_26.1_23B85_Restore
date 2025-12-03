@interface DetailCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DetailCell

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  contentView = [(DetailCell *)selfCopy contentView];
  [contentView sizeThatFits:{width, 1.79769313e308}];
  v7 = v6;

  v8 = width;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E09210);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12[-v8];
  v15.receiver = self;
  v15.super_class = ObjectType;
  changeCopy = change;
  selfCopy = self;
  [(DetailCell *)&v15 traitCollectionDidChange:changeCopy];
  v13 = selfCopy;
  type metadata accessor for DetailCellTextStack(0);
  sub_AF6D0(&unk_DF8680, type metadata accessor for DetailCellTextStack);
  sub_AB6780();
  sub_AB6AA0();
  v14[3] = v6;
  v14[4] = sub_36A00(&unk_E09220, &unk_E09210);
  __swift_allocate_boxed_opaque_existential_0(v14);
  sub_AB6770();
  (*(v7 + 8))(v9, v6);
  sub_ABA2B0();
}

- (void)music_inheritedLayoutInsetsDidChange
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E09210);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  v12.receiver = self;
  v12.super_class = ObjectType;
  selfCopy = self;
  [(DetailCell *)&v12 music_inheritedLayoutInsetsDidChange];
  v10 = selfCopy;
  type metadata accessor for DetailCellTextStack(0);
  sub_AF6D0(&unk_DF8680, type metadata accessor for DetailCellTextStack);
  sub_AB6780();
  sub_AB6AA0();
  v11[3] = v4;
  v11[4] = sub_36A00(&unk_E09220, &unk_E09210);
  __swift_allocate_boxed_opaque_existential_0(v11);
  sub_AB6770();
  (*(v5 + 8))(v7, v4);
  sub_ABA2B0();
}

@end