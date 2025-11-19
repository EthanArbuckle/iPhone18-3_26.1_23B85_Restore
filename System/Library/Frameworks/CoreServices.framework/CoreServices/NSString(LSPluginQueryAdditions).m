@interface NSString(LSPluginQueryAdditions)
- (BOOL)ls_matchesStringForPluginQuery:()LSPluginQueryAdditions;
- (id)ls_cleanForPluginQuery;
- (uint64_t)ls_matchesForPluginQuery:()LSPluginQueryAdditions;
@end

@implementation NSString(LSPluginQueryAdditions)

- (id)ls_cleanForPluginQuery
{
  v2 = [a1 length];
  if (v2)
  {
    v3 = [a1 characterAtIndex:0];
    if (v3 == 61)
    {
      v2 = [a1 substringFromIndex:1];
    }

    else
    {
      v4 = v3;
      v5 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
      LODWORD(v4) = [v5 characterIsMember:v4];

      if (v4)
      {
        v2 = a1;
      }

      else
      {
        v2 = 0;
      }
    }
  }

  return v2;
}

- (BOOL)ls_matchesStringForPluginQuery:()LSPluginQueryAdditions
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![v4 hasPrefix:@"?"])
  {
    if ([v4 hasPrefix:@"<>"])
    {
      v6 = [v4 substringFromIndex:2];
      v7 = [(__CFString *)a1 compare:v6 options:64]== 0;
    }

    else if ([v4 hasPrefix:@"<="])
    {
      v6 = [v4 substringFromIndex:2];
      v7 = [(__CFString *)a1 compare:v6 options:64]== 1;
    }

    else
    {
      if (![v4 hasPrefix:@"=>"])
      {
        if ([v4 hasPrefix:@"="])
        {
          v6 = [v4 substringFromIndex:1];
          v12 = [(__CFString *)a1 compare:v6 options:64]== 0;
        }

        else if ([v4 hasPrefix:@"<"])
        {
          v6 = [v4 substringFromIndex:1];
          v12 = [(__CFString *)a1 compare:v6 options:64]== -1;
        }

        else
        {
          if (![v4 hasPrefix:@">"])
          {
            v8 = [(__CFString *)a1 compare:v4 options:64]== 0;
            goto LABEL_20;
          }

          v6 = [v4 substringFromIndex:1];
          v12 = [(__CFString *)a1 compare:v6 options:64]== 1;
        }

        v8 = v12;
        goto LABEL_19;
      }

      v6 = [v4 substringFromIndex:2];
      v7 = [(__CFString *)a1 compare:v6 options:64]== -1;
    }

    v8 = !v7;
LABEL_19:

    goto LABEL_20;
  }

  if ([v4 hasPrefix:@"?UT-CONFORMS:"])
  {
    v5 = UTTypeConformsTo(a1, [v4 substringFromIndex:13]);
LABEL_8:
    v8 = v5 != 0;
    goto LABEL_20;
  }

  if ([v4 hasPrefix:@"?UT-IS:"])
  {
    v5 = UTTypeConformsTo([v4 substringFromIndex:7], a1);
    goto LABEL_8;
  }

  v9 = _LSDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, "Unrecognized match operator %@", &v13, 0xCu);
  }

  v8 = 0;
LABEL_20:

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (uint64_t)ls_matchesForPluginQuery:()LSPluginQueryAdditions
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (_NSIsNSString())
  {
    v5 = [a1 ls_matchesStringForPluginQuery:v4];
    *(v12 + 24) = v5;
  }

  else if (_NSIsNSArray())
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__NSString_LSPluginQueryAdditions__ls_matchesForPluginQuery___block_invoke;
    v8[3] = &unk_1E6A1D748;
    v10 = &v11;
    v8[4] = a1;
    v9 = v4;
    [v9 enumerateObjectsUsingBlock:v8];
  }

  v6 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v6;
}

@end