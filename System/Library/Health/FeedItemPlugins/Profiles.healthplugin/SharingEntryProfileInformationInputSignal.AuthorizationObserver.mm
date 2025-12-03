@interface SharingEntryProfileInformationInputSignal.AuthorizationObserver
- (_TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC821AuthorizationObserver)init;
- (void)sharingRecipientAuthorizationStore:(id)store didAddSharingAuthorizations:(id)authorizations;
- (void)sharingRecipientAuthorizationStore:(id)store didRemoveSharingAuthorizations:(id)authorizations;
- (void)sharingRecipientAuthorizationWasRevokedForStore:(id)store;
@end

@implementation SharingEntryProfileInformationInputSignal.AuthorizationObserver

- (void)sharingRecipientAuthorizationWasRevokedForStore:(id)store
{
  storeCopy = store;
  selfCopy = self;
  sub_29E4C55D8();
}

- (void)sharingRecipientAuthorizationStore:(id)store didAddSharingAuthorizations:(id)authorizations
{
  storeCopy = store;
  selfCopy = self;
  sub_29E4C55D8();
}

- (void)sharingRecipientAuthorizationStore:(id)store didRemoveSharingAuthorizations:(id)authorizations
{
  storeCopy = store;
  selfCopy = self;
  sub_29E4C5684();
}

- (_TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC821AuthorizationObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end