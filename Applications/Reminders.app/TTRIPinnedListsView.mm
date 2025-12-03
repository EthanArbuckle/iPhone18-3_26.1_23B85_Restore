@interface TTRIPinnedListsView
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (BOOL)isUserInteractionEnabled;
- (_TtC9Reminders19TTRIPinnedListsView)initWithArrangedSubviewRows:(id)rows;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (void)didSelectControl:(id)control;
- (void)didTapControl:(id)control;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation TTRIPinnedListsView

- (BOOL)isUserInteractionEnabled
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TTRIPinnedListsView();
  return [(TTRIPinnedListsView *)&v3 isUserInteractionEnabled];
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TTRIPinnedListsView();
  v4 = v5.receiver;
  [(TTRIPinnedListsView *)&v5 setUserInteractionEnabled:enabledCopy];
  sub_100319198();
}

- (void)didTapControl:(id)control
{
  controlCopy = control;
  selfCopy = self;
  sub_100318C48(control);
}

- (void)didSelectControl:(id)control
{
  if ((self->NUIContainerGridView_opaque[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectionFollowsFocus] & 1) == 0 && control)
  {
    selfCopy = self;
    controlCopy = control;
    view = [(TTRIPinnedListsView *)controlCopy view];
    if (view)
    {
      v6 = view;
      type metadata accessor for TTRIPinnedListControl();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        sub_100318EAC(v7, 0);
        v8 = v6;
      }

      else
      {
        v8 = controlCopy;
        controlCopy = selfCopy;
        selfCopy = v6;
      }
    }
  }
}

- (_TtC9Reminders19TTRIPinnedListsView)initWithArrangedSubviewRows:(id)rows
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  v5 = &self->NUIContainerGridView_opaque[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedListsViewDelegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 24);
    swift_unknownObjectRetain();
    selfCopy = self;
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

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_10031ACD4(update);

  swift_unknownObjectRelease();

  return v8;
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10031B18C(drop);

  swift_unknownObjectRelease();
}

@end