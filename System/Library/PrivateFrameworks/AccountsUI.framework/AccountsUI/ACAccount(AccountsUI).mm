@interface ACAccount(AccountsUI)
- (id)displayUsername;
@end

@implementation ACAccount(AccountsUI)

- (id)displayUsername
{
  selfCopy = self;
  v5[1] = a2;
  accountProperties = [self accountProperties];
  v5[0] = [accountProperties objectForKey:@"ACUIDisplayUsername"];
  MEMORY[0x277D82BD8](accountProperties);
  if (!v5[0])
  {
    v5[0] = [selfCopy username];
    MEMORY[0x277D82BD8](0);
  }

  v3 = MEMORY[0x277D82BE0](v5[0]);
  objc_storeStrong(v5, 0);

  return v3;
}

@end