@interface GKAccountAuthenticationPlugin
- (BOOL)isPushSupportedForAccount:(id)a3;
- (id)credentialForAccount:(id)a3 client:(id)a4 store:(id)a5 error:(id *)a6;
- (void)discoverPropertiesForAccount:(id)a3 accountStore:(id)a4 options:(id)a5 completion:(id)a6;
- (void)renewCredentialsForAccount:(id)a3 accountStore:(id)a4 options:(id)a5 completion:(id)a6;
- (void)verifyCredentialsForAccount:(id)a3 accountStore:(id)a4 options:(id)a5 completion:(id)a6;
@end

@implementation GKAccountAuthenticationPlugin

- (void)verifyCredentialsForAccount:(id)a3 accountStore:(id)a4 options:(id)a5 completion:(id)a6
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

- (void)renewCredentialsForAccount:(id)a3 accountStore:(id)a4 options:(id)a5 completion:(id)a6
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

- (BOOL)isPushSupportedForAccount:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_60AC();

  return 1;
}

- (id)credentialForAccount:(id)a3 client:(id)a4 store:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = self;
  v14 = sub_61E8(a3, a4);

  return v14;
}

- (void)discoverPropertiesForAccount:(id)a3 accountStore:(id)a4 options:(id)a5 completion:(id)a6
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