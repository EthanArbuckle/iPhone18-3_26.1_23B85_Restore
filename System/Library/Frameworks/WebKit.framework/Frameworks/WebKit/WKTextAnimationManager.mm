@interface WKTextAnimationManager
- (WKTextAnimationManager)init;
- (WKTextAnimationManager)initWithDelegate:(id)delegate;
- (WKTextAnimationSourceDelegate)delegate;
- (void)addTextAnimationForAnimationID:(id)d withStyleType:(int64_t)type;
- (void)removeTextAnimationForAnimationID:(id)d;
- (void)setDelegate:(id)delegate;
- (void)targetedPreviewFor:(_TtC5UIKit21UITextEffectTextChunk *)for completionHandler:(id)handler;
- (void)updateTextChunkVisibilityForAnimation:(_TtC5UIKit21UITextEffectTextChunk *)animation visible:(BOOL)visible completionHandler:(id)handler;
@end

@implementation WKTextAnimationManager

- (WKTextAnimationSourceDelegate)delegate
{
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)delegate
{
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectWeakAssign();
}

- (WKTextAnimationManager)initWithDelegate:(id)delegate
{
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = swift_unknownObjectRetain();
  v4 = sub_23B597CA0(v3);

  return v4;
}

- (void)addTextAnimationForAnimationID:(id)d withStyleType:(int64_t)type
{
  v6 = sub_23B59D350();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23B59D320();
  selfCopy = self;
  sub_23B597EB4(v10, type);

  (*(v7 + 8))(v10, v6);
}

- (void)removeTextAnimationForAnimationID:(id)d
{
  v4 = sub_23B59D350();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23B59D320();
  selfCopy = self;
  sub_23B598880(v8);

  (*(v5 + 8))(v8, v4);
}

- (WKTextAnimationManager)init
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

- (void)targetedPreviewFor:(_TtC5UIKit21UITextEffectTextChunk *)for completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = for;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23B59D910();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23B5A01A8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23B5A01B0;
  v15[5] = v14;
  forCopy = for;
  selfCopy = self;
  sub_23B56B930(0, 0, v10, &unk_23B5A01B8, v15);
}

- (void)updateTextChunkVisibilityForAnimation:(_TtC5UIKit21UITextEffectTextChunk *)animation visible:(BOOL)visible completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 16) = animation;
  *(v14 + 24) = visible;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_23B59D910();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23B5A0170;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23B5A0180;
  v17[5] = v16;
  animationCopy = animation;
  selfCopy = self;
  sub_23B56B930(0, 0, v12, &unk_23B5A0190, v17);
}

@end