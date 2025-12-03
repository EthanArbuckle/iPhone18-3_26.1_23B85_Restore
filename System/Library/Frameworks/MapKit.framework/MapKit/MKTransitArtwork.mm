@interface MKTransitArtwork
+ (id)artworkWithIcon:(id)icon accessibilityText:(id)text;
+ (id)artworkWithShield:(id)shield accessibilityText:(id)text;
+ (id)artworkWithText:(id)text;
- (MKTransitArtwork)initWithIcon:(id)icon fallbackShield:(id)shield accessibilityText:(id)text;
- (MKTransitArtwork)initWithShield:(id)shield accessibilityText:(id)text;
- (MKTransitArtwork)initWithText:(id)text;
@end

@implementation MKTransitArtwork

- (MKTransitArtwork)initWithIcon:(id)icon fallbackShield:(id)shield accessibilityText:(id)text
{
  iconCopy = icon;
  shieldCopy = shield;
  textCopy = text;
  v18.receiver = self;
  v18.super_class = MKTransitArtwork;
  v12 = [(MKTransitArtwork *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_iconDataSource, icon);
    v13->_artworkSourceType = 2;
    v14 = [textCopy copy];
    accessibilityText = v13->_accessibilityText;
    v13->_accessibilityText = v14;

    objc_storeStrong(&v13->_iconFallbackShieldDataSource, shield);
    v16 = v13;
  }

  return v13;
}

- (MKTransitArtwork)initWithText:(id)text
{
  textCopy = text;
  v10.receiver = self;
  v10.super_class = MKTransitArtwork;
  v6 = [(MKTransitArtwork *)&v10 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 20) = 3;
    objc_storeStrong(v6 + 7, text);
    v8 = v7;
  }

  return v7;
}

- (MKTransitArtwork)initWithShield:(id)shield accessibilityText:(id)text
{
  shieldCopy = shield;
  textCopy = text;
  v15.receiver = self;
  v15.super_class = MKTransitArtwork;
  v9 = [(MKTransitArtwork *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_shieldDataSource, shield);
    *&v10->_artworkSourceType = 1;
    v11 = [textCopy copy];
    accessibilityText = v10->_accessibilityText;
    v10->_accessibilityText = v11;

    v13 = v10;
  }

  return v10;
}

+ (id)artworkWithIcon:(id)icon accessibilityText:(id)text
{
  textCopy = text;
  iconCopy = icon;
  v8 = [[self alloc] initWithIcon:iconCopy accessibilityText:textCopy];

  return v8;
}

+ (id)artworkWithText:(id)text
{
  textCopy = text;
  v5 = [[self alloc] initWithText:textCopy];

  return v5;
}

+ (id)artworkWithShield:(id)shield accessibilityText:(id)text
{
  textCopy = text;
  shieldCopy = shield;
  v8 = [[self alloc] initWithShield:shieldCopy accessibilityText:textCopy];

  return v8;
}

@end