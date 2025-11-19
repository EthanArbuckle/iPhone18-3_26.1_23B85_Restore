@interface NSHTTPCookie(NSSecureCoding_Temporary)
+ (uint64_t)classesForPropertyCoding;
- (id)initWithCoder:()NSSecureCoding_Temporary;
- (void)encodeWithCoder:()NSSecureCoding_Temporary;
@end

@implementation NSHTTPCookie(NSSecureCoding_Temporary)

+ (uint64_t)classesForPropertyCoding
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = [MEMORY[0x1E695DEC8] classForKeyedUnarchiver];
  v2 = [MEMORY[0x1E695DF20] classForKeyedUnarchiver];
  v3 = [MEMORY[0x1E696AEC0] classForKeyedUnarchiver];
  v4 = [MEMORY[0x1E696AD98] classForKeyedUnarchiver];
  v5 = [MEMORY[0x1E695DF00] classForKeyedUnarchiver];
  return [v0 setWithObjects:{v1, v2, v3, v4, v5, objc_msgSend(MEMORY[0x1E695DFB0], "classForKeyedUnarchiver"), 0}];
}

- (void)encodeWithCoder:()NSSecureCoding_Temporary
{
  v4 = a3;
  v6 = [a1 properties];
  v5 = [v6 copy];
  [v4 encodeObject:v5 forKey:@"properties"];
}

- (id)initWithCoder:()NSSecureCoding_Temporary
{
  v4 = a3;
  v5 = [objc_opt_class() classesForPropertyCoding];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"properties"];

  if (v6)
  {
    a1 = [a1 initWithProperties:v6];
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end