@interface _ASAccountSharingGroupInvitationContent
+ (UIImage)knownSenderHeaderImage;
+ (UIImage)unknownSenderCellImage;
+ (UIImage)unknownSenderHeaderImage;
+ (id)_headerImageWithSymbolNamed:(id)a3;
+ (id)groupMemberListFooterTextForPermissionLevel:(int64_t)a3;
+ (id)invitationDescriptionForOwner:(id)a3;
+ (id)knownSenderHeaderSubtitleForPermissionLevel:(int64_t)a3;
+ (id)knownSenderHeaderTitleWithGroupName:(id)a3;
+ (id)linkPresentationBubbleSubtitleForGroupName:(id)a3 groupOwnerName:(id)a4;
@end

@implementation _ASAccountSharingGroupInvitationContent

+ (id)knownSenderHeaderTitleWithGroupName:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = _WBSLocalizedString();
  v6 = [v3 localizedStringWithFormat:v5, v4];

  return v6;
}

+ (id)_headerImageWithSymbolNamed:(id)a3
{
  v3 = MEMORY[0x1E69DCAD8];
  v4 = MEMORY[0x1E69DC888];
  v5 = a3;
  v6 = [v4 tintColor];
  v7 = [v3 configurationWithHierarchicalColor:v6];

  v8 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:48.0];
  v9 = [v7 configurationByApplyingConfiguration:v8];

  v10 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v5];

  v11 = [v10 imageWithConfiguration:v9];

  return v11;
}

+ (UIImage)knownSenderHeaderImage
{
  v3 = [a1 knownSenderHeaderImageName];
  v4 = [a1 _headerImageWithSymbolNamed:v3];

  return v4;
}

+ (id)knownSenderHeaderSubtitleForPermissionLevel:(int64_t)a3
{
  v4 = _WBSLocalizedString();

  return v4;
}

+ (UIImage)unknownSenderHeaderImage
{
  v3 = [a1 unknownSenderImageName];
  v4 = [a1 _headerImageWithSymbolNamed:v3];

  return v4;
}

+ (UIImage)unknownSenderCellImage
{
  v2 = [a1 unknownSenderImageName];
  v3 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v2];
  v4 = MEMORY[0x1E69DCAD8];
  v5 = [MEMORY[0x1E69DC888] systemGrayColor];
  v6 = [v4 configurationWithHierarchicalColor:v5];
  v7 = [v3 imageWithConfiguration:v6];

  return v7;
}

+ (id)groupMemberListFooterTextForPermissionLevel:(int64_t)a3
{
  if (a3)
  {
    v4 = _WBSLocalizedString();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)invitationDescriptionForOwner:(id)a3
{
  v3 = a3;
  v4 = [v3 contactDisplayName];
  v5 = MEMORY[0x1E696AEC0];
  v6 = _WBSLocalizedString();
  v7 = [v3 handle];

  if (v4)
  {
    [v5 localizedStringWithFormat:v6, v4, v7];
  }

  else
  {
    [v5 localizedStringWithFormat:v6, v7, v10];
  }
  v8 = ;

  return v8;
}

+ (id)linkPresentationBubbleSubtitleForGroupName:(id)a3 groupOwnerName:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = a3;
  v8 = _WBSLocalizedString();
  v9 = [v5 localizedStringWithFormat:v8, v6, v7];

  return v9;
}

@end