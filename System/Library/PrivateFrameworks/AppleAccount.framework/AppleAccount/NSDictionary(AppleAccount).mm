@interface NSDictionary(AppleAccount)
- (id)aa_dictionaryByAddingEntriesFromDictionary:()AppleAccount;
@end

@implementation NSDictionary(AppleAccount)

- (id)aa_dictionaryByAddingEntriesFromDictionary:()AppleAccount
{
  v5 = a3;
  if (!v5)
  {
    [(NSDictionary(AppleAccount) *)a2 aa_dictionaryByAddingEntriesFromDictionary:self];
  }

  v6 = [self mutableCopy];
  [v6 addEntriesFromDictionary:v5];
  v7 = [v6 copy];

  return v7;
}

- (void)aa_dictionaryByAddingEntriesFromDictionary:()AppleAccount .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSDictionary+AppleAccount.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"dictionary"}];
}

@end