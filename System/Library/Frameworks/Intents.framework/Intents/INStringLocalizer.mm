@interface INStringLocalizer
+ (id)localizerForLanguage:(id)a3;
+ (id)siriLocalizer;
- (BOOL)matchesBundleLocalizations:(__CFBundle *)a3;
- (INStringLocalizer)initWithLanguageCode:(id)a3;
- (NSLocale)locale;
- (__CFBundle)bundleWithIdentifier:(id)a3 fileURL:(id)a4;
- (id)localizationsForBundle:(__CFBundle *)a3;
- (id)preferredLocalizationsForBundle:(__CFBundle *)a3;
@end

@implementation INStringLocalizer

- (BOOL)matchesBundleLocalizations:(__CFBundle *)a3
{
  v5 = self->_languageCode;
  if (v5)
  {
    os_unfair_lock_lock(&self->_lock);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48__INStringLocalizer_matchesBundleLocalizations___block_invoke;
    v14[3] = &unk_1E72882F8;
    v14[4] = self;
    v6 = MEMORY[0x193AD7780](v14);
    v7 = [(INStringLocalizer *)self localizationsForBundle:a3];
    if ([v7 containsObject:v5])
    {
      v8 = 1;
    }

    else
    {
      v9 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v5];
      v10 = [v9 languageCode];
      if ([v7 containsObject:v10])
      {
        v8 = 1;
      }

      else
      {
        v11 = +[INStringLocalizer alternativeLocales];
        v12 = [v11 objectForKey:v5];
        v8 = [v7 containsObject:v12];
      }
    }

    v6[2](v6);
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)preferredLocalizationsForBundle:(__CFBundle *)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    os_unfair_lock_lock(&self->_lock);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __53__INStringLocalizer_preferredLocalizationsForBundle___block_invoke;
    v18[3] = &unk_1E72882F8;
    v18[4] = self;
    v5 = MEMORY[0x193AD7780](v18);
    v6 = [(NSMapTable *)self->_preferredBundleLocalizations objectForKey:a3];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v8 = [(INStringLocalizer *)self localizationsForBundle:a3];
      v9 = self->_preferredLanguages;
      if (self->_languageCode && ([v8 containsObject:?] & 1) == 0)
      {
        v10 = +[INStringLocalizer alternativeLocales];
        v11 = [v10 objectForKey:self->_languageCode];

        if (v11)
        {
          v19[0] = v11;
          v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
          v13 = [MEMORY[0x1E695DF58] preferredLanguages];
          v14 = [v12 arrayByAddingObjectsFromArray:v13];

          v9 = v14;
        }
      }

      v15 = CFBundleCopyLocalizationsForPreferences(v8, v9);
      [(NSMapTable *)self->_preferredBundleLocalizations setObject:v15 forKey:a3];
      v7 = v15;
    }

    v5[2](v5);
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)localizationsForBundle:(__CFBundle *)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (a3)
  {
    v5 = [(NSMapTable *)self->_bundleLocalizations objectForKey:a3];
    if (!v5)
    {
      v5 = CFBundleCopyBundleLocalizations(a3);
      [(NSMapTable *)self->_bundleLocalizations setObject:v5 forKey:a3];
    }

    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (__CFBundle)bundleWithIdentifier:(id)a3 fileURL:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __50__INStringLocalizer_bundleWithIdentifier_fileURL___block_invoke;
  v27[3] = &unk_1E72882F8;
  v27[4] = self;
  v8 = MEMORY[0x193AD7780](v27);
  v9 = [(NSMapTable *)self->_bundlesByIdentifier objectForKey:v6];
  if (!v9)
  {
    v9 = [(NSMapTable *)self->_bundlesByURL objectForKey:v7];
    if (!v9)
    {
      if ([(__CFString *)v6 isEqualToString:@"com.apple.Intents"])
      {
        v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v11 = [v10 bundleURL];

        v7 = v11;
      }

      v12 = [(__CFURL *)v7 isFileURL]^ 1;
      if (!v6)
      {
        LOBYTE(v12) = 1;
      }

      if ((v12 & 1) == 0)
      {
        v13 = *MEMORY[0x1E695E480];
        Unique = _CFBundleCreateUnique();
        v9 = Unique;
        if (Unique)
        {
          if (([(__CFString *)CFBundleGetIdentifier(Unique) isEqualToString:v6]& 1) != 0)
          {
LABEL_31:
            [(NSMapTable *)self->_bundlesByIdentifier setObject:v9 forKey:v6];
            [(NSMapTable *)self->_bundlesByURL setObject:v9 forKey:v7];
            CFAutorelease(v9);
            goto LABEL_32;
          }

          CFRelease(v9);
        }
      }

      if ([(__CFURL *)v7 isFileURL])
      {
        v15 = *MEMORY[0x1E695E480];
        v16 = _CFBundleCreateUnique();
        v9 = v16;
        if (v16)
        {
          goto LABEL_13;
        }
      }

      if (!v6)
      {
        v9 = 0;
        goto LABEL_32;
      }

      v17 = [MEMORY[0x1E6963618] bundleProxyForIdentifier:v6];
      v18 = [v17 bundleURL];
      if ([(__CFURL *)v18 isFileURL])
      {
        v19 = *MEMORY[0x1E695E480];
        v9 = _CFBundleCreateUnique();
        if (v9)
        {

          v7 = v18;
          goto LABEL_30;
        }
      }

      v20 = _INVCIntentDefinitionManagerClass();
      if (objc_opt_respondsToSelector())
      {
        v21 = [v20 intentDefinitionBundleURLForBundleID:v6];

        v7 = v21;
      }

      if (v7)
      {
        v9 = [(NSMapTable *)self->_bundlesByURL objectForKey:v7];
        if (v9)
        {
          goto LABEL_32;
        }

        v22 = *MEMORY[0x1E695E480];
        v16 = _CFBundleCreateUnique();
        v9 = v16;
        if (v16)
        {
LABEL_13:
          CFBundleGetIdentifier(v16);
          v6 = v17 = v6;
LABEL_30:

          goto LABEL_31;
        }
      }

      if (([(__CFString *)v6 isEqualToString:@"com.apple.siri.IntentsTests"]& 1) == 0)
      {
        v23 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v29 = "[INStringLocalizer bundleWithIdentifier:fileURL:]";
          v30 = 2114;
          v31 = v6;
          _os_log_error_impl(&dword_18E991000, v23, OS_LOG_TYPE_ERROR, "%s This should not happen! Unable to get a bundle for %{public}@", buf, 0x16u);
        }
      }

      BundleWithIdentifier = CFBundleGetBundleWithIdentifier(v6);
      v9 = BundleWithIdentifier;
      if (BundleWithIdentifier)
      {
        CFRetain(BundleWithIdentifier);
        v17 = v7;
        v7 = CFBundleCopyBundleURL(v9);
        goto LABEL_30;
      }
    }
  }

LABEL_32:
  v8[2](v8);

  v25 = *MEMORY[0x1E69E9840];
  return v9;
}

- (NSLocale)locale
{
  if (self->_languageCode)
  {
    [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:?];
  }

  else
  {
    [MEMORY[0x1E695DF58] currentLocale];
  }
  v2 = ;

  return v2;
}

- (INStringLocalizer)initWithLanguageCode:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = INStringLocalizer;
  v5 = [(INStringLocalizer *)&v23 init];
  if (v5)
  {
    v6 = [v4 copy];
    languageCode = v5->_languageCode;
    v5->_languageCode = v6;

    v5->_lock._os_unfair_lock_opaque = 0;
    v8 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    bundlesByIdentifier = v5->_bundlesByIdentifier;
    v5->_bundlesByIdentifier = v8;

    v10 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    bundlesByURL = v5->_bundlesByURL;
    v5->_bundlesByURL = v10;

    v12 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    bundleLocalizations = v5->_bundleLocalizations;
    v5->_bundleLocalizations = v12;

    v14 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    preferredBundleLocalizations = v5->_preferredBundleLocalizations;
    v5->_preferredBundleLocalizations = v14;

    if (v4)
    {
      v24[0] = v4;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      v17 = [MEMORY[0x1E695DF58] preferredLanguages];
      v18 = [v16 arrayByAddingObjectsFromArray:v17];
      preferredLanguages = v5->_preferredLanguages;
      v5->_preferredLanguages = v18;
    }

    v20 = v5;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)localizerForLanguage:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithLanguageCode:v4];

  return v5;
}

+ (id)siriLocalizer
{
  v3 = +[INPreferences siriLanguageCode];
  v4 = [a1 localizerForLanguage:v3];

  return v4;
}

@end