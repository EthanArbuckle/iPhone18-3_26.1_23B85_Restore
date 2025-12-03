@interface _LSStringsFileContent
+ (id)IOQueue;
- (id)_queryLoadedPlist:(void *)plist forRawKey:(void *)key locale:;
- (id)debugDescription;
- (id)getStringsFileContentAfterLocTableLoadedInBundle:(void *)bundle forLocale:;
- (id)getStringsFileContentInBundle:(void *)bundle forLocale:(const __CFString *)locale withExtension:;
- (id)initWithStringsFile:(id)file;
- (id)stringForString:(void *)string forLocale:(uint64_t)locale fromBundle:(void *)bundle cacheLocalizations:;
- (id)subscriptLoctableWithLocale:(uint64_t)locale;
- (id)uncheckedObjectsForKeys:(void *)keys forLocaleCode:(uint64_t)code fromBundle:(void *)bundle cacheLocalizations:;
- (void)loadLoctableIfNecessaryFromBundle:(uint64_t)bundle;
- (void)prewarmAllLocalizationsWithBundle:(void *)bundle forLocalizations:;
- (void)stringsFileContentFromBundle:(void *)bundle forLocaleCode:(void *)code cacheLocalizations:;
@end

@implementation _LSStringsFileContent

- (id)initWithStringsFile:(id)file
{
  v3 = a2;
  if (file)
  {
    v10.receiver = file;
    v10.super_class = _LSStringsFileContent;
    file = objc_msgSendSuper2(&v10, sel_init);
    if (file)
    {
      v4 = [v3 copy];
      v5 = *(file + 1);
      *(file + 1) = v4;

      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = *(file + 2);
      *(file + 2) = v6;

      *(file + 32) = 0;
      if ([v3 isEqualToString:@"InfoPlist"])
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }

      *(file + 32) = *(file + 32) & 0xFD | v8;
    }
  }

  return file;
}

- (id)uncheckedObjectsForKeys:(void *)keys forLocaleCode:(uint64_t)code fromBundle:(void *)bundle cacheLocalizations:
{
  v64[5] = *MEMORY[0x1E69E9840];
  v42 = a2;
  keysCopy = keys;
  bundleCopy = bundle;
  v39 = bundleCopy;
  v40 = keysCopy;
  if (self)
  {
    v11 = [(_LSStringsFileContent *)self stringsFileContentFromBundle:code forLocaleCode:keysCopy cacheLocalizations:bundleCopy];
    v41 = v11;
    if (v11)
    {
      if (v11 == *(self + 24))
      {
        v12 = [(_LSStringsFileContent *)self subscriptLoctableWithLocale:keysCopy];
        v13 = v12;
        v14 = MEMORY[0x1E695E0F8];
        if (v12)
        {
          v14 = v12;
        }

        v15 = v14;

        if ((*(self + 32) & 2) != 0)
        {
          v16 = v42;
          v46 = v15;
          v44 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v16, "count")}];
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          obj = v16;
          v17 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
          if (v17)
          {
            v45 = *v58;
            do
            {
              v47 = v17;
              for (i = 0; i != v47; ++i)
              {
                if (*v58 != v45)
                {
                  objc_enumerationMutation(obj);
                }

                v19 = *(*(&v57 + 1) + 8 * i);
                v20 = v46;
                v54 = v19;
                if (enumerateProductPlatformKeySuffixes<NSString * {__strong},checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *,NSDictionary<NSString *,objc_object *> *)::$_0>(NSString *,checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *,NSDictionary<NSString *,objc_object *> *)::$_0 const&)::onceToken != -1)
                {
                  [_LSStringsFileContent uncheckedObjectsForKeys:forLocaleCode:fromBundle:cacheLocalizations:];
                }

                LOBYTE(v55) = 0;
                v56 = 0;
                context = objc_autoreleasePoolPush();
                v51 = [v54 stringByAppendingString:{enumerateProductPlatformKeySuffixes<NSString * {__strong}, checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *, NSDictionary<NSString *, objc_object *> *)::$_0>(NSString *, checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *, NSDictionary<NSString *, objc_object *> *)::$_0 const&)::productThenPlatformSuffix}];
                v52 = [v54 stringByAppendingString:{enumerateProductPlatformKeySuffixes<NSString * {__strong}, checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *, NSDictionary<NSString *, objc_object *> *)::$_0>(NSString *, checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *, NSDictionary<NSString *, objc_object *> *)::$_0 const&)::platformThenProductSuffix}];
                v21 = [v54 stringByAppendingString:_LSGetPlatformNameSuffix()];
                v22 = [v54 stringByAppendingString:_LSGetProductNameSuffix()];
                v48 = v51;
                v64[0] = v48;
                v23 = v52;
                v64[1] = v23;
                v24 = v21;
                v64[2] = v24;
                v50 = v22;
                v64[3] = v50;
                v25 = 0;
                v53 = v54;
                v64[4] = v53;
                do
                {
                  v26 = v64[v25];
                  v27 = [v20 objectForKey:v26];
                  v28 = v27;
                  if (v27)
                  {
                    v61 = v27;
                    v29 = 1;
                  }

                  else
                  {
                    v29 = 0;
                    LOBYTE(v61) = 0;
                  }

                  v62 = v29;

                  std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(&v55, &v61);
                  if (v62 == 1)
                  {
                  }

                  v30 = v56;

                  v32 = v25++ == 4;
                }

                while (((v30 | v32) & 1) == 0);
                for (j = 4; j != -1; --j)
                {
                }

                objc_autoreleasePoolPop(context);
                v34 = v56;
                v35 = v55;
                if (!v56)
                {
                  v35 = 0;
                }

                v36 = v35;
                if (v34 == 1)
                {
                }

                if (v36)
                {
                  [v44 setObject:v36 forKey:v53];
                }
              }

              v17 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
            }

            while (v17);
          }
        }

        else
        {
          v44 = v15;
        }
      }

      else
      {
        if (v42)
        {
          [v11 uncheckedObjectsForKeys:?];
        }

        else
        {
          [(_LSLazyPropertyList *)v11 propertyList];
        }
        v44 = ;
      }
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    v44 = 0;
  }

  v37 = *MEMORY[0x1E69E9840];

  return v44;
}

- (id)stringForString:(void *)string forLocale:(uint64_t)locale fromBundle:(void *)bundle cacheLocalizations:
{
  v9 = a2;
  stringCopy = string;
  bundleCopy = bundle;
  if (self)
  {
    v12 = [(_LSStringsFileContent *)self stringsFileContentFromBundle:locale forLocaleCode:stringCopy cacheLocalizations:bundleCopy];
    if (v12)
    {
      if (![__LSDefaultsGetSharedInstance() isRegionChina] || (objc_msgSend(v9, "stringByAppendingString:", @"#CH"), v13 = objc_claimAutoreleasedReturnValue(), -[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:](self, v12, v13, stringCopy), v14 = objc_claimAutoreleasedReturnValue(), v13, !v14))
      {
        v14 = [(_LSStringsFileContent *)self _queryLoadedPlist:v12 forRawKey:v9 locale:stringCopy];
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)IOQueue
{
  if (+[_LSStringsFileContent IOQueue]::once != -1)
  {
    +[_LSStringsFileContent IOQueue];
  }

  v3 = +[_LSStringsFileContent IOQueue]::result;

  return v3;
}

- (id)debugDescription
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__48;
  v17 = __Block_byref_object_dispose__48;
  v18 = 0;
  iOQueue = [objc_opt_class() IOQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41___LSStringsFileContent_debugDescription__block_invoke;
  block[3] = &unk_1E6A1AE60;
  block[4] = self;
  block[5] = &v13;
  dispatch_sync(iOQueue, block);

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v14[5] count];
  allKeys = [v14[5] allKeys];
  v9 = [allKeys componentsJoinedByString:{@", "}];
  v10 = [v4 stringWithFormat:@"<%@ %p> { %lu localizations loaded: %@ }", v6, self, v7, v9];

  _Block_object_dispose(&v13, 8);

  return v10;
}

- (id)getStringsFileContentInBundle:(void *)bundle forLocale:(const __CFString *)locale withExtension:
{
  v15 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  if (self)
  {
    v8 = CFBundleCopyResourceURLForLocalization(a2, *(self + 8), locale, 0, bundleCopy);
    if (v8)
    {
      v9 = _LSDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        lastPathComponent = [(__CFURL *)v8 lastPathComponent];
        [(_LSStringsFileContent *)lastPathComponent getStringsFileContentInBundle:bundleCopy forLocale:v14 withExtension:v9];
      }

      v11 = [_LSLazyPropertyList lazyPropertyListWithPropertyListURL:v8];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)getStringsFileContentAfterLocTableLoadedInBundle:(void *)bundle forLocale:
{
  bundleCopy = bundle;
  v6 = bundleCopy;
  if (!self)
  {
    v7 = 0;
    goto LABEL_8;
  }

  if (a2)
  {
    if (bundleCopy)
    {
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_LSStringsFileContent getStringsFileContentAfterLocTableLoadedInBundle:forLocale:]"];
    [currentHandler handleFailureInFunction:v11 file:@"LSStringLocalizer.mm" lineNumber:1175 description:{@"Invalid parameter not satisfying: %@", @"bundle != NULL"}];

    if (v6)
    {
      goto LABEL_4;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_LSStringsFileContent getStringsFileContentAfterLocTableLoadedInBundle:forLocale:]"];
  [currentHandler2 handleFailureInFunction:v13 file:@"LSStringLocalizer.mm" lineNumber:1176 description:{@"Invalid parameter not satisfying: %@", @"localeCode != nil"}];

LABEL_4:
  v7 = [(_LSStringsFileContent *)self getStringsFileContentInBundle:a2 forLocale:v6 withExtension:@"strings"];
  if (!v7)
  {
    v8 = *(self + 24);
    if (!v8)
    {
      v8 = _LSLazyPropertyListGetSharedEmptyPropertyList();
    }

    v7 = v8;
  }

LABEL_8:

  return v7;
}

- (void)stringsFileContentFromBundle:(void *)bundle forLocaleCode:(void *)code cacheLocalizations:
{
  bundleCopy = bundle;
  codeCopy = code;
  if (self)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__48;
    v34 = __Block_byref_object_dispose__48;
    v35 = 0;
    iOQueue = [objc_opt_class() IOQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87___LSStringsFileContent_stringsFileContentFromBundle_forLocaleCode_cacheLocalizations___block_invoke;
    block[3] = &unk_1E6A1B118;
    v29 = &v30;
    block[4] = self;
    v10 = bundleCopy;
    v28 = v10;
    dispatch_sync(iOQueue, block);

    v11 = v31[5];
    if (!v11)
    {
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __87___LSStringsFileContent_stringsFileContentFromBundle_forLocaleCode_cacheLocalizations___block_invoke_2;
      v23 = &unk_1E6A1E210;
      selfCopy = self;
      v26 = a2;
      v12 = v10;
      v25 = v12;
      v13 = MEMORY[0x1865D71B0](&v20);
      if ([codeCopy containsObject:{v12, v20, v21, v22, v23, selfCopy}])
      {
        v14 = self[2];
        iOQueue2 = [objc_opt_class() IOQueue];
        v16 = _LSLazyLoadObjectForKey(v14, v12, iOQueue2, v13);
        v17 = v31[5];
        v31[5] = v16;
      }

      else
      {
        v18 = v13[2](v13);
        iOQueue2 = v31[5];
        v31[5] = v18;
      }

      v11 = v31[5];
    }

    self = v11;

    _Block_object_dispose(&v30, 8);
  }

  return self;
}

- (void)prewarmAllLocalizationsWithBundle:(void *)bundle forLocalizations:
{
  bundleCopy = bundle;
  if (self && a2)
  {
    [(_LSStringsFileContent *)self loadLoctableIfNecessaryFromBundle:a2];
    iOQueue = [objc_opt_class() IOQueue];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __76___LSStringsFileContent_prewarmAllLocalizationsWithBundle_forLocalizations___block_invoke;
    v15 = &unk_1E6A1E238;
    v7 = bundleCopy;
    v16 = v7;
    selfCopy = self;
    v19 = a2;
    v8 = iOQueue;
    v18 = v8;
    v9 = MEMORY[0x1865D71B0](&v12);
    v10 = *(self + 24);
    if (v10)
    {
      [v10 prewarm];
    }

    else if (_LSContextIsCurrentThreadInitializing() || _LSDatabaseGetNoServerLock())
    {
      for (i = 0; i < [v7 count]; ++i)
      {
        v9[2](v9, i);
      }
    }

    else
    {
      dispatch_apply([v7 count], 0, v9);
    }
  }
}

- (id)subscriptLoctableWithLocale:(uint64_t)locale
{
  v35[5] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v29 = v3;
  if (locale)
  {
    v4 = v3;
    if (enumerateProductPlatformKeySuffixes<NSDictionary<NSString *,objc_object *> * {__strong},[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1>(NSString *,[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1 const&)::onceToken != -1)
    {
      [_LSStringsFileContent subscriptLoctableWithLocale:];
    }

    LOBYTE(v31) = 0;
    v32 = 0;
    v5 = objc_autoreleasePoolPush();
    v25 = [v4 stringByAppendingString:{enumerateProductPlatformKeySuffixes<NSDictionary<NSString *, objc_object *> * {__strong}, -[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1>(NSString *, -[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1 const&)::productThenPlatformSuffix}];
    v26 = [v4 stringByAppendingString:{enumerateProductPlatformKeySuffixes<NSDictionary<NSString *, objc_object *> * {__strong}, -[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1>(NSString *, -[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1 const&)::platformThenProductSuffix}];
    v6 = [v4 stringByAppendingString:_LSGetPlatformNameSuffix()];
    context = v5;
    v7 = [v4 stringByAppendingString:{_LSGetProductNameSuffix(), v6}];
    v27 = v25;
    v35[0] = v27;
    v8 = v26;
    v35[1] = v8;
    v9 = v6;
    v35[2] = v9;
    v30 = v7;
    v35[3] = v30;
    v10 = v4;
    v11 = 0;
    v35[4] = v10;
    do
    {
      v12 = v35[v11];
      v13 = [*(locale + 24) objectForKey:v12 ofClass:objc_opt_class()];
      v14 = v13;
      if (v13)
      {
        v33 = v13;
        v15 = 1;
      }

      else
      {
        v15 = 0;
        LOBYTE(v33) = 0;
      }

      v34 = v15;

      std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(&v31, &v33);
      if (v34 == 1)
      {
      }

      v16 = v32;

      v18 = v11++ == 4;
    }

    while (((v16 | v18) & 1) == 0);
    for (i = 4; i != -1; --i)
    {
    }

    objc_autoreleasePoolPop(context);
    v20 = v32;
    v21 = v31;
    if (!v32)
    {
      v21 = 0;
    }

    v22 = v21;
    if (v20 == 1)
    {
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)_queryLoadedPlist:(void *)plist forRawKey:(void *)key locale:
{
  v48[5] = *MEMORY[0x1E69E9840];
  v7 = a2;
  plistCopy = plist;
  keyCopy = key;
  if (!self)
  {
    goto LABEL_38;
  }

  if (self[3] != v7)
  {
    self = [v7 objectForKey:plistCopy ofClass:objc_opt_class()];
    goto LABEL_38;
  }

  v42 = keyCopy;
  v10 = [(_LSStringsFileContent *)self subscriptLoctableWithLocale:keyCopy];
  v11 = v10;
  if ((self[4] & 2) == 0)
  {
    v12 = objc_opt_class();
    v13 = [v11 objectForKey:plistCopy];
    self = v13;
    if (v12 && v13 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      self = 0;
    }

    goto LABEL_37;
  }

  v14 = v10;
  v43 = plistCopy;
  if (enumerateProductPlatformKeySuffixes<NSString * {__strong},[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2>(NSString *,[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2 const&)::onceToken != -1)
  {
    [_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:];
  }

  LOBYTE(v44) = 0;
  v45 = 0;
  context = objc_autoreleasePoolPush();
  v40 = v11;
  v33 = [v43 stringByAppendingString:{enumerateProductPlatformKeySuffixes<NSString * {__strong}, -[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2>(NSString *, -[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2 const&)::productThenPlatformSuffix}];
  v34 = [v43 stringByAppendingString:{enumerateProductPlatformKeySuffixes<NSString * {__strong}, -[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2>(NSString *, -[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2 const&)::platformThenProductSuffix}];
  v32 = [v43 stringByAppendingString:_LSGetPlatformNameSuffix()];
  v15 = [v43 stringByAppendingString:_LSGetProductNameSuffix()];
  v36 = v33;
  v48[0] = v36;
  v37 = v34;
  v48[1] = v37;
  v38 = v32;
  v48[2] = v38;
  v41 = v15;
  v48[3] = v41;
  v16 = 0;
  v35 = v43;
  v48[4] = v35;
  do
  {
    v17 = v48[v16];
    v18 = objc_opt_class();
    v19 = [v14 objectForKey:v17];
    v20 = v19;
    if (v18)
    {
      v21 = v19 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      if (v19)
      {
        goto LABEL_21;
      }
    }

    else
    {
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v23 = v20;
LABEL_21:
        v46 = v20;

        v24 = 1;
        goto LABEL_24;
      }
    }

    v24 = 0;
    LOBYTE(v46) = 0;
LABEL_24:
    v47 = v24;

    std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(&v44, &v46);
    if (v47 == 1)
    {
    }

    v25 = v45;

    v21 = v16++ == 4;
    v26 = v21;
  }

  while (((v25 | v26) & 1) == 0);
  for (i = 4; i != -1; --i)
  {
  }

  objc_autoreleasePoolPop(context);
  v28 = v45;
  v29 = v44;
  if (!v45)
  {
    v29 = 0;
  }

  self = v29;
  if (v28 == 1)
  {
  }

  v11 = v40;
LABEL_37:

  keyCopy = v42;
LABEL_38:

  v30 = *MEMORY[0x1E69E9840];

  return self;
}

- (void)loadLoctableIfNecessaryFromBundle:(uint64_t)bundle
{
  if (bundle)
  {
    if ((*(bundle + 32) & 1) == 0)
    {
      v3 = [(_LSStringsFileContent *)bundle getStringsFileContentInBundle:a2 forLocale:0 withExtension:@"loctable"];
      v4 = *(bundle + 24);
      *(bundle + 24) = v3;

      *(bundle + 32) |= 1u;
    }
  }
}

- (void)getStringsFileContentInBundle:(uint8_t *)buf forLocale:(os_log_t)log withExtension:.cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "reading %@ for %@", buf, 0x16u);
}

@end