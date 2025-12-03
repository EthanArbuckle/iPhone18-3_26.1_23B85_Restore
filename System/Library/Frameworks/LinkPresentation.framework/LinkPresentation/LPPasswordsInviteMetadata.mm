@interface LPPasswordsInviteMetadata
- (BOOL)isEqual:(id)equal;
- (LPPasswordsInviteMetadata)initWithCoder:(id)coder;
- (id)_overrideURL;
- (id)_subtitle;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewImageForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (void)encodeWithCoder:(id)coder;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPPasswordsInviteMetadata

- (LPPasswordsInviteMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = LPPasswordsInviteMetadata;
  v5 = [(LPPasswordsInviteMetadata *)&v12 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"groupName");
    groupName = v5->_groupName;
    v5->_groupName = v6;

    v8 = decodeStringForKey(coderCopy, @"urlParameters");
    urlParameters = v5->_urlParameters;
    v5->_urlParameters = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:self->_groupName forKey:@"groupName"];
  [coderCopy _lp_encodeStringIfNotNil:self->_urlParameters forKey:@"urlParameters"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPPasswordsInviteMetadata allocWithZone:zone];
  if (v4)
  {
    groupName = [(LPPasswordsInviteMetadata *)self groupName];
    [(LPPasswordsInviteMetadata *)v4 setGroupName:groupName];

    urlParameters = [(LPPasswordsInviteMetadata *)self urlParameters];
    [(LPPasswordsInviteMetadata *)v4 setUrlParameters:urlParameters];

    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = LPPasswordsInviteMetadata;
  if ([(LPPasswordsInviteMetadata *)&v12 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      groupName = self->_groupName;
      groupName = [v6 groupName];
      LOBYTE(groupName) = objectsAreEqual_0(groupName, groupName);

      if (groupName)
      {
        urlParameters = self->_urlParameters;
        urlParameters = [v6 urlParameters];
        v5 = objectsAreEqual_0(urlParameters, urlParameters);
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
  groupName = [(LPPasswordsInviteMetadata *)self groupName];
  v6 = [v3 localizedStringWithFormat:v4, groupName];

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
    _baseURL = objc_alloc_init(MEMORY[0x1E696AF20]);
    urlParameters = [(LPPasswordsInviteMetadata *)self urlParameters];
    v7 = urlParameters;
    if (urlParameters)
    {
      v8 = urlParameters;
    }

    else
    {
      v8 = &stru_1F2447CF0;
    }

    [_baseURL setQuery:v8];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    queryItems = [_baseURL queryItems];
    v11 = [queryItems countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (v11)
    {
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(queryItems);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          value = [v14 value];
          name = [v14 name];
          [dictionary setObject:value forKeyedSubscript:name];
        }

        v11 = [queryItems countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v11);
    }

    v17 = [v3 passwordManagerURLWithParameters:dictionary];
  }

  else
  {
    _baseURL = [(LPPasswordsInviteMetadata *)self _baseURL];
    urlParameters2 = [(LPPasswordsInviteMetadata *)self urlParameters];
    v19 = [urlParameters2 length];

    if (v19)
    {
      urlParameters3 = [(LPPasswordsInviteMetadata *)self urlParameters];
      v21 = [_baseURL stringByAppendingString:urlParameters3];

      _baseURL = v21;
    }

    v17 = [MEMORY[0x1E695DFF8] URLWithString:_baseURL];
  }

  return v17;
}

- (id)presentationPropertiesForTransformer:(id)transformer
{
  transformerCopy = transformer;
  unspecializedPresentationProperties = [transformerCopy unspecializedPresentationProperties];
  v6 = LPLocalizedString(@"Shared Passwords");
  captionBar = [unspecializedPresentationProperties captionBar];
  v8 = [captionBar top];
  leading = [v8 leading];
  [leading setText:v6];

  _subtitle = [(LPPasswordsInviteMetadata *)self _subtitle];
  captionBar2 = [unspecializedPresentationProperties captionBar];
  bottom = [captionBar2 bottom];
  leading2 = [bottom leading];
  [leading2 setText:_subtitle];

  captionBar3 = [unspecializedPresentationProperties captionBar];
  [captionBar3 setLeadingIcon:0];

  captionBar4 = [unspecializedPresentationProperties captionBar];
  [captionBar4 setTrailingIcon:0];

  if ([transformerCopy _rowConfigurationForStyle:{objc_msgSend(unspecializedPresentationProperties, "style")}] == 3)
  {
    captionBar5 = [unspecializedPresentationProperties captionBar];
    bottom2 = [captionBar5 bottom];
    leading3 = [bottom2 leading];
    [leading3 setMaximumNumberOfLines:&unk_1F2483470];
  }

  [unspecializedPresentationProperties setOverrideAllowOpeningSensitiveURLs:MEMORY[0x1E695E118]];
  _overrideURL = [(LPPasswordsInviteMetadata *)self _overrideURL];
  [unspecializedPresentationProperties setOverrideURL:_overrideURL];

  v20 = +[LPResources passwordsInviteIcon];
  [unspecializedPresentationProperties setImage:v20];

  [unspecializedPresentationProperties setStyle:48];

  return unspecializedPresentationProperties;
}

- (id)previewImageForTransformer:(id)transformer
{
  v3 = +[LPResources passwordsInviteIcon];

  return v3;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  _subtitle = [(LPPasswordsInviteMetadata *)self _subtitle];

  return _subtitle;
}

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  v3 = LPLocalizedString(@"Shared Passwords Invitation");
  [compatibilityCopy setTitle:v3];

  v4 = [LPImage _PNGImageNamed:@"PasswordsInvite"];
  [compatibilityCopy setImage:v4];
}

@end