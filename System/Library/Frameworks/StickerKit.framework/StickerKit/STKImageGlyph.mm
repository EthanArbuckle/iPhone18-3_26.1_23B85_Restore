@interface STKImageGlyph
+ (id)fromEmojiString:(id)a3;
+ (id)fromSticker:(id)a3;
+ (id)fromStickerIdentifier:(id)a3;
+ (id)imageGlyphForGlyphIdentifier:(id)a3;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (NSUUID)stickerUUID;
- (STKImageGlyph)init;
- (id)createTextInputStickerPayload;
- (int64_t)type;
- (void)createEmojiImageTextAttachmentWithCompletionHandler:(id)a3;
- (void)createUIStickerWithCompletionHandler:(id)a3;
- (void)createUIStickerWithLoadAllRepresentations:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation STKImageGlyph

- (NSUUID)stickerUUID
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  sub_19A60F0CC(self + OBJC_IVAR___STKImageGlyph_stickerUUID, &v12 - v4, &qword_1EAFCD800);
  v6 = sub_19A7A8F64();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    v10 = sub_19A7A8F24();
    (*(v7 + 8))(v5, v6);
    v9 = v10;
  }

  return v9;
}

- (int64_t)type
{
  v2 = self;
  v3 = sub_19A7669B0();

  return v3;
}

- (BOOL)isEmpty
{
  v2 = self;
  v3 = sub_19A766B4C();

  return v3;
}

+ (id)fromSticker:(id)a3
{
  v3 = a3;
  v4 = sub_19A76E038();

  return v4;
}

+ (id)fromStickerIdentifier:(id)a3
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v17 - v7;
  v9 = sub_19A7A8F64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A8F44();
  (*(v10 + 16))(v8, v12, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v13 = sub_19A7A9094();
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = objc_allocWithZone(type metadata accessor for ImageGlyph(0));
  v15 = ImageGlyph.init(stickerUUID:stickerEffectType:stickerSourceType:avatarIdentifier:poseIdentifier:emoji:emojiString:indexPath:character:)(v8, 0, 0, 0, 0, 0, 0, v17, 0, 0, v5, 0, 0);
  (*(v10 + 8))(v12, v9);

  return v15;
}

+ (id)fromEmojiString:(id)a3
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v17 - v7;
  v9 = sub_19A7AB014();
  v11 = v10;
  v12 = sub_19A7A8F64();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = sub_19A7A9094();
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = objc_allocWithZone(type metadata accessor for ImageGlyph(0));
  v15 = ImageGlyph.init(stickerUUID:stickerEffectType:stickerSourceType:avatarIdentifier:poseIdentifier:emoji:emojiString:indexPath:character:)(v8, 0, 0, 0, 0, 0, 0, v17, v9, v11, v5, 0, 0);

  return v15;
}

+ (id)imageGlyphForGlyphIdentifier:(id)a3
{
  v3 = sub_19A7AB014();
  v5 = _s10StickerKit10ImageGlyphC05imageD03forACSgSS_tFZ_0(v3, v4);

  return v5;
}

- (void)createUIStickerWithLoadAllRepresentations:(BOOL)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_19A7AB394();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_19A7C2148;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7C2150;
  v14[5] = v13;
  v15 = self;
  sub_19A78E8A0(0, 0, v9, &unk_19A7C2158, v14);
}

- (void)createUIStickerWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_19A7AB394();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_19A7C2138;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_19A7BE620;
  v12[5] = v11;
  v13 = self;
  sub_19A78E8A0(0, 0, v7, &unk_19A7B6B20, v12);
}

- (void)createEmojiImageTextAttachmentWithCompletionHandler:(id)a3
{
  v5 = sub_19A7AAC14();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  (*(v6 + 104))(v8, *MEMORY[0x1E69D4708], v5);
  v11 = self;
  v12 = sub_19A768F20(v8);
  (*(v6 + 8))(v8, v5);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = sub_19A612E9C;
    *(v13 + 24) = v10;
    v14 = v12;

    sub_19A68A53C(sub_19A69E108, v13);
  }
}

- (id)createTextInputStickerPayload
{
  v3 = sub_19A7AAC14();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x1E69D4708], v3, v5);
  v8 = self;
  v9 = sub_19A768F20(v7);
  (*(v4 + 8))(v7, v3);
  if (v9)
  {
    v10 = Sticker.asDictionaryPayload()();

    if (v10)
    {
      v11 = sub_19A7AAF34();

      v12 = v11;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v12 = 0;
LABEL_6:

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_19A76AA50(v8);

  sub_19A5F2B54(v8, &unk_1EAFCD750);
  return v6 & 1;
}

- (STKImageGlyph)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end