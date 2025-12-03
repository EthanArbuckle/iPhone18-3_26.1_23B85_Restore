@interface ACAccount(AMSUIWeb)
- (uint64_t)web_matchAccount:()AMSUIWeb;
@end

@implementation ACAccount(AMSUIWeb)

- (uint64_t)web_matchAccount:()AMSUIWeb
{
  v6 = a3;
  ams_DSID = [self ams_DSID];
  ams_altDSID = [self ams_altDSID];
  username = [self username];
  if (ams_DSID)
  {
    ams_DSID2 = [v6 ams_DSID];
    if ([ams_DSID2 isEqualToNumber:ams_DSID])
    {
      v10 = 1;
LABEL_15:

      goto LABEL_16;
    }
  }

  if (ams_altDSID)
  {
    ams_altDSID2 = [v6 ams_altDSID];
    if ([ams_altDSID2 isEqualToString:ams_altDSID])
    {

      v10 = 1;
      goto LABEL_14;
    }

    if (!username)
    {
      v10 = 0;
      goto LABEL_13;
    }
  }

  else if (!username)
  {
    v10 = 0;
    goto LABEL_14;
  }

  username2 = [v6 username];
  v10 = [username2 isEqualToString:username];

  if (ams_altDSID)
  {
LABEL_13:
  }

LABEL_14:
  if (ams_DSID)
  {
    goto LABEL_15;
  }

LABEL_16:

  return v10;
}

@end