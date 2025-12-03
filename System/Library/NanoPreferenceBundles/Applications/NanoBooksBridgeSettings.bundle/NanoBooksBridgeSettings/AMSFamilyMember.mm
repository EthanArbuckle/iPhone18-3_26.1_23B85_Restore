@interface AMSFamilyMember
- (NSSet)nb_dsids;
@end

@implementation AMSFamilyMember

- (NSSet)nb_dsids
{
  v3 = objc_opt_new();
  iTunesDSID = [(AMSFamilyMember *)self iTunesDSID];

  if (iTunesDSID)
  {
    iTunesDSID2 = [(AMSFamilyMember *)self iTunesDSID];
    [v3 addObject:iTunesDSID2];
  }

  iCloudDSID = [(AMSFamilyMember *)self iCloudDSID];

  if (iCloudDSID)
  {
    iCloudDSID2 = [(AMSFamilyMember *)self iCloudDSID];
    [v3 addObject:iCloudDSID2];
  }

  v8 = [v3 copy];

  return v8;
}

@end