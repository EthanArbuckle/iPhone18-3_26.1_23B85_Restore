@interface _SKIStickerEffectViewInternal
+ (void)resetRestingOrientation;
- (CGSize)intrinsicContentSize;
- (NSString)description;
- (_SKIStickerEffectViewInternal)initWithFrame:(CGRect)frame;
- (void)_internalUpdateFromDisplayLink:(id)link;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)configureWithImage:(id)image effect:(id)effect didDisplayHandler:(id)handler;
- (void)playSettlingAnimation;
- (void)setCurlPosition:(float)position;
- (void)setEffect:(id)effect;
- (void)setImage:(id)image;
- (void)setIsPaused:(BOOL)paused;
- (void)snapshotWithCompletionHandler:(id)handler;
@end

@implementation _SKIStickerEffectViewInternal

- (void)_observeScrollViewDidScroll:(id)scroll
{
  if ((*(&self->super.super.super.isa + OBJC_IVAR____SKIStickerEffectViewInternal_displayLinkActive) & 1) == 0)
  {
    v4 = *(&self->super.super.super.isa + OBJC_IVAR____SKIStickerEffectViewInternal_displayLink);
    v6 = v4;
    selfCopy = self;
    sub_19A77F05C(v4);
    v8 = v7;

    *(&selfCopy->super.super.super.isa + OBJC_IVAR____SKIStickerEffectViewInternal_unitScreenCenter) = v8;
    sub_19A77EC24();
  }
}

- (void)setCurlPosition:(float)position
{
  selfCopy = self;
  sub_19A77C790(position);
}

- (void)setEffect:(id)effect
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____SKIStickerEffectViewInternal_effect);
  *(&self->super.super.super.isa + OBJC_IVAR____SKIStickerEffectViewInternal_effect) = effect;
  effectCopy = effect;
  selfCopy = self;
  sub_19A77C86C(v4);
}

- (void)configureWithImage:(id)image effect:(id)effect didDisplayHandler:(id)handler
{
  v8 = _Block_copy(handler);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_19A782288;
  }

  else
  {
    v9 = 0;
  }

  imageCopy = image;
  effectCopy = effect;
  selfCopy = self;
  sub_19A77C8EC(imageCopy, effectCopy, v8, v9);
  sub_19A60126C(v8);
}

- (void)setImage:(id)image
{
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____SKIStickerEffectViewInternal_image);
  *(&self->super.super.super.isa + OBJC_IVAR____SKIStickerEffectViewInternal_image) = image;
  imageCopy = image;
  selfCopy = self;
  sub_19A77CBE0(v6);
}

- (void)setIsPaused:(BOOL)paused
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____SKIStickerEffectViewInternal_isPaused);
  *(&self->super.super.super.isa + OBJC_IVAR____SKIStickerEffectViewInternal_isPaused) = paused;
  if (v4 != paused)
  {
    selfCopy = self;
    sub_19A77EC24();
  }
}

- (NSString)description
{
  selfCopy = self;
  sub_19A77CD78();

  v3 = sub_19A7AAFE4();

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____SKIStickerEffectViewInternal_image);
  if (v3)
  {

    [v3 size];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = type metadata accessor for StickerEffectView();
    [(_SKIStickerEffectViewInternal *)&v6 intrinsicContentSize];
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (void)playSettlingAnimation
{
  selfCopy = self;
  *(&selfCopy->super.super.super.isa + OBJC_IVAR____SKIStickerEffectViewInternal_settlingStartTime) = CACurrentMediaTime();
  sub_19A77EC24();
}

- (void)_internalUpdateFromDisplayLink:(id)link
{
  linkCopy = link;
  selfCopy = self;
  sub_19A77ED64(linkCopy);
}

- (void)snapshotWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  _Block_copy(v4);
  selfCopy = self;
  sub_19A781C50(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (_SKIStickerEffectViewInternal)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (void)resetRestingOrientation
{
  if (qword_1EAFCB590 != -1)
  {
    swift_once();
  }

  v0 = qword_1EAFDD6E0;
  v1 = *(qword_1EAFDD6E0 + 48);
  *(qword_1EAFDD6E0 + 64) = *(qword_1EAFDD6E0 + 32);
  *(v0 + 80) = v1;
  *(v0 + 88) = CACurrentMediaTime();
  *(v0 + 96) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
}

@end