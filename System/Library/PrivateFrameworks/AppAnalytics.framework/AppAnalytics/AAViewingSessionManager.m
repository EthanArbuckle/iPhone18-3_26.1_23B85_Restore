@interface AAViewingSessionManager
- (AAViewingSessionManager)init;
- (id)viewingSessionForContentIdentifier:(id)a3 object:(id)a4 onEnd:(id)a5;
- (void)endActiveViewingSession;
- (void)endViewingSessionForContentIdentifier:(id)a3;
- (void)removeObject:(id)a3 forContentIdentifier:(id)a4;
@end

@implementation AAViewingSessionManager

- (AAViewingSessionManager)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___AAViewingSessionManager_sessions) = MEMORY[0x1E69E7CC0];
  *(&self->super.isa + OBJC_IVAR___AAViewingSessionManager_activeSession) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(AAViewingSessionManager *)&v5 init];
}

- (void)endActiveViewingSession
{
  v3 = OBJC_IVAR___AAViewingSessionManager_activeSession;
  if (*(&self->super.isa + OBJC_IVAR___AAViewingSessionManager_activeSession))
  {
    v4 = self;

    sub_1B6AB6C50();

    v5 = *(&self->super.isa + v3);
  }

  else
  {
    v6 = self;
  }

  *(&self->super.isa + v3) = 0;
}

- (id)viewingSessionForContentIdentifier:(id)a3 object:(id)a4 onEnd:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_1B6AB92E0();
  v10 = v9;
  if (v7)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    v7 = sub_1B6A3FBB8;
  }

  else
  {
    v11 = 0;
  }

  swift_unknownObjectRetain();
  v12 = self;
  v13 = ViewingSessionManager.viewingSession(for:object:onEnd:)(v8, v10, a4, v7, v11);
  sub_1B69A3100(v7);
  swift_unknownObjectRelease();

  return v13;
}

- (void)removeObject:(id)a3 forContentIdentifier:(id)a4
{
  v6 = sub_1B6AB92E0();
  v8 = v7;
  swift_unknownObjectRetain();
  v9 = self;
  ViewingSessionManager.remove(object:for:)(a3, v6, v8);
  swift_unknownObjectRelease();
}

- (void)endViewingSessionForContentIdentifier:(id)a3
{
  v4 = sub_1B6AB92E0();
  v6 = v5;
  v7 = OBJC_IVAR___AAViewingSessionManager_sessions;
  swift_beginAccess();

  v8 = self;
  v9 = sub_1B6AB8280((self + v7), v4, v6);

  v10 = *(&self->super.isa + v7);
  if (v10 >> 62)
  {
    if (v10 < 0)
    {
      v12 = *(&self->super.isa + v7);
    }

    v11 = sub_1B6AB9E60();
    if (v11 >= v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v9)
    {
LABEL_3:
      sub_1B6AB860C(v9, v11);
      swift_endAccess();

      return;
    }
  }

  __break(1u);
  swift_endAccess();
  __break(1u);
}

@end