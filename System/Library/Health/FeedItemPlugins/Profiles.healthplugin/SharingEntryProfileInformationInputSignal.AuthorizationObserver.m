@interface SharingEntryProfileInformationInputSignal.AuthorizationObserver
- (_TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC821AuthorizationObserver)init;
- (void)sharingRecipientAuthorizationStore:(id)a3 didAddSharingAuthorizations:(id)a4;
- (void)sharingRecipientAuthorizationStore:(id)a3 didRemoveSharingAuthorizations:(id)a4;
- (void)sharingRecipientAuthorizationWasRevokedForStore:(id)a3;
@end

@implementation SharingEntryProfileInformationInputSignal.AuthorizationObserver

- (void)sharingRecipientAuthorizationWasRevokedForStore:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_29E4C55D8();
}

- (void)sharingRecipientAuthorizationStore:(id)a3 didAddSharingAuthorizations:(id)a4
{
  v5 = a3;
  v6 = self;
  sub_29E4C55D8();
}

- (void)sharingRecipientAuthorizationStore:(id)a3 didRemoveSharingAuthorizations:(id)a4
{
  v5 = a3;
  v6 = self;
  sub_29E4C5684();
}

- (_TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC821AuthorizationObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end