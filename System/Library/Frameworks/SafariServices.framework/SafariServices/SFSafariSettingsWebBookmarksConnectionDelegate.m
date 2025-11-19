@interface SFSafariSettingsWebBookmarksConnectionDelegate
- (_TtC14SafariServicesP33_9CDEB92B0A88DE10255B35415E73116246SFSafariSettingsWebBookmarksConnectionDelegate)init;
- (void)connection:(id)a3 didCloseWithError:(id)a4;
@end

@implementation SFSafariSettingsWebBookmarksConnectionDelegate

- (void)connection:(id)a3 didCloseWithError:(id)a4
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DEE08);
  MEMORY[0x1EEE9AC00]();
  v5 = &v10 - v4;
  v6 = sub_1D47BF360();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1D47BF340();
  v7 = sub_1D47BF330();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  sub_1D47A1D84(0, 0, v5, &unk_1D47DFAA0, v8);
}

- (_TtC14SafariServicesP33_9CDEB92B0A88DE10255B35415E73116246SFSafariSettingsWebBookmarksConnectionDelegate)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SFSafariSettingsWebBookmarksConnectionDelegate *)&v3 init];
}

@end