@interface LAKeyIdentifier
+ (id)_identifierWithSuffix:(uint64_t)a1;
+ (id)defaultAccessKeyIdentifierForRightWithIdentifier:(id)a3;
+ (id)defaultSecretIdentifierForRightWithIdentifier:(id)a3;
+ (uint64_t)_identifierHasCorrectFormat:(uint64_t)a1;
@end

@implementation LAKeyIdentifier

+ (id)defaultAccessKeyIdentifierForRightWithIdentifier:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:akey", a3];
  v5 = [(LAKeyIdentifier *)a1 _identifierWithSuffix:v4];

  return v5;
}

+ (id)_identifierWithSuffix:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];
  v5 = [v4 length];

  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Identifier cannot be empty"];
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.LocalAuthentication:Authorization:%@", v2];

  return v6;
}

+ (id)defaultSecretIdentifierForRightWithIdentifier:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:genp", a3];
  v5 = [(LAKeyIdentifier *)a1 _identifierWithSuffix:v4];

  return v5;
}

+ (uint64_t)_identifierHasCorrectFormat:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];
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