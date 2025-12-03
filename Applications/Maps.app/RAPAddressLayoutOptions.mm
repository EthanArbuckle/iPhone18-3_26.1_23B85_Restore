@interface RAPAddressLayoutOptions
+ (id)allFieldsDisabledOptions;
+ (id)allFieldsEnabledOptions;
+ (id)clientOverrideOptions;
- (BOOL)isEqual:(id)equal;
- (RAPAddressLayoutOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)numberOfEnabledOptions;
@end

@implementation RAPAddressLayoutOptions

- (int64_t)numberOfEnabledOptions
{
  LODWORD(v3) = [(RAPAddressLayoutOptions *)self showBuilding];
  showFloor = [(RAPAddressLayoutOptions *)self showFloor];
  v5 = 1;
  if (v3)
  {
    v5 = 2;
  }

  if (showFloor)
  {
    v3 = v5;
  }

  else
  {
    v3 = v3;
  }

  return v3 + [(RAPAddressLayoutOptions *)self showUnit];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  showFloor = [(RAPAddressLayoutOptions *)self showFloor];
  if (showFloor == [equalCopy showFloor] && (v6 = -[RAPAddressLayoutOptions showUnit](self, "showUnit"), v6 == objc_msgSend(equalCopy, "showUnit")))
  {
    showBuilding = [(RAPAddressLayoutOptions *)self showBuilding];
    v7 = showBuilding ^ [equalCopy showBuilding] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setShowUnit:{-[RAPAddressLayoutOptions showUnit](self, "showUnit")}];
  [v4 setShowBuilding:{-[RAPAddressLayoutOptions showBuilding](self, "showBuilding")}];
  [v4 setShowFloor:{-[RAPAddressLayoutOptions showFloor](self, "showFloor")}];
  return v4;
}

- (RAPAddressLayoutOptions)init
{
  v3.receiver = self;
  v3.super_class = RAPAddressLayoutOptions;
  result = [(RAPAddressLayoutOptions *)&v3 init];
  if (result)
  {
    *&result->_showUnit = 0;
    result->_showFloor = 0;
  }

  return result;
}

+ (id)allFieldsDisabledOptions
{
  v2 = objc_alloc_init(RAPAddressLayoutOptions);
  [(RAPAddressLayoutOptions *)v2 setShowUnit:0];
  [(RAPAddressLayoutOptions *)v2 setShowBuilding:0];
  [(RAPAddressLayoutOptions *)v2 setShowFloor:0];

  return v2;
}

+ (id)allFieldsEnabledOptions
{
  v2 = objc_alloc_init(RAPAddressLayoutOptions);
  [(RAPAddressLayoutOptions *)v2 setShowUnit:1];
  [(RAPAddressLayoutOptions *)v2 setShowBuilding:1];
  [(RAPAddressLayoutOptions *)v2 setShowFloor:1];

  return v2;
}

+ (id)clientOverrideOptions
{
  v2 = objc_alloc_init(RAPAddressLayoutOptions);
  [(RAPAddressLayoutOptions *)v2 setShowFloor:GEOConfigGetBOOL()];
  [(RAPAddressLayoutOptions *)v2 setShowBuilding:GEOConfigGetBOOL()];
  [(RAPAddressLayoutOptions *)v2 setShowUnit:GEOConfigGetBOOL()];

  return v2;
}

@end