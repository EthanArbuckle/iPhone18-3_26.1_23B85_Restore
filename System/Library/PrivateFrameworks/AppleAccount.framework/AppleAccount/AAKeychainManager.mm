@interface AAKeychainManager
+ (id)passwordForServiceName:(id)a3 username:(id)a4 accessGroup:(id)a5;
+ (void)initialize;
+ (void)removePasswordForService:(id)a3 username:(id)a4 accessGroup:(id)a5;
+ (void)setPassword:(id)a3 forServiceName:(id)a4 username:(id)a5 accessGroup:(id)a6;
@end

@implementation AAKeychainManager

+ (void)initialize
{
  _aa_keychainLock = objc_alloc_init(MEMORY[0x1E696AD10]);

  MEMORY[0x1EEE66BB8]();
}

+ (id)passwordForServiceName:(id)a3 username:(id)a4 accessGroup:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (![v7 length] || !objc_msgSend(v8, "length"))
  {
    v18 = 0;
    goto LABEL_23;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC30], v8);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE88], v7);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B318], *MEMORY[0x1E695E4D0]);
  if (v9)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD0], v9);
  }

  result = 0;
  v11 = SecItemCopyMatching(Mutable, &result);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = result == 0;
  }

  if (v12)
  {
    v13 = v11;
    v14 = _AALogSystem();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v13 == -25308)
      {
        if (v15)
        {
          *buf = 0;
          v16 = "SecItemCopyMatching Error: errInteractionNotAllowed - The keychain is inaccessible. It may be locked.";
LABEL_17:
          v19 = v14;
          v20 = 2;
LABEL_20:
          _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, v16, buf, v20);
        }
      }

      else if (v15)
      {
        *buf = 67109634;
        v25 = v13;
        v26 = 2112;
        v27 = v7;
        v28 = 2112;
        v29 = v8;
        v16 = "SecItemCopyMatching result: %d - keychain item %@ - username %@";
        v19 = v14;
        v20 = 28;
        goto LABEL_20;
      }
    }

    else if (v15)
    {
      *buf = 0;
      v16 = "SecItemCopyMatching succeeded with empty results";
      goto LABEL_17;
    }

    v18 = 0;
    goto LABEL_22;
  }

  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  v18 = [v17 initWithData:result encoding:4];
  CFRelease(result);
LABEL_22:
  CFRelease(Mutable);
LABEL_23:

  v21 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (void)setPassword:(id)a3 forServiceName:(id)a4 username:(id)a5 accessGroup:(id)a6
{
  result[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  [_aa_keychainLock lock];
  if ([v10 length] && objc_msgSend(v9, "length") && objc_msgSend(v11, "length"))
  {
    v13 = [v9 dataUsingEncoding:4];
    v14 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC30], v11);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE88], v10);
    if (v12)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD0], v12);
    }

    v16 = [objc_opt_class() passwordForServiceName:v10 username:v11 accessGroup:v12];
    if (!v16)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD8], *MEMORY[0x1E697ABE0]);
      result[0] = 0;
      v24 = v13;
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B3C0], v13);
      v17 = SecItemAdd(Mutable, result);
      if (!v17)
      {
LABEL_18:
        CFRelease(Mutable);

        goto LABEL_19;
      }

      v18 = v17;
      v19 = _AALogSystem();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v26 = v18;
        _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "SecItemAdd result: %d", buf, 8u);
      }

      v13 = v24;
    }

    if (([v16 isEqualToString:v9] & 1) == 0)
    {
      v20 = CFDictionaryCreateMutable(v14, 0, 0, 0);
      CFDictionaryAddValue(v20, *MEMORY[0x1E697B3C0], v13);
      CFDictionaryAddValue(v20, *MEMORY[0x1E697ABD8], *MEMORY[0x1E697ABE0]);
      v21 = SecItemUpdate(Mutable, v20);
      if (v20)
      {
        CFRelease(v20);
      }

      if (v21)
      {
        v22 = _AALogSystem();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(result[0]) = 67109120;
          HIDWORD(result[0]) = v21;
          _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "SecItemUpdate result: %d", result, 8u);
        }
      }
    }

    goto LABEL_18;
  }

LABEL_19:
  [_aa_keychainLock unlock];

  v23 = *MEMORY[0x1E69E9840];
}

+ (void)removePasswordForService:(id)a3 username:(id)a4 accessGroup:(id)a5
{
  value = a3;
  v7 = a4;
  v8 = a5;
  [_aa_keychainLock lock];
  if ([value length] && objc_msgSend(v7, "length"))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC30], v7);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE88], value);
    if (v8)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD0], v8);
    }

    SecItemDelete(Mutable);
    CFRelease(Mutable);
  }

  [_aa_keychainLock unlock];
}

@end