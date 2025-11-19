@interface WKIntelligenceSmartReplyTextEffectCoordinator
- (BOOL)hasActiveEffects;
- (WKIntelligenceSmartReplyTextEffectCoordinator)init;
- (WKIntelligenceSmartReplyTextEffectCoordinator)initWithDelegate:(id)a3;
- (void)flushReplacementsWithCompletionHandler:(id)a3;
- (void)hideEffectsWithCompletionHandler:(id)a3;
- (void)requestReplacementWithProcessedRange:(_NSRange)a3 finished:(BOOL)a4 characterDelta:(int64_t)a5 operation:(id)a6 completion:;
- (void)restoreSelectionAcceptedReplacements:(BOOL)a3 completionHandler:(id)a4;
- (void)showEffectsWithCompletionHandler:(id)a3;
- (void)startAnimationForRange:(_NSRange)a3 completion:(id)a4;
@end

@implementation WKIntelligenceSmartReplyTextEffectCoordinator

- (BOOL)hasActiveEffects
{
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  v4 = sub_23B58F584();
  v5 = (*(*v4 + 280))(v4);

  return v5 & 1;
}

- (WKIntelligenceSmartReplyTextEffectCoordinator)initWithDelegate:(id)a3
{
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.isa + OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator____lazy_storage___viewManager) = 0;
  v5 = (&self->super.isa + OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_onFlushCompletion);
  *v5 = 0;
  v5[1] = 0;
  *(&self->super.isa + OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_processedRangeOffset) = 0;
  v6 = self + OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_contextRange;
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(&self->super.isa + OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_replacementQueue) = MEMORY[0x277D84F90];
  *(&self->super.isa + OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_delegate) = a3;
  v9.receiver = self;
  v9.super_class = WKIntelligenceSmartReplyTextEffectCoordinator;
  swift_unknownObjectRetain();
  v7 = [(WKIntelligenceSmartReplyTextEffectCoordinator *)&v9 init];

  return v7;
}

- (void)startAnimationForRange:(_NSRange)a3 completion:(id)a4
{
  length = a3.length;
  location = a3.location;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = location;
  v13[3] = length;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_23B59D910();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23B59FFE8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23B59FFF0;
  v16[5] = v15;
  v17 = self;
  sub_23B56B930(0, 0, v11, &unk_23B59FFF8, v16);
}

- (void)requestReplacementWithProcessedRange:(_NSRange)a3 finished:(BOOL)a4 characterDelta:(int64_t)a5 operation:(id)a6 completion:
{
  v7 = v6;
  length = a3.length;
  location = a3.location;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v25 - v16;
  v18 = _Block_copy(a6);
  v19 = _Block_copy(v7);
  v20 = swift_allocObject();
  *(v20 + 16) = location;
  *(v20 + 24) = length;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = v18;
  *(v20 + 56) = v19;
  *(v20 + 64) = self;
  v21 = sub_23B59D910();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_23B59FFC8;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_23B59FFD0;
  v23[5] = v22;
  v24 = self;
  sub_23B56B930(0, 0, v17, &unk_23B59FFD8, v23);
}

- (void)flushReplacementsWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_23B59D910();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23B59FFA8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23B59FFB0;
  v13[5] = v12;
  v14 = self;
  sub_23B56B930(0, 0, v8, &unk_23B59FFB8, v13);
}

- (void)restoreSelectionAcceptedReplacements:(BOOL)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_23B59D910();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23B59FF88;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23B59FF90;
  v15[5] = v14;
  v16 = self;
  sub_23B56B930(0, 0, v10, &unk_23B59FF98, v15);
}

- (void)hideEffectsWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_23B59D910();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23B59FF68;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23B59FF70;
  v13[5] = v12;
  v14 = self;
  sub_23B56B930(0, 0, v8, &unk_23B59FF78, v13);
}

- (void)showEffectsWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_23B59D910();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23B59FF30;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23B59FF40;
  v13[5] = v12;
  v14 = self;
  sub_23B56B930(0, 0, v8, &unk_23B59FF50, v13);
}

- (WKIntelligenceSmartReplyTextEffectCoordinator)init
{
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end