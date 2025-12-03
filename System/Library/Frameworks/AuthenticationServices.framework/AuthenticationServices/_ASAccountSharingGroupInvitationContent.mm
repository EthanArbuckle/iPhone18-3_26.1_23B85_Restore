@interface _ASAccountSharingGroupInvitationContent
+ (UIImage)knownSenderHeaderImage;
+ (UIImage)unknownSenderCellImage;
+ (UIImage)unknownSenderHeaderImage;
+ (id)_headerImageWithSymbolNamed:(id)named;
+ (id)groupMemberListFooterTextForPermissionLevel:(int64_t)level;
+ (id)invitationDescriptionForOwner:(id)owner;
+ (id)knownSenderHeaderSubtitleForPermissionLevel:(int64_t)level;
+ (id)knownSenderHeaderTitleWithGroupName:(id)name;
+ (id)linkPresentationBubbleSubtitleForGroupName:(id)name groupOwnerName:(id)ownerName;
@end

@implementation _ASAccountSharingGroupInvitationContent

+ (id)knownSenderHeaderTitleWithGroupName:(id)name
{
  v3 = MEMORY[0x1E696AEC0];
  nameCopy = name;
  v5 = _WBSLocalizedString();
  nameCopy = [v3 localizedStringWithFormat:v5, nameCopy];

  return nameCopy;
}

+ (id)_headerImageWithSymbolNamed:(id)named
{
  v3 = MEMORY[0x1E69DCAD8];
  v4 = MEMORY[0x1E69DC888];
  namedCopy = named;
  tintColor = [v4 tintColor];
  v7 = [v3 configurationWithHierarchicalColor:tintColor];

  v8 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:48.0];
  v9 = [v7 configurationByApplyingConfiguration:v8];

  v10 = [MEMORY[0x1E69DCAB8] _systemImageNamed:namedCopy];

  v11 = [v10 imageWithConfiguration:v9];

  return v11;
}

+ (UIImage)knownSenderHeaderImage
{
  knownSenderHeaderImageName = [self knownSenderHeaderImageName];
  v4 = [self _headerImageWithSymbolNamed:knownSenderHeaderImageName];

  return v4;
}

+ (id)knownSenderHeaderSubtitleForPermissionLevel:(int64_t)level
{
  v4 = _WBSLocalizedString();

  return v4;
}

+ (UIImage)unknownSenderHeaderImage
{
  unknownSenderImageName = [self unknownSenderImageName];
  v4 = [self _headerImageWithSymbolNamed:unknownSenderImageName];

  return v4;
}

+ (UIImage)unknownSenderCellImage
{
  unknownSenderImageName = [self unknownSenderImageName];
  v3 = [MEMORY[0x1E69DCAB8] _systemImageNamed:unknownSenderImageName];
  v4 = MEMORY[0x1E69DCAD8];
  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  v6 = [v4 configurationWithHierarchicalColor:systemGrayColor];
  v7 = [v3 imageWithConfiguration:v6];

  return v7;
}

+ (id)groupMemberListFooterTextForPermissionLevel:(int64_t)level
{
  if (level)
  {
    v4 = _WBSLocalizedString();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)invitationDescriptionForOwner:(id)owner
{
  ownerCopy = owner;
  contactDisplayName = [ownerCopy contactDisplayName];
  v5 = MEMORY[0x1E696AEC0];
  v6 = _WBSLocalizedString();
  handle = [ownerCopy handle];

  if (contactDisplayName)
  {
    [v5 localizedStringWithFormat:v6, contactDisplayName, handle];
  }

  else
  {
    [v5 localizedStringWithFormat:v6, handle, v10];
  }
  v8 = ;

  return v8;
}

+ (id)linkPresentationBubbleSubtitleForGroupName:(id)name groupOwnerName:(id)ownerName
{
  v5 = MEMORY[0x1E696AEC0];
  ownerNameCopy = ownerName;
  nameCopy = name;
  v8 = _WBSLocalizedString();
  nameCopy = [v5 localizedStringWithFormat:v8, ownerNameCopy, nameCopy];

  return nameCopy;
}

@end