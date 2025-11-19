@interface BookmarkButton
- (NSString)accessibilityLabel;
- (NSString)accessibilityValue;
- (_TtC23ShelfKitCollectionViews14BookmarkButton)initWithCoder:(id)a3;
- (void)primaryActionTriggered;
@end

@implementation BookmarkButton

- (_TtC23ShelfKitCollectionViews14BookmarkButton)initWithCoder:(id)a3
{
  sub_302898();
  sub_302878();
  *(&self->super.super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews14BookmarkButton_presenter) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)primaryActionTriggered
{
  if (*(&self->super.super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews14BookmarkButton_presenter))
  {
    v2 = self;

    sub_30A378();
  }
}

- (NSString)accessibilityLabel
{
  v2 = [objc_opt_self() mainBundle];
  v6._countAndFlagsBits = 0xE000000000000000;
  v8._object = 0x8000000000338EA0;
  v8._countAndFlagsBits = 0xD00000000000001CLL;
  v9.value._countAndFlagsBits = 0;
  v9.value._object = 0;
  v3.super.isa = v2;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_301AB8(v8, v9, v3, v10, v6);

  v4 = sub_30C098();

  return v4;
}

- (NSString)accessibilityValue
{
  v2 = self;
  sub_A7C04();
  v4 = v3;

  if (v4)
  {
    v5 = sub_30C098();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end