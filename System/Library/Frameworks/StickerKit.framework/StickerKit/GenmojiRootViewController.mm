@interface GenmojiRootViewController
- (_TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125GenmojiRootViewController)initWithCoder:(id)coder;
- (_TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125GenmojiRootViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation GenmojiRootViewController

- (_TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125GenmojiRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_19A7AB014();
    bundleCopy = bundle;
    v7 = sub_19A7AAFE4();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for GenmojiRootViewController();
  v9 = [(GenmojiRootViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125GenmojiRootViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for GenmojiRootViewController();
  coderCopy = coder;
  v5 = [(GenmojiRootViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end