@interface LAKeyIdentifier
+ (id)_identifierWithSuffix:(uint64_t)suffix;
+ (id)defaultAccessKeyIdentifierForRightWithIdentifier:(id)identifier;
+ (id)defaultSecretIdentifierForRightWithIdentifier:(id)identifier;
+ (uint64_t)_identifierHasCorrectFormat:(uint64_t)format;
@end

@implementation LAKeyIdentifier

+ (id)defaultAccessKeyIdentifierForRightWithIdentifier:(id)identifier
{
  identifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:akey", identifier];
  v5 = [(LAKeyIdentifier *)self _identifierWithSuffix:identifier];

  return v5;
}

+ (id)_identifierWithSuffix:(uint64_t)suffix
{
  v2 = a2;
  objc_opt_self();
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  v5 = [v4 length];

  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Identifier cannot be empty"];
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.LocalAuthentication:Authorization:%@", v2];

  return v6;
}

+ (id)defaultSecretIdentifierForRightWithIdentifier:(id)identifier
{
  identifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:genp", identifier];
  v5 = [(LAKeyIdentifier *)self _identifierWithSuffix:identifier];

  return v5;
}

+ (uint64_t)_identifierHasCorrectFormat:(uint64_t)format
{
  v2 = a2;
  objc_opt_self();
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v2 componentsSeparatedByString:@":"];
    if ([v6 count] >= 3 && (objc_msgSend(v6, "objectAtIndexedSubscript:", 0), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"com.apple.LocalAuthentication"), v7, v8))
    {
      v9 = [v6 objectAtIndexedSubscript:1];
      v10 = [v9 isEqualToString:@"Authorization"];
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

@end