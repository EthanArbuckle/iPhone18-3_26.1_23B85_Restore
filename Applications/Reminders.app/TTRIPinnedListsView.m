@interface TTRIPinnedListsView
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (BOOL)isUserInteractionEnabled;
- (_TtC9Reminders19TTRIPinnedListsView)initWithArrangedSubviewRows:(id)a3;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (void)didSelectControl:(id)a3;
- (void)didTapControl:(id)a3;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)setUserInteractionEnabled:(BOOL)a3;
@end

@implementation TTRIPinnedListsView

- (BOOL)isUserInteractionEnabled
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TTRIPinnedListsView();
  return [(TTRIPinnedListsView *)&v3 isUserInteractionEnabled];
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TTRIPinnedListsView();
  v4 = v5.receiver;
  [(TTRIPinnedListsView *)&v5 setUserInteractionEnabled:v3];
  sub_100319198();
}

- (void)didTapControl:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100318C48(a3);
}

- (void)didSelectControl:(id)a3
{
  if ((self->NUIContainerGridView_opaque[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectionFollowsFocus] & 1) == 0 && a3)
  {
    v9 = self;
    v4 = a3;
    v5 = [(TTRIPinnedListsView *)v4 view];
    if (v5)
    {
      v6 = v5;
      type metadata accessor for TTRIPinnedListControl();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        sub_100318EAC(v7, 0);
        v8 = v6;
      }

      else
      {
        v8 = v4;
        v4 = v9;
        v9 = v6;
      }
    }
  }
}

- (_TtC9Reminders19TTRIPinnedListsView)initWithArrangedSubviewRows:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v5 = &self->NUIContainerGridView_opaque[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedListsViewDelegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 24);
    swift_unknownObjectRetain();
    v8 = self;
    v9 = v7();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_10031ACD4(a4);

  swift_unknownObjectRelease();

  return v8;
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_10031B18C(a4);

  swift_unknownObjectRelease();
}

@end