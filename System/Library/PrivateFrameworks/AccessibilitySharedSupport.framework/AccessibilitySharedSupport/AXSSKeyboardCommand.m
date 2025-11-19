@interface AXSSKeyboardCommand
+ (id)commandWithStandardCommandIdentifier:(id)a3;
- (AXSSKeyboardCommand)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCommand:(id)a3;
- (NSString)localizedName;
- (id)_initWithType:(id)a3 standardCommandIdentifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXSSKeyboardCommand

+ (id)commandWithStandardCommandIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithStandardCommandIdentifier:v4];

  return v5;
}

- (id)_initWithType:(id)a3 standardCommandIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AXSSKeyboardCommand;
  v9 = [(AXSSKeyboardCommand *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_type, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

- (AXSSKeyboardCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"standardCommandIdentifier"];
    self = [(AXSSKeyboardCommand *)self _initWithType:v5 standardCommandIdentifier:v6];

    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXSSKeyboardCommand *)self type];
  [v4 encodeObject:v5 forKey:@"type"];

  v6 = [(AXSSKeyboardCommand *)self standardCommandIdentifier];
  [v4 encodeObject:v6 forKey:@"standardCommandIdentifier"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(AXSSKeyboardCommand *)self type];
  v6 = [(AXSSKeyboardCommand *)self standardCommandIdentifier];
  v7 = [v4 _initWithType:v5 standardCommandIdentifier:v6];

  return v7;
}

- (NSString)localizedName
{
  v3 = [(AXSSKeyboardCommand *)self type];
  v4 = [v3 isEqualToString:@"Standard"];

  if (v4)
  {
    v5 = [(AXSSKeyboardCommand *)self standardCommandIdentifier];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"COMMAND_%@", v5];
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:v6 value:&stru_1F405A428 table:@"FullKeyboardAccess"];
  }

  else
  {
    v8 = &stru_1F405A428;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AXSSKeyboardCommand *)self isEqualToCommand:v4];

  return v5;
}

- (BOOL)isEqualToCommand:(id)a3
{
  v4 = a3;
  v5 = [(AXSSKeyboardCommand *)self type];
  v6 = [v5 isEqualToString:@"Standard"];

  if (v6)
  {
    v7 = [v4 type];
    if ([v7 isEqualToString:@"Standard"])
    {
      v8 = [v4 standardCommandIdentifier];
      v9 = [(AXSSKeyboardCommand *)self standardCommandIdentifier];
      v10 = [v8 isEqualToString:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(AXSSKeyboardCommand *)self type];
  v4 = [v3 hash];
  v5 = [(AXSSKeyboardCommand *)self standardCommandIdentifier];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = AXSSKeyboardCommand;
  v3 = [(AXSSKeyboardCommand *)&v8 description];
  v4 = [(AXSSKeyboardCommand *)self type];
  v5 = [(AXSSKeyboardCommand *)self standardCommandIdentifier];
  v6 = [v3 stringByAppendingFormat:@" - type: %@, command identifier: %@", v4, v5];

  return v6;
}

@end