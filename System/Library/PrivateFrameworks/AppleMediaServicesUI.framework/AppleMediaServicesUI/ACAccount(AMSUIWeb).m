@interface ACAccount(AMSUIWeb)
- (uint64_t)web_matchAccount:()AMSUIWeb;
@end

@implementation ACAccount(AMSUIWeb)

- (uint64_t)web_matchAccount:()AMSUIWeb
{
  v6 = a3;
  v7 = [a1 ams_DSID];
  v8 = [a1 ams_altDSID];
  v9 = [a1 username];
  if (v7)
  {
    v3 = [v6 ams_DSID];
    if ([v3 isEqualToNumber:v7])
    {
      v10 = 1;
LABEL_15:

      goto LABEL_16;
    }
  }

  if (v8)
  {
    v4 = [v6 ams_altDSID];
    if ([v4 isEqualToString:v8])
    {

      v10 = 1;
      goto LABEL_14;
    }

    if (!v9)
    {
      v10 = 0;
      goto LABEL_13;
    }
  }

  else if (!v9)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v11 = [v6 username];
  v10 = [v11 isEqualToString:v9];

  if (v8)
  {
LABEL_13:
  }

LABEL_14:
  if (v7)
  {
    goto LABEL_15;
  }

LABEL_16:

  return v10;
}

@end