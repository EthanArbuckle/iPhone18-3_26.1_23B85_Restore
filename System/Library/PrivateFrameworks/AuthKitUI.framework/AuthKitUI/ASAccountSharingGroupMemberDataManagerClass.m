@interface ASAccountSharingGroupMemberDataManagerClass
@end

@implementation ASAccountSharingGroupMemberDataManagerClass

uint64_t __get_ASAccountSharingGroupMemberDataManagerClass_block_invoke(uint64_t a1)
{
  AuthenticationServicesLibrary();
  Class = objc_getClass("_ASAccountSharingGroupMemberDataManager");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  get_ASAccountSharingGroupMemberDataManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end