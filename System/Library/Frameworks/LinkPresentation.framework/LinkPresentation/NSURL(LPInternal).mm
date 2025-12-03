@interface NSURL(LPInternal)
- (BOOL)_lp_isFaceTimeInviteURL;
- (BOOL)_lp_isNewsPuzzleURL;
- (BOOL)_lp_isNewsSportsEventURL;
- (id)_lp_components;
- (id)_lp_componentsNoCopy;
- (id)_lp_faceTimeInviteLink;
- (id)_lp_faceTimeInviteTitle;
- (id)_lp_pathComponentAtIndex:()LPInternal;
- (id)_lp_requestWithAttribution:()LPInternal;
- (id)_lp_valueForQueryKey:()LPInternal;
- (uint64_t)_lp_fileSize;
- (uint64_t)_lp_formattedTelephoneNumber;
- (uint64_t)_lp_hasAllowedNonHTTPSchemeForMetadataDecoding;
- (uint64_t)_lp_hasWalletRelatedScheme;
- (uint64_t)_lp_isTelephoneURL;
- (void)_lp_fileSize;
@end

@implementation NSURL(LPInternal)

- (BOOL)_lp_isNewsPuzzleURL
{
  if ([self isFileURL])
  {
    return 0;
  }

  NewsCoreLibrary();
  return ([self fc_newsURLType] - 5) < 2;
}

- (BOOL)_lp_isNewsSportsEventURL
{
  if ([self isFileURL])
  {
    return 0;
  }

  NewsCoreLibrary();
  return [self fc_newsURLType] == 4;
}

- (uint64_t)_lp_isTelephoneURL
{
  if ([self _lp_isHTTPFamilyURL] & 1) != 0 || (objc_msgSend(self, "isFileURL"))
  {
    return 0;
  }

  TelephonyUtilitiesLibrary();

  return [self isTelephonyURL];
}

- (uint64_t)_lp_formattedTelephoneNumber
{
  TelephonyUtilitiesLibrary();

  return [self formattedPhoneNumber];
}

- (id)_lp_faceTimeInviteLink
{
  if ([self _lp_isHTTPFamilyURL] && (objc_msgSend(self, "isFileURL") & 1) == 0)
  {
    TelephonyUtilitiesLibrary();
    v7 = 0;
    v8 = &v7;
    v9 = 0x2050000000;
    v3 = getTUConversationLinkClass(void)::softClass;
    v10 = getTUConversationLinkClass(void)::softClass;
    if (!getTUConversationLinkClass(void)::softClass)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = ___ZL26getTUConversationLinkClassv_block_invoke;
      v6[3] = &unk_1E7A35518;
      v6[4] = &v7;
      ___ZL26getTUConversationLinkClassv_block_invoke(v6);
      v3 = v8[3];
    }

    v4 = v3;
    _Block_object_dispose(&v7, 8);
    v2 = [v3 conversationLinkForURL:self];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)_lp_isFaceTimeInviteURL
{
  _lp_faceTimeInviteLink = [self _lp_faceTimeInviteLink];
  v2 = _lp_faceTimeInviteLink != 0;

  return v2;
}

- (id)_lp_faceTimeInviteTitle
{
  _lp_faceTimeInviteLink = [self _lp_faceTimeInviteLink];
  linkName = [_lp_faceTimeInviteLink linkName];

  return linkName;
}

- (id)_lp_components
{
  _lp_componentsNoCopy = [self _lp_componentsNoCopy];
  v2 = [_lp_componentsNoCopy copy];

  return v2;
}

- (id)_lp_componentsNoCopy
{
  v4 = objc_getAssociatedObject(self, a2);
  if (!v4)
  {
    v4 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:0];
    objc_setAssociatedObject(self, a2, v4, 1);
  }

  return v4;
}

- (id)_lp_pathComponentAtIndex:()LPInternal
{
  pathComponents = [self pathComponents];
  if ([pathComponents count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [pathComponents objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (id)_lp_valueForQueryKey:()LPInternal
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  _lp_componentsNoCopy = [self _lp_componentsNoCopy];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  queryItems = [_lp_componentsNoCopy queryItems];
  value = [queryItems countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (value)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != value; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(queryItems);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        name = [v10 name];
        v12 = [name _lp_isEqualIgnoringCase:v4];

        if (v12)
        {
          value = [v10 value];
          goto LABEL_11;
        }
      }

      value = [queryItems countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (value)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return value;
}

- (uint64_t)_lp_hasWalletRelatedScheme
{
  scheme = [self scheme];
  v2 = [scheme _lp_isEqualToAnyIgnoringCase:&unk_1F2483968];

  return v2;
}

- (uint64_t)_lp_hasAllowedNonHTTPSchemeForMetadataDecoding
{
  if ([self _lp_hasAllowedNonHTTPScheme])
  {
    return 1;
  }

  scheme = [self scheme];
  v2 = [scheme _lp_isEqualIgnoringCase:@"tel"];

  return v2;
}

- (id)_lp_requestWithAttribution:()LPInternal
{
  v4 = [MEMORY[0x1E695AC18] requestWithURL:self];
  [v4 setAttribution:a3];

  return v4;
}

- (uint64_t)_lp_fileSize
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [self path];
  v9 = 0;
  v4 = [defaultManager attributesOfItemAtPath:path error:&v9];
  v5 = v9;
  fileSize = [v4 fileSize];

  if (v5)
  {
    v7 = LPLogChannelFilesystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(NSURL(LPInternal) *)v5 _lp_fileSize];
    }
  }

  return fileSize;
}

- (void)_lp_fileSize
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1AE886000, a2, OS_LOG_TYPE_ERROR, "Failed to read size of file: %@", &v2, 0xCu);
}

@end