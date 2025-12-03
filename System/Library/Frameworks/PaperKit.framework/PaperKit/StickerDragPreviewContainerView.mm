@interface StickerDragPreviewContainerView
- (_TtC8PaperKit31StickerDragPreviewContainerView)initWithCoder:(id)coder;
- (_TtC8PaperKit31StickerDragPreviewContainerView)initWithFrame:(CGRect)frame;
- (void)_animateDropAlongsideAnimator:(id)animator completion:(id)completion;
- (void)_animateLiftAlongsideAnimator:(id)animator completion:(id)completion;
- (void)_animateLiftCancellationAlongsideAnimator:(id)animator completion:(id)completion;
- (void)_preparePreviewContainerWithPreview:(id)preview source:(id)source initialTransform:(CGAffineTransform *)transform;
@end

@implementation StickerDragPreviewContainerView

- (_TtC8PaperKit31StickerDragPreviewContainerView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_isLifted) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_meshView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_transformView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_shineView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_shadowView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)_preparePreviewContainerWithPreview:(id)preview source:(id)source initialTransform:(CGAffineTransform *)transform
{
  previewCopy = preview;
  sourceCopy = source;
  selfCopy = self;
  specialized StickerDragPreviewContainerView._preparePreviewContainer(preview:source:initialTransform:)(previewCopy, sourceCopy);
}

- (void)_animateLiftAlongsideAnimator:(id)animator completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  v8[4] = v7;
  v11[4] = partial apply for closure #1 in StickerDragPreviewContainerView._animateLift(alongside:completion:);
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v11[3] = &block_descriptor_64;
  v9 = _Block_copy(v11);
  selfCopy = self;
  swift_unknownObjectRetain();

  [animator addAnimations_];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (void)_animateLiftCancellationAlongsideAnimator:(id)animator completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  v8[4] = v7;
  v11[4] = partial apply for closure #1 in StickerDragPreviewContainerView._animateLiftCancellation(alongside:completion:);
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v11[3] = &block_descriptor_42;
  v9 = _Block_copy(v11);
  selfCopy = self;
  swift_unknownObjectRetain();

  [animator addAnimations_];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (void)_animateDropAlongsideAnimator:(id)animator completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized StickerDragPreviewContainerView._animateDrop(alongside:completion:)(partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (), v6);
  swift_unknownObjectRelease();
}

- (_TtC8PaperKit31StickerDragPreviewContainerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end