@interface ACAccount(AccountsUI)
- (id)displayUsername;
@end

@implementation ACAccount(AccountsUI)

- (id)displayUsername
{
  v6 = a1;
  v5[1] = a2;
  v4 = [a1 accountProperties];
  v5[0] = [v4 objectForKey:@"ACUIDisplayUsername"];
  MEMORY[0x277D82BD8](v4);
  if (!v5[0])
  {
    v5[0] = [v6 username];
    MEMORY[0x277D82BD8](0);
  }

  v3 = MEMORY[0x277D82BE0](v5[0]);
  objc_storeStrong(v5, 0);

  return v3;
}

@end