@interface BuddyStoreAccount
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRestoreStoreAccount:(id)a3;
- (BuddyStoreAccount)initWithUsername:(id)a3 dsid:(id)a4 altDSID:(id)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation BuddyStoreAccount

- (BuddyStoreAccount)initWithUsername:(id)a3 dsid:(id)a4 altDSID:(id)a5
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  v7 = v15;
  v15 = 0;
  v11.receiver = v7;
  v11.super_class = BuddyStoreAccount;
  v8 = [(BuddyStoreAccount *)&v11 init];
  v15 = v8;
  objc_storeStrong(&v15, v8);
  if (v8)
  {
    [v15 setUsername:location[0]];
    [v15 setDsid:v13];
    [v15 setAltDSID:v12];
  }

  v9 = v15;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v9;
}

- (id)description
{
  v2 = objc_opt_class();
  v3 = [(BuddyStoreAccount *)self username];
  v4 = [(BuddyStoreAccount *)self dsid];
  v5 = [(BuddyStoreAccount *)self altDSID];
  v6 = [NSString stringWithFormat:@"<%@: %p> Username: %@, DSID: %@, altDSID: %@", v2, self, v3, v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v5 == location[0])
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(BuddyStoreAccount *)v5 isEqualToRestoreStoreAccount:location[0]];
    }

    else
    {
      v6 = 0;
    }
  }

  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (BOOL)isEqualToRestoreStoreAccount:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyStoreAccount *)v17 dsid];
  v14 = 0;
  v4 = 0;
  if (v3)
  {
    v15 = [location[0] dsid];
    v14 = 1;
    v4 = v15 != 0;
  }

  if (v14)
  {
  }

  if (v4)
  {
    v5 = [(BuddyStoreAccount *)v17 dsid];
    v6 = [location[0] dsid];
    v18 = [(NSString *)v5 isEqualToString:v6];
  }

  else
  {
    v7 = [(BuddyStoreAccount *)v17 altDSID];
    v12 = 0;
    v8 = 0;
    if (v7)
    {
      v13 = [location[0] altDSID];
      v12 = 1;
      v8 = v13 != 0;
    }

    if (v12)
    {
    }

    if (v8)
    {
      v9 = [(BuddyStoreAccount *)v17 altDSID];
      v10 = [location[0] altDSID];
    }

    else
    {
      v9 = [(BuddyStoreAccount *)v17 username];
      v10 = [location[0] username];
    }

    v18 = [(NSString *)v9 isEqualToString:v10];
  }

  objc_storeStrong(location, 0);
  return v18 & 1;
}

- (unint64_t)hash
{
  v2 = [(BuddyStoreAccount *)self username];
  v3 = [(NSString *)v2 hash];
  v4 = [(BuddyStoreAccount *)self dsid];
  v5 = v3 ^ [(NSString *)v4 hash];
  v6 = [(BuddyStoreAccount *)self altDSID];
  v7 = v5 ^ [(NSString *)v6 hash];

  return v7;
}

@end