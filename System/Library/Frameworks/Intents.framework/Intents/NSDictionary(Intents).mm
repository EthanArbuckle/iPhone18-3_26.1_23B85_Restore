@interface NSDictionary(Intents)
- (id)_intents_indexingRepresentation;
- (id)descriptionAtIndent:()Intents;
@end

@implementation NSDictionary(Intents)

- (id)_intents_indexingRepresentation
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(self, "count")}];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__NSDictionary_Intents___intents_indexingRepresentation__block_invoke;
  v5[3] = &unk_1E7288890;
  v3 = v2;
  v6 = v3;
  [self enumerateKeysAndObjectsUsingBlock:v5];

  return v3;
}

- (id)descriptionAtIndent:()Intents
{
  v5 = [MEMORY[0x1E696AD60] stringWithString:@"\n"];
  if (a3)
  {
    v6 = a3;
    do
    {
      [v5 appendString:@"    "];
      --v6;
    }

    while (v6);
  }

  v7 = [MEMORY[0x1E696AD60] stringWithString:@"{"];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __45__NSDictionary_Intents__descriptionAtIndent___block_invoke;
  v16 = &unk_1E7283730;
  v8 = v7;
  v17 = v8;
  v18 = v5;
  v19 = a3;
  v9 = v5;
  [self enumerateKeysAndObjectsUsingBlock:&v13];
  [v8 appendFormat:@"%@}", v9, v13, v14, v15, v16];
  v10 = v18;
  v11 = v8;

  return v8;
}

@end