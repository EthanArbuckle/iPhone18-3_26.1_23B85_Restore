@interface NSNumberingSystem
+ (id)numberingSystemWithNumberingSystemName:(const char *)name;
- (BOOL)isEqual:(id)equal;
- (NSNumberingSystem)initWithIdentifier:(id)identifier isAlgorithmic:(BOOL)algorithmic radix:(int64_t)radix descriptor:(id)descriptor;
- (NSNumberingSystem)initWithLocaleIdentifier:(id)identifier;
- (NSNumberingSystem)initWithNumberingSystemIdentifier:(id)identifier;
- (unint64_t)hash;
@end

@implementation NSNumberingSystem

+ (id)numberingSystemWithNumberingSystemName:(const char *)name
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = unumsys_openByName();
  v6 = [MEMORY[0x1E696AEC0] stringWithCharacters:v11 length:unumsys_getDescription()];
  v7 = MEMORY[0x1E6901940](v4);
  v8 = MEMORY[0x1E6901930](v4);
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:name];
  v10 = [[NSNumberingSystem alloc] initWithIdentifier:v9 isAlgorithmic:v7 != 0 radix:v8 descriptor:v6];
  unumsys_close();

  return v10;
}

- (NSNumberingSystem)initWithIdentifier:(id)identifier isAlgorithmic:(BOOL)algorithmic radix:(int64_t)radix descriptor:(id)descriptor
{
  algorithmicCopy = algorithmic;
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  v16.receiver = self;
  v16.super_class = NSNumberingSystem;
  v12 = [(NSNumberingSystem *)&v16 init];
  v13 = v12;
  if (v12)
  {
    [(NSNumberingSystem *)v12 setIdentifier:identifierCopy];
    [(NSNumberingSystem *)v13 setIsAlgorithmic:algorithmicCopy];
    [(NSNumberingSystem *)v13 setRadix:radix];
    [(NSNumberingSystem *)v13 setDescriptor:descriptorCopy];
    v14 = v13;
  }

  return v13;
}

- (NSNumberingSystem)initWithLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [identifierCopy rangeOfString:@"numbers=([a-z]+)" options:1024];
  if (v6)
  {
    v7 = [identifierCopy substringWithRange:{v5, v6}];
    iCUNumberingSystems = [MEMORY[0x1E695DF58] ICUNumberingSystems];
    v9 = [iCUNumberingSystems objectForKeyedSubscript:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSNumberingSystem)initWithNumberingSystemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  iCUNumberingSystems = [MEMORY[0x1E695DF58] ICUNumberingSystems];
  v6 = [iCUNumberingSystems objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (unint64_t)hash
{
  identifier = [(NSNumberingSystem *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(NSNumberingSystem *)self identifier];
      identifier2 = [(NSNumberingSystem *)equalCopy identifier];
      v7 = [identifier isEqual:identifier2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end