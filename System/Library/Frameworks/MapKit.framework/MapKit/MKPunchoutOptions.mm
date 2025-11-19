@interface MKPunchoutOptions
+ (id)punchoutOptionsForURLStrings:(id)a3 withAttribution:(id)a4;
@end

@implementation MKPunchoutOptions

+ (id)punchoutOptionsForURLStrings:(id)a3 withAttribution:(id)a4
{
  v70 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v6;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v9 = v7;
  v50 = v8;
  v51 = [v9 countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (v51)
  {
    v10 = *v61;
    v11 = *MEMORY[0x1E69A15E0];
    v12 = 0x1E695D000uLL;
    v13 = 0x1E6963000uLL;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v61 != v10)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [*(v12 + 4088) URLWithString:*(*(&v60 + 1) + 8 * i)];
        v16 = [v15 scheme];
        v17 = [v16 isEqualToString:v11];

        if (v17)
        {
          v18 = [*(v13 + 1544) defaultWorkspace];
          v19 = [v18 applicationsAvailableForOpeningURL:v15];

          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v20 = [v8 attributionApps];
          v48 = [v20 countByEnumeratingWithState:&v56 objects:&v65 count:16];
          if (v48)
          {
            v21 = *v57;
            v46 = *v57;
            v47 = v9;
            v43 = v10;
            v44 = v19;
            v45 = v11;
            v49 = v20;
            do
            {
              v22 = 0;
              do
              {
                if (*v57 != v21)
                {
                  objc_enumerationMutation(v20);
                }

                v23 = [*(*(&v56 + 1) + 8 * v22) appBundleIdentifier];
                v52 = 0u;
                v53 = 0u;
                v54 = 0u;
                v55 = 0u;
                v24 = v19;
                v25 = [v24 countByEnumeratingWithState:&v52 objects:v64 count:16];
                if (v25)
                {
                  v26 = v25;
                  v27 = *v53;
                  while (2)
                  {
                    for (j = 0; j != v26; ++j)
                    {
                      if (*v53 != v27)
                      {
                        objc_enumerationMutation(v24);
                      }

                      v29 = [*(*(&v52 + 1) + 8 * j) bundleIdentifier];
                      v30 = [v29 isEqualToString:v23];

                      if (v30)
                      {
                        v32 = objc_alloc_init(MKPunchoutOptions);
                        [(MKPunchoutOptions *)v32 setStrategy:1];
                        [(MKPunchoutOptions *)v32 setAppBundleIdentifier:v23];
                        [(MKPunchoutOptions *)v32 setUrlToOpen:v15];

                        v8 = v50;
                        v9 = v47;
                        goto LABEL_28;
                      }
                    }

                    v26 = [v24 countByEnumeratingWithState:&v52 objects:v64 count:16];
                    if (v26)
                    {
                      continue;
                    }

                    break;
                  }
                }

                ++v22;
                v20 = v49;
                v19 = v44;
                v11 = v45;
                v12 = 0x1E695D000;
                v13 = 0x1E6963000;
                v21 = v46;
              }

              while (v22 != v48);
              v31 = [v49 countByEnumeratingWithState:&v56 objects:&v65 count:16];
              v21 = v46;
              v9 = v47;
              v8 = v50;
              v10 = v43;
              v48 = v31;
            }

            while (v31);
          }
        }
      }

      v32 = 0;
      v51 = [v9 countByEnumeratingWithState:&v60 objects:v69 count:16];
    }

    while (v51);
  }

  else
  {
    v32 = 0;
  }

LABEL_28:

  if (!v32)
  {
    v33 = v9;
    v34 = v9;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v35 = v34;
    v36 = [v35 countByEnumeratingWithState:&v65 objects:v69 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v66;
      while (2)
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v66 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = [MEMORY[0x1E695DFF8] URLWithString:*(*(&v65 + 1) + 8 * k)];
          v41 = [v40 scheme];
          if ([v41 isEqualToString:@"http"] & 1) != 0 || (objc_msgSend(v41, "isEqualToString:", @"https"))
          {
            v32 = objc_alloc_init(MKPunchoutOptions);
            [(MKPunchoutOptions *)v32 setStrategy:2];
            [(MKPunchoutOptions *)v32 setUrlToOpen:v40];

            goto LABEL_41;
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v65 objects:v69 count:16];
        v32 = 0;
        if (v37)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v32 = 0;
    }

LABEL_41:

    v8 = v50;
    v9 = v33;
  }

  return v32;
}

@end