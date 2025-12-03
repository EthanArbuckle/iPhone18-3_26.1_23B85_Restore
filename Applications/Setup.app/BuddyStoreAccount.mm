@interface BuddyStoreAccount
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRestoreStoreAccount:(id)account;
- (BuddyStoreAccount)initWithUsername:(id)username dsid:(id)dsid altDSID:(id)d;
- (id)description;
- (unint64_t)hash;
@end

@implementation BuddyStoreAccount

- (BuddyStoreAccount)initWithUsername:(id)username dsid:(id)dsid altDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  v13 = 0;
  objc_storeStrong(&v13, dsid);
  v12 = 0;
  objc_storeStrong(&v12, d);
  v7 = selfCopy;
  selfCopy = 0;
  v11.receiver = v7;
  v11.super_class = BuddyStoreAccount;
  v8 = [(BuddyStoreAccount *)&v11 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    [selfCopy setUsername:location[0]];
    [selfCopy setDsid:v13];
    [selfCopy setAltDSID:v12];
  }

  v9 = selfCopy;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (id)description
{
  v2 = objc_opt_class();
  username = [(BuddyStoreAccount *)self username];
  dsid = [(BuddyStoreAccount *)self dsid];
  altDSID = [(BuddyStoreAccount *)self altDSID];
  v6 = [NSString stringWithFormat:@"<%@: %p> Username: %@, DSID: %@, altDSID: %@", v2, self, username, dsid, altDSID];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, equal);
  if (selfCopy == location[0])
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(BuddyStoreAccount *)selfCopy isEqualToRestoreStoreAccount:location[0]];
    }

    else
    {
      v6 = 0;
    }
  }

  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (BOOL)isEqualToRestoreStoreAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  dsid = [(BuddyStoreAccount *)selfCopy dsid];
  v14 = 0;
  v4 = 0;
  if (dsid)
  {
    dsid2 = [location[0] dsid];
    v14 = 1;
    v4 = dsid2 != 0;
  }

  if (v14)
  {
  }

  if (v4)
  {
    dsid3 = [(BuddyStoreAccount *)selfCopy dsid];
    dsid4 = [location[0] dsid];
    v18 = [(NSString *)dsid3 isEqualToString:dsid4];
  }

  else
  {
    altDSID = [(BuddyStoreAccount *)selfCopy altDSID];
    v12 = 0;
    v8 = 0;
    if (altDSID)
    {
      altDSID2 = [location[0] altDSID];
      v12 = 1;
      v8 = altDSID2 != 0;
    }

    if (v12)
    {
    }

    if (v8)
    {
      altDSID3 = [(BuddyStoreAccount *)selfCopy altDSID];
      altDSID4 = [location[0] altDSID];
    }

    else
    {
      altDSID3 = [(BuddyStoreAccount *)selfCopy username];
      altDSID4 = [location[0] username];
    }

    v18 = [(NSString *)altDSID3 isEqualToString:altDSID4];
  }

  objc_storeStrong(location, 0);
  return v18 & 1;
}

- (unint64_t)hash
{
  username = [(BuddyStoreAccount *)self username];
  v3 = [(NSString *)username hash];
  dsid = [(BuddyStoreAccount *)self dsid];
  v5 = v3 ^ [(NSString *)dsid hash];
  altDSID = [(BuddyStoreAccount *)self altDSID];
  v7 = v5 ^ [(NSString *)altDSID hash];

  return v7;
}

@end