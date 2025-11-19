@interface _LSDisplayNameConstructor
+ (NSString)suffixForRemoteXCTests;
+ (id)concatenateBaseName:(id)a3 andExtension:(id)a4;
+ (id)displayNameConstructorWithContext:(LSContext *)a3 node:(id)a4 error:(id *)a5;
+ (id)displayNameConstructorWithContextIfNeeded:(Context *)a3 bundle:(unsigned int)a4 bundleClass:(const unsigned int *)a5 node:(id)a6 preferredLocalizations:(id)a7 error:(id *)a8;
+ (id)displayNameConstructorWithContextIfNeeded:(Context *)a3 node:(id)a4 error:(id *)a5;
+ (id)displayNameConstructorsWithContext:(LSContext *)a3 node:(id)a4 error:(id *)a5;
+ (id)displayNameConstructorsWithContextIfNeeded:(Context *)a3 bundle:(unsigned int)a4 bundleClass:(const unsigned int *)a5 node:(id)a6 error:(id *)a7;
+ (id)displayNameConstructorsWithContextIfNeeded:(Context *)a3 node:(id)a4 error:(id *)a5;
+ (unsigned)prepareMimicWithPopulator:(id)a3 error:(id *)a4;
+ (void)getExtensionRange:(_NSRange *)a3 secondaryExtensionRange:(_NSRange *)a4 fromFileName:(id)a5 considerConfusables:(BOOL)a6;
+ (void)setSuffixForRemoteXCTests:(id)a3;
- (BOOL)canSetExtensionHiddenWithContext:(LSContext *)a3;
- (BOOL)isStringNaturallyRTL:(id)a3;
- (BOOL)showExtensionWithContextIfNeeded:(Context *)a3 asIfShowingAllExtensions:(id)a4;
- (id)cleanSecondaryExtension:(id)a3;
- (id)combineBaseName:(id)a3 extension:(id)a4;
- (id)insertCompleteNameBiDiControlCharacters:(id)a3;
- (id)insertNameComponentBiDiControlCharacters:(id)a3;
- (id)transformBeforeCombining:(id)a3 needsBiDiControlCharacters:(BOOL *)a4;
- (id)unlocalizedNameWithContext:(LSContext *)a3;
- (id)unlocalizedNameWithContext:(LSContext *)a3 asIfShowingAllExtensions:(id)a4;
- (id)unlocalizedNameWithContextIfNeeded:(Context *)a3 asIfShowingAllExtensions:(id)a4;
- (void)getTransformedBaseName:(id *)a3 extension:(id *)a4 needsBiDiControlCharacters:(BOOL)a5[2];
- (void)getUnlocalizedBaseName:(id *)a3 extension:(id *)a4 requiresAdditionalBiDiControlCharacters:(BOOL *)a5;
- (void)initContentBitsWithDisplayName:(id)a3 treatAsFSName:(BOOL)a4;
- (void)initNamePartsWithDisplayName:(id)a3;
- (void)initNodeBitsWithContextIfNeeded:(Context *)a3 node:(id)a4 isDirectory:(BOOL)a5 bundleClass:(const unsigned int *)a6;
@end

@implementation _LSDisplayNameConstructor

- (id)unlocalizedNameWithContext:(LSContext *)a3
{
  v7 = a3;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v3 = [(_LSDisplayNameConstructor *)self unlocalizedNameWithContextIfNeeded:&v7 asIfShowingAllExtensions:0];
  if (v7 && v9 == 1)
  {
    _LSContextDestroy(&v7->db);
  }

  v4 = v8;
  v7 = 0;
  v8 = 0;

  v9 = 0;
  v5 = v10;
  v10 = 0;

  return v3;
}

- (id)unlocalizedNameWithContext:(LSContext *)a3 asIfShowingAllExtensions:(id)a4
{
  v6 = a4;
  v11 = a3;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v7 = [(_LSDisplayNameConstructor *)self unlocalizedNameWithContextIfNeeded:&v11 asIfShowingAllExtensions:v6];
  if (v11 && v13 == 1)
  {
    _LSContextDestroy(&v11->db);
  }

  v8 = v12;
  v11 = 0;
  v12 = 0;

  v13 = 0;
  v9 = v14;
  v14 = 0;

  return v7;
}

- (id)unlocalizedNameWithContextIfNeeded:(Context *)a3 asIfShowingAllExtensions:(id)a4
{
  v6 = a4;
  v7 = self->_baseName;
  v8 = self->_extension;
  if (!v8 || ![(_LSDisplayNameConstructor *)self showExtensionWithContextIfNeeded:a3 asIfShowingAllExtensions:v6]|| ([(_LSDisplayNameConstructor *)self combineBaseName:v7 extension:v8], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = [(_LSDisplayNameConstructor *)self combineBaseName:v7 extension:0];
  }

  v10 = [v9 copy];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = @"?";
  }

  v12 = v11;

  return v11;
}

- (void)getUnlocalizedBaseName:(id *)a3 extension:(id *)a4 requiresAdditionalBiDiControlCharacters:(BOOL *)a5
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"LSDisplayNameConstructor.mm" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"outSafeExtension != NULL"}];

    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"LSDisplayNameConstructor.mm" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"outRequiresBiDi != NULL"}];

    goto LABEL_4;
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"LSDisplayNameConstructor.mm" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"outSafeBaseName != NULL"}];

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  baseName = self->_baseName;
  v11 = self->_extension;
  v24 = 0;
  v22 = v11;
  v23 = baseName;
  v12 = baseName;
  [(_LSDisplayNameConstructor *)self getTransformedBaseName:&v23 extension:&v22 needsBiDiControlCharacters:&v24];
  v13 = v23;

  v14 = v22;
  v15 = v13;
  *a3 = v13;
  v16 = v14;
  *a4 = v14;
  v17 = v24;
  v18 = HIBYTE(v24);

  *a5 = (v17 | v18) & 1;
}

+ (NSString)suffixForRemoteXCTests
{
  if ([__LSDefaultsGetSharedInstance() isInXCTestRigInsecure])
  {
    v2 = getenv("LS_SUFFIX_FOR_REMOTE_XCTESTS");
    if (v2)
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (void)setSuffixForRemoteXCTests:(id)a3
{
  v3 = a3;
  if ([__LSDefaultsGetSharedInstance() isInXCTestRigInsecure])
  {
    if (v3)
    {
      setenv("LS_SUFFIX_FOR_REMOTE_XCTESTS", [v3 UTF8String], 1);
    }

    else
    {
      unsetenv("LS_SUFFIX_FOR_REMOTE_XCTESTS");
    }
  }
}

+ (id)displayNameConstructorWithContext:(LSContext *)a3 node:(id)a4 error:(id *)a5
{
  v8 = a4;
  v13 = a3;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v9 = [a1 displayNameConstructorWithContextIfNeeded:&v13 bundle:0 bundleClass:0 node:v8 preferredLocalizations:0 error:a5];
  if (v13 && v15 == 1)
  {
    _LSContextDestroy(&v13->db);
  }

  v10 = v14;
  v13 = 0;
  v14 = 0;

  v15 = 0;
  v11 = v16;
  v16 = 0;

  return v9;
}

+ (id)displayNameConstructorsWithContext:(LSContext *)a3 node:(id)a4 error:(id *)a5
{
  v8 = a4;
  v13 = a3;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v9 = [a1 displayNameConstructorsWithContextIfNeeded:&v13 bundle:0 bundleClass:0 node:v8 error:a5];
  if (v13 && v15 == 1)
  {
    _LSContextDestroy(&v13->db);
  }

  v10 = v14;
  v13 = 0;
  v14 = 0;

  v15 = 0;
  v11 = v16;
  v16 = 0;

  return v9;
}

+ (id)displayNameConstructorWithContextIfNeeded:(Context *)a3 node:(id)a4 error:(id *)a5
{
  v5 = [a1 displayNameConstructorWithContextIfNeeded:a3 bundle:0 bundleClass:0 node:a4 preferredLocalizations:0 error:a5];

  return v5;
}

+ (unsigned)prepareMimicWithPopulator:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (!_LSPrepareMimicForBundleLookup(v5, a4))
  {
    goto LABEL_10;
  }

  v11[0] = sel_isBusyDirectory;
  v11[1] = sel_hasHiddenExtension;
  v11[2] = sel_isSideFault;
  v6 = v5;
  v7 = 0;
  LOBYTE(v8) = 1;
  do
  {
    while (!v8)
    {
      LOBYTE(v8) = 0;
      if (++v7 == 3)
      {

        goto LABEL_10;
      }
    }

    v8 = [v6 populateSimpleSelector:v11[v7++] error:a4];
  }

  while (v7 != 3);

  if (v8)
  {
    v9 = [v6 populateValueForKey:*MEMORY[0x1E695DDE8] error:a4];
  }

  else
  {
LABEL_10:
    v9 = 0;
  }

  return v9;
}

+ (id)displayNameConstructorWithContextIfNeeded:(Context *)a3 bundle:(unsigned int)a4 bundleClass:(const unsigned int *)a5 node:(id)a6 preferredLocalizations:(id)a7 error:(id *)a8
{
  v45[1] = *MEMORY[0x1E69E9840];
  v43 = a4;
  v12 = a6;
  v13 = a7;
  v14 = v13 != 0;
  if (a4 || ![v12 isVolume])
  {
    v15 = 0;
    v16 = 0;
    v42 = 0;
    if (![v12 isDirectory])
    {
      goto LABEL_8;
    }
  }

  else
  {
    v42 = 0;
    v15 = 1;
  }

  if ([v12 isBusyDirectory])
  {
    goto LABEL_62;
  }

  v16 = 1;
  if (v15)
  {
    v17 = 0;
    v18 = 1;
    v19 = v13;
    goto LABEL_23;
  }

LABEL_8:
  v19 = v13;
  if (!v13)
  {
    v20 = [v12 URL];
    v19 = [v20 ls_preferredLocalizations];
  }

  v21 = _LSGetBRDisplayNameForContainerNode(v12, v19);
  if (v21 || (_LSGetBRDisplayNameForSideFaultFileNode(v12), (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v22 = 0;
    v17 = v21;
LABEL_54:
    v33 = [[a1 alloc] initWithContextIfNeeded:a3 node:v12 isDirectory:v16 bundleClass:a5 desiredDisplayName:v17 treatAsFSName:v22];

    goto LABEL_55;
  }

  if (!a5)
  {
    if (!_LSDNCGetBundleClass(&a3->_contextPointer, v12, v16, &v42, a8))
    {
      goto LABEL_61;
    }

    a5 = &v42;
  }

  if (!*a5)
  {
    goto LABEL_21;
  }

  v23 = +[_LSDServiceDomain defaultServiceDomain];
  v24 = LaunchServices::Database::Context::_get(a3, v23, 0);

  if (!v24)
  {
    if (!a8)
    {
      goto LABEL_61;
    }

    goto LABEL_66;
  }

  if (v43 || !_LSFindOrFindOrRegisterBundleNode(v24, v12, a5, 0x2000000u, 0, &v43, 0))
  {
    v17 = _LSBundleGetLocalizedName(*v24, v43, 0, v12, v19, 0);
    v18 = 0;
  }

  else
  {
LABEL_21:
    v18 = 0;
    v17 = 0;
  }

  v14 = 1;
  if (!v16)
  {
    goto LABEL_43;
  }

LABEL_23:
  if (v17)
  {
    goto LABEL_43;
  }

  v25 = +[_LSDServiceDomain defaultServiceDomain];
  v38 = LaunchServices::Database::Context::_get(a3, v25, 0);

  if (v38)
  {
    v26 = [v12 extensionWithError:a8];
    v27 = v26;
    if (v26)
    {
      if (![v26 length])
      {

        v17 = 0;
        v27 = 0;
        goto LABEL_42;
      }

      if (v18)
      {
        v17 = 0;
LABEL_42:

LABEL_43:
        v32 = v18 ^ 1;
        if (v17)
        {
          v32 = 1;
        }

        if (v32)
        {
          v22 = 0;
        }

        else
        {
          v41 = 0;
          v22 = [v12 getResourceValue:&v41 forKey:*MEMORY[0x1E695DDE8] options:1 error:0];
          if (v22)
          {
            v17 = v41;
          }

          else
          {
            v17 = 0;
          }
        }

        if (v17)
        {
          goto LABEL_54;
        }

LABEL_52:
        v17 = [v12 nameWithError:a8];
        if (v17)
        {
          v22 = 1;
          goto LABEL_54;
        }

        goto LABEL_61;
      }

      if (a5 && *a5 == 10)
      {
        v37 = [v12 nameWithError:0];
        if (!v37 || ![(_LSDatabase *)v37 isEqual:@"myDocuments.cannedSearch"])
        {
          goto LABEL_39;
        }

        if (!v14)
        {
          v29 = [v12 URL];
          v19 = [v29 ls_preferredLocalizations];
        }

        v30 = LaunchServices::CanonicalString::Find(*v38, v37, v28);
        if (v30)
        {
          LocalizedString = LaunchServices::CanonicalString::getLocalizedString(v30);
          v17 = LaunchServices::LocalizedString::localizeUnsafely(LocalizedString, *v38, v19);

          if (v17)
          {
            goto LABEL_42;
          }
        }

        else
        {
LABEL_39:
        }
      }

      if ([v12 canIssueIO])
      {
        v17 = _LSBundleGetDisplayNameForNodeWithUnregisteredBundleType(v38, v12, v27, 0);
        goto LABEL_42;
      }

      if (a8)
      {
        v44 = *MEMORY[0x1E696A278];
        v45[0] = @"node had unregistered bundle type but can't issue IO to localize its name";
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
        *a8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 5, v36, "+[_LSDisplayNameConstructor(ConstructForAnyFile) displayNameConstructorWithContextIfNeeded:bundle:bundleClass:node:preferredLocalizations:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/LSDisplayNameConstructor.mm", 444);
      }

LABEL_61:
      v33 = 0;
      goto LABEL_55;
    }

LABEL_62:
    v16 = 1;
    goto LABEL_52;
  }

  if (!a8)
  {
    goto LABEL_61;
  }

LABEL_66:
  LaunchServices::Database::Context::error(&a3->_contextPointer);
  *a8 = v33 = 0;
LABEL_55:

  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

+ (id)displayNameConstructorsWithContextIfNeeded:(Context *)a3 node:(id)a4 error:(id *)a5
{
  v5 = [a1 displayNameConstructorsWithContextIfNeeded:a3 bundle:0 bundleClass:0 node:a4 error:a5];

  return v5;
}

+ (id)displayNameConstructorsWithContextIfNeeded:(Context *)a3 bundle:(unsigned int)a4 bundleClass:(const unsigned int *)a5 node:(id)a6 error:(id *)a7
{
  v62[1] = *MEMORY[0x1E69E9840];
  v60 = a4;
  v11 = a6;
  v12 = [v11 isVolume];
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = [v11 isDirectory];
  }

  v59 = 0;
  v14 = _LSGetBRDisplayNameForSideFaultFileNode(v11);
  v58 = v14;

  if (!v14)
  {
    if (v12)
    {
      [v11 getResourceValue:&v58 forKey:*MEMORY[0x1E695DDE8] options:1 error:a7];
      v15 = v58;
      if (v15)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v17 = [v11 nameWithError:a7];
    v18 = v58;
    v58 = v17;

    v15 = v17;
LABEL_11:
    v19 = [v15 stringByDeletingPathExtension];

    v15 = v19;
    if (v19)
    {
      goto LABEL_12;
    }

LABEL_9:
    v16 = 0;
    goto LABEL_53;
  }

  v15 = v14;
  if ((v12 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  v48 = a1;
  v20 = [MEMORY[0x1E695DF90] dictionary];
  if (a5)
  {
    if (!v13)
    {
      goto LABEL_46;
    }
  }

  else
  {
    if ((_LSDNCGetBundleClass(&a3->_contextPointer, v11, v13, &v59, a7) & 1) == 0)
    {
      goto LABEL_36;
    }

    a5 = &v59;
    if (!v13)
    {
LABEL_46:
      v37 = [v20 objectForKeyedSubscript:@"LSDefaultLocalizedValue"];
      v38 = v37 == 0;

      if (v58)
      {
        v39 = v38;
      }

      else
      {
        v39 = 0;
      }

      if (v39)
      {
        v40 = [v48 alloc];
        v41 = [v40 initWithContextIfNeeded:a3 node:v11 isDirectory:v13 bundleClass:a5 desiredDisplayName:v58 treatAsFSName:1];
        [v20 setObject:v41 forKeyedSubscript:@"LSDefaultLocalizedValue"];
      }

      v16 = [v20 copy];
      goto LABEL_52;
    }
  }

  if ([v11 isBusyDirectory])
  {
    goto LABEL_46;
  }

  v21 = +[_LSDServiceDomain defaultServiceDomain];
  v22 = LaunchServices::Database::Context::_get(a3, v21, 0);

  if (v22)
  {
    v47 = [v11 extensionWithError:0];
    v23 = v60;
    if (v60 || (_LSFindOrFindOrRegisterBundleNode(v22, v11, a5, 0x2000000u, 0, &v60, 0), (v23 = v60) != 0))
    {
      v24 = _LSBundleGetLocalizedNameDictionary(*v22, v23, v11, v15);
      if (v24)
      {
LABEL_44:
        v25 = v47;
        goto LABEL_45;
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = v47;
    if (!v47)
    {
      goto LABEL_45;
    }

    if (([v47 length] == 0) | v12 & 1 || !_LSBundleNodeHasUnregisteredPersonality(v22, v11, v47, a5))
    {
LABEL_43:
      v24 = 0;
      goto LABEL_44;
    }

    if ([v11 canIssueIO])
    {
      if (*a5 != 10)
      {
        goto LABEL_38;
      }

      v26 = [v11 nameWithError:0];
      v27 = v26;
      if (!v26 || ![(_LSDatabase *)v26 isEqual:@"myDocuments.cannedSearch"]|| (v29 = LaunchServices::CanonicalString::Find(*v22, v27, v28)) == 0)
      {

        goto LABEL_38;
      }

      LocalizedString = LaunchServices::CanonicalString::getLocalizedString(v29);
      v24 = LaunchServices::LocalizedString::getAllUnsafeLocalizations(LocalizedString, *v22, 0, 0, 0);

      v25 = v47;
      if (!v24)
      {
LABEL_38:
        if ([v11 canIssueIO])
        {
          v32 = [v11 bundleInfoDictionaryWithError:0];
          if (v32)
          {
            v33 = objc_opt_class();
            v34 = *MEMORY[0x1E695E120];
            v35 = XNSDictionaryObjectForKeyOfClass(v32, *MEMORY[0x1E695E120], v33);
            if (v35)
            {
              v46 = [v15 stringByDeletingPathExtension];
              if ([v35 caseInsensitiveCompare:?])
              {
                v24 = 0;
              }

              else
              {
                v44 = _LSBundleGetLocalizer(*v22, 0, 0, v11);
                v45 = v44;
                if (v44)
                {
                  v24 = [v44 localizedStringDictionaryWithString:v34 defaultValue:0];
                }

                else
                {
                  v24 = 0;
                }
              }
            }

            else
            {
              v24 = 0;
            }
          }

          else
          {
            v24 = 0;
          }

          goto LABEL_44;
        }

        goto LABEL_43;
      }

LABEL_45:
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __123___LSDisplayNameConstructor_ConstructForAnyFile__displayNameConstructorsWithContextIfNeeded_bundle_bundleClass_node_error___block_invoke;
      v49[3] = &unk_1E6A1BF20;
      v36 = v25;
      v56 = 1;
      v50 = v36;
      v53 = v48;
      v51 = v20;
      v54 = a3;
      v57 = v13;
      v52 = v11;
      v55 = a5;
      [v24 enumerateKeysAndObjectsUsingBlock:v49];

      goto LABEL_46;
    }

    if (a7)
    {
      v61 = *MEMORY[0x1E696A278];
      v62[0] = @"node had unregistered personality but cannot do IO to localize its name";
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:&v61 count:1];
      *a7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 5, v31, "+[_LSDisplayNameConstructor(ConstructForAnyFile) displayNameConstructorsWithContextIfNeeded:bundle:bundleClass:node:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/LSDisplayNameConstructor.mm", 628);
    }
  }

  else if (a7)
  {
    LaunchServices::Database::Context::error(&a3->_contextPointer);
    *a7 = v16 = 0;
    goto LABEL_52;
  }

LABEL_36:
  v16 = 0;
LABEL_52:

LABEL_53:
  v42 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BOOL)canSetExtensionHiddenWithContext:(LSContext *)a3
{
  if ((*(self + 32) & 4) != 0)
  {
    return 0;
  }

  v5 = self->_extension;
  if (v5)
  {
    v10 = a3;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v6 = [(_LSDisplayNameConstructor *)self mayHideExtensionWithContextIfNeeded:&v10];
    if (v10 && v12 == 1)
    {
      _LSContextDestroy(&v10->db);
    }

    v7 = v11;
    v10 = 0;
    v11 = 0;

    v12 = 0;
    v8 = v13;
    v13 = 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)getExtensionRange:(_NSRange *)a3 secondaryExtensionRange:(_NSRange *)a4 fromFileName:(id)a5 considerConfusables:(BOOL)a6
{
  _CFGetPathExtensionRangesFromPathComponent();
  if (a3)
  {
    a3->location = 0x7FFFFFFFFFFFFFFFLL;
    a3->length = 0;
  }

  if (a4)
  {
    a4->location = 0x7FFFFFFFFFFFFFFFLL;
    a4->length = 0;
  }
}

- (void)initNodeBitsWithContextIfNeeded:(Context *)a3 node:(id)a4 isDirectory:(BOOL)a5 bundleClass:(const unsigned int *)a6
{
  v7 = a5;
  v14 = a4;
  v10 = *(self + 32) & 0xFE | [v14 hasHiddenExtension];
  *(self + 32) = v10;
  if (v7)
  {
    v11 = +[_LSDServiceDomain defaultServiceDomain];
    v12 = LaunchServices::Database::Context::_get(a3, v11, 0);

    v10 = *(self + 32) & 0xFD | (2 * (_LSNodeIsPackage(v12, v14, 0) == 0));
    *(self + 32) = v10;
  }

  if (a6)
  {
    v13 = *a6;
  }

  else
  {
    v13 = _LSGetBundleClassForNode(0, v14);
    v10 = *(self + 32);
  }

  *(self + 32) = v10 & 0xFB | (4 * (v13 == 2));
}

- (void)initContentBitsWithDisplayName:(id)a3 treatAsFSName:(BOOL)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83___LSDisplayNameConstructor_Private__initContentBitsWithDisplayName_treatAsFSName___block_invoke;
  v4[3] = &unk_1E6A1BF70;
  v5 = a4;
  v4[4] = self;
  _LSDNCWithInlineBuffer(a3, v4);
}

- (void)initNamePartsWithDisplayName:(id)a3
{
  v5 = a3;
  v17 = xmmword_1817E8E30;
  [objc_opt_class() getExtensionRange:&v17 secondaryExtensionRange:0 fromFileName:v5 considerConfusables:0];
  v6 = [v5 copy];
  originalName = self->_originalName;
  self->_originalName = v6;

  v8 = v17;
  if (v17 == 0x7FFFFFFFFFFFFFFFLL || !*(&v17 + 1))
  {
    v15 = [v5 copy];
    baseName = self->_baseName;
    self->_baseName = v15;
  }

  else
  {
    if (!v17)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"LSDisplayNameConstructor.mm" lineNumber:1039 description:{@"Path extension allegedly starts at the beginning of the display name, which is invalid."}];

      v8 = v17;
    }

    v9 = [v5 substringToIndex:{v8 - 1, v17}];
    v10 = [v9 copy];
    v11 = self->_baseName;
    self->_baseName = v10;

    baseName = [v5 substringFromIndex:v17];
    v13 = [baseName copy];
    extension = self->_extension;
    self->_extension = v13;
  }
}

- (id)cleanSecondaryExtension:(id)a3
{
  v3 = a3;
  if ([_LSDisplayNameConstructor(Private) cleanSecondaryExtension:]::once != -1)
  {
    [_LSDisplayNameConstructor(Private) cleanSecondaryExtension:];
  }

  v4 = v3;
  if ([v3 rangeOfCharacterFromSet:-[_LSDisplayNameConstructor(Private) cleanSecondaryExtension:]::nonExtensionCharacters] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__21;
    v11 = __Block_byref_object_dispose__21;
    v12 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62___LSDisplayNameConstructor_Private__cleanSecondaryExtension___block_invoke_2;
    v6[3] = &unk_1E6A1BF98;
    v6[4] = &v7;
    _LSDNCWithInlineBuffer(v3, v6);
    v4 = v8[5];

    _Block_object_dispose(&v7, 8);
  }

  return v4;
}

+ (id)concatenateBaseName:(id)a3 andExtension:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"LSDisplayNameConstructor.mm" lineNumber:1203 description:{@"Invalid parameter not satisfying: %@", @"baseName != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:a1 file:@"LSDisplayNameConstructor.mm" lineNumber:1204 description:{@"Invalid parameter not satisfying: %@", @"extension != nil"}];

LABEL_3:
  v10 = [v9 length];
  if (v10)
  {
    v11 = [v7 length];
    v12 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:v10 + v11 + 1];
    [v12 appendString:v7];
    [v12 appendString:@"."];
    [v12 appendString:v9];
  }

  else
  {
    v12 = v7;
  }

  return v12;
}

- (id)combineBaseName:(id)a3 extension:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v16 = v7;
  v17 = v6;
  [(_LSDisplayNameConstructor *)self getTransformedBaseName:&v17 extension:&v16 needsBiDiControlCharacters:&v18];
  v8 = v17;

  v9 = v16;
  if (v18)
  {
    v10 = [(_LSDisplayNameConstructor *)self insertNameComponentBiDiControlCharacters:v8];

    v8 = v10;
    if ((v18 & 0x100) == 0)
    {
      v8 = v10;
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  if ((v18 & 0x100) != 0)
  {
LABEL_5:
    v11 = [(_LSDisplayNameConstructor *)self insertNameComponentBiDiControlCharacters:v9];

    v9 = v11;
    goto LABEL_8;
  }

  if (v8 == self->_baseName && v9 == self->_extension)
  {
    v13 = self->_originalName;
    goto LABEL_14;
  }

LABEL_8:
  if (v9)
  {
    v12 = [objc_opt_class() concatenateBaseName:v8 andExtension:v9];
  }

  else
  {
    v12 = v8;
  }

  v13 = v12;
  if ((v18 & 1) != 0 || HIBYTE(v18) == 1)
  {
    v14 = [(_LSDisplayNameConstructor *)self insertCompleteNameBiDiControlCharacters:v12];

    v13 = v14;
  }

LABEL_14:

  return v13;
}

- (void)getTransformedBaseName:(id *)a3 extension:(id *)a4 needsBiDiControlCharacters:(BOOL)a5[2]
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_11:
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"LSDisplayNameConstructor.mm" lineNumber:1267 description:{@"Invalid parameter not satisfying: %@", @"ioExtension != NULL"}];

    if (a3)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"LSDisplayNameConstructor.mm" lineNumber:1266 description:{@"Invalid parameter not satisfying: %@", @"ioBaseName != NULL"}];

  if (!a4)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (a3)
  {
    goto LABEL_4;
  }

LABEL_12:
  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  [v13 handleFailureInMethod:a2 object:self file:@"LSDisplayNameConstructor.mm" lineNumber:1268 description:{@"Invalid parameter not satisfying: %@", @"ioBaseName != NULL"}];

LABEL_4:
  v14 = 0;
  if (*a3)
  {
    *a3 = [(_LSDisplayNameConstructor *)self transformBeforeCombining:*a3 needsBiDiControlCharacters:&v14 + 1];
  }

  if (*a4)
  {
    *a4 = [(_LSDisplayNameConstructor *)self transformBeforeCombining:*a4 needsBiDiControlCharacters:&v14];
    v10 = v14;
  }

  else
  {
    v10 = 0;
  }

  *a5 = HIBYTE(v14);
  a5[1] = v10;
}

- (id)transformBeforeCombining:(id)a3 needsBiDiControlCharacters:(BOOL *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ((*(self + 32) & 8) != 0)
    {
      v8 = v6;
      if ((*(self + 32) & 0x20) != 0)
      {
        v9 = _LSDNCBalanceBiDiControlCharacters(v6);

        v8 = v9;
      }

      LOBYTE(v6) = [(_LSDisplayNameConstructor *)self isStringNaturallyRTL:v8];
    }

    else
    {
      LOBYTE(v6) = 0;
      v8 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  if (a4)
  {
    *a4 = v6;
  }

  if (v8)
  {
    v10 = *(self + 32);
    if ((v10 & 0x10) != 0)
    {
      v11 = [v8 stringByReplacingOccurrencesOfString:@":" withString:@"/"];

      if (!v11)
      {
        v8 = 0;
        goto LABEL_17;
      }

      v10 = *(self + 32);
      v8 = v11;
    }

    if ((v10 & 0x40) != 0)
    {
      v12 = _LSDNCReplaceForbiddenCharacters(v8, 0);

      v8 = v12;
    }
  }

LABEL_17:

  return v8;
}

- (id)insertNameComponentBiDiControlCharacters:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(_LSDisplayNameConstructor *)self isStringNaturallyRTL:v4];
    v6 = v4;
    if (v5)
    {
      v6 = [MEMORY[0x1E696AD60] stringWithCapacity:{objc_msgSend(v4, "length") + 2}];
      [v6 appendCharacters:&UNICHAR_FIRST_STRONG_ISOLATE length:1];
      [v6 appendString:v4];
      [v6 appendCharacters:&UNICHAR_POP_DIRECTIONAL_ISOLATE length:1];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)insertCompleteNameBiDiControlCharacters:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [MEMORY[0x1E696AD60] stringWithCapacity:{objc_msgSend(v3, "length") + 1}];
    [v5 appendCharacters:&UNICHAR_LEFT_TO_RIGHT_MARK length:1];
    [v5 appendString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)showExtensionWithContextIfNeeded:(Context *)a3 asIfShowingAllExtensions:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 BOOLValue];
  }

  else
  {
    v8 = [objc_opt_class() showAllExtensions];
  }

  if ((v8 & 1) != 0 || ![(_LSDisplayNameConstructor *)self wantsHiddenExtension])
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v9 = ![(_LSDisplayNameConstructor *)self mayHideExtensionWithContextIfNeeded:a3];
  }

  return v9;
}

- (BOOL)isStringNaturallyRTL:(id)a3
{
  v3 = a3;
  v4 = v3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (v3)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55___LSDisplayNameConstructor_RTL__isStringNaturallyRTL___block_invoke;
    v7[3] = &unk_1E6A1BFC0;
    v7[4] = &v8;
    _LSDNCWithCharacters(v3, v7);
    v5 = *(v9 + 24);
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);

  return v5 & 1;
}

@end