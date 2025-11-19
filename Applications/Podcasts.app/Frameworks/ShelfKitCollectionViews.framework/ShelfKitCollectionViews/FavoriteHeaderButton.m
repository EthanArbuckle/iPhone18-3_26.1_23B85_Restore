@interface FavoriteHeaderButton
- (NSString)accessibilityIdentifier;
- (NSString)accessibilityLabel;
- (NSString)accessibilityValue;
- (_TtC23ShelfKitCollectionViews20FavoriteHeaderButton)initWithCoder:(id)a3;
- (void)primaryActionTriggered;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation FavoriteHeaderButton

- (_TtC23ShelfKitCollectionViews20FavoriteHeaderButton)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_tipRequestID;
  *v3 = 0;
  v3[8] = 1;
  *(&self->super.super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_tipSubscription) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)primaryActionTriggered
{
  v2 = self;
  sub_AC7BC();
}

- (void)willMoveToSuperview:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_AD50C(a3);
}

- (NSString)accessibilityIdentifier
{
  v2 = sub_30C098();

  return v2;
}

- (NSString)accessibilityLabel
{
  v2 = [objc_opt_self() mainBundle];
  v6._countAndFlagsBits = 0xE000000000000000;
  v8._object = 0x8000000000339250;
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
  sub_AD7E4();
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