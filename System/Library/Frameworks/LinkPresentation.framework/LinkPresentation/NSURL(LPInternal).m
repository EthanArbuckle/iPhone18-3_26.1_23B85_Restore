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
  if ([a1 isFileURL])
  {
    return 0;
  }

  NewsCoreLibrary();
  return ([a1 fc_newsURLType] - 5) < 2;
}

- (BOOL)_lp_isNewsSportsEventURL
{
  if ([a1 isFileURL])
  {
    return 0;
  }

  NewsCoreLibrary();
  return [a1 fc_newsURLType] == 4;
}

- (uint64_t)_lp_isTelephoneURL
{
  if ([a1 _lp_isHTTPFamilyURL] & 1) != 0 || (objc_msgSend(a1, "isFileURL"))
  {
    return 0;
  }

  TelephonyUtilitiesLibrary();

  return [a1 isTelephonyURL];
}

- (uint64_t)_lp_formattedTelephoneNumber
{
  TelephonyUtilitiesLibrary();

  return [a1 formattedPhoneNumber];
}

- (id)_lp_faceTimeInviteLink
{
  if ([a1 _lp_isHTTPFamilyURL] && (objc_msgSend(a1, "isFileURL") & 1) == 0)
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
    v2 = [v3 conversationLinkForURL:a1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)_lp_isFaceTimeInviteURL
{
  v1 = [a1 _lp_faceTimeInviteLink];
  v2 = v1 != 0;

  return v2;
}

- (id)_lp_faceTimeInviteTitle
{
  v1 = [a1 _lp_faceTimeInviteLink];
  v2 = [v1 linkName];

  return v2;
}

- (id)_lp_components
{
  v1 = [a1 _lp_componentsNoCopy];
  v2 = [v1 copy];

  return v2;
}

- (id)_lp_componentsNoCopy
{
  v4 = objc_getAssociatedObject(a1, a2);
  if (!v4)
  {
    v4 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:0];
    objc_setAssociatedObject(a1, a2, v4, 1);
  }

  return v4;
}

- (id)_lp_pathComponentAtIndex:()LPInternal
{
  v4 = [a1 pathComponents];
  if ([v4 count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (id)_lp_valueForQueryKey:()LPInternal
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 _lp_componentsNoCopy];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 queryItems];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 name];
        v12 = [v11 _lp_isEqualIgnoringCase:v4];

        if (v12)
        {
          v7 = [v10 value];
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (uint64_t)_lp_hasWalletRelatedScheme
{
  v1 = [a1 scheme];
  v2 = [v1 _lp_isEqualToAnyIgnoringCase:&unk_1F2483968];

  return v2;
}

- (uint64_t)_lp_hasAllowedNonHTTPSchemeForMetadataDecoding
{
  if ([a1 _lp_hasAllowedNonHTTPScheme])
  {
    return 1;
  }

  v3 = [a1 scheme];
  v2 = [v3 _lp_isEqualIgnoringCase:@"tel"];

  return v2;
}

- (id)_lp_requestWithAttribution:()LPInternal
{
  v4 = [MEMORY[0x1E695AC18] requestWithURL:a1];
  [v4 setAttribution:a3];

  return v4;
}

- (uint64_t)_lp_fileSize
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [a1 path];
  v9 = 0;
  v4 = [v2 attributesOfItemAtPath:v3 error:&v9];
  v5 = v9;
  v6 = [v4 fileSize];

  if (v5)
  {
    v7 = LPLogChannelFilesystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(NSURL(LPInternal) *)v5 _lp_fileSize];
    }
  }

  return v6;
}

- (void)_lp_fileSize
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE886000, a2, OS_LOG_TYPE_ERROR, "Failed to read size of file: %@", &v2, 0xCu);
}

@end