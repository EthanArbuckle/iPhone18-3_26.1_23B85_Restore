@interface _ASAccountSharingGroupMessageInvitePreviewContent
+ (UIImage)headerImage;
+ (id)headerSubtitleForInvitedGroupMemberData:(id)a3;
+ (id)headerTitleForInvitedGroupMemberData:(id)a3;
@end

@implementation _ASAccountSharingGroupMessageInvitePreviewContent

+ (UIImage)headerImage
{
  v2 = MEMORY[0x1E69DCAD8];
  v3 = [MEMORY[0x1E69DC888] tintColor];
  v4 = [v2 configurationWithHierarchicalColor:v3];

  v5 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:48.0];
  v6 = [v4 configurationByApplyingConfiguration:v5];

  v7 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"message.and.message.fill"];
  v8 = [v7 imageWithConfiguration:v6];

  return v8;
}

+ (id)headerTitleForInvitedGroupMemberData:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1 && (objc_msgSend(v3, "objectAtIndexedSubscript:", 0), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "contactDisplayName"), v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = _WBSLocalizedString();
    v8 = [v6 localizedStringWithFormat:v7, v5];
  }

  else
  {
    v8 = _WBSLocalizedString();
  }

  return v8;
}

+ (id)headerSubtitleForInvitedGroupMemberData:(id)a3
{
  v4 = [a3 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_3];
  v5 = [v4 count];
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v13 = MEMORY[0x1E696AEC0];
      v7 = _WBSLocalizedString();
      v8 = [v4 objectAtIndexedSubscript:0];
      v11 = [v4 objectAtIndexedSubscript:1];
      v9 = [v13 localizedStringWithFormat:v7, v8, v11];
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_7;
      }

      v10 = MEMORY[0x1E696AEC0];
      v7 = _WBSLocalizedString();
      v8 = [v4 objectAtIndexedSubscript:0];
      v11 = [v4 objectAtIndexedSubscript:1];
      v12 = [v4 objectAtIndexedSubscript:2];
      v9 = [v10 localizedStringWithFormat:v7, v8, v11, v12];
    }

    goto LABEL_10;
  }

  if (v5 != 1)
  {
LABEL_7:
    v9 = [a1 _genericHeaderSubtitle];
    goto LABEL_11;
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = _WBSLocalizedString();
  v8 = [v4 objectAtIndexedSubscript:0];
  v9 = [v6 localizedStringWithFormat:v7, v8];
LABEL_10:

LABEL_11:

  return v9;
}

@end