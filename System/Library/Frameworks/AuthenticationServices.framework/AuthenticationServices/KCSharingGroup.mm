@interface KCSharingGroup
@end

@implementation KCSharingGroup

id __86__KCSharingGroup_AuthenticationServicesExtras__as_groupMemberTableViewCellDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isMeParticipant])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 shortContactDisplayName];
  }

  return v3;
}

@end