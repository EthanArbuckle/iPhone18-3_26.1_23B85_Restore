@interface GKAccountAuthenticationPlugin
- (BOOL)isPushSupportedForAccount:(id)account;
- (id)credentialForAccount:(id)account client:(id)client store:(id)store error:(id *)error;
- (void)discoverPropertiesForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion;
- (void)renewCredentialsForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion;
- (void)verifyCredentialsForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion;
@end

@implementation GKAccountAuthenticationPlugin

- (void)verifyCredentialsForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion
{
  sub_AF84();
  v16 = sub_AD70(v10, v11, v12, v13, v14, v15);
  if (v8)
  {
    sub_B038();
  }

  if (v16)
  {
    sub_AE58();
    *(swift_allocObject() + 16) = v16;
  }

  v17 = v7;
  v18 = v6;
  v19 = v9;
  sub_AE28();
  sub_1DD8();
  v20 = sub_AE4C();
  sub_A5DC(v20);

  sub_AF70();
}

- (void)renewCredentialsForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion
{
  sub_AF84();
  v16 = sub_AD70(v10, v11, v12, v13, v14, v15);
  if (v8)
  {
    sub_B038();
  }

  if (v16)
  {
    sub_AE58();
    *(swift_allocObject() + 16) = v16;
  }

  v17 = v7;
  v18 = v6;
  v19 = v9;
  sub_AE28();
  sub_2B68();
  v20 = sub_AE4C();
  sub_A5DC(v20);

  sub_AF70();
}

- (BOOL)isPushSupportedForAccount:(id)account
{
  accountCopy = account;
  selfCopy = self;
  sub_60AC();

  return 1;
}

- (id)credentialForAccount:(id)account client:(id)client store:(id)store error:(id *)error
{
  accountCopy = account;
  clientCopy = client;
  storeCopy = store;
  selfCopy = self;
  v14 = sub_61E8(account, client);

  return v14;
}

- (void)discoverPropertiesForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion
{
  sub_AF84();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = _Block_copy(v14);
  if (v7)
  {
    sub_B038();
  }

  if (v15)
  {
    sub_AE58();
    *(swift_allocObject() + 16) = v15;
    v15 = sub_A5D4;
  }

  v16 = v11;
  v17 = v9;
  v18 = v13;
  sub_65BC(v18, v9, v19, v15);
  v20 = sub_AE4C();
  sub_A5DC(v20);

  sub_AF70();
}

@end