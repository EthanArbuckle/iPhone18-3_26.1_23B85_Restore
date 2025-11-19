@interface SearchHomeDataDownloaderCache
- (BOOL)keyIsValid:(id)a3;
- (id)objectForKey:(id)a3;
- (void)replaceCachedObject:(id)a3 withKey:(id)a4;
@end

@implementation SearchHomeDataDownloaderCache

- (BOOL)keyIsValid:(id)a3
{
  v4 = a3;
  [v4 timestamp];
  v6 = v5;
  v7 = [(SearchHomeDataDownloaderCache *)self cachedKey];
  [v7 timestamp];
  v9 = v8;

  v10 = [(SearchHomeDataDownloaderCache *)self cachedKey];
  [v10 mapRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v4 mapRect];
  v24 = v12 != v22 || v14 != v19 || v16 != v20 || v18 != v21;

  v25 = [v4 mapType];
  v26 = [(SearchHomeDataDownloaderCache *)self cachedKey];
  v27 = [v26 mapType];

  v28 = [v4 lprPowerType];
  if (v28)
  {
LABEL_10:
    v30 = [v4 lprPowerType];
    if (v30)
    {
      v31 = v30;
      v32 = [(SearchHomeDataDownloaderCache *)self cachedKey];
      v33 = [v32 lprPowerType];
      if (v33)
      {
        v34 = v33;
        [v4 lprPowerType];
        v43 = v27;
        v35 = v25;
        v37 = v36 = v24;
        v38 = [(SearchHomeDataDownloaderCache *)self cachedKey];
        v39 = [v38 lprPowerType];
        v40 = v37 == v39;

        v24 = v36;
        v25 = v35;
        v27 = v43;

        if (v28)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    v40 = 0;
    if (v28)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v45 = [(SearchHomeDataDownloaderCache *)self cachedKey];
  v29 = [v45 lprPowerType];
  if (v29)
  {
    v44 = v29;
    goto LABEL_10;
  }

  v44 = 0;
  v40 = 1;
LABEL_18:

LABEL_19:
  if (v25 == v27)
  {
    v41 = (v6 - v9 < 900.0) & ~v24;
  }

  else
  {
    v41 = 0;
  }

  return v41 & v40;
}

- (void)replaceCachedObject:(id)a3 withKey:(id)a4
{
  v6 = a3;
  objc_storeStrong(&self->_cachedKey, a4);
  v8 = a4;
  cachedResults = self->_cachedResults;
  self->_cachedResults = v6;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(SearchHomeDataDownloaderCache *)self cachedResults];

  if (v5 && [(SearchHomeDataDownloaderCache *)self keyIsValid:v4])
  {
    v6 = [(SearchHomeDataDownloaderCache *)self cachedResults];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end