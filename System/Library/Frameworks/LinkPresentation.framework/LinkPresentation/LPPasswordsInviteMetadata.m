@interface LPPasswordsInviteMetadata
- (BOOL)isEqual:(id)a3;
- (LPPasswordsInviteMetadata)initWithCoder:(id)a3;
- (id)_overrideURL;
- (id)_subtitle;
- (id)copyWithZone:(_NSZone *)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewImageForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)populateMetadataForBackwardCompatibility:(id)a3;
@end

@implementation LPPasswordsInviteMetadata

- (LPPasswordsInviteMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = LPPasswordsInviteMetadata;
  v5 = [(LPPasswordsInviteMetadata *)&v12 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"groupName");
    groupName = v5->_groupName;
    v5->_groupName = v6;

    v8 = decodeStringForKey(v4, @"urlParameters");
    urlParameters = v5->_urlParameters;
    v5->_urlParameters = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 _lp_encodeStringIfNotNil:self->_groupName forKey:@"groupName"];
  [v4 _lp_encodeStringIfNotNil:self->_urlParameters forKey:@"urlParameters"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPPasswordsInviteMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPPasswordsInviteMetadata *)self groupName];
    [(LPPasswordsInviteMetadata *)v4 setGroupName:v5];

    v6 = [(LPPasswordsInviteMetadata *)self urlParameters];
    [(LPPasswordsInviteMetadata *)v4 setUrlParameters:v6];

    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = LPPasswordsInviteMetadata;
  if ([(LPPasswordsInviteMetadata *)&v12 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      groupName = self->_groupName;
      v8 = [v6 groupName];
      LOBYTE(groupName) = objectsAreEqual_0(groupName, v8);

      if (groupName)
      {
        urlParameters = self->_urlParameters;
        v10 = [v6 urlParameters];
        v5 = objectsAreEqual_0(urlParameters, v10);
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_subtitle
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = LPLocalizedString(@"You have been invited to join the group “%@”.");
  v5 = [(LPPasswordsInviteMetadata *)self groupName];
  v6 = [v3 localizedStringWithFormat:v4, v5];

  return v6;
}

- (id)_overrideURL
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v3 = getSFPasswordManagerURLClass_softClass;
  v31 = getSFPasswordManagerURLClass_softClass;
  if (!getSFPasswordManagerURLClass_softClass)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __getSFPasswordManagerURLClass_block_invoke;
    v27[3] = &unk_1E7A35518;
    v27[4] = &v28;
    __getSFPasswordManagerURLClass_block_invoke(v27);
    v3 = v29[3];
  }

  v4 = v3;
  _Block_object_dispose(&v28, 8);
  if (objc_opt_respondsToSelector())
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AF20]);
    v6 = [(LPPasswordsInviteMetadata *)self urlParameters];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_1F2447CF0;
    }

    [v5 setQuery:v8];

    v9 = [MEMORY[0x1E695DF90] dictionary];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [v5 queryItems];
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (v11)
    {
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [v14 value];
          v16 = [v14 name];
          [v9 setObject:v15 forKeyedSubscript:v16];
        }

        v11 = [v10 countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v11);
    }

    v17 = [v3 passwordManagerURLWithParameters:v9];
  }

  else
  {
    v5 = [(LPPasswordsInviteMetadata *)self _baseURL];
    v18 = [(LPPasswordsInviteMetadata *)self urlParameters];
    v19 = [v18 length];

    if (v19)
    {
      v20 = [(LPPasswordsInviteMetadata *)self urlParameters];
      v21 = [v5 stringByAppendingString:v20];

      v5 = v21;
    }

    v17 = [MEMORY[0x1E695DFF8] URLWithString:v5];
  }

  return v17;
}

- (id)presentationPropertiesForTransformer:(id)a3
{
  v4 = a3;
  v5 = [v4 unspecializedPresentationProperties];
  v6 = LPLocalizedString(@"Shared Passwords");
  v7 = [v5 captionBar];
  v8 = [v7 top];
  v9 = [v8 leading];
  [v9 setText:v6];

  v10 = [(LPPasswordsInviteMetadata *)self _subtitle];
  v11 = [v5 captionBar];
  v12 = [v11 bottom];
  v13 = [v12 leading];
  [v13 setText:v10];

  v14 = [v5 captionBar];
  [v14 setLeadingIcon:0];

  v15 = [v5 captionBar];
  [v15 setTrailingIcon:0];

  if ([v4 _rowConfigurationForStyle:{objc_msgSend(v5, "style")}] == 3)
  {
    v16 = [v5 captionBar];
    v17 = [v16 bottom];
    v18 = [v17 leading];
    [v18 setMaximumNumberOfLines:&unk_1F2483470];
  }

  [v5 setOverrideAllowOpeningSensitiveURLs:MEMORY[0x1E695E118]];
  v19 = [(LPPasswordsInviteMetadata *)self _overrideURL];
  [v5 setOverrideURL:v19];

  v20 = +[LPResources passwordsInviteIcon];
  [v5 setImage:v20];

  [v5 setStyle:48];

  return v5;
}

- (id)previewImageForTransformer:(id)a3
{
  v3 = +[LPResources passwordsInviteIcon];

  return v3;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v3 = [(LPPasswordsInviteMetadata *)self _subtitle];

  return v3;
}

- (void)populateMetadataForBackwardCompatibility:(id)a3
{
  v5 = a3;
  v3 = LPLocalizedString(@"Shared Passwords Invitation");
  [v5 setTitle:v3];

  v4 = [LPImage _PNGImageNamed:@"PasswordsInvite"];
  [v5 setImage:v4];
}

@end