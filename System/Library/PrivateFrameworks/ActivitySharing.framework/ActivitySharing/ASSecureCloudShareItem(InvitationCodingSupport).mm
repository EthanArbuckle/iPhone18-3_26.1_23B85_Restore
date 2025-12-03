@interface ASSecureCloudShareItem(InvitationCodingSupport)
- (void)codableShareItem;
@end

@implementation ASSecureCloudShareItem(InvitationCodingSupport)

- (void)codableShareItem
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_23E4FA000, a2, OS_LOG_TYPE_ERROR, "Error archiving share item error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end