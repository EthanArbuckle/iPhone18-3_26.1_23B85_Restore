@interface _SKIStickerEffectViewInternal
+ (void)resetRestingOrientation;
- (CGSize)intrinsicContentSize;
- (NSString)description;
- (_SKIStickerEffectViewInternal)initWithFrame:(CGRect)a3;
- (void)_internalUpdateFromDisplayLink:(id)a3;
- (void)_observeScrollViewDidScroll:(id)a3;
- (void)configureWithImage:(id)a3 effect:(id)a4 didDisplayHandler:(id)a5;
- (void)playSettlingAnimation;
- (void)setCurlPosition:(float)a3;
- (void)setEffect:(id)a3;
- (void)setImage:(id)a3;
- (void)setIsPaused:(BOOL)a3;
- (void)snapshotWithCompletionHandler:(id)a3;
@end

@implementation _SKIStickerEffectViewInternal

- (void)_observeScrollViewDidScroll:(id)a3
{
  if ((*(&self->super.super.super.isa + OBJC_IVAR____SKIStickerEffectViewInternal_displayLinkActive) & 1) == 0)
  {
    v4 = *(&self->super.super.super.isa + OBJC_IVAR____SKIStickerEffectViewInternal_displayLink);
    v6 = v4;
    v9 = self;
    sub_19A77F05C(v4);
    v8 = v7;

    *(&v9->super.super.super.isa + OBJC_IVAR____SKIStickerEffectViewInternal_unitScreenCenter) = v8;
    sub_19A77EC24();
  }
}

- (void)setCurlPosition:(float)a3
{
  v4 = self;
  sub_19A77C790(a3);
}

- (void)setEffect:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____SKIStickerEffectViewInternal_effect);
  *(&self->super.super.super.isa + OBJC_IVAR____SKIStickerEffectViewInternal_effect) = a3;
  v5 = a3;
  v6 = self;
  sub_19A77C86C(v4);
}

- (void)configureWithImage:(id)a3 effect:(id)a4 didDisplayHandler:(id)a5
{
  v8 = _Block_copy(a5);
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

  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_19A77C8EC(v10, v11, v8, v9);
  sub_19A60126C(v8);
}

- (void)setImage:(id)a3
{
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____SKIStickerEffectViewInternal_image);
  *(&self->super.super.super.isa + OBJC_IVAR____SKIStickerEffectViewInternal_image) = a3;
  v4 = a3;
  v5 = self;
  sub_19A77CBE0(v6);
}

- (void)setIsPaused:(BOOL)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____SKIStickerEffectViewInternal_isPaused);
  *(&self->super.super.super.isa + OBJC_IVAR____SKIStickerEffectViewInternal_isPaused) = a3;
  if (v4 != a3)
  {
    v5 = self;
    sub_19A77EC24();
  }
}

- (NSString)description
{
  v2 = self;
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
  v2 = self;
  *(&v2->super.super.super.isa + OBJC_IVAR____SKIStickerEffectViewInternal_settlingStartTime) = CACurrentMediaTime();
  sub_19A77EC24();
}

- (void)_internalUpdateFromDisplayLink:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_19A77ED64(v4);
}

- (void)snapshotWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_19A781C50(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (_SKIStickerEffectViewInternal)initWithFrame:(CGRect)a3
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