@interface WBSSavedAccountStore(GroupSharingExtras)
+ (id)_displayNameForOriginalContributorParticipantID:()GroupSharingExtras inGroupID:;
@end

@implementation WBSSavedAccountStore(GroupSharingExtras)

+ (id)_displayNameForOriginalContributorParticipantID:()GroupSharingExtras inGroupID:
{
  v5 = a4;
  v6 = a3;
  v7 = +[_ASAccountSharingGroupMemberDataManager sharedManager];
  v8 = [v7 displayNameForOriginalContributorParticipantID:v6 inGroupID:v5];

  return v8;
}

@end