@interface RAPAddressLayoutOptions
+ (id)allFieldsDisabledOptions;
+ (id)allFieldsEnabledOptions;
+ (id)clientOverrideOptions;
- (BOOL)isEqual:(id)a3;
- (RAPAddressLayoutOptions)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)numberOfEnabledOptions;
@end

@implementation RAPAddressLayoutOptions

- (int64_t)numberOfEnabledOptions
{
  LODWORD(v3) = [(RAPAddressLayoutOptions *)self showBuilding];
  v4 = [(RAPAddressLayoutOptions *)self showFloor];
  v5 = 1;
  if (v3)
  {
    v5 = 2;
  }

  if (v4)
  {
    v3 = v5;
  }

  else
  {
    v3 = v3;
  }

  return v3 + [(RAPAddressLayoutOptions *)self showUnit];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(RAPAddressLayoutOptions *)self showFloor];
  if (v5 == [v4 showFloor] && (v6 = -[RAPAddressLayoutOptions showUnit](self, "showUnit"), v6 == objc_msgSend(v4, "showUnit")))
  {
    v8 = [(RAPAddressLayoutOptions *)self showBuilding];
    v7 = v8 ^ [v4 showBuilding] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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