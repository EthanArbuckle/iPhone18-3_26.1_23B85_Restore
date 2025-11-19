@interface AVRatingProviders
+ (id)ratingProvidersWithName:(id)a3;
+ (id)shared;
- (AVRatingProviders)initWithFileURL:(id)a3;
- (id)_movieMapForRating:(id)a3;
- (id)_tvShowsMapForRating:(id)a3;
- (id)findRatingString:(id)a3 domain:(int64_t)a4 country:(id)a5 shouldPreferTVDomain:(BOOL)a6;
- (void)_loadRatingMapsIfNeeded;
- (void)_loadRatingsMaps;
@end

@implementation AVRatingProviders

- (id)findRatingString:(id)a3 domain:(int64_t)a4 country:(id)a5 shouldPreferTVDomain:(BOOL)a6
{
  v6 = a6;
  v56 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = [(AVRatingProviders *)self _movieMapForRating:v10];
  v13 = [(AVRatingProviders *)self _tvShowsMapForRating:v10];
  if (v12 | v13)
  {
    v41 = v10;
    v14 = +[AVMediaContentRating contentRestrictionsCountryCode];
    v15 = [MEMORY[0x1E695DF58] systemLocale];
    v16 = [v15 countryCode];

    v17 = &stru_1EFED57D8;
    v39 = v16;
    v40 = v11;
    if (v11)
    {
      v18 = v11;
    }

    else
    {
      v18 = &stru_1EFED57D8;
    }

    if (v14)
    {
      v19 = v14;
    }

    else
    {
      v19 = &stru_1EFED57D8;
    }

    v47[0] = v18;
    v47[1] = v19;
    if (v16)
    {
      v17 = v16;
    }

    v47[2] = v17;
    v47[3] = @"US";
    [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:4];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v20 = v45 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v43;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v43 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v42 + 1) + 8 * i);
          if ([v25 length])
          {
            v26 = _bestMatch(v12, v13, v25, a4, v6);
            if (v26)
            {
              v30 = v26;
              v33 = v20;
              v35 = v30;
              goto LABEL_33;
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v27 = MEMORY[0x1E695DFA8];
    if (v12)
    {
      v28 = v12;
    }

    else
    {
      v28 = MEMORY[0x1E695E0F8];
    }

    v29 = [v28 allKeys];
    v30 = [v27 setWithArray:v29];

    if (v13)
    {
      v31 = [v13 allKeys];
      [v30 addObjectsFromArray:v31];
    }

    [v30 removeObject:@"ratingString"];
    v32 = [v30 allObjects];
    v33 = [v32 mutableCopy];

    [v33 sortUsingSelector:sel_compare_];
    v34 = [v33 firstObject];
    v35 = _bestMatch(v12, v13, v34, a4, v6);

LABEL_33:
    v11 = v40;
    v10 = v41;
  }

  else
  {
    v14 = _AVLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v36 = @"Unknown";
      if (a4 == 1)
      {
        v36 = @"Movies";
      }

      if (a4 == 2)
      {
        v36 = @"TVShows";
      }

      v37 = v36;
      *buf = 136315906;
      v49 = "[AVRatingProviders findRatingString:domain:country:shouldPreferTVDomain:]";
      v50 = 2114;
      v51 = v10;
      v52 = 2114;
      v53 = v37;
      v54 = 2114;
      v55 = v11;
      _os_log_impl(&dword_18B49C000, v14, OS_LOG_TYPE_DEFAULT, "%s * There is no rating that matches '%{public}@' (%{public}@, %{public}@)", buf, 0x2Au);
    }

    v35 = 0;
  }

  return v35;
}

- (id)_tvShowsMapForRating:(id)a3
{
  v4 = a3;
  [(AVRatingProviders *)self _loadRatingMapsIfNeeded];
  v5 = [(AVRatingProviders *)self mapForTVShows];
  v6 = _KeyForRating(v4);

  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

- (id)_movieMapForRating:(id)a3
{
  v4 = a3;
  [(AVRatingProviders *)self _loadRatingMapsIfNeeded];
  v5 = [(AVRatingProviders *)self mapForMovies];
  v6 = _KeyForRating(v4);

  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

- (void)_loadRatingMapsIfNeeded
{
  if (!self->_mapForTVShows)
  {
    [(AVRatingProviders *)self _loadRatingsMaps];
  }
}

- (void)_loadRatingsMaps
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:@"Movies" forKeyedSubscript:@"domain"];
  [v4 setObject:@"TVShows" forKeyedSubscript:@"domain"];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v27 = self;
  v5 = [(AVRatingProviders *)self plist];
  v6 = [v5 allKeys];

  obj = v6;
  v28 = [v6 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v28)
  {
    v26 = *v38;
    do
    {
      v7 = 0;
      do
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v37 + 1) + 8 * v7);
        v9 = [(AVRatingProviders *)v27 plist];
        v10 = [v9 objectForKeyedSubscript:v8];

        v11 = [v10 objectForKeyedSubscript:@"ratingMovies"];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v12 = [v11 countByEnumeratingWithState:&v33 objects:v42 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v34;
          do
          {
            v15 = 0;
            do
            {
              if (*v34 != v14)
              {
                objc_enumerationMutation(v11);
              }

              _MakeReverseDictionaryForRatingDictionary(v8, *(*(&v33 + 1) + 8 * v15++), v3);
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v33 objects:v42 count:16];
          }

          while (v13);
        }

        v16 = [v10 objectForKeyedSubscript:@"ratingTVShows"];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v17 = [v16 countByEnumeratingWithState:&v29 objects:v41 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v30;
          do
          {
            v20 = 0;
            do
            {
              if (*v30 != v19)
              {
                objc_enumerationMutation(v16);
              }

              _MakeReverseDictionaryForRatingDictionary(v8, *(*(&v29 + 1) + 8 * v20++), v4);
            }

            while (v18 != v20);
            v18 = [v16 countByEnumeratingWithState:&v29 objects:v41 count:16];
          }

          while (v18);
        }

        ++v7;
      }

      while (v7 != v28);
      v28 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v28);
  }

  v21 = [v3 copy];
  mapForMovies = v27->_mapForMovies;
  v27->_mapForMovies = v21;

  v23 = [v4 copy];
  mapForTVShows = v27->_mapForTVShows;
  v27->_mapForTVShows = v23;
}

- (AVRatingProviders)initWithFileURL:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v34.receiver = self;
  v34.super_class = AVRatingProviders;
  v5 = [(AVRatingProviders *)&v34 init];
  if (!v5)
  {
    goto LABEL_24;
  }

  if (!v4)
  {
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v6, OS_LOG_TYPE_ERROR, "expected fileURL", buf, 2u);
    }
  }

  v7 = [v4 path];
  v33 = 0;
  v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v7];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AE40] propertyListWithData:v8 options:0 format:0 error:&v33];
  }

  else
  {
    v9 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = v33;
  if (!v11)
  {
    v13 = _AVLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v36 = "[AVRatingProviders initWithFileURL:]";
      v37 = 2114;
      v38 = v4;
      v39 = 2114;
      v40 = v12;
      _os_log_impl(&dword_18B49C000, v13, OS_LOG_TYPE_DEFAULT, "%s Failed to read %{public}@: %{public}@", buf, 0x20u);
    }

    goto LABEL_44;
  }

  if (MGGetBoolAnswer())
  {
    v13 = [(NSDictionary *)v11 allKeys];
    if (!-[NSObject count](v13, "count") || (-[NSObject objectAtIndexedSubscript:](v13, "objectAtIndexedSubscript:", 0), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 length], v14, v15 != 2))
    {
      v17 = _AVLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v36 = "[AVRatingProviders initWithFileURL:]";
        _os_log_impl(&dword_18B49C000, v17, OS_LOG_TYPE_DEFAULT, "%s error: keys of root dictionary should be country codes", buf, 0xCu);
      }

      goto LABEL_43;
    }

    v16 = [v13 objectAtIndexedSubscript:0];
    v17 = [(NSDictionary *)v11 objectForKeyedSubscript:v16];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 objectForKeyedSubscript:@"ratingMovies"];

      if (v18)
      {
        v19 = [v17 objectForKeyedSubscript:@"ratingMovies"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v21 = [v17 objectForKeyedSubscript:@"ratingMovies"];
          v22 = [v21 firstObject];
          objc_opt_class();
          v23 = objc_opt_isKindOfClass();

          if (v23)
          {
            v24 = [v21 firstObject];
            v25 = [v24 objectForKeyedSubscript:@"rank"];
            if (v25)
            {
              v26 = v25;
              v27 = [v24 objectForKeyedSubscript:@"rating"];

              if (v27)
              {

                goto LABEL_23;
              }
            }

            v31 = _AVLog();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v36 = "[AVRatingProviders initWithFileURL:]";
              _os_log_impl(&dword_18B49C000, v31, OS_LOG_TYPE_DEFAULT, "%s error: expect ratingMovies elements to have 'rank' and 'rating' keys", buf, 0xCu);
            }
          }

          else
          {
            v24 = _AVLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v36 = "[AVRatingProviders initWithFileURL:]";
              _os_log_impl(&dword_18B49C000, v24, OS_LOG_TYPE_DEFAULT, "%s error: expect ratingMovies elements to be dictionaries", buf, 0xCu);
            }
          }

          goto LABEL_42;
        }

        v21 = _AVLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v36 = "[AVRatingProviders initWithFileURL:]";
          v30 = "%s error: expect ratingMovies to be an array";
          goto LABEL_35;
        }

LABEL_42:

LABEL_43:
LABEL_44:

        v29 = 0;
        goto LABEL_45;
      }

      v21 = _AVLog();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_42;
      }

      *buf = 136315138;
      v36 = "[AVRatingProviders initWithFileURL:]";
      v30 = "%s error: expect value dictionaries to have 'ratingMovies' at least";
    }

    else
    {
      v21 = _AVLog();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_42;
      }

      *buf = 136315138;
      v36 = "[AVRatingProviders initWithFileURL:]";
      v30 = "%s error: expect root values to be dictionaries";
    }

LABEL_35:
    _os_log_impl(&dword_18B49C000, v21, OS_LOG_TYPE_DEFAULT, v30, buf, 0xCu);
    goto LABEL_42;
  }

LABEL_23:
  plist = v5->_plist;
  v5->_plist = v11;

LABEL_24:
  v29 = v5;
LABEL_45:

  return v29;
}

+ (id)shared
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__AVRatingProviders_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (shared_onceToken_19954 != -1)
  {
    dispatch_once(&shared_onceToken_19954, block);
  }

  v2 = shared__providers;

  return v2;
}

uint64_t __27__AVRatingProviders_shared__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) ratingProvidersWithName:@"RatingProviders.plist"];
  v2 = shared__providers;
  shared__providers = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)ratingProvidersWithName:(id)a3
{
  v4 = a3;
  v5 = AVBundle();
  v6 = [v5 URLForResource:v4 withExtension:0];

  v7 = [[a1 alloc] initWithFileURL:v6];

  return v7;
}

@end