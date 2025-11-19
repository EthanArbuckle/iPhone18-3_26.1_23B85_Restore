@interface SANPVideoLanguageOption(AFMediaRemoteUtilities)
+ (id)_languageOptionFromMediaRemoteRepresentation:()AFMediaRemoteUtilities;
@end

@implementation SANPVideoLanguageOption(AFMediaRemoteUtilities)

+ (id)_languageOptionFromMediaRemoteRepresentation:()AFMediaRemoteUtilities
{
  v35[10] = *MEMORY[0x1E69E9840];
  v0 = MRLanguageOptionCopyIdentifier();
  if (v0)
  {
    v1 = objc_alloc_init(MEMORY[0x1E69C7928]);
    [v1 setIdentifier:v0];
    v2 = MRLanguageOptionCopyLanguageTag();
    [v1 setLanguageTag:v2];

    v3 = MRLanguageOptionCopyDisplayName();
    [v1 setDisplayName:v3];

    v4 = *MEMORY[0x1E69C80A8];
    v5 = *MEMORY[0x1E69B0BF0];
    v34[0] = *MEMORY[0x1E69B0BF8];
    v34[1] = v5;
    v6 = *MEMORY[0x1E69C80A0];
    v35[0] = v4;
    v35[1] = v6;
    v7 = *MEMORY[0x1E69C8078];
    v8 = *MEMORY[0x1E69B0C08];
    v34[2] = *MEMORY[0x1E69B0BC8];
    v34[3] = v8;
    v9 = *MEMORY[0x1E69C80B8];
    v35[2] = v7;
    v35[3] = v9;
    v10 = *MEMORY[0x1E69C8080];
    v11 = *MEMORY[0x1E69B0BE8];
    v34[4] = *MEMORY[0x1E69B0BD0];
    v34[5] = v11;
    v12 = *MEMORY[0x1E69C8098];
    v35[4] = v10;
    v35[5] = v12;
    v13 = *MEMORY[0x1E69C8088];
    v14 = *MEMORY[0x1E69B0C00];
    v34[6] = *MEMORY[0x1E69B0BD8];
    v34[7] = v14;
    v15 = *MEMORY[0x1E69C80B0];
    v35[6] = v13;
    v35[7] = v15;
    v16 = *MEMORY[0x1E69B0C10];
    v34[8] = *MEMORY[0x1E69B0BE0];
    v34[9] = v16;
    v17 = *MEMORY[0x1E69C80C0];
    v35[8] = *MEMORY[0x1E69C8090];
    v35[9] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:10];
    v19 = MRLanguageOptionCopyCharacteristics();
    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v19, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v21 = v19;
    v22 = [v21 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v30;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [v18 objectForKey:{*(*(&v29 + 1) + 8 * i), v29}];
          if (v26)
          {
            [v20 addObject:v26];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v23);
    }

    [v1 setCharacteristics:v20];
  }

  else
  {
    v1 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v1;
}

@end