@interface EKVirtualConference
+ (void)virtualConferenceForRoomType:(id)a3 completion:(id)a4 queue:(id)a5;
- (BOOL)isEqual:(id)a3;
- (EKVirtualConference)initWithTitle:(id)a3 joinMethods:(id)a4 conferenceDetails:(id)a5;
- (NSURL)firstPhoneNumber;
- (NSURL)urlWithAllowedScheme;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation EKVirtualConference

- (EKVirtualConference)initWithTitle:(id)a3 joinMethods:(id)a4 conferenceDetails:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = EKVirtualConference;
  v11 = [(EKVirtualConference *)&v19 init];
  if (v11)
  {
    v12 = [v9 copy];
    joinMethods = v11->_joinMethods;
    v11->_joinMethods = v12;

    v14 = [v10 copy];
    conferenceDetails = v11->_conferenceDetails;
    v11->_conferenceDetails = v14;

    v16 = [v8 copy];
    title = v11->_title;
    v11->_title = v16;
  }

  return v11;
}

+ (void)virtualConferenceForRoomType:(id)a3 completion:(id)a4 queue:(id)a5
{
  v65 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v33 = a5;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2020000000;
  v53 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__EKVirtualConference_virtualConferenceForRoomType_completion_queue___block_invoke;
  aBlock[3] = &unk_1E77FFF98;
  v51 = v52;
  v9 = v8;
  v50 = v9;
  v10 = _Block_copy(aBlock);
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__21;
  v47 = __Block_byref_object_dispose__21;
  v48 = 0;
  v11 = MEMORY[0x1E696ABD0];
  v12 = [v7 extensionBundleIdentifier];
  v13 = (v44 + 5);
  obj = v44[5];
  v14 = [v11 extensionWithIdentifier:v12 error:&obj];
  objc_storeStrong(v13, obj);

  if (v44[5] || !v14)
  {
    v25 = EKLogHandle;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v28 = [v7 title];
      v29 = [v7 identifier];
      v30 = [v7 extensionBundleIdentifier];
      v31 = v44[5];
      *buf = 138413058;
      v58 = v28;
      v59 = 2112;
      v60 = v29;
      v61 = 2112;
      v62 = v30;
      v63 = 2112;
      v64 = v31;
      _os_log_error_impl(&dword_1A805E000, v25, OS_LOG_TYPE_ERROR, "Could not load extension for room type title: %@ identifier: %@ extensionIdentifier: %@, error = %@", buf, 0x2Au);
    }

    v10[2](v10, 0, v44[5]);
  }

  else
  {
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __69__EKVirtualConference_virtualConferenceForRoomType_completion_queue___block_invoke_17;
    v38[3] = &unk_1E77FFFC0;
    v15 = v7;
    v39 = v15;
    v16 = v33;
    v40 = v16;
    v17 = v10;
    v41 = v17;
    [v14 setRequestCompletionBlock:v38];
    v18 = objc_alloc_init(MEMORY[0x1E696ABE0]);
    v56[0] = @"_EKVirutalConferenceRequestTypeJoinMethodsForRoomType";
    v55[0] = @"_EKVirtualConferenceRequestTypeKey";
    v55[1] = @"_EKVirtualConferenceRequestRoomTypeIdentifier";
    v19 = [v15 identifier];
    v56[1] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];
    [v18 setUserInfo:v20];

    v54 = v18;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
    v22 = (v44 + 5);
    v37 = v44[5];
    v23 = [v14 beginExtensionRequestWithOptions:1 inputItems:v21 error:&v37];
    objc_storeStrong(v22, v37);

    if (v44[5])
    {
      v24 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        v32 = v44[5];
        *buf = 138412802;
        v58 = v14;
        v59 = 2112;
        v60 = v23;
        v61 = 2112;
        v62 = v32;
        _os_log_error_impl(&dword_1A805E000, v24, OS_LOG_TYPE_ERROR, "Failed to get virtual conference join methods, extension = %@ request = %@ error = %@", buf, 0x20u);
      }

      v17[2](v17, 0, v44[5]);
    }

    else
    {
      v26 = dispatch_time(0, 20000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__EKVirtualConference_virtualConferenceForRoomType_completion_queue___block_invoke_30;
      block[3] = &unk_1E77FFFE8;
      v36 = &v43;
      v35 = v17;
      dispatch_after(v26, v16, block);
    }
  }

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(v52, 8);

  v27 = *MEMORY[0x1E69E9840];
}

uint64_t __69__EKVirtualConference_virtualConferenceForRoomType_completion_queue___block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __69__EKVirtualConference_virtualConferenceForRoomType_completion_queue___block_invoke_17(uint64_t a1, void *a2, void *a3)
{
  v47 = a1;
  v69 = *MEMORY[0x1E69E9840];
  v48 = a2;
  v4 = a3;
  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (!v5)
  {
    v52 = 0;
    v53 = 0;
    goto LABEL_35;
  }

  v6 = v5;
  v52 = 0;
  v53 = 0;
  v7 = *v59;
  v8 = 0x1E696A000uLL;
  do
  {
    v9 = 0;
    v50 = v6;
    do
    {
      if (*v59 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v58 + 1) + 8 * v9);
      v11 = [v10 userInfo];
      v12 = [v11 objectForKey:@"_EKVirtualConferenceTypeIdentifierKey"];

      v13 = *(v8 + 3776);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v12;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      v16 = v15;
      if (v15 && [v15 isEqualToString:@"_EKVirtualConferenceInfoTypeIdentifierKey"])
      {
        v17 = [v10 userInfo];
        v18 = [v17 objectForKey:@"_EKVirtualConferenceInfoTitleKey"];

        v19 = [v10 userInfo];
        v20 = [v19 objectForKey:@"_EKVirtualConferenceInfoDetailsKey"];

        v21 = *(v8 + 3776);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = v18;
        }

        else
        {
          v22 = 0;
        }

        v23 = v22;

        v24 = *(v8 + 3776);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v20;
        }

        else
        {
          v25 = 0;
        }

        v26 = v53;
        v52 = v23;
        v53 = v25;
      }

      else
      {
        if (![v16 isEqualToString:@"_EKVirtualConferenceJoinMethodTypeIdentifierKey"])
        {
          goto LABEL_31;
        }

        v27 = v7;
        v28 = [v10 userInfo];
        v18 = [v28 objectForKey:@"_EKVirtualConferenceJoinMethodTitleKey"];

        v29 = [v10 userInfo];
        v20 = [v29 objectForKey:@"_EKVirtualConferenceJoinMethodURLKey"];

        v30 = *(v8 + 3776);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = v18;
        }

        else
        {
          v31 = 0;
        }

        v26 = v31;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = v20;
        }

        else
        {
          v32 = 0;
        }

        v33 = v32;
        if (v33)
        {
          v34 = [[EKVirtualConferenceJoinMethod alloc] initWithTitle:v26 url:v33];
          [v49 addObject:v34];
        }

        else
        {
          v35 = EKLogHandle;
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v63 = v10;
            v64 = 2112;
            v65 = v26;
            v66 = 2112;
            v67 = 0;
            _os_log_error_impl(&dword_1A805E000, v35, OS_LOG_TYPE_ERROR, "Skipping extension join method %@ because it has insufficient information. Title = %@ URL = %@", buf, 0x20u);
          }
        }

        v7 = v27;
        v6 = v50;
      }

      v8 = 0x1E696A000;
LABEL_31:

      ++v9;
    }

    while (v6 != v9);
    v6 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
  }

  while (v6);
LABEL_35:

  if ([v49 count])
  {
    v37 = v52;
    v36 = v53;
    v38 = [[EKVirtualConference alloc] initWithTitle:v52 joinMethods:v49 conferenceDetails:v53];
    v39 = 0;
    v40 = v47;
  }

  else
  {
    v39 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EKVirtualConferenceError" code:0 userInfo:0];
    v41 = EKLogHandle;
    v40 = v47;
    v37 = v52;
    v36 = v53;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __69__EKVirtualConference_virtualConferenceForRoomType_completion_queue___block_invoke_17_cold_1(v47, v41);
    }

    v38 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__EKVirtualConference_virtualConferenceForRoomType_completion_queue___block_invoke_24;
  block[3] = &unk_1E77FEA98;
  v42 = *(v40 + 40);
  v43 = *(v40 + 48);
  v56 = v39;
  v57 = v43;
  v55 = v38;
  v44 = v39;
  v45 = v38;
  dispatch_async(v42, block);

  v46 = *MEMORY[0x1E69E9840];
}

uint64_t __69__EKVirtualConference_virtualConferenceForRoomType_completion_queue___block_invoke_30(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EKVirtualConferenceError" code:1 userInfo:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = *(*(a1 + 32) + 16);

  return v6();
}

- (NSURL)firstPhoneNumber
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(EKVirtualConference *)self joinMethods];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = [*(*(&v10 + 1) + 8 * v6) URL];
      if ([v7 cal_hasSchemeTel])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (NSURL)urlWithAllowedScheme
{
  v2 = [(EKVirtualConference *)self joinMethods];
  v3 = [v2 firstObject];
  v4 = [v3 URL];

  if (v4 && [MEMORY[0x1E6992F48] conferenceURLHasAllowedScheme:v4])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(EKVirtualConference *)v5 joinMethods];
      v7 = [(EKVirtualConference *)self joinMethods];
      v8 = CalEqualObjects();

      v9 = [(EKVirtualConference *)v5 conferenceDetails];
      v10 = [(EKVirtualConference *)self conferenceDetails];
      v11 = CalEqualStrings();

      v12 = [(EKVirtualConference *)v5 title];
      v13 = [(EKVirtualConference *)self title];
      v14 = CalEqualStrings();

      v15 = [(EKVirtualConference *)v5 source];
      v16 = [(EKVirtualConference *)self source];
      v17 = 0;
      if (v8 && v11)
      {
        if (v15 == v16)
        {
          v17 = v14;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  joinMethods = self->_joinMethods;
  conferenceDetails = self->_conferenceDetails;
  title = self->_title;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_source];
  v7 = [v2 stringWithFormat:@"EKVirtualConference title: %@, conferenceDetails: %@, joinMethods: %@, source: %@", title, conferenceDetails, joinMethods, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [EKVirtualConference alloc];
  v5 = [(EKVirtualConference *)self title];
  v6 = [(EKVirtualConference *)self joinMethods];
  v7 = [(EKVirtualConference *)self conferenceDetails];
  v8 = [(EKVirtualConference *)v4 initWithTitle:v5 joinMethods:v6 conferenceDetails:v7];

  [(EKVirtualConference *)v8 setSource:self->_source];
  return v8;
}

void __69__EKVirtualConference_virtualConferenceForRoomType_completion_queue___block_invoke_17_cold_1(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 extensionBundleIdentifier];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1A805E000, v3, OS_LOG_TYPE_ERROR, "Extension %@ did not provide any join methods.", v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end