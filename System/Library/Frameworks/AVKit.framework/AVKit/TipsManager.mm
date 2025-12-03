@interface TipsManager
+ (TipsManager)shared;
- (NSString)viewControllerNotificationInfoKey;
- (id)findViewIn:(id)in withAccessibilityIdentifier:(id)identifier;
- (void)cleanUpTips;
- (void)dismissTipIn:(id)in;
- (void)displayTipsIn:(id)in;
- (void)handleEnhanceDialogueTipInViewController:(id)controller sourceViewIdentifier:(id)identifier;
- (void)handleTipEventDidEnterEnhanceDialogue;
- (void)handleTipInViewController:(id)controller tipId:(id)id sourceViewIdentifier:(id)identifier arrowDirection:(unint64_t)direction priority:(int64_t)priority;
@end

@implementation TipsManager

+ (TipsManager)shared
{
  if (qword_1EA9C3D78 != -1)
  {
    swift_once();
  }

  v3 = qword_1EA9CE390;

  return v3;
}

- (NSString)viewControllerNotificationInfoKey
{
  sub_18B6C450C();
  v2 = sub_18B6C55FC();

  return v2;
}

- (void)handleEnhanceDialogueTipInViewController:(id)controller sourceViewIdentifier:(id)identifier
{
  v5 = sub_18B6C562C();
  v7 = v6;
  v10 = &type metadata for EnhanceDialogueTip;
  v11 = sub_18B53DE2C();
  v12 = 2;
  v13 = v5;
  v14 = v7;
  v15 = 2;
  swift_beginAccess();
  selfCopy = self;
  sub_18B4F28D0(v9, 0xD000000000000029, 0x800000018B6FDC80);
  swift_endAccess();
}

- (id)findViewIn:(id)in withAccessibilityIdentifier:(id)identifier
{
  v5 = sub_18B6C562C();
  v7 = v6;
  inCopy = in;
  result = [inCopy view];
  if (result)
  {
    v10 = result;
    v11 = sub_18B53B840(result, v5, v7);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)handleTipInViewController:(id)controller tipId:(id)id sourceViewIdentifier:(id)identifier arrowDirection:(unint64_t)direction priority:(int64_t)priority
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  identifierCopy = identifier;
  selfCopy = self;
  sub_18B6C5AAC();
  swift_unknownObjectRelease();
  v14 = sub_18B6C562C();
  v16 = v15;

  sub_18B53D684(v17, v14, v16, direction, priority);

  __swift_destroy_boxed_opaque_existential_1(v17);
}

- (void)displayTipsIn:(id)in
{
  inCopy = in;
  selfCopy = self;
  sub_18B539228(inCopy);
}

- (void)cleanUpTips
{
  if (*(self + OBJC_IVAR___TipsManager_tipObservationTask))
  {
    selfCopy = self;

    sub_18B6C58AC();
  }

  else
  {
    selfCopy2 = self;
  }

  v5 = OBJC_IVAR___TipsManager_tipDictionary;
  swift_beginAccess();
  *(self + v5) = MEMORY[0x1E69E7CC8];
}

- (void)handleTipEventDidEnterEnhanceDialogue
{
  v2 = sub_18B6C459C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E6982AE8], v2, v5);
  sub_18B53DE2C();
  sub_18B6C444C();
  (*(v3 + 8))(v7, v2);
}

- (void)dismissTipIn:(id)in
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = sub_18B6C584C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_18B6C580C();
  inCopy = in;
  v10 = sub_18B6C57FC();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = inCopy;
  sub_18B5280B4(0, 0, v7, &unk_18B6EBBE0, v11);
}

@end