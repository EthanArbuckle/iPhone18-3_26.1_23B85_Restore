@interface LocalStickerEffectEditorViewControllerConfiguration
- (BOOL)isEqual:(id)a3;
- (NSUUID)stickerIdentifier;
- (_TtC10StickerKit51LocalStickerEffectEditorViewControllerConfiguration)init;
- (_TtC10StickerKit51LocalStickerEffectEditorViewControllerConfiguration)initWithBSXPCCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)setStickerIdentifier:(id)a3;
@end

@implementation LocalStickerEffectEditorViewControllerConfiguration

- (NSUUID)stickerIdentifier
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC10StickerKit51LocalStickerEffectEditorViewControllerConfiguration_stickerIdentifier;
  swift_beginAccess();
  sub_19A60F0CC(self + v6, v5, &qword_1EAFCD800);
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

- (void)setStickerIdentifier:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  if (a3)
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

  v10 = OBJC_IVAR____TtC10StickerKit51LocalStickerEffectEditorViewControllerConfiguration_stickerIdentifier;
  swift_beginAccess();
  v11 = self;
  sub_19A6264EC(v7, self + v10);
  swift_endAccess();
}

- (_TtC10StickerKit51LocalStickerEffectEditorViewControllerConfiguration)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC10StickerKit51LocalStickerEffectEditorViewControllerConfiguration_stickerIdentifier;
  v5 = sub_19A7A8F64();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(LocalStickerEffectEditorViewControllerConfiguration *)&v7 init];
}

- (_TtC10StickerKit51LocalStickerEffectEditorViewControllerConfiguration)initWithBSXPCCoder:(id)a3
{
  swift_unknownObjectRetain();
  v4 = sub_19A745B74(a3);
  swift_unknownObjectRelease();
  return v4;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_19A741528(a3);
  swift_unknownObjectRelease();
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

  v6 = sub_19A74172C(v8);

  sub_19A5F2B54(v8, &unk_1EAFCD750);
  return v6 & 1;
}

@end