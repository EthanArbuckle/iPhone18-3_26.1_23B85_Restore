@interface MKTransitArtwork
+ (id)artworkWithIcon:(id)a3 accessibilityText:(id)a4;
+ (id)artworkWithShield:(id)a3 accessibilityText:(id)a4;
+ (id)artworkWithText:(id)a3;
- (MKTransitArtwork)initWithIcon:(id)a3 fallbackShield:(id)a4 accessibilityText:(id)a5;
- (MKTransitArtwork)initWithShield:(id)a3 accessibilityText:(id)a4;
- (MKTransitArtwork)initWithText:(id)a3;
@end

@implementation MKTransitArtwork

- (MKTransitArtwork)initWithIcon:(id)a3 fallbackShield:(id)a4 accessibilityText:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = MKTransitArtwork;
  v12 = [(MKTransitArtwork *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_iconDataSource, a3);
    v13->_artworkSourceType = 2;
    v14 = [v11 copy];
    accessibilityText = v13->_accessibilityText;
    v13->_accessibilityText = v14;

    objc_storeStrong(&v13->_iconFallbackShieldDataSource, a4);
    v16 = v13;
  }

  return v13;
}

- (MKTransitArtwork)initWithText:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MKTransitArtwork;
  v6 = [(MKTransitArtwork *)&v10 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 20) = 3;
    objc_storeStrong(v6 + 7, a3);
    v8 = v7;
  }

  return v7;
}

- (MKTransitArtwork)initWithShield:(id)a3 accessibilityText:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = MKTransitArtwork;
  v9 = [(MKTransitArtwork *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_shieldDataSource, a3);
    *&v10->_artworkSourceType = 1;
    v11 = [v8 copy];
    accessibilityText = v10->_accessibilityText;
    v10->_accessibilityText = v11;

    v13 = v10;
  }

  return v10;
}

+ (id)artworkWithIcon:(id)a3 accessibilityText:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithIcon:v7 accessibilityText:v6];

  return v8;
}

+ (id)artworkWithText:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithText:v4];

  return v5;
}

+ (id)artworkWithShield:(id)a3 accessibilityText:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithShield:v7 accessibilityText:v6];

  return v8;
}

@end