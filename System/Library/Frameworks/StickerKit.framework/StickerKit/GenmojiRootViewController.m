@interface GenmojiRootViewController
- (_TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125GenmojiRootViewController)initWithCoder:(id)a3;
- (_TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125GenmojiRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation GenmojiRootViewController

- (_TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125GenmojiRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_19A7AB014();
    v6 = a4;
    v7 = sub_19A7AAFE4();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for GenmojiRootViewController();
  v9 = [(GenmojiRootViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125GenmojiRootViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for GenmojiRootViewController();
  v4 = a3;
  v5 = [(GenmojiRootViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end