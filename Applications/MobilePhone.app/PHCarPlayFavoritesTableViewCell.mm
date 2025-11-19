@interface PHCarPlayFavoritesTableViewCell
- (CNContact)contact;
- (NSString)favoriteName;
- (NSString)phoneNumberType;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)setContact:(id)a3;
- (void)setFavoriteName:(id)a3;
- (void)setPhoneNumberType:(id)a3;
@end

@implementation PHCarPlayFavoritesTableViewCell

- (CNContact)contact
{
  v3 = OBJC_IVAR___PHCarPlayFavoritesTableViewCell_contact;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContact:(id)a3
{
  v5 = OBJC_IVAR___PHCarPlayFavoritesTableViewCell_contact;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
  v8 = self;

  [(PHCarPlayFavoritesTableViewCell *)v8 setNeedsUpdateConfiguration];
}

- (NSString)favoriteName
{
  swift_beginAccess();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setFavoriteName:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = (self + OBJC_IVAR___PHCarPlayFavoritesTableViewCell_favoriteName);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
  v8 = self;

  [(PHCarPlayFavoritesTableViewCell *)v8 setNeedsUpdateConfiguration];
}

- (NSString)phoneNumberType
{
  v2 = self + OBJC_IVAR___PHCarPlayFavoritesTableViewCell_phoneNumberType;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPhoneNumberType:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___PHCarPlayFavoritesTableViewCell_phoneNumberType);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
  v8 = self;

  [(PHCarPlayFavoritesTableViewCell *)v8 setNeedsUpdateConfiguration];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  PHCarPlayFavoritesTableViewCell.updateConfiguration(using:)(v7);

  (*(v5 + 8))(v7, v4);
}

@end