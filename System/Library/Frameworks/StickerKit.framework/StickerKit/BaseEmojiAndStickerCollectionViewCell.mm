@interface BaseEmojiAndStickerCollectionViewCell
- (BOOL)isSelected;
- (void)dealloc;
- (void)handleTap;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setSelected:(BOOL)selected;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation BaseEmojiAndStickerCollectionViewCell

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BaseEmojiAndStickerCollectionViewCell();
  return [(BaseEmojiAndStickerCollectionViewCell *)&v3 isSelected];
}

- (void)setSelected:(BOOL)selected
{
  selfCopy = self;
  sub_19A70FCB8(selected);
}

- (void)dealloc
{
  v3 = sub_19A710F38();
  if (v3)
  {
    v4 = v3;
    selfCopy = self;
    [v4 removeFromSuperview];
  }

  else
  {
    selfCopy2 = self;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for BaseEmojiAndStickerCollectionViewCell();
  [(BaseEmojiAndStickerCollectionViewCell *)&v7 dealloc];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for BaseEmojiAndStickerCollectionViewCell();
  v2 = v4.receiver;
  [(BaseEmojiAndStickerCollectionViewCell *)&v4 layoutSubviews];
  if ([v2 isSelected])
  {
    v3 = sub_19A70E9E4();
    [v2 bounds];
    [v3 setFrame_];
  }
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for BaseEmojiAndStickerCollectionViewCell();
  v2 = v5.receiver;
  [(BaseEmojiAndStickerCollectionViewCell *)&v5 prepareForReuse];
  v3 = v2[OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_showsPaddle];
  v2[OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_showsPaddle] = 0;
  sub_19A710240(v3);
  v4 = *&v2[OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_flatColor];
  *&v2[OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_flatColor] = 0;

  sub_19A70FF44();
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_19A5F5028(0, &qword_1EAFCCC08);
  sub_19A63D890();
  sub_19A7AB494();
  eventCopy = event;
  selfCopy = self;
  v8 = sub_19A7AB484();

  v10.receiver = selfCopy;
  v10.super_class = type metadata accessor for BaseEmojiAndStickerCollectionViewCell();
  [(BaseEmojiAndStickerCollectionViewCell *)&v10 touchesBegan:v8 withEvent:eventCopy];

  if ((*((*MEMORY[0x1E69E7D40] & selfCopy->super.super.super.super.super.isa) + 0x110))())
  {
    v9 = *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_showsPaddle);
    *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_showsPaddle) = 1;
    sub_19A710240(v9);
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  sub_19A5F5028(0, &qword_1EAFCCC08);
  sub_19A63D890();
  sub_19A7AB494();
  eventCopy = event;
  selfCopy = self;
  v8 = sub_19A7AB484();

  v10.receiver = selfCopy;
  v10.super_class = type metadata accessor for BaseEmojiAndStickerCollectionViewCell();
  [(BaseEmojiAndStickerCollectionViewCell *)&v10 touchesMoved:v8 withEvent:eventCopy];

  v9 = *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_showsPaddle);
  *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_showsPaddle) = 0;
  sub_19A710240(v9);
}

- (void)handleTap
{
  if (qword_1EAFCB638 != -1)
  {
    swift_once();
  }

  v0 = sub_19A7A9384();
  __swift_project_value_buffer(v0, qword_1EAFCECF8);
  oslog = sub_19A7A9364();
  v1 = sub_19A7AB574();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_19A5EE000, oslog, v1, "handleTap", v2, 2u);
    MEMORY[0x19A907A30](v2, -1, -1);
  }
}

@end