@interface STKStickerView
- (BOOL)boundsIncludeStroke;
- (BOOL)isDragInteractionEnabled;
- (BOOL)isPaused;
- (CGRect)contentFrame;
- (NSString)usageSource;
- (STKImageGlyph)imageGlyph;
- (STKStickerEffect)effect;
- (STKStickerView)initWithCoder:(id)coder;
- (id)_dragInteraction:(id)interaction sessionPropertiesForSession:(id)session;
- (id)currentImageWithEffectFlipped:(BOOL)flipped;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (id)dragPreviewLiftContainerProvider;
- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)dragging;
- (void)animatedImageForImageGlyph:(STKImageGlyph *)glyph completionHandler:(id)handler;
- (void)dealloc;
- (void)didEndDisplaying;
- (void)didMoveToWindow;
- (void)displayLinkDidFire:(id)fire;
- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator;
- (void)dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction sessionDidTransferItems:(id)items;
- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session;
- (void)layoutSubviews;
- (void)playSettlingAnimation;
- (void)prepareForReuse;
- (void)removeFromSuperview;
- (void)setBoundsIncludeStroke:(BOOL)stroke;
- (void)setDragPreviewLiftContainerProvider:(id)provider;
- (void)setEffect:(id)effect;
- (void)setImageGlyph:(id)glyph;
- (void)setIsPaused:(BOOL)paused;
- (void)setUsageSource:(id)source;
- (void)updateEffect:(id)effect;
- (void)willDisplay;
@end

@implementation STKStickerView

- (NSString)usageSource
{
  v2 = self + OBJC_IVAR___STKStickerView_usageSource;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_19A7AAFE4();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUsageSource:(id)source
{
  if (source)
  {
    v4 = sub_19A7AB014();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___STKStickerView_usageSource);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (BOOL)isPaused
{
  v3 = OBJC_IVAR___STKStickerView_isPaused;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsPaused:(BOOL)paused
{
  selfCopy = self;
  sub_19A6C18F0(paused);
}

- (BOOL)isDragInteractionEnabled
{
  v2 = *(self + OBJC_IVAR___STKStickerView_dragInteraction);
  if (v2)
  {
    LOBYTE(v2) = [v2 isEnabled];
  }

  return v2;
}

- (STKStickerEffect)effect
{
  v3 = OBJC_IVAR___STKStickerView_effect;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEffect:(id)effect
{
  v5 = OBJC_IVAR___STKStickerView_effect;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = effect;
  effectCopy = effect;
  selfCopy = self;

  sub_19A6C31C4(effect);
}

- (CGRect)contentFrame
{
  selfCopy = self;
  sub_19A6C1F10();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)dragPreviewLiftContainerProvider
{
  v2 = (self + OBJC_IVAR___STKStickerView_dragPreviewLiftContainerProvider);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19A6C21DC;
    aBlock[3] = &block_descriptor_13;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDragPreviewLiftContainerProvider:(id)provider
{
  v4 = _Block_copy(provider);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_19A6CF834;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___STKStickerView_dragPreviewLiftContainerProvider);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_19A60126C(v7);
}

- (BOOL)boundsIncludeStroke
{
  v3 = OBJC_IVAR___STKStickerView_boundsIncludeStroke;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setBoundsIncludeStroke:(BOOL)stroke
{
  v5 = OBJC_IVAR___STKStickerView_boundsIncludeStroke;
  swift_beginAccess();
  *(self + v5) = stroke;
  v6 = *(self + OBJC_IVAR___STKStickerView_effectView);
  if (v6)
  {
    *(v6 + OBJC_IVAR____SKIStickerEffectViewInternal_boundsIncludeStroke) = stroke;
  }
}

- (STKImageGlyph)imageGlyph
{
  v3 = OBJC_IVAR___STKStickerView_imageGlyph;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setImageGlyph:(id)glyph
{
  v5 = OBJC_IVAR___STKStickerView_imageGlyph;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = glyph;
  glyphCopy = glyph;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver_];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for StickerView();
  [(STKStickerView *)&v6 dealloc];
}

- (STKStickerView)initWithCoder:(id)coder
{
  coderCopy = coder;
  sub_19A6CC468(coderCopy);
  v5 = v4;

  return v5;
}

- (void)updateEffect:(id)effect
{
  effectCopy = effect;
  selfCopy = self;
  sub_19A6C31C4(effect);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_19A6C34E0();
}

- (void)animatedImageForImageGlyph:(STKImageGlyph *)glyph completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = glyph;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_19A7AB394();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_19A7BD7F8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7BE620;
  v14[5] = v13;
  glyphCopy = glyph;
  selfCopy = self;
  sub_19A78E8A0(0, 0, v9, &unk_19A7B6B20, v14);
}

- (void)playSettlingAnimation
{
  v2 = *(self + OBJC_IVAR___STKStickerView_effectView);
  if (v2)
  {
    selfCopy = self;
    v3 = v2;
    *&v3[OBJC_IVAR____SKIStickerEffectViewInternal_settlingStartTime] = CACurrentMediaTime();
    sub_19A77EC24();
  }
}

- (id)currentImageWithEffectFlipped:(BOOL)flipped
{
  selfCopy = self;
  v5 = sub_19A6C61B0(flipped);

  return v5;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StickerView();
  v2 = v3.receiver;
  [(STKStickerView *)&v3 didMoveToWindow];
  sub_19A6C663C();
}

- (void)removeFromSuperview
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StickerView();
  v2 = v3.receiver;
  [(STKStickerView *)&v3 removeFromSuperview];
  if (*&v2[OBJC_IVAR___STKStickerView_displayLink])
  {
    sub_19A6C4E6C();
  }
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_19A6C6810();
}

- (void)willDisplay
{
  selfCopy = self;
  sub_19A6C5140();
}

- (void)didEndDisplaying
{
  selfCopy = self;
  sub_19A6C4E6C();
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  interactionCopy = interaction;
  itemCopy = item;
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = _s10StickerKit0A4ViewC15dragInteraction_17previewForLifting7sessionSo21UITargetedDragPreviewCSgSo06UIDragE0C_So0M4ItemCSo0M7Session_ptF_0();

  swift_unknownObjectRelease();

  return v10;
}

- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin
{
  v5 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v5 defaultCenter];
  if (qword_1EAFCAFF0 != -1)
  {
    swift_once();
  }

  [defaultCenter postNotificationName:qword_1EAFDD660 object:selfCopy];
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  _s10StickerKit0A4ViewC15dragInteraction_17itemsForBeginningSaySo10UIDragItemCGSo0iE0C_So0I7Session_ptF_0();

  swift_unknownObjectRelease();
  sub_19A5F5028(0, &qword_1EAFCE4F0);
  v7 = sub_19A7AB234();

  return v7;
}

- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_19A6CE080(animator);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (id)_dragInteraction:(id)interaction sessionPropertiesForSession:(id)session
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69DD480]) init];
  [v4 set:1 wantsElasticEffects:?];
  [v4 set:1 resizable:?];
  [v4 set:1 rotatable:?];
  [v4 set:CGPointMake(32.0 minimumResizableSize:32.0)];
  [v4 set:300.0 maximumResizableSize:300.0];

  return v4;
}

- (void)dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_19A6CE1C4(operation);

  swift_unknownObjectRelease();
}

- (void)dragInteraction:(id)interaction sessionDidTransferItems:(id)items
{
  selfCopy = self;
  sub_19A6CB4D0();
}

- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator
{
  interactionCopy = interaction;
  itemCopy = item;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_19A6CE6A4(animator);

  swift_unknownObjectRelease();
}

- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  _s10StickerKit0A4ViewC44_dragInteractionDidCancelLiftWithoutDraggingyySo06UIDragE0CF_0();
}

- (void)displayLinkDidFire:(id)fire
{
  fireCopy = fire;
  selfCopy = self;
  sub_19A6CF31C();
}

@end