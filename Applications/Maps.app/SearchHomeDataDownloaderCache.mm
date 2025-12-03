@interface SearchHomeDataDownloaderCache
- (BOOL)keyIsValid:(id)valid;
- (id)objectForKey:(id)key;
- (void)replaceCachedObject:(id)object withKey:(id)key;
@end

@implementation SearchHomeDataDownloaderCache

- (BOOL)keyIsValid:(id)valid
{
  validCopy = valid;
  [validCopy timestamp];
  v6 = v5;
  cachedKey = [(SearchHomeDataDownloaderCache *)self cachedKey];
  [cachedKey timestamp];
  v9 = v8;

  cachedKey2 = [(SearchHomeDataDownloaderCache *)self cachedKey];
  [cachedKey2 mapRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [validCopy mapRect];
  v24 = v12 != v22 || v14 != v19 || v16 != v20 || v18 != v21;

  mapType = [validCopy mapType];
  cachedKey3 = [(SearchHomeDataDownloaderCache *)self cachedKey];
  mapType2 = [cachedKey3 mapType];

  lprPowerType = [validCopy lprPowerType];
  if (lprPowerType)
  {
LABEL_10:
    lprPowerType2 = [validCopy lprPowerType];
    if (lprPowerType2)
    {
      v31 = lprPowerType2;
      cachedKey4 = [(SearchHomeDataDownloaderCache *)self cachedKey];
      lprPowerType3 = [cachedKey4 lprPowerType];
      if (lprPowerType3)
      {
        v34 = lprPowerType3;
        [validCopy lprPowerType];
        v43 = mapType2;
        v35 = mapType;
        v37 = v36 = v24;
        cachedKey5 = [(SearchHomeDataDownloaderCache *)self cachedKey];
        lprPowerType4 = [cachedKey5 lprPowerType];
        v40 = v37 == lprPowerType4;

        v24 = v36;
        mapType = v35;
        mapType2 = v43;

        if (lprPowerType)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    v40 = 0;
    if (lprPowerType)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  cachedKey6 = [(SearchHomeDataDownloaderCache *)self cachedKey];
  lprPowerType5 = [cachedKey6 lprPowerType];
  if (lprPowerType5)
  {
    v44 = lprPowerType5;
    goto LABEL_10;
  }

  v44 = 0;
  v40 = 1;
LABEL_18:

LABEL_19:
  if (mapType == mapType2)
  {
    v41 = (v6 - v9 < 900.0) & ~v24;
  }

  else
  {
    v41 = 0;
  }

  return v41 & v40;
}

- (void)replaceCachedObject:(id)object withKey:(id)key
{
  objectCopy = object;
  objc_storeStrong(&self->_cachedKey, key);
  keyCopy = key;
  cachedResults = self->_cachedResults;
  self->_cachedResults = objectCopy;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  cachedResults = [(SearchHomeDataDownloaderCache *)self cachedResults];

  if (cachedResults && [(SearchHomeDataDownloaderCache *)self keyIsValid:keyCopy])
  {
    cachedResults2 = [(SearchHomeDataDownloaderCache *)self cachedResults];
  }

  else
  {
    cachedResults2 = 0;
  }

  return cachedResults2;
}

@end