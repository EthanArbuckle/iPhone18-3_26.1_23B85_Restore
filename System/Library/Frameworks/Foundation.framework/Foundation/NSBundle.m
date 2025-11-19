@interface NSBundle
+ (NSArray)URLsForResourcesWithExtension:(NSString *)ext subdirectory:(NSString *)subpath inBundleWithURL:(NSURL *)bundleURL;
+ (NSArray)allBundles;
+ (NSArray)allFrameworks;
+ (NSArray)pathsForResourcesOfType:(NSString *)ext inDirectory:(NSString *)bundlePath;
+ (NSArray)preferredLocalizationsFromArray:(NSArray *)localizationsArray;
+ (NSArray)preferredLocalizationsFromArray:(NSArray *)localizationsArray forPreferences:(NSArray *)preferencesArray;
+ (NSBundle)bundleForClass:(Class)aClass;
+ (NSBundle)bundleWithIdentifier:(NSString *)identifier;
+ (NSBundle)bundleWithPath:(NSString *)path;
+ (NSBundle)bundleWithURL:(NSURL *)url;
+ (NSBundle)mainBundle;
+ (NSString)pathForResource:(NSString *)name ofType:(NSString *)ext inDirectory:(NSString *)bundlePath;
+ (NSURL)URLForResource:(NSString *)name withExtension:(NSString *)ext subdirectory:(NSString *)subpath inBundleWithURL:(NSURL *)bundleURL;
+ (id)_bundleWithIdentifier:(id)a3 andLibraryName:(id)a4;
+ (id)_localizedStringsForKeys:(id)a3 forAllLocalizationsOfTable:(id)a4 inBundleWithURL:(id)a5;
+ (id)debugDescription;
+ (id)findBundleResourceURLsCallingMethod:(SEL)a3 baseURL:(id)a4 passingTest:(id)a5;
+ (id)findBundleResources:(id)a3 callingMethod:(SEL)a4 directory:(id)a5 languages:(id)a6 name:(id)a7 types:(id)a8 limit:(unint64_t)a9;
+ (id)loadedBundles;
- (BOOL)_searchForLocalizedString:(id)a3 foundKey:(id *)a4 foundTable:(id *)a5;
- (BOOL)isLoaded;
- (BOOL)loadAndReturnError:(NSError *)error;
- (BOOL)preflightAndReturnError:(NSError *)error;
- (BOOL)unload;
- (Class)classNamed:(NSString *)className;
- (Class)principalClass;
- (NSArray)URLsForResourcesWithExtension:(NSString *)ext subdirectory:(NSString *)subpath;
- (NSArray)URLsForResourcesWithExtension:(NSString *)ext subdirectory:(NSString *)subpath localization:(NSString *)localizationName;
- (NSArray)executableArchitectures;
- (NSArray)localizations;
- (NSArray)pathsForResourcesOfType:(NSString *)ext inDirectory:(NSString *)subpath;
- (NSArray)pathsForResourcesOfType:(NSString *)ext inDirectory:(NSString *)subpath forLocalization:(NSString *)localizationName;
- (NSArray)preferredLocalizations;
- (NSBundle)initWithPath:(NSString *)path;
- (NSBundle)initWithURL:(NSURL *)url;
- (NSDictionary)infoDictionary;
- (NSDictionary)localizedInfoDictionary;
- (NSString)builtInPlugInsPath;
- (NSString)bundleIdentifier;
- (NSString)bundlePath;
- (NSString)developmentLocalization;
- (NSString)executablePath;
- (NSString)localizedStringForKey:(NSString *)key value:(NSString *)value table:(NSString *)tableName;
- (NSString)pathForAuxiliaryExecutable:(NSString *)executableName;
- (NSString)pathForResource:(NSString *)name ofType:(NSString *)ext;
- (NSString)pathForResource:(NSString *)name ofType:(NSString *)ext inDirectory:(NSString *)subpath;
- (NSString)pathForResource:(NSString *)name ofType:(NSString *)ext inDirectory:(NSString *)subpath forLocalization:(NSString *)localizationName;
- (NSString)privateFrameworksPath;
- (NSString)resourcePath;
- (NSString)sharedFrameworksPath;
- (NSString)sharedSupportPath;
- (NSURL)URLForAuxiliaryExecutable:(NSString *)executableName;
- (NSURL)URLForResource:(NSString *)name withExtension:(NSString *)ext subdirectory:(NSString *)subpath;
- (NSURL)URLForResource:(NSString *)name withExtension:(NSString *)ext subdirectory:(NSString *)subpath localization:(NSString *)localizationName;
- (NSURL)appStoreReceiptURL;
- (NSURL)builtInPlugInsURL;
- (NSURL)bundleURL;
- (NSURL)executableURL;
- (NSURL)privateFrameworksURL;
- (NSURL)resourceURL;
- (NSURL)sharedFrameworksURL;
- (NSURL)sharedSupportURL;
- (__CFBundle)_cfBundle;
- (double)preservationPriorityForTag:(NSString *)tag;
- (id)_localizedStringForKey:(id)a3 value:(id)a4 table:(id)a5 localizations:(id)a6;
- (id)_localizedStringNoCacheNoMarkdownParsingForKey:(id)a3 value:(id)a4 table:(id)a5 localizations:(id)a6 actualTableURL:(id *)a7 formatSpecifierConfiguration:(id *)a8;
- (id)_localizedStringsForKeys:(id)a3 forAllLocalizationsOfTable:(id)a4;
- (id)_objectForUnlocalizedInfoDictionaryKey:(id)a3;
- (id)_wrappedBundleURL;
- (id)_wrapperContainerURL;
- (id)bundleLanguages;
- (id)description;
- (id)findBundleResourceURLsCallingMethod:(SEL)a3 passingTest:(id)a4;
- (id)localizedAttributedStringForKey:(id)a3 value:(id)a4 table:(id)a5 localization:(id)a6;
- (id)localizedStringForKey:(id)a3 value:(id)a4 table:(id)a5 localization:(id)a6;
- (id)localizedStringForKey:(id)a3 value:(id)a4 table:(id)a5 localizations:(id)a6;
- (id)localizedStringsForTable:(id)a3 localization:(id)a4;
- (id)objectForInfoDictionaryKey:(NSString *)key;
- (unint64_t)versionNumber;
- (void)dealloc;
- (void)invalidateResourceCache;
- (void)setPreservationPriority:(double)a3 forTag:(id)a4;
- (void)setPreservationPriority:(double)priority forTags:(NSSet *)tags;
@end

@implementation NSBundle

- (NSArray)localizations
{
  v2 = [(NSBundle *)self _cfBundle];
  if (v2)
  {
    v2 = CFBundleCopyBundleLocalizations(v2);
  }

  return v2;
}

- (NSArray)preferredLocalizations
{
  v2 = [(NSBundle *)self localizations];

  return [NSBundle preferredLocalizationsFromArray:v2];
}

- (__CFBundle)_cfBundle
{
  p_cfBundle = &self->_cfBundle;
  if (!atomic_load(&self->_cfBundle))
  {
    resolvedPath = self->_resolvedPath;
    if (resolvedPath)
    {
      v6 = CFURLCreateWithFileSystemPath(0, resolvedPath, kCFURLPOSIXPathStyle, 1u);
      v7 = CFBundleCreate(0, v6);
      if (v7)
      {
        v8 = 0;
        atomic_compare_exchange_strong(&self->_cfBundle, &v8, v7);
        if (v8)
        {
          CFRelease(v7);
        }
      }

      CFRelease(v6);
    }
  }

  return atomic_load(p_cfBundle);
}

+ (NSBundle)mainBundle
{
  os_unfair_lock_lock(&stru_1ED43F1A4);
  v3 = qword_1ED43F1A8;
  if (!v3)
  {
    os_unfair_lock_unlock(&stru_1ED43F1A4);
    MainBundle = CFBundleGetMainBundle();
    v5 = MainBundle;
    if (MainBundle && (v6 = CFBundleCopyBundleURL(MainBundle), v7 = CFURLCopyFileSystemPath(v6, kCFURLPOSIXPathStyle), CFRelease(v6), v7))
    {
      v3 = [[a1 alloc] initWithPath:v7];
      CFRelease(v7);
    }

    else
    {
      v3 = 0;
    }

    os_unfair_lock_lock(&stru_1ED43F1A4);
    if (qword_1ED43F1A8)
    {

      v3 = qword_1ED43F1A8;
    }

    else if (v3)
    {
      v8 = v5;
      atomic_store(v5, v3 + 2);
      atomic_fetch_or(v3 + 1, 0x10000uLL);
      atomic_fetch_or(v3 + 1, 0x4000000uLL);
      if (*(v3 + 6))
      {
        v9 = *(v3 + 5);
        *(v3 + 5) = [*(v3 + 6) copy];
      }

      v10 = +[__NSBundleTables bundleTables];
      [(__NSBundleTables *)v10 removeBundle:v3 forPath:0 type:0x20000];
      qword_1ED43F1A8 = v3;
    }
  }

  os_unfair_lock_unlock(&stru_1ED43F1A4);

  return v3;
}

- (NSString)bundleIdentifier
{
  v2 = [(NSBundle *)self infoDictionary];
  v3 = *MEMORY[0x1E695E4F0];

  return [(NSDictionary *)v2 objectForKey:v3];
}

- (NSDictionary)infoDictionary
{
  result = [(NSBundle *)self _cfBundle];
  if (result)
  {
    v3 = CFBundleGetInfoDictionary(result);

    return v3;
  }

  return result;
}

- (NSString)bundlePath
{
  v14 = *MEMORY[0x1E69E9840];
  if (_CFExecutableLinkedOnOrAfter() || (v8 = [self->_initialPath copy]) == 0)
  {
    v3 = [(NSBundle *)self _cfBundle];
    if (v3)
    {
      v4 = CFBundleCopyBundleURL(v3);
      if (v4)
      {
        v5 = v4;
        v6 = [(__CFURL *)v4 path];
        CFRelease(v5);
        return v6;
      }
    }

    v8 = [self->_resolvedPath copy];
    v9 = _NSOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 134218242;
      v11 = self;
      v12 = 2112;
      v13 = v8;
      _os_log_error_impl(&dword_18075C000, v9, OS_LOG_TYPE_ERROR, "This bundle %p does not have a valid path. Using backstop: %@", &v10, 0x16u);
    }
  }

  return v8;
}

- (NSString)executablePath
{
  v2 = [(NSBundle *)self _cfBundle];
  if (!v2)
  {
    return 0;
  }

  v3 = CFBundleCopyExecutableURL(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(__CFURL *)v3 path];
  CFRelease(v4);
  return v5;
}

- (void)dealloc
{
  v26 = *MEMORY[0x1E69E9840];
  p_flags = &self->_flags;
  v5 = atomic_load(&self->_flags);
  if ((v5 & 0x4000000) != 0)
  {
    [(NSBundle *)self unload];
  }

  v6 = atomic_load(p_flags);
  if ((v6 & 0xD0000) == 0x10000)
  {
    v7 = _NSOSLog();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      *buf = 138413058;
      v19 = _NSMethodExceptionProem(self, a2);
      v20 = 2048;
      v21 = self;
      v22 = 2112;
      v23 = [(NSBundle *)self bundleIdentifier];
      v24 = 2112;
      v25 = [(NSBundle *)self bundleURL];
      _os_log_error_impl(&dword_18075C000, v7, OS_LOG_TYPE_ERROR, "%@: attempt to deallocate static bundle - break on _NSBundleDeallocatingStaticBundle to debug. This bundle %p would have been overreleased, but will instead be preserved.\n\tBundle Identifier: %@\n\tBundle URL: %@", buf, 0x2Au);
    }

    _NSBundleDeallocatingImmortalBundle(v8, v9);
    if (NSZombieEnabled == 1)
    {
LABEL_18:
      __break(1u);
    }
  }

  else
  {
    v10 = atomic_load(&self->_flags);
    if ((v10 & 8) != 0)
    {
      v11 = _NSOSLog();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      if (v12)
      {
        *buf = 138413058;
        v19 = _NSMethodExceptionProem(self, a2);
        v20 = 2048;
        v21 = self;
        v22 = 2112;
        v23 = [(NSBundle *)self bundleIdentifier];
        v24 = 2112;
        v25 = [(NSBundle *)self bundleURL];
        _os_log_error_impl(&dword_18075C000, v11, OS_LOG_TYPE_ERROR, "%@: attempting to deallocate an immortal bundle - break on _NSBundleDeallocatingImmortalBundle to debug. This bundle %p has been overreleased.\n\tBundle Identifier: %@\n\tBundle URL: %@", buf, 0x2Au);
      }

      _NSBundleDeallocatingImmortalBundle(v12, v13);
      if (NSZombieEnabled == 1)
      {
        goto LABEL_18;
      }
    }

    if (atomic_load(&self->_cfBundle))
    {
      v15 = atomic_load(&self->_cfBundle);
    }

    attributedStringTable = self->_attributedStringTable;
    if (attributedStringTable)
    {
    }

    v17.receiver = self;
    v17.super_class = NSBundle;
    [(NSBundle *)&v17 dealloc];
  }
}

- (NSDictionary)localizedInfoDictionary
{
  result = [(NSBundle *)self _cfBundle];
  if (result)
  {
    v3 = CFBundleGetLocalInfoDictionary(result);

    return v3;
  }

  return result;
}

- (NSURL)bundleURL
{
  if (_CFExecutableLinkedOnOrAfter() || (v5 = [self->_initialPath copy]) == 0)
  {
    result = [(NSBundle *)self _cfBundle];
    if (!result)
    {
      return result;
    }

    v4 = CFBundleCopyBundleURL(result);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E695DFF8]) initFileURLWithPath:v5 isDirectory:1];
  }

  return v4;
}

- (NSURL)builtInPlugInsURL
{
  v2 = [(NSBundle *)self _cfBundle];
  if (v2)
  {
    v2 = CFBundleCopyBuiltInPlugInsURL(v2);
  }

  return v2;
}

- (NSString)resourcePath
{
  v2 = [(NSBundle *)self _cfBundle];
  if (!v2)
  {
    return 0;
  }

  v3 = CFBundleCopyResourcesDirectoryURL(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(__CFURL *)v3 path];
  CFRelease(v4);
  return v5;
}

- (NSURL)executableURL
{
  v2 = [(NSBundle *)self _cfBundle];
  if (v2)
  {
    v2 = CFBundleCopyExecutableURL(v2);
  }

  return v2;
}

+ (NSArray)allBundles
{
  v2 = +[__NSBundleTables bundleTables];

  return [(__NSBundleTables *)v2 allBundles];
}

- (NSString)privateFrameworksPath
{
  v2 = [(NSBundle *)self _cfBundle];
  if (!v2)
  {
    return 0;
  }

  v3 = CFBundleCopyPrivateFrameworksURL(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(__CFURL *)v3 path];
  CFRelease(v4);
  return v5;
}

- (BOOL)isLoaded
{
  v2 = atomic_load(&self->_flags);
  if ((v2 & 0x4000000) != 0)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(NSBundle *)self _cfBundleIfPresent];
    if (v3)
    {
      LOBYTE(v3) = CFBundleIsExecutableLoaded(v3) != 0;
    }
  }

  return v3;
}

- (NSURL)resourceURL
{
  v2 = [(NSBundle *)self _cfBundle];
  if (v2)
  {
    v2 = CFBundleCopyResourcesDirectoryURL(v2);
  }

  return v2;
}

- (Class)principalClass
{
  [(NSBundle *)self load];
  os_unfair_lock_lock(&self->_lock);
  if (self->_principalClass)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_principalClass = _NSBundleGetPrincipalClassFromInfoDict(self);
    os_unfair_lock_unlock(&self->_lock);
    _NSBundleInitializePrincipalClass(self->_principalClass);
  }

  return self->_principalClass;
}

- (NSURL)appStoreReceiptURL
{
  if (_iOSStyleReceipt_onceToken != -1)
  {
    dispatch_once(&_iOSStyleReceipt_onceToken, &__block_literal_global_275);
  }

  if (![(NSBundle *)self isEqual:+[NSBundle mainBundle]])
  {
    return 0;
  }

  v3 = objc_lookUpClass("LSBundleProxy");
  if (!v3)
  {
    return 0;
  }

  v4 = [(objc_class *)v3 bundleProxyForCurrentProcess];

  return [v4 appStoreReceiptURL];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(NSBundle *)self bundlePath];
  v5 = [(NSBundle *)self isLoaded];
  v6 = @"not yet ";
  if (v5)
  {
    v6 = &stru_1EEEFDF90;
  }

  return [NSString stringWithFormat:@"%@ <%@> (%@loaded)", v3, v4, v6];
}

+ (id)findBundleResources:(id)a3 callingMethod:(SEL)a4 directory:(id)a5 languages:(id)a6 name:(id)a7 types:(id)a8 limit:(unint64_t)a9
{
  if (a3 && (v11 = [a3 _cfBundle]) != 0)
  {
    if (a5)
    {
      v12 = CFURLCreateWithFileSystemPath(0, a5, kCFURLPOSIXPathStyle, 1u);
    }

    else
    {
      v12 = CFBundleCopyBundleURL(v11);
    }

    v13 = v12;
    if (!v12)
    {
      return v13;
    }

    if ([a8 count])
    {
      [a8 objectAtIndex:0];
    }

    LOBYTE(v18) = 0;
  }

  else
  {
    v13 = CFURLCreateWithFileSystemPath(0, a5, kCFURLPOSIXPathStyle, 1u);
    if (!v13)
    {
      return v13;
    }

    if ([a8 count])
    {
      [a8 objectAtIndex:0];
    }

    LOBYTE(v18) = 0;
  }

  Resources = _CFBundleCopyFindResources();
  CFRelease(v13);
  if (!Resources)
  {
    return 0;
  }

  v15 = [Resources count];
  v13 = [MEMORY[0x1E695DF70] array];
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      -[__CFURL addObject:](v13, "addObject:", [objc_msgSend(CFArrayGetValueAtIndex(Resources i)]);
    }
  }

  CFRelease(Resources);
  return v13;
}

- (id)findBundleResourceURLsCallingMethod:(SEL)a3 passingTest:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  [(NSBundle *)self _cfBundle];
  v13 = a4;
  LOBYTE(v12) = 0;
  Resources = _CFBundleCopyFindResources();
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(Resources, "count", v12, v13)}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [Resources countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(Resources);
        }

        [v6 addObject:{objc_msgSend(*(*(&v15 + 1) + 8 * v10++), "absoluteURL")}];
      }

      while (v8 != v10);
      v8 = [Resources countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v8);
  }

  return v6;
}

+ (id)findBundleResourceURLsCallingMethod:(SEL)a3 baseURL:(id)a4 passingTest:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  LOBYTE(v12) = 0;
  Resources = _CFBundleCopyFindResources();
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(Resources, "count", v12, a5)}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [Resources countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(Resources);
        }

        [v6 addObject:{objc_msgSend(*(*(&v15 + 1) + 8 * v10++), "absoluteURL")}];
      }

      while (v8 != v10);
      v8 = [Resources countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v8);
  }

  return v6;
}

+ (NSString)pathForResource:(NSString *)name ofType:(NSString *)ext inDirectory:(NSString *)bundlePath
{
  if (name && [(NSString *)name length])
  {
    if (!bundlePath)
    {
      return 0;
    }
  }

  else
  {
    if (!ext)
    {
      return 0;
    }

    v8 = [(NSString *)ext length];
    if (!bundlePath || !v8)
    {
      return 0;
    }
  }

  v9 = CFURLCreateWithFileSystemPath(0, bundlePath, kCFURLPOSIXPathStyle, 1u);
  if (v9)
  {
    v10 = v9;
    v11 = CFBundleCopyResourceURLInDirectory(v9, name, ext, 0);
    CFRelease(v10);
    if (v11)
    {
      v12 = [(__CFURL *)v11 path];
      CFRelease(v11);
      return v12;
    }
  }

  return 0;
}

+ (NSURL)URLForResource:(NSString *)name withExtension:(NSString *)ext subdirectory:(NSString *)subpath inBundleWithURL:(NSURL *)bundleURL
{
  if ((!name || ![(NSString *)name length]) && (!ext || ![(NSString *)ext length]))
  {
    return 0;
  }

  v10 = CFBundleCopyResourceURLInDirectory(bundleURL, name, ext, subpath);

  return v10;
}

+ (NSArray)pathsForResourcesOfType:(NSString *)ext inDirectory:(NSString *)bundlePath
{
  if (!bundlePath)
  {
    return 0;
  }

  v5 = CFURLCreateWithFileSystemPath(0, bundlePath, kCFURLPOSIXPathStyle, 1u);
  v6 = v5;
  if (!v5)
  {
    return v6;
  }

  v7 = CFBundleCopyResourceURLsOfTypeInDirectory(v5, ext, 0);
  CFRelease(v6);
  if (!v7)
  {
    return 0;
  }

  v8 = [(__CFArray *)v7 count];
  v6 = [MEMORY[0x1E695DF70] array];
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      -[NSArray addObject:](v6, "addObject:", [CFArrayGetValueAtIndex(v7 i)]);
    }
  }

  CFRelease(v7);
  return v6;
}

+ (NSArray)URLsForResourcesWithExtension:(NSString *)ext subdirectory:(NSString *)subpath inBundleWithURL:(NSURL *)bundleURL
{
  v5 = CFBundleCopyResourceURLsOfTypeInDirectory(bundleURL, ext, subpath);

  return v5;
}

- (NSString)pathForResource:(NSString *)name ofType:(NSString *)ext inDirectory:(NSString *)subpath forLocalization:(NSString *)localizationName
{
  v6 = [(NSBundle *)self URLForResource:name withExtension:ext subdirectory:subpath localization:localizationName];

  return [(NSURL *)v6 path];
}

- (NSURL)URLForResource:(NSString *)name withExtension:(NSString *)ext subdirectory:(NSString *)subpath localization:(NSString *)localizationName
{
  if ((!name || ![(NSString *)name length]) && (!ext || ![(NSString *)ext length]))
  {
    return 0;
  }

  v11 = [(NSBundle *)self _cfBundle];
  if (v11)
  {
    v11 = CFBundleCopyResourceURLForLocalization(v11, name, ext, subpath, localizationName);
  }

  return v11;
}

- (NSString)pathForResource:(NSString *)name ofType:(NSString *)ext inDirectory:(NSString *)subpath
{
  v5 = [(NSBundle *)self URLForResource:name withExtension:ext subdirectory:subpath];

  return [(NSURL *)v5 path];
}

- (NSURL)URLForResource:(NSString *)name withExtension:(NSString *)ext subdirectory:(NSString *)subpath
{
  if ((!name || ![(NSString *)name length]) && (!ext || ![(NSString *)ext length]))
  {
    return 0;
  }

  v9 = [(NSBundle *)self _cfBundle];
  if (v9)
  {
    v9 = CFBundleCopyResourceURL(v9, name, ext, subpath);
  }

  return v9;
}

- (NSString)pathForResource:(NSString *)name ofType:(NSString *)ext
{
  v4 = [(NSURL *)[(NSBundle *)self URLForResource:name withExtension:ext] path];
  if (pathForResource_ofType__onceToken != -1)
  {
    dispatch_once(&pathForResource_ofType__onceToken, &__block_literal_global_4);
  }

  return v4;
}

- (NSArray)pathsForResourcesOfType:(NSString *)ext inDirectory:(NSString *)subpath forLocalization:(NSString *)localizationName
{
  v8 = [(NSBundle *)self _cfBundle];
  if (!v8)
  {
    return 0;
  }

  v9 = CFBundleCopyResourceURLsOfTypeForLocalization(v8, ext, subpath, localizationName);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = [(__CFArray *)v9 count];
  v12 = [MEMORY[0x1E695DF70] array];
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      -[NSArray addObject:](v12, "addObject:", [CFArrayGetValueAtIndex(v10 i)]);
    }
  }

  CFRelease(v10);
  return v12;
}

- (NSArray)URLsForResourcesWithExtension:(NSString *)ext subdirectory:(NSString *)subpath localization:(NSString *)localizationName
{
  v8 = [(NSBundle *)self _cfBundle];
  if (v8)
  {
    v8 = CFBundleCopyResourceURLsOfTypeForLocalization(v8, ext, subpath, localizationName);
  }

  return v8;
}

- (NSArray)pathsForResourcesOfType:(NSString *)ext inDirectory:(NSString *)subpath
{
  v6 = [(NSBundle *)self _cfBundle];
  if (!v6)
  {
    return 0;
  }

  v7 = CFBundleCopyResourceURLsOfType(v6, ext, subpath);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [(__CFArray *)v7 count];
  v10 = [MEMORY[0x1E695DF70] array];
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      -[NSArray addObject:](v10, "addObject:", [CFArrayGetValueAtIndex(v8 i)]);
    }
  }

  CFRelease(v8);
  return v10;
}

- (NSArray)URLsForResourcesWithExtension:(NSString *)ext subdirectory:(NSString *)subpath
{
  v6 = [(NSBundle *)self _cfBundle];
  if (v6)
  {
    v6 = CFBundleCopyResourceURLsOfType(v6, ext, subpath);
  }

  return v6;
}

- (NSString)localizedStringForKey:(NSString *)key value:(NSString *)value table:(NSString *)tableName
{
  v8 = [(NSBundle *)self _cfBundle];
  if (v8)
  {
    v8 = CFBundleCopyLocalizedString(v8, key, value, tableName);
  }

  return v8;
}

- (id)localizedStringForKey:(id)a3 value:(id)a4 table:(id)a5 localization:(id)a6
{
  v6 = [(NSBundle *)self _cfBundle];
  if (v6)
  {
    v6 = CFBundleCopyLocalizedStringForLocalization();
  }

  return v6;
}

- (id)localizedStringForKey:(id)a3 value:(id)a4 table:(id)a5 localizations:(id)a6
{
  v6 = [(NSBundle *)self _cfBundle];
  if (v6)
  {
    v6 = CFBundleCopyLocalizedStringForLocalizations();
  }

  return v6;
}

- (id)_localizedStringForKey:(id)a3 value:(id)a4 table:(id)a5 localizations:(id)a6
{
  v6 = [(NSBundle *)self _cfBundle];
  if (v6)
  {
    v6 = _CFBundleCopyLocalizedStringForLocalizations();
  }

  return v6;
}

- (id)localizedStringsForTable:(id)a3 localization:(id)a4
{
  v4 = [(NSBundle *)self _cfBundle];
  if (v4)
  {
    v4 = CFBundleCopyLocalizedStringTableForLocalization();
  }

  return v4;
}

- (id)_localizedStringsForKeys:(id)a3 forAllLocalizationsOfTable:(id)a4
{
  v4 = [(NSBundle *)self _cfBundle];
  if (v4)
  {
    v4 = _CFBundleCopyFilteredLocalizedStringsForAllLocalizations();
  }

  return v4;
}

+ (id)_localizedStringsForKeys:(id)a3 forAllLocalizationsOfTable:(id)a4 inBundleWithURL:(id)a5
{
  v5 = _CFBundleCopyFilteredLocalizedStringsForAllLocalizationsForURL();

  return v5;
}

- (BOOL)_searchForLocalizedString:(id)a3 foundKey:(id *)a4 foundTable:(id *)a5
{
  if (![(NSBundle *)self _cfBundle])
  {
    return 0;
  }

  v7 = _CFBundleSearchForLocalizedString();
  v8 = v7;
  v9 = v7 != 0;
  if (a4 && v7)
  {
    *a4 = 0;
  }

  if (a5 && v8)
  {
    *a5 = 0;
  }

  return v9;
}

- (BOOL)loadAndReturnError:(NSError *)error
{
  v50 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v5 = atomic_load(&self->_flags);
  if ((v5 & 0x4000000) != 0)
  {
    os_unfair_lock_unlock(&self->_lock);
    return 1;
  }

  v6 = atomic_load(byte_1ED43F1A1);
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF70] array];
  }

  else
  {
    v7 = 0;
  }

  v9 = objc_autoreleasePoolPush();
  atomic_load(&self->_flags);
  v10 = [(NSBundle *)self _cfBundle];
  if (!v10)
  {
    v24 = _NSOSLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = [(NSBundle *)self bundleURL];
      _os_log_error_impl(&dword_18075C000, v24, OS_LOG_TYPE_ERROR, "NSBundle %@ loading failed because the file does not exist", buf, 0xCu);
      if (!error)
      {
LABEL_33:
        if ((_MergedGlobals_21 & 1) == 0)
        {
          goto LABEL_55;
        }

LABEL_34:
        v25 = _NSOSLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v33 = [(NSBundle *)self bundleURL];
          *buf = 138412290;
          *&buf[4] = v33;
          _os_log_error_impl(&dword_18075C000, v25, OS_LOG_TYPE_ERROR, "NSBundle %@ loading failed because bundle loading is disabled", buf, 0xCu);
          if (!error)
          {
            goto LABEL_55;
          }
        }

        else if (!error)
        {
          goto LABEL_55;
        }

        CFGetAllocator(v10);
        *error = _CFBundleCreateError();
        goto LABEL_55;
      }
    }

    else if (!error)
    {
      goto LABEL_33;
    }

    *error = [[NSError alloc] initWithDomain:@"NSCocoaErrorDomain" code:4 userInfo:0];
    goto LABEL_33;
  }

  if (_MergedGlobals_21 == 1)
  {
    goto LABEL_34;
  }

  if (qword_1ED43F1C0 != -1)
  {
    dispatch_once(&qword_1ED43F1C0, &__block_literal_global_258);
  }

  _CFSetTSD();
  if (_CFBundleLoadExecutableAndReturnError())
  {
    v11 = _CFGetTSD();
    if (v11 >= 2 && *v11)
    {
      v12 = v11 + 1;
      do
      {
        v13 = dyld_image_path_containing_address();
        v14 = *(v12 - 1);
        v15 = strlen(v13);
        v16 = _NSFileSystemRepresentationString(v13, v15);
        v17 = _NSFrameworkPathFromLibraryPath(v16);
        if (v17 || (v17 = _NSBundlePathFromExecutablePath(v16)) != 0)
        {
          v18 = [[NSBundle alloc] initWithPath:v17];
          v19 = v18;
          if (v18)
          {
            v20 = atomic_load(&v18->_flags);
            if ((v20 & 0xF0000) == 0x40000)
            {
              atomic_fetch_or(&v18->_flags, 0x4000000uLL);
            }

            if (v18 != self)
            {
              os_unfair_lock_lock(&v18->_lock);
            }

            if (!v19->_firstClassName)
            {
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3052000000;
              v47 = __Block_byref_object_copy__0;
              v48 = __Block_byref_object_dispose__0;
              v49 = 0;
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = ___NSBundleAddClassesInImage_block_invoke;
              block[3] = &unk_1E69F2658;
              block[4] = buf;
              objc_enumerateClasses(v14, 0, 0, 0, block);
              v19->_firstClassName = *(*&buf[8] + 40);
              _Block_object_dispose(buf, 8);
            }

            if (v19 != self)
            {
              os_unfair_lock_unlock(&v19->_lock);
            }

            if (v7)
            {
              v21 = [[_NSBundleDidLoadNotificationPayloadArray alloc] initWithHeader:v14];
              v44 = @"NSLoadedClasses";
              v45 = v21;
              [v7 addObject:{+[NSNotification notificationWithName:object:userInfo:](NSNotification, "notificationWithName:object:userInfo:", @"NSBundleDidLoadNotification", v19, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v45, &v44, 1))}];
            }
          }
        }
      }

      while (*v12++);
    }

    v23 = 1;
  }

  else
  {
    if (error)
    {
      *error = 0;
      v26 = _NSOSLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v36 = [(NSBundle *)self bundleURL];
        v37 = *error;
        *buf = 138412546;
        *&buf[4] = v36;
        *&buf[12] = 2112;
        *&buf[14] = v37;
        _os_log_error_impl(&dword_18075C000, v26, OS_LOG_TYPE_ERROR, "NSBundle %@ loading failed because of an error %@", buf, 0x16u);
      }
    }

    v23 = 0;
  }

  v27 = _CFGetTSD();
  _CFSetTSD();
  if (v27 >= 2)
  {
    free(v27);
    if (v23)
    {
      goto LABEL_45;
    }

LABEL_55:
    objc_autoreleasePoolPop(v9);
    if (error)
    {
      v34 = *error;
    }

    PrincipalClassFromInfoDict = _NSBundleGetPrincipalClassFromInfoDict(self);
    os_unfair_lock_unlock(&self->_lock);
    _NSBundleInitializePrincipalClass(PrincipalClassFromInfoDict);
    return 0;
  }

  if (!v23)
  {
    goto LABEL_55;
  }

LABEL_45:
  atomic_fetch_or(&self->_flags, 0x4000000uLL);
  objc_autoreleasePoolPop(v9);
  v28 = _NSBundleGetPrincipalClassFromInfoDict(self);
  os_unfair_lock_unlock(&self->_lock);
  _NSBundleInitializePrincipalClass(v28);
  if (![v7 count])
  {
    return 1;
  }

  v29 = +[NSNotificationCenter defaultCenter];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v30 = [v7 countByEnumeratingWithState:&v40 objects:v39 count:16];
  if (!v30)
  {
    return 1;
  }

  v31 = *v41;
  do
  {
    for (i = 0; i != v30; ++i)
    {
      if (*v41 != v31)
      {
        objc_enumerationMutation(v7);
      }

      [(NSNotificationCenter *)v29 postNotification:*(*(&v40 + 1) + 8 * i)];
    }

    v30 = [v7 countByEnumeratingWithState:&v40 objects:v39 count:16];
    result = 1;
  }

  while (v30);
  return result;
}

- (BOOL)unload
{
  v3 = [(NSBundle *)self _cfBundleIfPresent];
  if (v3)
  {
    v4 = v3;
    CFBundleUnloadExecutable(v3);
    if (CFBundleIsExecutableLoaded(v4))
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v5 = atomic_load(&self->_flags);
      if ((v5 & 0x4000000) != 0)
      {
        atomic_fetch_and(&self->_flags, 0xFFFFFFFFF9FFFFFFLL);
      }

      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

+ (NSBundle)bundleWithPath:(NSString *)path
{
  v3 = [objc_allocWithZone(a1) initWithPath:path];

  return v3;
}

- (NSBundle)initWithURL:(NSURL *)url
{
  if (!url)
  {
    v8 = [NSString stringWithFormat:@"%@: nil URL argument", _NSMethodExceptionProem(self, a2)];
    goto LABEL_8;
  }

  if (![(NSURL *)url isFileURL])
  {
    v8 = [NSString stringWithFormat:@"%@: non-file URL argument", _NSMethodExceptionProem(self, a2)];
LABEL_8:
    v9 = v8;

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v9 userInfo:0]);
  }

  v6 = [(NSURL *)url path];

  return [(NSBundle *)self initWithPath:v6];
}

+ (NSBundle)bundleWithURL:(NSURL *)url
{
  v3 = [objc_allocWithZone(a1) initWithURL:url];

  return v3;
}

+ (NSBundle)bundleWithIdentifier:(NSString *)identifier
{
  if (!identifier)
  {
    return 0;
  }

  v4 = MEMORY[0x1865CF100](identifier);
  if (!v4)
  {
    return 0;
  }

  v5 = CFBundleCopyBundleURL(v4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [(__CFURL *)v5 path];
  if (v7)
  {
    v8 = [a1 bundleWithPath:v7];
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v6);
  return v8;
}

+ (id)_bundleWithIdentifier:(id)a3 andLibraryName:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v6 = +[NSBundle mainBundle];
  if (![(NSString *)[(NSBundle *)v6 bundleIdentifier] isEqualToString:a3])
  {
    BundleWithIdentifierAndLibraryName = _CFBundleGetBundleWithIdentifierAndLibraryName();
    if (BundleWithIdentifierAndLibraryName)
    {
      v8 = CFBundleCopyBundleURL(BundleWithIdentifierAndLibraryName);
      if (v8)
      {
        v9 = v8;
        v10 = [a1 bundleWithURL:v8];
        CFRelease(v9);
        return v10;
      }
    }

    return 0;
  }

  return v6;
}

- (NSBundle)initWithPath:(NSString *)path
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = normalizedPath(path);
  v6 = atomic_load(&self->_flags);
  if ((v6 & 0x10000000) != 0 || (v7 = +[__NSBundleTables bundleTables], (v8 = [(__NSBundleTables *)v7 bundleForPath:v5]) == 0))
  {
    v10 = atomic_load(&self->_flags);
    v11 = [v5 _stringByResolvingSymlinksInPathUsingCache:(v10 & 0x10000000) == 0];
    if (!v11 || (v12 = v11, [v11 isEqual:&stru_1EEEFDF90]))
    {
      v13 = _NSOSLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = path;
        _os_log_error_impl(&dword_18075C000, v13, OS_LOG_TYPE_ERROR, "NSBundle %@ initWithPath failed because the resolved path is empty or nil", buf, 0xCu);
      }

      return 0;
    }

    p_flags = &self->_flags;
    v15 = atomic_load(&self->_flags);
    if ((v15 & 0x10000000) == 0)
    {
      v16 = +[__NSBundleTables bundleTables];
      v17 = [(__NSBundleTables *)v16 bundleForPath:v12];
      if (v17)
      {
        goto LABEL_23;
      }

      memset(&v28, 0, sizeof(v28));
      if (![v12 getFileSystemRepresentation:buf maxLength:1024] || stat(buf, &v28))
      {
        goto LABEL_23;
      }

      if (access(buf, 4))
      {
        getpid();
        sandbox_check();
LABEL_23:

        return v17;
      }

      if ((v28.st_mode & 0xF000) != 0x4000)
      {
        goto LABEL_23;
      }
    }

    v18 = [v12 hasSuffix:@".framework"];
    v19 = 0x20000;
    if (v18)
    {
      v19 = 0x40000;
    }

    atomic_fetch_or(p_flags, v19);
    self->_initialPath = [v5 copy];
    self->_resolvedPath = [v12 copy];
    self->_lock._os_unfair_lock_opaque = 0;
    v20 = atomic_load(p_flags);
    if ((v20 & 0x10000000) != 0)
    {
      v26 = CFURLCreateWithFileSystemPath(0, self->_resolvedPath, kCFURLPOSIXPathStyle, 1u);
      atomic_store(_CFBundleCreateUnique(), &self->_cfBundle);
      CFRelease(v26);
      return self;
    }

    v21 = +[__NSBundleTables bundleTables];
    v22 = atomic_load(&self->_flags);
    v23 = [(__NSBundleTables *)v21 addBundleIfNeeded:v12 forPath:v22 & 0xF0000 withType:1 isImmortal:?];
    if (!v23)
    {
      atomic_fetch_or(&self->_flags, 8uLL);
      return self;
    }

    v24 = v23;

    return v24;
  }

  v27 = v8;

  return v27;
}

- (id)_wrappedBundleURL
{
  v2 = [(NSBundle *)self _cfBundle];
  if (v2)
  {
    v2 = _CFBundleCopyWrappedBundleURL();
  }

  return v2;
}

- (id)_wrapperContainerURL
{
  v2 = [(NSBundle *)self _cfBundle];
  if (v2)
  {
    v2 = _CFBundleCopyWrapperContainerURL();
  }

  return v2;
}

- (NSString)pathForAuxiliaryExecutable:(NSString *)executableName
{
  v4 = [(NSBundle *)self _cfBundle];
  if (!executableName)
  {
    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = CFBundleCopyAuxiliaryExecutableURL(v4, executableName);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [(__CFURL *)v5 path];
  CFRelease(v6);
  return v7;
}

- (NSURL)URLForAuxiliaryExecutable:(NSString *)executableName
{
  v4 = [(NSBundle *)self _cfBundle];
  v5 = 0;
  if (executableName && v4)
  {
    v5 = CFBundleCopyAuxiliaryExecutableURL(v4, executableName);
  }

  return v5;
}

- (NSURL)privateFrameworksURL
{
  v2 = [(NSBundle *)self _cfBundle];
  if (v2)
  {
    v2 = CFBundleCopyPrivateFrameworksURL(v2);
  }

  return v2;
}

- (NSString)sharedFrameworksPath
{
  v2 = [(NSBundle *)self _cfBundle];
  if (!v2)
  {
    return 0;
  }

  v3 = CFBundleCopySharedFrameworksURL(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(__CFURL *)v3 path];
  CFRelease(v4);
  return v5;
}

- (NSURL)sharedFrameworksURL
{
  v2 = [(NSBundle *)self _cfBundle];
  if (v2)
  {
    v2 = CFBundleCopySharedFrameworksURL(v2);
  }

  return v2;
}

- (NSString)sharedSupportPath
{
  v2 = [(NSBundle *)self _cfBundle];
  if (!v2)
  {
    return 0;
  }

  v3 = CFBundleCopySharedSupportURL(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(__CFURL *)v3 path];
  CFRelease(v4);
  return v5;
}

- (NSURL)sharedSupportURL
{
  v2 = [(NSBundle *)self _cfBundle];
  if (v2)
  {
    v2 = CFBundleCopySharedSupportURL(v2);
  }

  return v2;
}

- (NSString)builtInPlugInsPath
{
  v2 = [(NSBundle *)self _cfBundle];
  if (!v2)
  {
    return 0;
  }

  v3 = CFBundleCopyBuiltInPlugInsURL(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(__CFURL *)v3 path];
  CFRelease(v4);
  return v5;
}

- (unint64_t)versionNumber
{
  result = [(NSBundle *)self _cfBundle];
  if (result)
  {
    return CFBundleGetVersionNumber(result);
  }

  return result;
}

- (id)bundleLanguages
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(NSBundle *)self localizations];
  v3 = [MEMORY[0x1E695DF70] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        [v3 addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * v7++), "stringByAppendingString:", @".lproj"}];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)invalidateResourceCache
{
  if ([(NSBundle *)self _cfBundle])
  {

    MEMORY[0x1EEDB80C8]();
  }
}

- (Class)classNamed:(NSString *)className
{
  [(NSBundle *)self load];
  v5 = NSClassFromString(className);
  if ([objc_opt_class() bundleForClass:v5] == self)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

+ (NSBundle)bundleForClass:(Class)aClass
{
  if (aClass)
  {
    Class = object_getClass(aClass);
    if (class_respondsToSelector(Class, sel_bundleForClass))
    {
      v5 = [(objc_class *)aClass bundleForClass];
      if (objc_opt_isKindOfClass())
      {
        if (v5)
        {
          return v5;
        }
      }
    }

    v6 = +[__NSBundleTables bundleTables];
    v5 = [(__NSBundleTables *)v6 bundleForClass:?];
    if (v5)
    {
      return v5;
    }

    ImageName = class_getImageName(aClass);
    if (ImageName)
    {
      v9 = ImageName;
      v10 = strnlen(ImageName, 0x402uLL);
      v11 = _NSFileSystemRepresentationString(v9, v10);
      v12 = normalizedPath(v11);
      if (v12)
      {
        v13 = v12;
        v14 = _NSFrameworkPathFromLibraryPath(v12);
        if (v14 || (v14 = _NSBundlePathFromExecutablePath(v13)) != 0)
        {
          v15 = [[NSBundle alloc] initWithPath:v14];
          if (v15)
          {
            v5 = v15;
            atomic_fetch_or(&v15->_flags, 0x4000000uLL);
            atomic_fetch_or(&v15->_flags, 0x30000uLL);
            atomic_fetch_or(&v15->_flags, 8uLL);
            v16 = +[__NSBundleTables bundleTables];
            [(__NSBundleTables *)v16 addBundle:v5 forPath:0 withType:196608 forClass:aClass isImmortal:1];
            return v5;
          }
        }
      }
    }
  }

  return +[NSBundle mainBundle];
}

- (id)objectForInfoDictionaryKey:(NSString *)key
{
  result = [(NSDictionary *)[(NSBundle *)self localizedInfoDictionary] objectForKey:key];
  if (!result)
  {
    v6 = [(NSBundle *)self infoDictionary];

    return [(NSDictionary *)v6 objectForKey:key];
  }

  return result;
}

- (id)_objectForUnlocalizedInfoDictionaryKey:(id)a3
{
  v4 = [(NSBundle *)self infoDictionary];

  return [(NSDictionary *)v4 objectForKey:a3];
}

+ (id)loadedBundles
{
  v2 = +[__NSBundleTables bundleTables];

  return [(__NSBundleTables *)v2 loadedBundles];
}

+ (NSArray)allFrameworks
{
  if (allFrameworks_onceToken != -1)
  {
    dispatch_once(&allFrameworks_onceToken, &__block_literal_global_81);
  }

  v2 = +[__NSBundleTables bundleTables];

  return [(__NSBundleTables *)v2 allFrameworks];
}

uint64_t __25__NSBundle_allFrameworks__block_invoke()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = +[NSBundle mainBundle];
  outCount = 0;
  v4 = objc_copyImageNames(&outCount);
  if (v4)
  {
    v5 = v4;
    if (outCount)
    {
      for (i = 0; i < outCount; ++i)
      {
        v7 = v5[i];
        v8 = strnlen(v7, 0x402uLL);
        v9 = _NSFileSystemRepresentationString(v7, v8);
        v10 = normalizedPath(v9);
        if (v10)
        {
          v11 = v10;
          if (![v2 objectForKey:v10])
          {
            v12 = _NSFrameworkPathFromLibraryPath(v11);
            if (v12 || (v12 = _NSBundlePathFromExecutablePath(v11)) != 0)
            {
              v13 = [[NSBundle alloc] initWithPath:v12];
              if (v13)
              {
                v14 = v13;
                [v2 setObject:v13 forKey:v11];

                atomic_fetch_or(v14 + 1, 0x4000000uLL);
                if (v3 != v14)
                {
                  [v0 addObject:v14];
                }
              }
            }
          }
        }
      }
    }

    free(v5);
  }

  objc_autoreleasePoolPop(v1);
  v15 = v0;
  v16 = +[__NSBundleTables bundleTables];
  return [(__NSBundleTables *)v16 addStaticFrameworkBundles:v15];
}

+ (id)debugDescription
{
  v2 = [a1 loadedBundles];

  return [v2 description];
}

- (NSString)developmentLocalization
{
  result = [(NSBundle *)self _cfBundle];
  if (result)
  {
    v3 = CFBundleGetDevelopmentRegion(result);

    return v3;
  }

  return result;
}

+ (NSArray)preferredLocalizationsFromArray:(NSArray *)localizationsArray
{
  if (localizationsArray)
  {
    v4 = CFBundleCopyPreferredLocalizationsFromArray(localizationsArray);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (NSArray)preferredLocalizationsFromArray:(NSArray *)localizationsArray forPreferences:(NSArray *)preferencesArray
{
  if (localizationsArray)
  {
    v5 = CFBundleCopyLocalizationsForPreferences(localizationsArray, preferencesArray);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)preflightAndReturnError:(NSError *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = [(NSBundle *)self _cfBundle];
  v13[0] = 0;
  if (!v4)
  {
    if (error)
    {
      v5 = [[NSError alloc] initWithDomain:@"NSCocoaErrorDomain" code:4 userInfo:0];
      goto LABEL_7;
    }

    return 0;
  }

  if (_MergedGlobals_21)
  {
    if (error)
    {
      CFGetAllocator(v4);
      v5 = _CFBundleCreateError();
LABEL_7:
      v6 = v5;
      result = 0;
LABEL_18:
      if (!result)
      {
        v12 = v6;
        result = 0;
        *error = v12;
      }

      return result;
    }

    return 0;
  }

  if (error)
  {
    v8 = v13;
  }

  else
  {
    v8 = 0;
  }

  v9 = CFBundlePreflightExecutable(v4, v8);
  v10 = v9 == 0;
  result = v9 != 0;
  if (!v10 || error == 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v13[0];
  }

  if (error)
  {
    goto LABEL_18;
  }

  return result;
}

- (NSArray)executableArchitectures
{
  v2 = [(NSBundle *)self _cfBundle];
  if (v2)
  {
    v2 = CFBundleCopyExecutableArchitectures(v2);
  }

  return v2;
}

- (id)localizedAttributedStringForKey:(id)a3 value:(id)a4 table:(id)a5 localization:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (a4)
    {
      v14 = _NSStringCreateByParsingMarkdownAndOptionallyInflecting(a4, [(NSBundle *)self _cfBundle], 0, 0, 1, 0);
      if (v14)
      {
        return v14;
      }

      v15 = [NSAttributedString alloc];
      v16 = a4;
    }

    else
    {
      v15 = [NSAttributedString alloc];
      v16 = &stru_1EEEFDF90;
    }

    v21 = [(NSAttributedString *)v15 initWithString:v16];
    goto LABEL_24;
  }

  v11 = @"Localizable";
  if (a5 && ![a5 isEqualToString:&stru_1EEEFDF90])
  {
    v11 = a5;
  }

  os_unfair_lock_lock(&self->_lock);
  if (a6 || (v17 = self->_attributedStringTable) == 0 || (v18 = -[NSMutableDictionary objectForKey:](v17, "objectForKey:", v11)) == 0 || (v19 = [objc_msgSend(v18 objectForKey:{a3), "copy"}]) == 0)
  {
    os_unfair_lock_unlock(&self->_lock);
    v36 = 0;
    if ([(NSBundle *)self _cfBundle])
    {
      v12 = _CFBundleCopyLocalizedStringForLocalizationAndTableURL();
      if (a6)
      {
LABEL_8:
        v13 = 0;
LABEL_18:
        v22 = [v12 __baseAttributedString];
        if (v22)
        {
          v23 = [v22 mutableCopy];
          [(NSMutableAttributedString *)v23 _inflectWithLocale:v13 replacements:MEMORY[0x1E695E0F0] concepts:MEMORY[0x1E695E0F0] preflight:1];
        }

        else
        {
          if (v12)
          {
            FormatSpecifierConfiguration = _CFStringGetFormatSpecifierConfiguration();
            v25 = [(NSBundle *)self _cfBundle];
            v26 = v37;
            v27 = v12;
            v28 = FormatSpecifierConfiguration;
          }

          else
          {
            if (a4 && [a4 length])
            {
              v25 = [(NSBundle *)self _cfBundle];
              v27 = a4;
            }

            else
            {
              v25 = [(NSBundle *)self _cfBundle];
              v27 = a3;
            }

            v26 = 0;
            v28 = 0;
          }

          v23 = _NSStringCreateByParsingMarkdownAndOptionallyInflecting(v27, v25, v26, v28, 1, v13);
        }

        v14 = v23;

        if (!v14)
        {
          v30 = a3;
          if (a4)
          {
            if ([a4 length])
            {
              v30 = a4;
            }

            else
            {
              v30 = a3;
            }
          }

          v14 = [[NSAttributedString alloc] initWithString:v30];
        }

        v31 = [a5 hasSuffix:@".nocache"];
        if (!a6 && (v31 & 1) == 0)
        {
          os_unfair_lock_lock(&self->_lock);
          attributedStringTable = self->_attributedStringTable;
          if (!attributedStringTable)
          {
            attributedStringTable = objc_alloc_init(MEMORY[0x1E695DF90]);
            self->_attributedStringTable = attributedStringTable;
          }

          v33 = [(NSMutableDictionary *)attributedStringTable objectForKey:v11];
          v34 = [(NSMutableAttributedString *)v14 copy];
          if (v33)
          {
            [v33 setObject:v34 forKey:a3];
          }

          else
          {
            v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
            [v35 setObject:v34 forKey:a3];
            [(NSMutableDictionary *)self->_attributedStringTable setObject:v35 forKey:v11];
          }

          os_unfair_lock_unlock(&self->_lock);
        }

        return v14;
      }
    }

    else
    {
      v12 = 0;
      if (a6)
      {
        goto LABEL_8;
      }
    }

    v13 = [MEMORY[0x1E695DF58] currentLocale];
    goto LABEL_18;
  }

  v20 = v19;
  os_unfair_lock_unlock(&self->_lock);
  v21 = v20;
LABEL_24:

  return v21;
}

- (id)_localizedStringNoCacheNoMarkdownParsingForKey:(id)a3 value:(id)a4 table:(id)a5 localizations:(id)a6 actualTableURL:(id *)a7 formatSpecifierConfiguration:(id *)a8
{
  v10 = [(NSBundle *)self _cfBundle];
  if (v10)
  {
    v11 = _CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption();
    v10 = 0;
    if (!a7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    if (!a7)
    {
      goto LABEL_7;
    }
  }

  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  *a7 = v12;
LABEL_7:
  v13 = v10;
  if (a8)
  {
    if (v11)
    {
      FormatSpecifierConfiguration = _CFStringGetFormatSpecifierConfiguration();
    }

    else
    {
      FormatSpecifierConfiguration = 0;
    }

    *a8 = FormatSpecifierConfiguration;
  }

  return v11;
}

- (void)setPreservationPriority:(double)priority forTags:(NSSet *)tags
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = [_NSBundleODRDataForApplications dataForBundle:1 createIfRequired:?];
  if (v6)
  {
    p_isa = &v6->super.super.isa;
    initialStateGroup = v6->_initialStateGroup;
    v9 = dispatch_time(0, 3000000000);
    if (dispatch_group_wait(initialStateGroup, v9))
    {
      if (qword_1ED439B00 != -1)
      {
        dispatch_once(&qword_1ED439B00, &__block_literal_global_349);
      }

      v10 = qword_1ED439AF8;
      if (os_log_type_enabled(qword_1ED439AF8, OS_LOG_TYPE_DEBUG))
      {
        *v15 = 0;
        _os_log_debug_impl(&dword_18075C000, v10, OS_LOG_TYPE_DEBUG, "Unable to connect to daemon to set preservation priority", v15, 2u);
      }
    }

    else
    {
      [p_isa[2] lock];
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v11 = [(NSSet *)tags countByEnumeratingWithState:&v16 objects:v15 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v17;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(tags);
            }

            [objc_msgSend(p_isa[5] objectForKey:{*(*(&v16 + 1) + 8 * i)), "setPreservationPriority:", priority}];
          }

          v12 = [(NSSet *)tags countByEnumeratingWithState:&v16 objects:v15 count:16];
        }

        while (v12);
      }

      [p_isa[2] unlock];
      [objc_msgSend(+[NSBundleResourceRequest _connection](NSBundleResourceRequest "_connection")];
    }
  }
}

- (void)setPreservationPriority:(double)a3 forTag:(id)a4
{
  v6 = [MEMORY[0x1E695DFD8] setWithObject:a4];

  [(NSBundle *)self setPreservationPriority:v6 forTags:a3];
}

- (double)preservationPriorityForTag:(NSString *)tag
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [_NSBundleODRDataForApplications dataForBundle:1 createIfRequired:?];
  if (!v4)
  {
    return 0.0;
  }

  v5 = v4;
  initialStateGroup = v4->_initialStateGroup;
  v7 = dispatch_time(0, 3000000000);
  if (dispatch_group_wait(initialStateGroup, v7))
  {
    if (qword_1ED439B00 != -1)
    {
      dispatch_once(&qword_1ED439B00, &__block_literal_global_349);
    }

    v8 = qword_1ED439AF8;
    v9 = 1.0;
    if (os_log_type_enabled(qword_1ED439AF8, OS_LOG_TYPE_DEBUG))
    {
      *v12 = 0;
      _os_log_debug_impl(&dword_18075C000, v8, OS_LOG_TYPE_DEBUG, "Unable to connect to daemon to get preservation priority", v12, 2u);
    }
  }

  else
  {
    [(NSLock *)v5->super._lock lock];
    [-[NSDictionary objectForKey:](v5->_tagToTagState objectForKey:{tag), "preservationPriority"}];
    v9 = v10;
    [(NSLock *)v5->super._lock unlock];
  }

  return v9;
}

@end