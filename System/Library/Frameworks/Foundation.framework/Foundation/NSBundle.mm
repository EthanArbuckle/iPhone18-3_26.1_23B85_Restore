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
+ (id)_bundleWithIdentifier:(id)identifier andLibraryName:(id)name;
+ (id)_localizedStringsForKeys:(id)keys forAllLocalizationsOfTable:(id)table inBundleWithURL:(id)l;
+ (id)debugDescription;
+ (id)findBundleResourceURLsCallingMethod:(SEL)method baseURL:(id)l passingTest:(id)test;
+ (id)findBundleResources:(id)resources callingMethod:(SEL)method directory:(id)directory languages:(id)languages name:(id)name types:(id)types limit:(unint64_t)limit;
+ (id)loadedBundles;
- (BOOL)_searchForLocalizedString:(id)string foundKey:(id *)key foundTable:(id *)table;
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
- (id)_localizedStringForKey:(id)key value:(id)value table:(id)table localizations:(id)localizations;
- (id)_localizedStringNoCacheNoMarkdownParsingForKey:(id)key value:(id)value table:(id)table localizations:(id)localizations actualTableURL:(id *)l formatSpecifierConfiguration:(id *)configuration;
- (id)_localizedStringsForKeys:(id)keys forAllLocalizationsOfTable:(id)table;
- (id)_objectForUnlocalizedInfoDictionaryKey:(id)key;
- (id)_wrappedBundleURL;
- (id)_wrapperContainerURL;
- (id)bundleLanguages;
- (id)description;
- (id)findBundleResourceURLsCallingMethod:(SEL)method passingTest:(id)test;
- (id)localizedAttributedStringForKey:(id)key value:(id)value table:(id)table localization:(id)localization;
- (id)localizedStringForKey:(id)key value:(id)value table:(id)table localization:(id)localization;
- (id)localizedStringForKey:(id)key value:(id)value table:(id)table localizations:(id)localizations;
- (id)localizedStringsForTable:(id)table localization:(id)localization;
- (id)objectForInfoDictionaryKey:(NSString *)key;
- (unint64_t)versionNumber;
- (void)dealloc;
- (void)invalidateResourceCache;
- (void)setPreservationPriority:(double)priority forTag:(id)tag;
- (void)setPreservationPriority:(double)priority forTags:(NSSet *)tags;
@end

@implementation NSBundle

- (NSArray)localizations
{
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (_cfBundle)
  {
    _cfBundle = CFBundleCopyBundleLocalizations(_cfBundle);
  }

  return _cfBundle;
}

- (NSArray)preferredLocalizations
{
  localizations = [(NSBundle *)self localizations];

  return [NSBundle preferredLocalizationsFromArray:localizations];
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
      v3 = [[self alloc] initWithPath:v7];
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
  infoDictionary = [(NSBundle *)self infoDictionary];
  v3 = *MEMORY[0x1E695E4F0];

  return [(NSDictionary *)infoDictionary objectForKey:v3];
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
    _cfBundle = [(NSBundle *)self _cfBundle];
    if (_cfBundle)
    {
      v4 = CFBundleCopyBundleURL(_cfBundle);
      if (v4)
      {
        v5 = v4;
        path = [(__CFURL *)v4 path];
        CFRelease(v5);
        return path;
      }
    }

    v8 = [self->_resolvedPath copy];
    v9 = _NSOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 134218242;
      selfCopy = self;
      v12 = 2112;
      v13 = v8;
      _os_log_error_impl(&dword_18075C000, v9, OS_LOG_TYPE_ERROR, "This bundle %p does not have a valid path. Using backstop: %@", &v10, 0x16u);
    }
  }

  return v8;
}

- (NSString)executablePath
{
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (!_cfBundle)
  {
    return 0;
  }

  v3 = CFBundleCopyExecutableURL(_cfBundle);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  path = [(__CFURL *)v3 path];
  CFRelease(v4);
  return path;
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
      selfCopy2 = self;
      v22 = 2112;
      bundleIdentifier = [(NSBundle *)self bundleIdentifier];
      v24 = 2112;
      bundleURL = [(NSBundle *)self bundleURL];
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
        selfCopy2 = self;
        v22 = 2112;
        bundleIdentifier = [(NSBundle *)self bundleIdentifier];
        v24 = 2112;
        bundleURL = [(NSBundle *)self bundleURL];
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
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (_cfBundle)
  {
    _cfBundle = CFBundleCopyBuiltInPlugInsURL(_cfBundle);
  }

  return _cfBundle;
}

- (NSString)resourcePath
{
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (!_cfBundle)
  {
    return 0;
  }

  v3 = CFBundleCopyResourcesDirectoryURL(_cfBundle);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  path = [(__CFURL *)v3 path];
  CFRelease(v4);
  return path;
}

- (NSURL)executableURL
{
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (_cfBundle)
  {
    _cfBundle = CFBundleCopyExecutableURL(_cfBundle);
  }

  return _cfBundle;
}

+ (NSArray)allBundles
{
  v2 = +[__NSBundleTables bundleTables];

  return [(__NSBundleTables *)v2 allBundles];
}

- (NSString)privateFrameworksPath
{
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (!_cfBundle)
  {
    return 0;
  }

  v3 = CFBundleCopyPrivateFrameworksURL(_cfBundle);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  path = [(__CFURL *)v3 path];
  CFRelease(v4);
  return path;
}

- (BOOL)isLoaded
{
  v2 = atomic_load(&self->_flags);
  if ((v2 & 0x4000000) != 0)
  {
    LOBYTE(_cfBundleIfPresent) = 1;
  }

  else
  {
    _cfBundleIfPresent = [(NSBundle *)self _cfBundleIfPresent];
    if (_cfBundleIfPresent)
    {
      LOBYTE(_cfBundleIfPresent) = CFBundleIsExecutableLoaded(_cfBundleIfPresent) != 0;
    }
  }

  return _cfBundleIfPresent;
}

- (NSURL)resourceURL
{
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (_cfBundle)
  {
    _cfBundle = CFBundleCopyResourcesDirectoryURL(_cfBundle);
  }

  return _cfBundle;
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

  bundleProxyForCurrentProcess = [(objc_class *)v3 bundleProxyForCurrentProcess];

  return [bundleProxyForCurrentProcess appStoreReceiptURL];
}

- (id)description
{
  v3 = objc_opt_class();
  bundlePath = [(NSBundle *)self bundlePath];
  isLoaded = [(NSBundle *)self isLoaded];
  v6 = @"not yet ";
  if (isLoaded)
  {
    v6 = &stru_1EEEFDF90;
  }

  return [NSString stringWithFormat:@"%@ <%@> (%@loaded)", v3, bundlePath, v6];
}

+ (id)findBundleResources:(id)resources callingMethod:(SEL)method directory:(id)directory languages:(id)languages name:(id)name types:(id)types limit:(unint64_t)limit
{
  if (resources && (v11 = [resources _cfBundle]) != 0)
  {
    if (directory)
    {
      v12 = CFURLCreateWithFileSystemPath(0, directory, kCFURLPOSIXPathStyle, 1u);
    }

    else
    {
      v12 = CFBundleCopyBundleURL(v11);
    }

    array = v12;
    if (!v12)
    {
      return array;
    }

    if ([types count])
    {
      [types objectAtIndex:0];
    }

    LOBYTE(v18) = 0;
  }

  else
  {
    array = CFURLCreateWithFileSystemPath(0, directory, kCFURLPOSIXPathStyle, 1u);
    if (!array)
    {
      return array;
    }

    if ([types count])
    {
      [types objectAtIndex:0];
    }

    LOBYTE(v18) = 0;
  }

  Resources = _CFBundleCopyFindResources();
  CFRelease(array);
  if (!Resources)
  {
    return 0;
  }

  v15 = [Resources count];
  array = [MEMORY[0x1E695DF70] array];
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      -[__CFURL addObject:](array, "addObject:", [objc_msgSend(CFArrayGetValueAtIndex(Resources i)]);
    }
  }

  CFRelease(Resources);
  return array;
}

- (id)findBundleResourceURLsCallingMethod:(SEL)method passingTest:(id)test
{
  v19 = *MEMORY[0x1E69E9840];
  [(NSBundle *)self _cfBundle];
  testCopy = test;
  LOBYTE(v12) = 0;
  Resources = _CFBundleCopyFindResources();
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(Resources, "count", v12, testCopy)}];
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

+ (id)findBundleResourceURLsCallingMethod:(SEL)method baseURL:(id)l passingTest:(id)test
{
  v19 = *MEMORY[0x1E69E9840];
  LOBYTE(v12) = 0;
  Resources = _CFBundleCopyFindResources();
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(Resources, "count", v12, test)}];
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
      path = [(__CFURL *)v11 path];
      CFRelease(v11);
      return path;
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
  array = v5;
  if (!v5)
  {
    return array;
  }

  v7 = CFBundleCopyResourceURLsOfTypeInDirectory(v5, ext, 0);
  CFRelease(array);
  if (!v7)
  {
    return 0;
  }

  v8 = [(__CFArray *)v7 count];
  array = [MEMORY[0x1E695DF70] array];
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      -[NSArray addObject:](array, "addObject:", [CFArrayGetValueAtIndex(v7 i)]);
    }
  }

  CFRelease(v7);
  return array;
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

  _cfBundle = [(NSBundle *)self _cfBundle];
  if (_cfBundle)
  {
    _cfBundle = CFBundleCopyResourceURLForLocalization(_cfBundle, name, ext, subpath, localizationName);
  }

  return _cfBundle;
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

  _cfBundle = [(NSBundle *)self _cfBundle];
  if (_cfBundle)
  {
    _cfBundle = CFBundleCopyResourceURL(_cfBundle, name, ext, subpath);
  }

  return _cfBundle;
}

- (NSString)pathForResource:(NSString *)name ofType:(NSString *)ext
{
  path = [(NSURL *)[(NSBundle *)self URLForResource:name withExtension:ext] path];
  if (pathForResource_ofType__onceToken != -1)
  {
    dispatch_once(&pathForResource_ofType__onceToken, &__block_literal_global_4);
  }

  return path;
}

- (NSArray)pathsForResourcesOfType:(NSString *)ext inDirectory:(NSString *)subpath forLocalization:(NSString *)localizationName
{
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (!_cfBundle)
  {
    return 0;
  }

  v9 = CFBundleCopyResourceURLsOfTypeForLocalization(_cfBundle, ext, subpath, localizationName);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = [(__CFArray *)v9 count];
  array = [MEMORY[0x1E695DF70] array];
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      -[NSArray addObject:](array, "addObject:", [CFArrayGetValueAtIndex(v10 i)]);
    }
  }

  CFRelease(v10);
  return array;
}

- (NSArray)URLsForResourcesWithExtension:(NSString *)ext subdirectory:(NSString *)subpath localization:(NSString *)localizationName
{
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (_cfBundle)
  {
    _cfBundle = CFBundleCopyResourceURLsOfTypeForLocalization(_cfBundle, ext, subpath, localizationName);
  }

  return _cfBundle;
}

- (NSArray)pathsForResourcesOfType:(NSString *)ext inDirectory:(NSString *)subpath
{
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (!_cfBundle)
  {
    return 0;
  }

  v7 = CFBundleCopyResourceURLsOfType(_cfBundle, ext, subpath);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [(__CFArray *)v7 count];
  array = [MEMORY[0x1E695DF70] array];
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      -[NSArray addObject:](array, "addObject:", [CFArrayGetValueAtIndex(v8 i)]);
    }
  }

  CFRelease(v8);
  return array;
}

- (NSArray)URLsForResourcesWithExtension:(NSString *)ext subdirectory:(NSString *)subpath
{
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (_cfBundle)
  {
    _cfBundle = CFBundleCopyResourceURLsOfType(_cfBundle, ext, subpath);
  }

  return _cfBundle;
}

- (NSString)localizedStringForKey:(NSString *)key value:(NSString *)value table:(NSString *)tableName
{
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (_cfBundle)
  {
    _cfBundle = CFBundleCopyLocalizedString(_cfBundle, key, value, tableName);
  }

  return _cfBundle;
}

- (id)localizedStringForKey:(id)key value:(id)value table:(id)table localization:(id)localization
{
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (_cfBundle)
  {
    _cfBundle = CFBundleCopyLocalizedStringForLocalization();
  }

  return _cfBundle;
}

- (id)localizedStringForKey:(id)key value:(id)value table:(id)table localizations:(id)localizations
{
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (_cfBundle)
  {
    _cfBundle = CFBundleCopyLocalizedStringForLocalizations();
  }

  return _cfBundle;
}

- (id)_localizedStringForKey:(id)key value:(id)value table:(id)table localizations:(id)localizations
{
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (_cfBundle)
  {
    _cfBundle = _CFBundleCopyLocalizedStringForLocalizations();
  }

  return _cfBundle;
}

- (id)localizedStringsForTable:(id)table localization:(id)localization
{
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (_cfBundle)
  {
    _cfBundle = CFBundleCopyLocalizedStringTableForLocalization();
  }

  return _cfBundle;
}

- (id)_localizedStringsForKeys:(id)keys forAllLocalizationsOfTable:(id)table
{
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (_cfBundle)
  {
    _cfBundle = _CFBundleCopyFilteredLocalizedStringsForAllLocalizations();
  }

  return _cfBundle;
}

+ (id)_localizedStringsForKeys:(id)keys forAllLocalizationsOfTable:(id)table inBundleWithURL:(id)l
{
  v5 = _CFBundleCopyFilteredLocalizedStringsForAllLocalizationsForURL();

  return v5;
}

- (BOOL)_searchForLocalizedString:(id)string foundKey:(id *)key foundTable:(id *)table
{
  if (![(NSBundle *)self _cfBundle])
  {
    return 0;
  }

  v7 = _CFBundleSearchForLocalizedString();
  v8 = v7;
  v9 = v7 != 0;
  if (key && v7)
  {
    *key = 0;
  }

  if (table && v8)
  {
    *table = 0;
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
    array = [MEMORY[0x1E695DF70] array];
  }

  else
  {
    array = 0;
  }

  v9 = objc_autoreleasePoolPush();
  atomic_load(&self->_flags);
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (!_cfBundle)
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
          bundleURL = [(NSBundle *)self bundleURL];
          *buf = 138412290;
          *&buf[4] = bundleURL;
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

        CFGetAllocator(_cfBundle);
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

            if (array)
            {
              v21 = [[_NSBundleDidLoadNotificationPayloadArray alloc] initWithHeader:v14];
              v44 = @"NSLoadedClasses";
              v45 = v21;
              [array addObject:{+[NSNotification notificationWithName:object:userInfo:](NSNotification, "notificationWithName:object:userInfo:", @"NSBundleDidLoadNotification", v19, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v45, &v44, 1))}];
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
        bundleURL2 = [(NSBundle *)self bundleURL];
        v37 = *error;
        *buf = 138412546;
        *&buf[4] = bundleURL2;
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
  if (![array count])
  {
    return 1;
  }

  v29 = +[NSNotificationCenter defaultCenter];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v30 = [array countByEnumeratingWithState:&v40 objects:v39 count:16];
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
        objc_enumerationMutation(array);
      }

      [(NSNotificationCenter *)v29 postNotification:*(*(&v40 + 1) + 8 * i)];
    }

    v30 = [array countByEnumeratingWithState:&v40 objects:v39 count:16];
    result = 1;
  }

  while (v30);
  return result;
}

- (BOOL)unload
{
  _cfBundleIfPresent = [(NSBundle *)self _cfBundleIfPresent];
  if (_cfBundleIfPresent)
  {
    v4 = _cfBundleIfPresent;
    CFBundleUnloadExecutable(_cfBundleIfPresent);
    if (CFBundleIsExecutableLoaded(v4))
    {
      LOBYTE(_cfBundleIfPresent) = 0;
    }

    else
    {
      v5 = atomic_load(&self->_flags);
      if ((v5 & 0x4000000) != 0)
      {
        atomic_fetch_and(&self->_flags, 0xFFFFFFFFF9FFFFFFLL);
      }

      LOBYTE(_cfBundleIfPresent) = 1;
    }
  }

  return _cfBundleIfPresent;
}

+ (NSBundle)bundleWithPath:(NSString *)path
{
  v3 = [objc_allocWithZone(self) initWithPath:path];

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

  path = [(NSURL *)url path];

  return [(NSBundle *)self initWithPath:path];
}

+ (NSBundle)bundleWithURL:(NSURL *)url
{
  v3 = [objc_allocWithZone(self) initWithURL:url];

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
  path = [(__CFURL *)v5 path];
  if (path)
  {
    v8 = [self bundleWithPath:path];
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v6);
  return v8;
}

+ (id)_bundleWithIdentifier:(id)identifier andLibraryName:(id)name
{
  if (!identifier)
  {
    return 0;
  }

  v6 = +[NSBundle mainBundle];
  if (![(NSString *)[(NSBundle *)v6 bundleIdentifier] isEqualToString:identifier])
  {
    BundleWithIdentifierAndLibraryName = _CFBundleGetBundleWithIdentifierAndLibraryName();
    if (BundleWithIdentifierAndLibraryName)
    {
      v8 = CFBundleCopyBundleURL(BundleWithIdentifierAndLibraryName);
      if (v8)
      {
        v9 = v8;
        v10 = [self bundleWithURL:v8];
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
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (_cfBundle)
  {
    _cfBundle = _CFBundleCopyWrappedBundleURL();
  }

  return _cfBundle;
}

- (id)_wrapperContainerURL
{
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (_cfBundle)
  {
    _cfBundle = _CFBundleCopyWrapperContainerURL();
  }

  return _cfBundle;
}

- (NSString)pathForAuxiliaryExecutable:(NSString *)executableName
{
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (!executableName)
  {
    return 0;
  }

  if (!_cfBundle)
  {
    return 0;
  }

  v5 = CFBundleCopyAuxiliaryExecutableURL(_cfBundle, executableName);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  path = [(__CFURL *)v5 path];
  CFRelease(v6);
  return path;
}

- (NSURL)URLForAuxiliaryExecutable:(NSString *)executableName
{
  _cfBundle = [(NSBundle *)self _cfBundle];
  v5 = 0;
  if (executableName && _cfBundle)
  {
    v5 = CFBundleCopyAuxiliaryExecutableURL(_cfBundle, executableName);
  }

  return v5;
}

- (NSURL)privateFrameworksURL
{
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (_cfBundle)
  {
    _cfBundle = CFBundleCopyPrivateFrameworksURL(_cfBundle);
  }

  return _cfBundle;
}

- (NSString)sharedFrameworksPath
{
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (!_cfBundle)
  {
    return 0;
  }

  v3 = CFBundleCopySharedFrameworksURL(_cfBundle);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  path = [(__CFURL *)v3 path];
  CFRelease(v4);
  return path;
}

- (NSURL)sharedFrameworksURL
{
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (_cfBundle)
  {
    _cfBundle = CFBundleCopySharedFrameworksURL(_cfBundle);
  }

  return _cfBundle;
}

- (NSString)sharedSupportPath
{
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (!_cfBundle)
  {
    return 0;
  }

  v3 = CFBundleCopySharedSupportURL(_cfBundle);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  path = [(__CFURL *)v3 path];
  CFRelease(v4);
  return path;
}

- (NSURL)sharedSupportURL
{
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (_cfBundle)
  {
    _cfBundle = CFBundleCopySharedSupportURL(_cfBundle);
  }

  return _cfBundle;
}

- (NSString)builtInPlugInsPath
{
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (!_cfBundle)
  {
    return 0;
  }

  v3 = CFBundleCopyBuiltInPlugInsURL(_cfBundle);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  path = [(__CFURL *)v3 path];
  CFRelease(v4);
  return path;
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
  localizations = [(NSBundle *)self localizations];
  array = [MEMORY[0x1E695DF70] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSArray *)localizations countByEnumeratingWithState:&v10 objects:v9 count:16];
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
          objc_enumerationMutation(localizations);
        }

        [array addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * v7++), "stringByAppendingString:", @".lproj"}];
      }

      while (v5 != v7);
      v5 = [(NSArray *)localizations countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }

  return array;
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
      bundleForClass = [(objc_class *)aClass bundleForClass];
      if (objc_opt_isKindOfClass())
      {
        if (bundleForClass)
        {
          return bundleForClass;
        }
      }
    }

    v6 = +[__NSBundleTables bundleTables];
    bundleForClass = [(__NSBundleTables *)v6 bundleForClass:?];
    if (bundleForClass)
    {
      return bundleForClass;
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
            bundleForClass = v15;
            atomic_fetch_or(&v15->_flags, 0x4000000uLL);
            atomic_fetch_or(&v15->_flags, 0x30000uLL);
            atomic_fetch_or(&v15->_flags, 8uLL);
            v16 = +[__NSBundleTables bundleTables];
            [(__NSBundleTables *)v16 addBundle:bundleForClass forPath:0 withType:196608 forClass:aClass isImmortal:1];
            return bundleForClass;
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
    infoDictionary = [(NSBundle *)self infoDictionary];

    return [(NSDictionary *)infoDictionary objectForKey:key];
  }

  return result;
}

- (id)_objectForUnlocalizedInfoDictionaryKey:(id)key
{
  infoDictionary = [(NSBundle *)self infoDictionary];

  return [(NSDictionary *)infoDictionary objectForKey:key];
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
  loadedBundles = [self loadedBundles];

  return [loadedBundles description];
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
  _cfBundle = [(NSBundle *)self _cfBundle];
  v13[0] = 0;
  if (!_cfBundle)
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
      CFGetAllocator(_cfBundle);
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

  v9 = CFBundlePreflightExecutable(_cfBundle, v8);
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
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (_cfBundle)
  {
    _cfBundle = CFBundleCopyExecutableArchitectures(_cfBundle);
  }

  return _cfBundle;
}

- (id)localizedAttributedStringForKey:(id)key value:(id)value table:(id)table localization:(id)localization
{
  v38 = *MEMORY[0x1E69E9840];
  if (!key)
  {
    if (value)
    {
      v14 = _NSStringCreateByParsingMarkdownAndOptionallyInflecting(value, [(NSBundle *)self _cfBundle], 0, 0, 1, 0);
      if (v14)
      {
        return v14;
      }

      v15 = [NSAttributedString alloc];
      valueCopy = value;
    }

    else
    {
      v15 = [NSAttributedString alloc];
      valueCopy = &stru_1EEEFDF90;
    }

    v21 = [(NSAttributedString *)v15 initWithString:valueCopy];
    goto LABEL_24;
  }

  tableCopy = @"Localizable";
  if (table && ![table isEqualToString:&stru_1EEEFDF90])
  {
    tableCopy = table;
  }

  os_unfair_lock_lock(&self->_lock);
  if (localization || (v17 = self->_attributedStringTable) == 0 || (v18 = -[NSMutableDictionary objectForKey:](v17, "objectForKey:", tableCopy)) == 0 || (v19 = [objc_msgSend(v18 objectForKey:{key), "copy"}]) == 0)
  {
    os_unfair_lock_unlock(&self->_lock);
    v36 = 0;
    if ([(NSBundle *)self _cfBundle])
    {
      v12 = _CFBundleCopyLocalizedStringForLocalizationAndTableURL();
      if (localization)
      {
LABEL_8:
        currentLocale = 0;
LABEL_18:
        __baseAttributedString = [v12 __baseAttributedString];
        if (__baseAttributedString)
        {
          v23 = [__baseAttributedString mutableCopy];
          [(NSMutableAttributedString *)v23 _inflectWithLocale:currentLocale replacements:MEMORY[0x1E695E0F0] concepts:MEMORY[0x1E695E0F0] preflight:1];
        }

        else
        {
          if (v12)
          {
            FormatSpecifierConfiguration = _CFStringGetFormatSpecifierConfiguration();
            _cfBundle = [(NSBundle *)self _cfBundle];
            v26 = v37;
            keyCopy = v12;
            v28 = FormatSpecifierConfiguration;
          }

          else
          {
            if (value && [value length])
            {
              _cfBundle = [(NSBundle *)self _cfBundle];
              keyCopy = value;
            }

            else
            {
              _cfBundle = [(NSBundle *)self _cfBundle];
              keyCopy = key;
            }

            v26 = 0;
            v28 = 0;
          }

          v23 = _NSStringCreateByParsingMarkdownAndOptionallyInflecting(keyCopy, _cfBundle, v26, v28, 1, currentLocale);
        }

        v14 = v23;

        if (!v14)
        {
          keyCopy3 = key;
          if (value)
          {
            if ([value length])
            {
              keyCopy3 = value;
            }

            else
            {
              keyCopy3 = key;
            }
          }

          v14 = [[NSAttributedString alloc] initWithString:keyCopy3];
        }

        v31 = [table hasSuffix:@".nocache"];
        if (!localization && (v31 & 1) == 0)
        {
          os_unfair_lock_lock(&self->_lock);
          attributedStringTable = self->_attributedStringTable;
          if (!attributedStringTable)
          {
            attributedStringTable = objc_alloc_init(MEMORY[0x1E695DF90]);
            self->_attributedStringTable = attributedStringTable;
          }

          v33 = [(NSMutableDictionary *)attributedStringTable objectForKey:tableCopy];
          v34 = [(NSMutableAttributedString *)v14 copy];
          if (v33)
          {
            [v33 setObject:v34 forKey:key];
          }

          else
          {
            v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
            [v35 setObject:v34 forKey:key];
            [(NSMutableDictionary *)self->_attributedStringTable setObject:v35 forKey:tableCopy];
          }

          os_unfair_lock_unlock(&self->_lock);
        }

        return v14;
      }
    }

    else
    {
      v12 = 0;
      if (localization)
      {
        goto LABEL_8;
      }
    }

    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    goto LABEL_18;
  }

  v20 = v19;
  os_unfair_lock_unlock(&self->_lock);
  v21 = v20;
LABEL_24:

  return v21;
}

- (id)_localizedStringNoCacheNoMarkdownParsingForKey:(id)key value:(id)value table:(id)table localizations:(id)localizations actualTableURL:(id *)l formatSpecifierConfiguration:(id *)configuration
{
  _cfBundle = [(NSBundle *)self _cfBundle];
  if (_cfBundle)
  {
    v11 = _CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption();
    _cfBundle = 0;
    if (!l)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    if (!l)
    {
      goto LABEL_7;
    }
  }

  if (v11)
  {
    v12 = _cfBundle;
  }

  else
  {
    v12 = 0;
  }

  *l = v12;
LABEL_7:
  v13 = _cfBundle;
  if (configuration)
  {
    if (v11)
    {
      FormatSpecifierConfiguration = _CFStringGetFormatSpecifierConfiguration();
    }

    else
    {
      FormatSpecifierConfiguration = 0;
    }

    *configuration = FormatSpecifierConfiguration;
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

- (void)setPreservationPriority:(double)priority forTag:(id)tag
{
  v6 = [MEMORY[0x1E695DFD8] setWithObject:tag];

  [(NSBundle *)self setPreservationPriority:v6 forTags:priority];
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