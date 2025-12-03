@interface StickerPhotosCreationResult
- (CGRect)sourceFrame;
- (NSArray)representations;
- (NSUUID)stickerUUID;
- (_TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult)init;
- (void)setRepresentations:(id)representations;
- (void)setSticker:(id)sticker;
- (void)setStickerUUID:(id)d;
@end

@implementation StickerPhotosCreationResult

- (void)setSticker:(id)sticker
{
  v4 = *(self + OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_sticker);
  *(self + OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_sticker) = sticker;
  stickerCopy = sticker;
}

- (NSUUID)stickerUUID
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_stickerUUID;
  swift_beginAccess();
  sub_19A6240BC(self + v6, v5);
  v7 = sub_19A7A8F64();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_19A7A8F24();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)setStickerUUID:(id)d
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  if (d)
  {
    sub_19A7A8F44();
    v8 = sub_19A7A8F64();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_19A7A8F64();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_stickerUUID;
  swift_beginAccess();
  selfCopy = self;
  sub_19A6264EC(v7, self + v10);
  swift_endAccess();
}

- (NSArray)representations
{
  if (*(self + OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_representations))
  {
    sub_19A7AAD24();

    v2 = sub_19A7AB234();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setRepresentations:(id)representations
{
  if (representations)
  {
    sub_19A7AAD24();
    v4 = sub_19A7AB254();
  }

  else
  {
    v4 = 0;
  }

  *(self + OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_representations) = v4;
}

- (CGRect)sourceFrame
{
  v2 = *(self + OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_sourceFrame);
  v3 = *(self + OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_sourceFrame + 8);
  v4 = *(self + OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_sourceFrame + 16);
  v5 = *(self + OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_sourceFrame + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (_TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult)init
{
  ObjectType = swift_getObjectType();
  *(self + OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_sticker) = 0;
  v4 = OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_stickerUUID;
  v5 = sub_19A7A8F64();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(self + OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_representations) = 0;
  *(self + OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_isLive) = 0;
  v6 = (self + OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_sourceFrame);
  v7 = *(MEMORY[0x1E695F050] + 16);
  *v6 = *MEMORY[0x1E695F050];
  v6[1] = v7;
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(StickerPhotosCreationResult *)&v9 init];
}

@end