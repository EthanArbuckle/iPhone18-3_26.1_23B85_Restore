@interface AVSTriggerController
+ (id)sharedInstance;
- (id)displayAlertHandler;
- (void)handleAudioBufferInput:(id)a3 time:(unint64_t)a4;
- (void)keywordSpotterDidDetectKeywordWithEvent:(id)a3;
- (void)pauseListening;
- (void)resumeListening;
- (void)setDisplayAlertHandler:(id)a3;
- (void)startListening;
- (void)stopListening;
@end

@implementation AVSTriggerController

- (id)displayAlertHandler
{
  v2 = (self + OBJC_IVAR___AVSTriggerController_displayAlertHandler);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23E8214D0;
    aBlock[3] = &block_descriptor_26;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDisplayAlertHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_23E826D7C;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___AVSTriggerController_displayAlertHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_23E82173C(v7);
}

+ (id)sharedInstance
{
  swift_getObjCClassMetadata();
  v2 = static AVSTriggerController.sharedInstance()();

  return v2;
}

- (void)startListening
{
  v2 = self;
  AVSTriggerController.startListening()();
}

- (void)stopListening
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A618, &qword_23E831730);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = self;
  sub_23E82EB7C();
  v8 = sub_23E82EB9C();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  sub_23E80C7D8(0, 0, v6, &unk_23E831778, v10);
}

- (void)pauseListening
{
  v2 = *(self + OBJC_IVAR___AVSTriggerController_audioProvider);
  if (*(v2 + 80) == 1)
  {
    v3 = *(v2 + 16);
    v4 = self;
    [v3 stop];
    *(v2 + 80) = 0;
  }
}

- (void)resumeListening
{
  v2 = *(self + OBJC_IVAR___AVSTriggerController_audioProvider);
  v3 = self;
  sub_23E81B720();
}

- (void)handleAudioBufferInput:(id)a3 time:(unint64_t)a4
{
  v7 = a3;
  v8 = self;
  v12.is_nil = v8;
  v10 = v8;
  v12.value.super.super.isa = a3;
  v12.value.super._impl = a4;
  AVSTriggerController.handleAudioBufferInput(_:time:)(v12, v9);
}

- (void)keywordSpotterDidDetectKeywordWithEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  AVSTriggerController.keywordSpotterDidDetectKeyword(event:)(v4);
}

@end