@interface TransitionViewModel
+ (_TtC10CoreAuthUI19TransitionViewModel)shared;
- (id)childControllerFor:(int64_t)a3 type:(int64_t)a4 allowsLandscape:(BOOL)a5;
- (id)delegates;
- (void)dismissRemoteUIWithIdleEndpoint:(id)a3 wasInvalidated:(BOOL)a4 completionHandler:(id)a5;
- (void)mechanismEvent:(int64_t)a3 reply:(id)a4;
- (void)mechanismEvent:(int64_t)a3 value:(id)a4 reply:(id)a5;
- (void)setDelegates:(id)a3;
- (void)setupConnection;
- (void)suspendConnection;
- (void)transitionToController:(int64_t)a3 internalInfo:(id)a4 completionHandler:(id)a5;
@end

@implementation TransitionViewModel

+ (_TtC10CoreAuthUI19TransitionViewModel)shared
{
  if (qword_1000B06F0 != -1)
  {
    swift_once();
  }

  v3 = qword_1000B1CD0;

  return v3;
}

- (id)delegates
{
  v3 = OBJC_IVAR____TtC10CoreAuthUI19TransitionViewModel_delegates;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDelegates:(id)a3
{
  v5 = OBJC_IVAR____TtC10CoreAuthUI19TransitionViewModel_delegates;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (id)childControllerFor:(int64_t)a3 type:(int64_t)a4 allowsLandscape:(BOOL)a5
{
  v8 = self;
  v9 = sub_10003AAF4(a3, a4, a5);

  return v9;
}

- (void)setupConnection
{
  v2 = self;
  sub_10003CDA0();
}

- (void)suspendConnection
{
  v2 = self;
  sub_10003D624();
}

- (void)mechanismEvent:(int64_t)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_10003FE00;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_10003DA0C(a3, v6, v7);
  sub_10002AA04(v6);
}

- (void)mechanismEvent:(int64_t)a3 value:(id)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  if (!a4)
  {
    memset(v20, 0, sizeof(v20));
    v12 = self;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v9 = self;
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = sub_10003FE00;
LABEL_6:
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v10;
  v14 = OBJC_IVAR____TtC10CoreAuthUI19TransitionViewModel_delegates;
  swift_beginAccess();
  v15 = *(&self->super.isa + v14);
  sub_1000299DC(v11);
  v16 = [v15 allObjects];
  sub_1000282B4(&unk_1000AF060, &unk_100078080);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  __chkstk_darwin(v18);
  v19[2] = a3;
  v19[3] = v20;
  v19[4] = v13;
  sub_10003CC8C(sub_10003FE0C, v19, v17);

  sub_10002AA04(v11);

  sub_10002B444(v20, &qword_1000AF430, &unk_1000777F0);
}

- (void)dismissRemoteUIWithIdleEndpoint:(id)a3 wasInvalidated:(BOOL)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = self;
  sub_10003F1D0(a4, sub_10002AA4C, v9);
}

- (void)transitionToController:(int64_t)a3 internalInfo:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v7 = sub_10003F824;
  }

  else
  {
    v9 = 0;
  }

  v10 = self;
  sub_10003E180(a3, v8, v7, v9);
  sub_10002AA04(v7);
}

@end