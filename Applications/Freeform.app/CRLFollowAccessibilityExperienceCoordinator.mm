@interface CRLFollowAccessibilityExperienceCoordinator
+ (NSString)magicTapInstruction;
- (BOOL)requestPauseFollow;
- (BOOL)requestRefollowLastFollowedParticipant;
- (NSString)crlaxInstructions;
- (_TtC8Freeform20CRLFollowCoordinator)followCoordinator;
- (_TtC8Freeform27CRLCollaborationParticipant)lastFollowedParticipant;
- (_TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator)init;
- (id)makeAccessibilityHistoryActionsFor:(id)a3;
- (void)accessibilityStatusDidChange;
- (void)prepareForViewportChange;
- (void)registerHost:(id)a3 andFocus:(BOOL)a4;
- (void)setLastFollowedParticipant:(id)a3;
- (void)submitEventForEditOf:(id)a3;
- (void)submitEventForSelectionOf:(id)a3;
@end

@implementation CRLFollowAccessibilityExperienceCoordinator

- (_TtC8Freeform20CRLFollowCoordinator)followCoordinator
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC8Freeform27CRLCollaborationParticipant)lastFollowedParticipant
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setLastFollowedParticipant:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v6 = a3;
  v7 = self;
  sub_100CC4840(Strong);
}

- (void)registerHost:(id)a3 andFocus:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_100CC4944(v6, a4);
}

- (void)submitEventForSelectionOf:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100CC55FC(v4);
}

- (void)submitEventForEditOf:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100CC590C(v4);
}

- (BOOL)requestPauseFollow
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = self;
    sub_1008FEE94(1);
  }

  return Strong != 0;
}

- (BOOL)requestRefollowLastFollowedParticipant
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = self;
    sub_100900650(v6, 0);

    v8 = 1;
    v4 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)makeAccessibilityHistoryActionsFor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100CC5DD8(v4);

  sub_100006370(0, &qword_101A00130);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

+ (NSString)magicTapInstruction
{
  if (qword_1019F1FF0 != -1)
  {
    swift_once();
  }

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSString)crlaxInstructions
{
  v2 = self;
  sub_100CC7AB0();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)prepareForViewportChange
{
  v2 = self;
  sub_100CC7EB8();
}

- (void)accessibilityStatusDidChange
{
  v3 = objc_opt_self();
  v4 = self;
  if ([v3 isVoiceOverOrSwitchControlEnabled])
  {
    sub_100CC4F54();
  }

  else
  {
    sub_100CC542C();
  }
}

- (_TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end