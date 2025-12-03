@interface STKStickerEffect
- (BOOL)isComicEnabled;
- (BOOL)isCurlEnabled;
- (BOOL)isStroked;
- (NSString)description;
- (void)applyComicInkParameters;
- (void)applyComicParameters;
- (void)applyTo:(id)to completionHandler:(id)handler;
- (void)setIsComicEnabled:(BOOL)enabled;
- (void)setIsCurlEnabled:(BOOL)enabled;
- (void)setIsStroked:(BOOL)stroked;
@end

@implementation STKStickerEffect

- (NSString)description
{
  sub_19A6BC3F0();
  v2 = sub_19A7AAFE4();

  return v2;
}

- (BOOL)isStroked
{
  v3 = OBJC_IVAR___STKStickerEffect_isStroked;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsStroked:(BOOL)stroked
{
  v5 = OBJC_IVAR___STKStickerEffect_isStroked;
  swift_beginAccess();
  *(&self->super.isa + v5) = stroked;
}

- (BOOL)isComicEnabled
{
  v3 = OBJC_IVAR___STKStickerEffect_isComicEnabled;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsComicEnabled:(BOOL)enabled
{
  v5 = OBJC_IVAR___STKStickerEffect_isComicEnabled;
  swift_beginAccess();
  *(&self->super.isa + v5) = enabled;
}

- (BOOL)isCurlEnabled
{
  v3 = OBJC_IVAR___STKStickerEffect_isCurlEnabled;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsCurlEnabled:(BOOL)enabled
{
  v5 = OBJC_IVAR___STKStickerEffect_isCurlEnabled;
  swift_beginAccess();
  *(&self->super.isa + v5) = enabled;
}

- (void)applyComicParameters
{
  v2 = self + OBJC_IVAR___STKStickerEffect_comicParameters;
  *v2 = 0;
  *(v2 + 4) = xmmword_19A7BD510;
  *(v2 + 20) = 0x3DCCCCCD3F000000;
  *(v2 + 4) = 6;
}

- (void)applyComicInkParameters
{
  v2 = self + OBJC_IVAR___STKStickerEffect_comicParameters;
  *v2 = 1;
  *(v2 + 4) = xmmword_19A7BD520;
  *(v2 + 20) = 0x3DCCCCCD3F000000;
  *(v2 + 4) = 6;
}

- (void)applyTo:(id)to completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  toCopy = to;
  selfCopy = self;
  v9 = sub_19A6BCF04();
  if (v9)
  {
    v10 = v9;
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = toCopy;
    v11[4] = selfCopy;
    v11[5] = sub_19A612E9C;
    v11[6] = v7;
    aBlock[4] = sub_19A6BED64;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19A6815D4;
    aBlock[3] = &block_descriptor_75_1;
    v12 = _Block_copy(aBlock);
    v13 = toCopy;
    v14 = selfCopy;
    v15 = v10;

    itk_performBlockOnMainThread();

    _Block_release(v12);
  }

  else
  {
  }
}

@end