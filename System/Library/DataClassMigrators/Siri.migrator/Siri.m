__CFString *sub_1708()
{
  v0 = _AFPreferencesValueForKey();
  if (!v0)
  {
    v0 = @"1.0";
  }

  return v0;
}

id sub_1DA0(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [AFVoiceInfo alloc];
  v6 = [v4 languageCode];
  v7 = [v4 gender];
  v8 = [v4 isCustom];

  v9 = [v5 initWithLanguageCode:v6 gender:v7 isCustom:v8 name:v3 footprint:0 contentVersion:0 masteredVersion:0];

  return v9;
}

void sub_2F44(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v5 = _AFPreferencesValueForKey();
  if (v5)
  {
    v7 = v5;
    v6 = _AFBackedUpPreferencesValueForKey();

    if (!v6)
    {
      _AFBackedUpPreferencesSetValueForKey();
      if (a2)
      {
        *a2 = 1;
      }
    }

    _AFPreferencesSetValueForKey();
    v5 = v7;
    if (a3)
    {
      *a3 = 1;
    }
  }
}