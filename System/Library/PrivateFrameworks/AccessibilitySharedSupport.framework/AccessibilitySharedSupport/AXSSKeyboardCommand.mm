@interface AXSSKeyboardCommand
+ (id)commandWithStandardCommandIdentifier:(id)identifier;
- (AXSSKeyboardCommand)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCommand:(id)command;
- (NSString)localizedName;
- (id)_initWithType:(id)type standardCommandIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXSSKeyboardCommand

+ (id)commandWithStandardCommandIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initWithStandardCommandIdentifier:identifierCopy];

  return v5;
}

- (id)_initWithType:(id)type standardCommandIdentifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = AXSSKeyboardCommand;
  v9 = [(AXSSKeyboardCommand *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_type, type);
    objc_storeStrong(p_isa + 2, identifier);
  }

  return p_isa;
}

- (AXSSKeyboardCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"standardCommandIdentifier"];
    self = [(AXSSKeyboardCommand *)self _initWithType:v5 standardCommandIdentifier:v6];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  type = [(AXSSKeyboardCommand *)self type];
  [coderCopy encodeObject:type forKey:@"type"];

  standardCommandIdentifier = [(AXSSKeyboardCommand *)self standardCommandIdentifier];
  [coderCopy encodeObject:standardCommandIdentifier forKey:@"standardCommandIdentifier"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  type = [(AXSSKeyboardCommand *)self type];
  standardCommandIdentifier = [(AXSSKeyboardCommand *)self standardCommandIdentifier];
  v7 = [v4 _initWithType:type standardCommandIdentifier:standardCommandIdentifier];

  return v7;
}

- (NSString)localizedName
{
  type = [(AXSSKeyboardCommand *)self type];
  v4 = [type isEqualToString:@"Standard"];

  if (v4)
  {
    standardCommandIdentifier = [(AXSSKeyboardCommand *)self standardCommandIdentifier];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"COMMAND_%@", standardCommandIdentifier];
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:v6 value:&stru_1F405A428 table:@"FullKeyboardAccess"];
  }

  else
  {
    v8 = &stru_1F405A428;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AXSSKeyboardCommand *)self isEqualToCommand:equalCopy];

  return v5;
}

- (BOOL)isEqualToCommand:(id)command
{
  commandCopy = command;
  type = [(AXSSKeyboardCommand *)self type];
  v6 = [type isEqualToString:@"Standard"];

  if (v6)
  {
    type2 = [commandCopy type];
    if ([type2 isEqualToString:@"Standard"])
    {
      standardCommandIdentifier = [commandCopy standardCommandIdentifier];
      standardCommandIdentifier2 = [(AXSSKeyboardCommand *)self standardCommandIdentifier];
      v10 = [standardCommandIdentifier isEqualToString:standardCommandIdentifier2];
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
  type = [(AXSSKeyboardCommand *)self type];
  v4 = [type hash];
  standardCommandIdentifier = [(AXSSKeyboardCommand *)self standardCommandIdentifier];
  v6 = [standardCommandIdentifier hash];

  return v6 ^ v4;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = AXSSKeyboardCommand;
  v3 = [(AXSSKeyboardCommand *)&v8 description];
  type = [(AXSSKeyboardCommand *)self type];
  standardCommandIdentifier = [(AXSSKeyboardCommand *)self standardCommandIdentifier];
  v6 = [v3 stringByAppendingFormat:@" - type: %@, command identifier: %@", type, standardCommandIdentifier];

  return v6;
}

@end