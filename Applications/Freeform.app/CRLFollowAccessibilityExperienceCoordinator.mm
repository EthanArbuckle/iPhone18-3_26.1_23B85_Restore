@interface CRLFollowAccessibilityExperienceCoordinator
+ (NSString)magicTapInstruction;
- (BOOL)requestPauseFollow;
- (BOOL)requestRefollowLastFollowedParticipant;
- (NSString)crlaxInstructions;
- (_TtC8Freeform20CRLFollowCoordinator)followCoordinator;
- (_TtC8Freeform27CRLCollaborationParticipant)lastFollowedParticipant;
- (_TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator)init;
- (id)makeAccessibilityHistoryActionsFor:(id)for;
- (void)accessibilityStatusDidChange;
- (void)prepareForViewportChange;
- (void)registerHost:(id)host andFocus:(BOOL)focus;
- (void)setLastFollowedParticipant:(id)participant;
- (void)submitEventForEditOf:(id)of;
- (void)submitEventForSelectionOf:(id)of;
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

- (void)setLastFollowedParticipant:(id)participant
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  participantCopy = participant;
  selfCopy = self;
  sub_100CC4840(Strong);
}

- (void)registerHost:(id)host andFocus:(BOOL)focus
{
  hostCopy = host;
  selfCopy = self;
  sub_100CC4944(hostCopy, focus);
}

- (void)submitEventForSelectionOf:(id)of
{
  ofCopy = of;
  selfCopy = self;
  sub_100CC55FC(ofCopy);
}

- (void)submitEventForEditOf:(id)of
{
  ofCopy = of;
  selfCopy = self;
  sub_100CC590C(ofCopy);
}

- (BOOL)requestPauseFollow
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    selfCopy = self;
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
    selfCopy = self;
    sub_100900650(v6, 0);

    v8 = 1;
    v4 = selfCopy;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)makeAccessibilityHistoryActionsFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_100CC5DD8(forCopy);

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
  selfCopy = self;
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
  selfCopy = self;
  sub_100CC7EB8();
}

- (void)accessibilityStatusDidChange
{
  v3 = objc_opt_self();
  selfCopy = self;
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