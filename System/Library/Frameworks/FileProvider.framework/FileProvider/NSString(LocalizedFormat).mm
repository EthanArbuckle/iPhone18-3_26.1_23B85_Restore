@interface NSString(LocalizedFormat)
- (id)fp_formatStringWithValues:()LocalizedFormat error:;
- (id)fp_localizedFormatWithKeys:()LocalizedFormat fromDictionary:error:;
@end

@implementation NSString(LocalizedFormat)

- (id)fp_localizedFormatWithKeys:()LocalizedFormat fromDictionary:error:
{
  selfCopy = self;
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [v7 fp_valueForKeyPath:{*(*(&v21 + 1) + 8 * i), selfCopy}];
        if (!v13)
        {
          if (a5)
          {
            *a5 = FPNotSupportedError();
          }

          goto LABEL_17;
        }

        v14 = v13;
        objc_opt_class();
        v15 = v14;
        if (objc_opt_isKindOfClass())
        {
          v15 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v14 style:0 options:0];

          if (!v15)
          {
            if (a5)
            {
              *a5 = FPNotSupportedError();
            }

LABEL_17:
            v16 = 0;
            goto LABEL_18;
          }
        }

        [v8 addObject:v15];
      }

      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = [selfCopy fp_formatStringWithValues:v8 error:a5];
LABEL_18:

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)fp_formatStringWithValues:()LocalizedFormat error:
{
  v6 = a3;
  v7 = [v6 count];
  if (v7 > 4)
  {
    if (v7 <= 7)
    {
      if (v7 == 5)
      {
        v46 = MEMORY[0x1E696AEC0];
        v15 = [v6 objectAtIndexedSubscript:0];
        v16 = [v6 objectAtIndexedSubscript:1];
        v47 = [v6 objectAtIndexedSubscript:2];
        v48 = [v6 objectAtIndexedSubscript:3];
        v49 = [v6 objectAtIndexedSubscript:4];
        v22 = [v46 localizedStringWithValidatedFormat:self validFormatSpecifiers:@"%@%@%@%@%@" error:a4, v15, v16, v47, v48, v49];
      }

      else
      {
        if (v7 == 6)
        {
          v38 = MEMORY[0x1E696AEC0];
          v15 = [v6 objectAtIndexedSubscript:0];
          v16 = [v6 objectAtIndexedSubscript:1];
          v17 = [v6 objectAtIndexedSubscript:2];
          v18 = [v6 objectAtIndexedSubscript:3];
          v19 = [v6 objectAtIndexedSubscript:4];
          v20 = [v6 objectAtIndexedSubscript:5];
          v22 = [v38 localizedStringWithValidatedFormat:self validFormatSpecifiers:@"%@%@%@%@%@%@" error:a4, v15, v16, v17, v18, v19, v20];
        }

        else
        {
          v67 = MEMORY[0x1E696AEC0];
          v15 = [v6 objectAtIndexedSubscript:0];
          v16 = [v6 objectAtIndexedSubscript:1];
          v17 = [v6 objectAtIndexedSubscript:2];
          v18 = [v6 objectAtIndexedSubscript:3];
          v19 = [v6 objectAtIndexedSubscript:4];
          v20 = [v6 objectAtIndexedSubscript:5];
          v21 = [v6 objectAtIndexedSubscript:6];
          v22 = [v67 localizedStringWithValidatedFormat:self validFormatSpecifiers:@"%@%@%@%@%@%@%@" error:a4, v15, v16, v17, v18, v19, v20, v21];
        }
      }

      goto LABEL_26;
    }

    if (v7 != 8)
    {
      if (v7 == 9)
      {
        v65 = MEMORY[0x1E696AEC0];
        v62 = [v6 objectAtIndexedSubscript:0];
        v69 = [v6 objectAtIndexedSubscript:1];
        v39 = [v6 objectAtIndexedSubscript:2];
        v40 = [v6 objectAtIndexedSubscript:3];
        v60 = [v6 objectAtIndexedSubscript:4];
        v41 = [v6 objectAtIndexedSubscript:5];
        v42 = [v6 objectAtIndexedSubscript:6];
        v43 = [v6 objectAtIndexedSubscript:7];
        v44 = [v6 objectAtIndexedSubscript:8];
        v22 = [v65 localizedStringWithValidatedFormat:self validFormatSpecifiers:@"%@%@%@%@%@%@%@%@%@" error:a4, v62, v69, v39, v40, v60, v41, v42, v43, v44];

        goto LABEL_31;
      }

      if (v7 == 10)
      {
        v61 = MEMORY[0x1E696AEC0];
        v59 = [v6 objectAtIndexedSubscript:0];
        v68 = [v6 objectAtIndexedSubscript:1];
        v64 = [v6 objectAtIndexedSubscript:2];
        v58 = [v6 objectAtIndexedSubscript:3];
        v57 = [v6 objectAtIndexedSubscript:4];
        v27 = [v6 objectAtIndexedSubscript:5];
        v28 = [v6 objectAtIndexedSubscript:6];
        v29 = [v6 objectAtIndexedSubscript:7];
        v30 = [v6 objectAtIndexedSubscript:8];
        v31 = [v6 objectAtIndexedSubscript:9];
        v22 = [v61 localizedStringWithValidatedFormat:self validFormatSpecifiers:@"%@%@%@%@%@%@%@%@%@%@" error:a4, v59, v68, v64, v58, v57, v27, v28, v29, v30, v31];

        goto LABEL_31;
      }

      goto LABEL_29;
    }

    v70 = MEMORY[0x1E696AEC0];
    v66 = [v6 objectAtIndexedSubscript:0];
    v63 = [v6 objectAtIndexedSubscript:1];
    v50 = [v6 objectAtIndexedSubscript:2];
    v51 = [v6 objectAtIndexedSubscript:3];
    v52 = [v6 objectAtIndexedSubscript:4];
    v53 = [v6 objectAtIndexedSubscript:5];
    v54 = [v6 objectAtIndexedSubscript:6];
    v55 = [v6 objectAtIndexedSubscript:7];
    v33 = v66;
    v22 = [v70 localizedStringWithValidatedFormat:self validFormatSpecifiers:@"%@%@%@%@%@%@%@%@" error:a4, v66, v63, v50, v51, v52, v53, v54, v55];

    goto LABEL_28;
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v45 = MEMORY[0x1E696AEC0];
      v33 = [v6 objectAtIndexedSubscript:0];
      v36 = [v6 objectAtIndexedSubscript:1];
      v22 = [v45 localizedStringWithValidatedFormat:self validFormatSpecifiers:@"%@%@" error:a4, v33, v36];
    }

    else
    {
      if (v7 != 3)
      {
        v23 = MEMORY[0x1E696AEC0];
        v15 = [v6 objectAtIndexedSubscript:0];
        v24 = [v6 objectAtIndexedSubscript:1];
        v25 = [v6 objectAtIndexedSubscript:2];
        v26 = [v6 objectAtIndexedSubscript:3];
        v22 = [v23 localizedStringWithValidatedFormat:self validFormatSpecifiers:@"%@%@%@%@" error:a4, v15, v24, v25, v26];

LABEL_26:
        goto LABEL_31;
      }

      v35 = MEMORY[0x1E696AEC0];
      v33 = [v6 objectAtIndexedSubscript:0];
      v36 = [v6 objectAtIndexedSubscript:1];
      v37 = [v6 objectAtIndexedSubscript:2];
      v22 = [v35 localizedStringWithValidatedFormat:self validFormatSpecifiers:@"%@%@%@" error:a4, v33, v36, v37];
    }

    goto LABEL_28;
  }

  if (v7)
  {
    if (v7 != 1)
    {
LABEL_29:
      selfCopy = FPLoc(@"TOO_MANY_FORMATS_%@", v8, v9, v10, v11, v12, v13, v14, self);
      goto LABEL_30;
    }

    v32 = MEMORY[0x1E696AEC0];
    v33 = [v6 objectAtIndexedSubscript:0];
    v22 = [v32 localizedStringWithValidatedFormat:self validFormatSpecifiers:@"%@" error:a4, v33];
LABEL_28:

    goto LABEL_31;
  }

  selfCopy = self;
LABEL_30:
  v22 = selfCopy;
LABEL_31:

  return v22;
}

@end