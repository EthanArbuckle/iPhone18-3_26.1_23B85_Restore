@interface AMSFamilyMember
- (NSSet)nb_dsids;
@end

@implementation AMSFamilyMember

- (NSSet)nb_dsids
{
  v3 = objc_opt_new();
  v4 = [(AMSFamilyMember *)self iTunesDSID];

  if (v4)
  {
    v5 = [(AMSFamilyMember *)self iTunesDSID];
    [v3 addObject:v5];
  }

  v6 = [(AMSFamilyMember *)self iCloudDSID];

  if (v6)
  {
    v7 = [(AMSFamilyMember *)self iCloudDSID];
    [v3 addObject:v7];
  }

  v8 = [v3 copy];

  return v8;
}

@end