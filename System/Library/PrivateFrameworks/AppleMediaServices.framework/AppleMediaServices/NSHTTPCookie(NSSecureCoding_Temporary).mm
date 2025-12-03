@interface NSHTTPCookie(NSSecureCoding_Temporary)
+ (uint64_t)classesForPropertyCoding;
- (id)initWithCoder:()NSSecureCoding_Temporary;
- (void)encodeWithCoder:()NSSecureCoding_Temporary;
@end

@implementation NSHTTPCookie(NSSecureCoding_Temporary)

+ (uint64_t)classesForPropertyCoding
{
  v0 = MEMORY[0x1E695DFD8];
  classForKeyedUnarchiver = [MEMORY[0x1E695DEC8] classForKeyedUnarchiver];
  classForKeyedUnarchiver2 = [MEMORY[0x1E695DF20] classForKeyedUnarchiver];
  classForKeyedUnarchiver3 = [MEMORY[0x1E696AEC0] classForKeyedUnarchiver];
  classForKeyedUnarchiver4 = [MEMORY[0x1E696AD98] classForKeyedUnarchiver];
  classForKeyedUnarchiver5 = [MEMORY[0x1E695DF00] classForKeyedUnarchiver];
  return [v0 setWithObjects:{classForKeyedUnarchiver, classForKeyedUnarchiver2, classForKeyedUnarchiver3, classForKeyedUnarchiver4, classForKeyedUnarchiver5, objc_msgSend(MEMORY[0x1E695DFB0], "classForKeyedUnarchiver"), 0}];
}

- (void)encodeWithCoder:()NSSecureCoding_Temporary
{
  v4 = a3;
  properties = [self properties];
  v5 = [properties copy];
  [v4 encodeObject:v5 forKey:@"properties"];
}

- (id)initWithCoder:()NSSecureCoding_Temporary
{
  v4 = a3;
  classesForPropertyCoding = [objc_opt_class() classesForPropertyCoding];
  v6 = [v4 decodeObjectOfClasses:classesForPropertyCoding forKey:@"properties"];

  if (v6)
  {
    self = [self initWithProperties:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end