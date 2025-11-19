@interface CategoryKeyView
- (void)dealloc;
- (void)didVisitIndexPath:(id)a3;
- (void)setEmojiKeyManager:(id)a3;
- (void)updateToIndexPath:(id)a3;
@end

@implementation CategoryKeyView

- (void)setEmojiKeyManager:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC10StickerKit15CategoryKeyView__emojiKeyManager) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC10StickerKit15CategoryKeyView_categoriesDidChangeObserver);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = self;
    swift_unknownObjectRetain();
    v6 = [v4 defaultCenter];
    [v6 removeObserver_];
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = self;
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for CategoryKeyView();
  [(CategoryKeyView *)&v8 dealloc];
}

- (void)updateToIndexPath:(id)a3
{
  v4 = sub_19A7A9094();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A9024();
  v8 = self;
  sub_19A779A2C();

  (*(v5 + 8))(v7, v4);
}

- (void)didVisitIndexPath:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  if (a3)
  {
    sub_19A7A9024();
    v8 = sub_19A7A9094();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_19A7A9094();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = self;
  sub_19A779FCC(v7);

  sub_19A5F2B54(v7, &unk_1EAFCF110);
}

@end