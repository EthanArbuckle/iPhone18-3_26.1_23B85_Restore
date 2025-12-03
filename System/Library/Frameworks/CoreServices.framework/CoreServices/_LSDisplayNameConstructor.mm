@interface _LSDisplayNameConstructor
+ (NSString)suffixForRemoteXCTests;
+ (id)concatenateBaseName:(id)name andExtension:(id)extension;
+ (id)displayNameConstructorWithContext:(LSContext *)context node:(id)node error:(id *)error;
+ (id)displayNameConstructorWithContextIfNeeded:(Context *)needed bundle:(unsigned int)bundle bundleClass:(const unsigned int *)class node:(id)node preferredLocalizations:(id)localizations error:(id *)error;
+ (id)displayNameConstructorWithContextIfNeeded:(Context *)needed node:(id)node error:(id *)error;
+ (id)displayNameConstructorsWithContext:(LSContext *)context node:(id)node error:(id *)error;
+ (id)displayNameConstructorsWithContextIfNeeded:(Context *)needed bundle:(unsigned int)bundle bundleClass:(const unsigned int *)class node:(id)node error:(id *)error;
+ (id)displayNameConstructorsWithContextIfNeeded:(Context *)needed node:(id)node error:(id *)error;
+ (unsigned)prepareMimicWithPopulator:(id)populator error:(id *)error;
+ (void)getExtensionRange:(_NSRange *)range secondaryExtensionRange:(_NSRange *)extensionRange fromFileName:(id)name considerConfusables:(BOOL)confusables;
+ (void)setSuffixForRemoteXCTests:(id)tests;
- (BOOL)canSetExtensionHiddenWithContext:(LSContext *)context;
- (BOOL)isStringNaturallyRTL:(id)l;
- (BOOL)showExtensionWithContextIfNeeded:(Context *)needed asIfShowingAllExtensions:(id)extensions;
- (id)cleanSecondaryExtension:(id)extension;
- (id)combineBaseName:(id)name extension:(id)extension;
- (id)insertCompleteNameBiDiControlCharacters:(id)characters;
- (id)insertNameComponentBiDiControlCharacters:(id)characters;
- (id)transformBeforeCombining:(id)combining needsBiDiControlCharacters:(BOOL *)characters;
- (id)unlocalizedNameWithContext:(LSContext *)context;
- (id)unlocalizedNameWithContext:(LSContext *)context asIfShowingAllExtensions:(id)extensions;
- (id)unlocalizedNameWithContextIfNeeded:(Context *)needed asIfShowingAllExtensions:(id)extensions;
- (void)getTransformedBaseName:(id *)name extension:(id *)extension needsBiDiControlCharacters:(BOOL)characters[2];
- (void)getUnlocalizedBaseName:(id *)name extension:(id *)extension requiresAdditionalBiDiControlCharacters:(BOOL *)characters;
- (void)initContentBitsWithDisplayName:(id)name treatAsFSName:(BOOL)sName;
- (void)initNamePartsWithDisplayName:(id)name;
- (void)initNodeBitsWithContextIfNeeded:(Context *)needed node:(id)node isDirectory:(BOOL)directory bundleClass:(const unsigned int *)class;
@end

@implementation _LSDisplayNameConstructor

- (id)unlocalizedNameWithContext:(LSContext *)context
{
  contextCopy = context;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v3 = [(_LSDisplayNameConstructor *)self unlocalizedNameWithContextIfNeeded:&contextCopy asIfShowingAllExtensions:0];
  if (contextCopy && v9 == 1)
  {
    _LSContextDestroy(&contextCopy->db);
  }

  v4 = v8;
  contextCopy = 0;
  v8 = 0;

  v9 = 0;
  v5 = v10;
  v10 = 0;

  return v3;
}

- (id)unlocalizedNameWithContext:(LSContext *)context asIfShowingAllExtensions:(id)extensions
{
  extensionsCopy = extensions;
  contextCopy = context;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v7 = [(_LSDisplayNameConstructor *)self unlocalizedNameWithContextIfNeeded:&contextCopy asIfShowingAllExtensions:extensionsCopy];
  if (contextCopy && v13 == 1)
  {
    _LSContextDestroy(&contextCopy->db);
  }

  v8 = v12;
  contextCopy = 0;
  v12 = 0;

  v13 = 0;
  v9 = v14;
  v14 = 0;

  return v7;
}

- (id)unlocalizedNameWithContextIfNeeded:(Context *)needed asIfShowingAllExtensions:(id)extensions
{
  extensionsCopy = extensions;
  v7 = self->_baseName;
  v8 = self->_extension;
  if (!v8 || ![(_LSDisplayNameConstructor *)self showExtensionWithContextIfNeeded:needed asIfShowingAllExtensions:extensionsCopy]|| ([(_LSDisplayNameConstructor *)self combineBaseName:v7 extension:v8], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
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

- (void)getUnlocalizedBaseName:(id *)name extension:(id *)extension requiresAdditionalBiDiControlCharacters:(BOOL *)characters
{
  if (name)
  {
    if (extension)
    {
      goto LABEL_3;
    }

LABEL_6:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSDisplayNameConstructor.mm" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"outSafeExtension != NULL"}];

    if (characters)
    {
      goto LABEL_4;
    }

LABEL_7:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"LSDisplayNameConstructor.mm" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"outRequiresBiDi != NULL"}];

    goto LABEL_4;
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LSDisplayNameConstructor.mm" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"outSafeBaseName != NULL"}];

  if (!extension)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!characters)
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
  *name = v13;
  v16 = v14;
  *extension = v14;
  v17 = v24;
  v18 = HIBYTE(v24);

  *characters = (v17 | v18) & 1;
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

+ (void)setSuffixForRemoteXCTests:(id)tests
{
  testsCopy = tests;
  if ([__LSDefaultsGetSharedInstance() isInXCTestRigInsecure])
  {
    if (testsCopy)
    {
      setenv("LS_SUFFIX_FOR_REMOTE_XCTESTS", [testsCopy UTF8String], 1);
    }

    else
    {
      unsetenv("LS_SUFFIX_FOR_REMOTE_XCTESTS");
    }
  }
}

+ (id)displayNameConstructorWithContext:(LSContext *)context node:(id)node error:(id *)error
{
  nodeCopy = node;
  contextCopy = context;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v9 = [self displayNameConstructorWithContextIfNeeded:&contextCopy bundle:0 bundleClass:0 node:nodeCopy preferredLocalizations:0 error:error];
  if (contextCopy && v15 == 1)
  {
    _LSContextDestroy(&contextCopy->db);
  }

  v10 = v14;
  contextCopy = 0;
  v14 = 0;

  v15 = 0;
  v11 = v16;
  v16 = 0;

  return v9;
}

+ (id)displayNameConstructorsWithContext:(LSContext *)context node:(id)node error:(id *)error
{
  nodeCopy = node;
  contextCopy = context;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v9 = [self displayNameConstructorsWithContextIfNeeded:&contextCopy bundle:0 bundleClass:0 node:nodeCopy error:error];
  if (contextCopy && v15 == 1)
  {
    _LSContextDestroy(&contextCopy->db);
  }

  v10 = v14;
  contextCopy = 0;
  v14 = 0;

  v15 = 0;
  v11 = v16;
  v16 = 0;

  return v9;
}

+ (id)displayNameConstructorWithContextIfNeeded:(Context *)needed node:(id)node error:(id *)error
{
  v5 = [self displayNameConstructorWithContextIfNeeded:needed bundle:0 bundleClass:0 node:node preferredLocalizations:0 error:error];

  return v5;
}

+ (unsigned)prepareMimicWithPopulator:(id)populator error:(id *)error
{
  populatorCopy = populator;
  if (!_LSPrepareMimicForBundleLookup(populatorCopy, error))
  {
    goto LABEL_10;
  }

  v11[0] = sel_isBusyDirectory;
  v11[1] = sel_hasHiddenExtension;
  v11[2] = sel_isSideFault;
  v6 = populatorCopy;
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

    v8 = [v6 populateSimpleSelector:v11[v7++] error:error];
  }

  while (v7 != 3);

  if (v8)
  {
    v9 = [v6 populateValueForKey:*MEMORY[0x1E695DDE8] error:error];
  }

  else
  {
LABEL_10:
    v9 = 0;
  }

  return v9;
}

+ (id)displayNameConstructorWithContextIfNeeded:(Context *)needed bundle:(unsigned int)bundle bundleClass:(const unsigned int *)class node:(id)node preferredLocalizations:(id)localizations error:(id *)error
{
  v45[1] = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  nodeCopy = node;
  localizationsCopy = localizations;
  v14 = localizationsCopy != 0;
  if (bundle || ![nodeCopy isVolume])
  {
    v15 = 0;
    v16 = 0;
    v42 = 0;
    if (![nodeCopy isDirectory])
    {
      goto LABEL_8;
    }
  }

  else
  {
    v42 = 0;
    v15 = 1;
  }

  if ([nodeCopy isBusyDirectory])
  {
    goto LABEL_62;
  }

  v16 = 1;
  if (v15)
  {
    v17 = 0;
    v18 = 1;
    ls_preferredLocalizations = localizationsCopy;
    goto LABEL_23;
  }

LABEL_8:
  ls_preferredLocalizations = localizationsCopy;
  if (!localizationsCopy)
  {
    v20 = [nodeCopy URL];
    ls_preferredLocalizations = [v20 ls_preferredLocalizations];
  }

  v21 = _LSGetBRDisplayNameForContainerNode(nodeCopy, ls_preferredLocalizations);
  if (v21 || (_LSGetBRDisplayNameForSideFaultFileNode(nodeCopy), (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v22 = 0;
    v17 = v21;
LABEL_54:
    v33 = [[self alloc] initWithContextIfNeeded:needed node:nodeCopy isDirectory:v16 bundleClass:class desiredDisplayName:v17 treatAsFSName:v22];

    goto LABEL_55;
  }

  if (!class)
  {
    if (!_LSDNCGetBundleClass(&needed->_contextPointer, nodeCopy, v16, &v42, error))
    {
      goto LABEL_61;
    }

    class = &v42;
  }

  if (!*class)
  {
    goto LABEL_21;
  }

  v23 = +[_LSDServiceDomain defaultServiceDomain];
  v24 = LaunchServices::Database::Context::_get(needed, v23, 0);

  if (!v24)
  {
    if (!error)
    {
      goto LABEL_61;
    }

    goto LABEL_66;
  }

  if (bundleCopy || !_LSFindOrFindOrRegisterBundleNode(v24, nodeCopy, class, 0x2000000u, 0, &bundleCopy, 0))
  {
    v17 = _LSBundleGetLocalizedName(*v24, bundleCopy, 0, nodeCopy, ls_preferredLocalizations, 0);
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
  v38 = LaunchServices::Database::Context::_get(needed, v25, 0);

  if (v38)
  {
    v26 = [nodeCopy extensionWithError:error];
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
          v22 = [nodeCopy getResourceValue:&v41 forKey:*MEMORY[0x1E695DDE8] options:1 error:0];
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
        v17 = [nodeCopy nameWithError:error];
        if (v17)
        {
          v22 = 1;
          goto LABEL_54;
        }

        goto LABEL_61;
      }

      if (class && *class == 10)
      {
        v37 = [nodeCopy nameWithError:0];
        if (!v37 || ![(_LSDatabase *)v37 isEqual:@"myDocuments.cannedSearch"])
        {
          goto LABEL_39;
        }

        if (!v14)
        {
          v29 = [nodeCopy URL];
          ls_preferredLocalizations = [v29 ls_preferredLocalizations];
        }

        v30 = LaunchServices::CanonicalString::Find(*v38, v37, v28);
        if (v30)
        {
          LocalizedString = LaunchServices::CanonicalString::getLocalizedString(v30);
          v17 = LaunchServices::LocalizedString::localizeUnsafely(LocalizedString, *v38, ls_preferredLocalizations);

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

      if ([nodeCopy canIssueIO])
      {
        v17 = _LSBundleGetDisplayNameForNodeWithUnregisteredBundleType(v38, nodeCopy, v27, 0);
        goto LABEL_42;
      }

      if (error)
      {
        v44 = *MEMORY[0x1E696A278];
        v45[0] = @"node had unregistered bundle type but can't issue IO to localize its name";
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
        *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 5, v36, "+[_LSDisplayNameConstructor(ConstructForAnyFile) displayNameConstructorWithContextIfNeeded:bundle:bundleClass:node:preferredLocalizations:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/LSDisplayNameConstructor.mm", 444);
      }

LABEL_61:
      v33 = 0;
      goto LABEL_55;
    }

LABEL_62:
    v16 = 1;
    goto LABEL_52;
  }

  if (!error)
  {
    goto LABEL_61;
  }

LABEL_66:
  LaunchServices::Database::Context::error(&needed->_contextPointer);
  *error = v33 = 0;
LABEL_55:

  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

+ (id)displayNameConstructorsWithContextIfNeeded:(Context *)needed node:(id)node error:(id *)error
{
  v5 = [self displayNameConstructorsWithContextIfNeeded:needed bundle:0 bundleClass:0 node:node error:error];

  return v5;
}

+ (id)displayNameConstructorsWithContextIfNeeded:(Context *)needed bundle:(unsigned int)bundle bundleClass:(const unsigned int *)class node:(id)node error:(id *)error
{
  v62[1] = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  nodeCopy = node;
  isVolume = [nodeCopy isVolume];
  if (isVolume)
  {
    isDirectory = 1;
  }

  else
  {
    isDirectory = [nodeCopy isDirectory];
  }

  v59 = 0;
  v14 = _LSGetBRDisplayNameForSideFaultFileNode(nodeCopy);
  v58 = v14;

  if (!v14)
  {
    if (isVolume)
    {
      [nodeCopy getResourceValue:&v58 forKey:*MEMORY[0x1E695DDE8] options:1 error:error];
      v15 = v58;
      if (v15)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v17 = [nodeCopy nameWithError:error];
    v18 = v58;
    v58 = v17;

    v15 = v17;
LABEL_11:
    stringByDeletingPathExtension = [v15 stringByDeletingPathExtension];

    v15 = stringByDeletingPathExtension;
    if (stringByDeletingPathExtension)
    {
      goto LABEL_12;
    }

LABEL_9:
    v16 = 0;
    goto LABEL_53;
  }

  v15 = v14;
  if ((isVolume & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  selfCopy = self;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (class)
  {
    if (!isDirectory)
    {
      goto LABEL_46;
    }
  }

  else
  {
    if ((_LSDNCGetBundleClass(&needed->_contextPointer, nodeCopy, isDirectory, &v59, error) & 1) == 0)
    {
      goto LABEL_36;
    }

    class = &v59;
    if (!isDirectory)
    {
LABEL_46:
      v37 = [dictionary objectForKeyedSubscript:@"LSDefaultLocalizedValue"];
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
        v40 = [selfCopy alloc];
        v41 = [v40 initWithContextIfNeeded:needed node:nodeCopy isDirectory:isDirectory bundleClass:class desiredDisplayName:v58 treatAsFSName:1];
        [dictionary setObject:v41 forKeyedSubscript:@"LSDefaultLocalizedValue"];
      }

      v16 = [dictionary copy];
      goto LABEL_52;
    }
  }

  if ([nodeCopy isBusyDirectory])
  {
    goto LABEL_46;
  }

  v21 = +[_LSDServiceDomain defaultServiceDomain];
  v22 = LaunchServices::Database::Context::_get(needed, v21, 0);

  if (v22)
  {
    v47 = [nodeCopy extensionWithError:0];
    v23 = bundleCopy;
    if (bundleCopy || (_LSFindOrFindOrRegisterBundleNode(v22, nodeCopy, class, 0x2000000u, 0, &bundleCopy, 0), (v23 = bundleCopy) != 0))
    {
      v24 = _LSBundleGetLocalizedNameDictionary(*v22, v23, nodeCopy, v15);
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

    if (([v47 length] == 0) | isVolume & 1 || !_LSBundleNodeHasUnregisteredPersonality(v22, nodeCopy, v47, class))
    {
LABEL_43:
      v24 = 0;
      goto LABEL_44;
    }

    if ([nodeCopy canIssueIO])
    {
      if (*class != 10)
      {
        goto LABEL_38;
      }

      v26 = [nodeCopy nameWithError:0];
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
        if ([nodeCopy canIssueIO])
        {
          v32 = [nodeCopy bundleInfoDictionaryWithError:0];
          if (v32)
          {
            v33 = objc_opt_class();
            v34 = *MEMORY[0x1E695E120];
            v35 = XNSDictionaryObjectForKeyOfClass(v32, *MEMORY[0x1E695E120], v33);
            if (v35)
            {
              stringByDeletingPathExtension2 = [v15 stringByDeletingPathExtension];
              if ([v35 caseInsensitiveCompare:?])
              {
                v24 = 0;
              }

              else
              {
                v44 = _LSBundleGetLocalizer(*v22, 0, 0, nodeCopy);
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
      v53 = selfCopy;
      v51 = dictionary;
      neededCopy = needed;
      v57 = isDirectory;
      v52 = nodeCopy;
      classCopy = class;
      [v24 enumerateKeysAndObjectsUsingBlock:v49];

      goto LABEL_46;
    }

    if (error)
    {
      v61 = *MEMORY[0x1E696A278];
      v62[0] = @"node had unregistered personality but cannot do IO to localize its name";
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:&v61 count:1];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 5, v31, "+[_LSDisplayNameConstructor(ConstructForAnyFile) displayNameConstructorsWithContextIfNeeded:bundle:bundleClass:node:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/LSDisplayNameConstructor.mm", 628);
    }
  }

  else if (error)
  {
    LaunchServices::Database::Context::error(&needed->_contextPointer);
    *error = v16 = 0;
    goto LABEL_52;
  }

LABEL_36:
  v16 = 0;
LABEL_52:

LABEL_53:
  v42 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BOOL)canSetExtensionHiddenWithContext:(LSContext *)context
{
  if ((*(self + 32) & 4) != 0)
  {
    return 0;
  }

  v5 = self->_extension;
  if (v5)
  {
    contextCopy = context;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v6 = [(_LSDisplayNameConstructor *)self mayHideExtensionWithContextIfNeeded:&contextCopy];
    if (contextCopy && v12 == 1)
    {
      _LSContextDestroy(&contextCopy->db);
    }

    v7 = v11;
    contextCopy = 0;
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

+ (void)getExtensionRange:(_NSRange *)range secondaryExtensionRange:(_NSRange *)extensionRange fromFileName:(id)name considerConfusables:(BOOL)confusables
{
  _CFGetPathExtensionRangesFromPathComponent();
  if (range)
  {
    range->location = 0x7FFFFFFFFFFFFFFFLL;
    range->length = 0;
  }

  if (extensionRange)
  {
    extensionRange->location = 0x7FFFFFFFFFFFFFFFLL;
    extensionRange->length = 0;
  }
}

- (void)initNodeBitsWithContextIfNeeded:(Context *)needed node:(id)node isDirectory:(BOOL)directory bundleClass:(const unsigned int *)class
{
  directoryCopy = directory;
  nodeCopy = node;
  v10 = *(self + 32) & 0xFE | [nodeCopy hasHiddenExtension];
  *(self + 32) = v10;
  if (directoryCopy)
  {
    v11 = +[_LSDServiceDomain defaultServiceDomain];
    v12 = LaunchServices::Database::Context::_get(needed, v11, 0);

    v10 = *(self + 32) & 0xFD | (2 * (_LSNodeIsPackage(v12, nodeCopy, 0) == 0));
    *(self + 32) = v10;
  }

  if (class)
  {
    v13 = *class;
  }

  else
  {
    v13 = _LSGetBundleClassForNode(0, nodeCopy);
    v10 = *(self + 32);
  }

  *(self + 32) = v10 & 0xFB | (4 * (v13 == 2));
}

- (void)initContentBitsWithDisplayName:(id)name treatAsFSName:(BOOL)sName
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83___LSDisplayNameConstructor_Private__initContentBitsWithDisplayName_treatAsFSName___block_invoke;
  v4[3] = &unk_1E6A1BF70;
  sNameCopy = sName;
  v4[4] = self;
  _LSDNCWithInlineBuffer(name, v4);
}

- (void)initNamePartsWithDisplayName:(id)name
{
  nameCopy = name;
  v17 = xmmword_1817E8E30;
  [objc_opt_class() getExtensionRange:&v17 secondaryExtensionRange:0 fromFileName:nameCopy considerConfusables:0];
  v6 = [nameCopy copy];
  originalName = self->_originalName;
  self->_originalName = v6;

  v8 = v17;
  if (v17 == 0x7FFFFFFFFFFFFFFFLL || !*(&v17 + 1))
  {
    v15 = [nameCopy copy];
    baseName = self->_baseName;
    self->_baseName = v15;
  }

  else
  {
    if (!v17)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"LSDisplayNameConstructor.mm" lineNumber:1039 description:{@"Path extension allegedly starts at the beginning of the display name, which is invalid."}];

      v8 = v17;
    }

    v9 = [nameCopy substringToIndex:{v8 - 1, v17}];
    v10 = [v9 copy];
    v11 = self->_baseName;
    self->_baseName = v10;

    baseName = [nameCopy substringFromIndex:v17];
    v13 = [baseName copy];
    extension = self->_extension;
    self->_extension = v13;
  }
}

- (id)cleanSecondaryExtension:(id)extension
{
  extensionCopy = extension;
  if ([_LSDisplayNameConstructor(Private) cleanSecondaryExtension:]::once != -1)
  {
    [_LSDisplayNameConstructor(Private) cleanSecondaryExtension:];
  }

  v4 = extensionCopy;
  if ([extensionCopy rangeOfCharacterFromSet:-[_LSDisplayNameConstructor(Private) cleanSecondaryExtension:]::nonExtensionCharacters] != 0x7FFFFFFFFFFFFFFFLL)
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
    _LSDNCWithInlineBuffer(extensionCopy, v6);
    v4 = v8[5];

    _Block_object_dispose(&v7, 8);
  }

  return v4;
}

+ (id)concatenateBaseName:(id)name andExtension:(id)extension
{
  nameCopy = name;
  extensionCopy = extension;
  v9 = extensionCopy;
  if (nameCopy)
  {
    if (extensionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSDisplayNameConstructor.mm" lineNumber:1203 description:{@"Invalid parameter not satisfying: %@", @"baseName != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LSDisplayNameConstructor.mm" lineNumber:1204 description:{@"Invalid parameter not satisfying: %@", @"extension != nil"}];

LABEL_3:
  v10 = [v9 length];
  if (v10)
  {
    v11 = [nameCopy length];
    v12 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:v10 + v11 + 1];
    [v12 appendString:nameCopy];
    [v12 appendString:@"."];
    [v12 appendString:v9];
  }

  else
  {
    v12 = nameCopy;
  }

  return v12;
}

- (id)combineBaseName:(id)name extension:(id)extension
{
  nameCopy = name;
  extensionCopy = extension;
  v18 = 0;
  v16 = extensionCopy;
  v17 = nameCopy;
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

- (void)getTransformedBaseName:(id *)name extension:(id *)extension needsBiDiControlCharacters:(BOOL)characters[2]
{
  if (name)
  {
    if (extension)
    {
      goto LABEL_3;
    }

LABEL_11:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSDisplayNameConstructor.mm" lineNumber:1267 description:{@"Invalid parameter not satisfying: %@", @"ioExtension != NULL"}];

    if (name)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LSDisplayNameConstructor.mm" lineNumber:1266 description:{@"Invalid parameter not satisfying: %@", @"ioBaseName != NULL"}];

  if (!extension)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (name)
  {
    goto LABEL_4;
  }

LABEL_12:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LSDisplayNameConstructor.mm" lineNumber:1268 description:{@"Invalid parameter not satisfying: %@", @"ioBaseName != NULL"}];

LABEL_4:
  v14 = 0;
  if (*name)
  {
    *name = [(_LSDisplayNameConstructor *)self transformBeforeCombining:*name needsBiDiControlCharacters:&v14 + 1];
  }

  if (*extension)
  {
    *extension = [(_LSDisplayNameConstructor *)self transformBeforeCombining:*extension needsBiDiControlCharacters:&v14];
    v10 = v14;
  }

  else
  {
    v10 = 0;
  }

  *characters = HIBYTE(v14);
  characters[1] = v10;
}

- (id)transformBeforeCombining:(id)combining needsBiDiControlCharacters:(BOOL *)characters
{
  combiningCopy = combining;
  v7 = combiningCopy;
  if (combiningCopy)
  {
    if ((*(self + 32) & 8) != 0)
    {
      v8 = combiningCopy;
      if ((*(self + 32) & 0x20) != 0)
      {
        v9 = _LSDNCBalanceBiDiControlCharacters(combiningCopy);

        v8 = v9;
      }

      LOBYTE(combiningCopy) = [(_LSDisplayNameConstructor *)self isStringNaturallyRTL:v8];
    }

    else
    {
      LOBYTE(combiningCopy) = 0;
      v8 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  if (characters)
  {
    *characters = combiningCopy;
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

- (id)insertNameComponentBiDiControlCharacters:(id)characters
{
  charactersCopy = characters;
  if (charactersCopy)
  {
    v5 = [(_LSDisplayNameConstructor *)self isStringNaturallyRTL:charactersCopy];
    v6 = charactersCopy;
    if (v5)
    {
      v6 = [MEMORY[0x1E696AD60] stringWithCapacity:{objc_msgSend(charactersCopy, "length") + 2}];
      [v6 appendCharacters:&UNICHAR_FIRST_STRONG_ISOLATE length:1];
      [v6 appendString:charactersCopy];
      [v6 appendCharacters:&UNICHAR_POP_DIRECTIONAL_ISOLATE length:1];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)insertCompleteNameBiDiControlCharacters:(id)characters
{
  charactersCopy = characters;
  v4 = charactersCopy;
  if (charactersCopy)
  {
    v5 = [MEMORY[0x1E696AD60] stringWithCapacity:{objc_msgSend(charactersCopy, "length") + 1}];
    [v5 appendCharacters:&UNICHAR_LEFT_TO_RIGHT_MARK length:1];
    [v5 appendString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)showExtensionWithContextIfNeeded:(Context *)needed asIfShowingAllExtensions:(id)extensions
{
  extensionsCopy = extensions;
  v7 = extensionsCopy;
  if (extensionsCopy)
  {
    bOOLValue = [extensionsCopy BOOLValue];
  }

  else
  {
    bOOLValue = [objc_opt_class() showAllExtensions];
  }

  if ((bOOLValue & 1) != 0 || ![(_LSDisplayNameConstructor *)self wantsHiddenExtension])
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v9 = ![(_LSDisplayNameConstructor *)self mayHideExtensionWithContextIfNeeded:needed];
  }

  return v9;
}

- (BOOL)isStringNaturallyRTL:(id)l
{
  lCopy = l;
  v4 = lCopy;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (lCopy)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55___LSDisplayNameConstructor_RTL__isStringNaturallyRTL___block_invoke;
    v7[3] = &unk_1E6A1BFC0;
    v7[4] = &v8;
    _LSDNCWithCharacters(lCopy, v7);
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