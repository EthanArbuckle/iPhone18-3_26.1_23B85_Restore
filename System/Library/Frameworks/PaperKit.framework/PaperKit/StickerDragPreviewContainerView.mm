@interface StickerDragPreviewContainerView
- (_TtC8PaperKit31StickerDragPreviewContainerView)initWithCoder:(id)a3;
- (_TtC8PaperKit31StickerDragPreviewContainerView)initWithFrame:(CGRect)a3;
- (void)_animateDropAlongsideAnimator:(id)a3 completion:(id)a4;
- (void)_animateLiftAlongsideAnimator:(id)a3 completion:(id)a4;
- (void)_animateLiftCancellationAlongsideAnimator:(id)a3 completion:(id)a4;
- (void)_preparePreviewContainerWithPreview:(id)a3 source:(id)a4 initialTransform:(CGAffineTransform *)a5;
@end

@implementation StickerDragPreviewContainerView

- (_TtC8PaperKit31StickerDragPreviewContainerView)initWithCoder:(id)a3
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

- (void)_preparePreviewContainerWithPreview:(id)a3 source:(id)a4 initialTransform:(CGAffineTransform *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  specialized StickerDragPreviewContainerView._preparePreviewContainer(preview:source:initialTransform:)(v7, v8);
}

- (void)_animateLiftAlongsideAnimator:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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
  v10 = self;
  swift_unknownObjectRetain();

  [a3 addAnimations_];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (void)_animateLiftCancellationAlongsideAnimator:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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
  v10 = self;
  swift_unknownObjectRetain();

  [a3 addAnimations_];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (void)_animateDropAlongsideAnimator:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  swift_unknownObjectRetain();
  v7 = self;
  specialized StickerDragPreviewContainerView._animateDrop(alongside:completion:)(partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (), v6);
  swift_unknownObjectRelease();
}

- (_TtC8PaperKit31StickerDragPreviewContainerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end