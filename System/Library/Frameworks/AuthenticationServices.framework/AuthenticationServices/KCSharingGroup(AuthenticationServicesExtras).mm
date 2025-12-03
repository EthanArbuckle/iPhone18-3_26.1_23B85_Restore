@interface KCSharingGroup(AuthenticationServicesExtras)
- (id)_subtitleForNumberOfGroupMembersNotSavedAsContacts:()AuthenticationServicesExtras;
- (id)as_groupMemberTableViewCellDescription;
@end

@implementation KCSharingGroup(AuthenticationServicesExtras)

- (id)as_groupMemberTableViewCellDescription
{
  participants = [self participants];
  v3 = [participants count];

  if (v3 == 1)
  {
    v4 = _WBSLocalizedString();
    goto LABEL_23;
  }

  v5 = +[_ASAccountSharingGroupMemberDataManager sharedManager];
  v6 = [v5 groupMemberDataForGroup:self];

  v7 = [v6 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_9];
  v8 = [v6 count];
  v9 = v8 + ~[v7 count];
  v10 = [v7 count];
  if (v10 == 2)
  {
    v14 = MEMORY[0x1E696AEC0];
    if (!v9)
    {
      v12 = _WBSLocalizedString();
      v13 = [v7 objectAtIndexedSubscript:0];
      v15 = [v7 objectAtIndexedSubscript:1];
      v19 = [v14 stringWithFormat:v12, v13, v15];
      goto LABEL_19;
    }

    v12 = _WBSLocalizedString();
    v13 = [v7 objectAtIndexedSubscript:0];
    v15 = [v7 objectAtIndexedSubscript:1];
    [v14 localizedStringWithFormat:v12, v13, v15, v9];
    v19 = LABEL_15:;
LABEL_19:
    v4 = v19;
    goto LABEL_20;
  }

  if (v10 == 1)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = _WBSLocalizedString();
    v13 = [v7 objectAtIndexedSubscript:0];
    if (v9)
    {
      [v11 localizedStringWithFormat:v12, v13, v9];
    }

    else
    {
      [v11 stringWithFormat:v12, v13];
    }
    v4 = ;
    goto LABEL_21;
  }

  if (v10)
  {
    v16 = [v7 count];
    v17 = MEMORY[0x1E696AEC0];
    if (v16 == 3 && !v9)
    {
      v12 = _WBSLocalizedString();
      v13 = [v7 objectAtIndexedSubscript:0];
      v15 = [v7 objectAtIndexedSubscript:1];
      v18 = [v7 objectAtIndexedSubscript:2];
      v4 = [v17 stringWithFormat:v12, v13, v15, v18];

LABEL_20:
LABEL_21:

      goto LABEL_22;
    }

    v12 = _WBSLocalizedString();
    v13 = [v7 objectAtIndexedSubscript:0];
    v15 = [v7 objectAtIndexedSubscript:1];
    [v17 localizedStringWithFormat:v12, v13, v15, objc_msgSend(v6, "count") - 3];
    goto LABEL_15;
  }

  v4 = [self _subtitleForNumberOfGroupMembersNotSavedAsContacts:{objc_msgSend(v6, "count")}];
LABEL_22:

LABEL_23:

  return v4;
}

- (id)_subtitleForNumberOfGroupMembersNotSavedAsContacts:()AuthenticationServicesExtras
{
  if (a3 == 2 || (v3 = a3 - 1, a3 == 1))
  {
    v4 = _WBSLocalizedString();
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = _WBSLocalizedString();
    v4 = [v5 localizedStringWithFormat:v6, v3];
  }

  return v4;
}

@end