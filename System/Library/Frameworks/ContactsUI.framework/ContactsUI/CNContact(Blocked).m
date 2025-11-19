@interface CNContact(Blocked)
- (id)allNumbersAndEmails;
@end

@implementation CNContact(Blocked)

- (id)allNumbersAndEmails
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DEC8] array];
  if ([a1 isKeyAvailable:*MEMORY[0x1E695C330]])
  {
    v3 = [a1 phoneNumbers];
    v4 = [v3 _cn_compactMap:&__block_literal_global_49529];

    v2 = v4;
  }

  v5 = [MEMORY[0x1E695DEC8] array];
  if ([a1 isKeyAvailable:*MEMORY[0x1E695C208]])
  {
    v6 = [a1 emailAddresses];
    v7 = [v6 _cn_compactMap:&__block_literal_global_2_49530];

    v5 = v7;
  }

  v11[0] = v2;
  v11[1] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [v8 _cn_flatten];

  return v9;
}

@end