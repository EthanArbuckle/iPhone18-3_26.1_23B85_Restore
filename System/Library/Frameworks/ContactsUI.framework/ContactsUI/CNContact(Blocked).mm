@interface CNContact(Blocked)
- (id)allNumbersAndEmails;
@end

@implementation CNContact(Blocked)

- (id)allNumbersAndEmails
{
  v11[2] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DEC8] array];
  if ([self isKeyAvailable:*MEMORY[0x1E695C330]])
  {
    phoneNumbers = [self phoneNumbers];
    v4 = [phoneNumbers _cn_compactMap:&__block_literal_global_49529];

    array = v4;
  }

  array2 = [MEMORY[0x1E695DEC8] array];
  if ([self isKeyAvailable:*MEMORY[0x1E695C208]])
  {
    emailAddresses = [self emailAddresses];
    v7 = [emailAddresses _cn_compactMap:&__block_literal_global_2_49530];

    array2 = v7;
  }

  v11[0] = array;
  v11[1] = array2;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  _cn_flatten = [v8 _cn_flatten];

  return _cn_flatten;
}

@end