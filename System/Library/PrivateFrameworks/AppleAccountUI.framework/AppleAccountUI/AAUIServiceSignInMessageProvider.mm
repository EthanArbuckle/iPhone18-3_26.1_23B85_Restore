@interface AAUIServiceSignInMessageProvider
+ (id)_messageStringForAMPService:(unint64_t)a3;
+ (id)_messageStringForService:(id)a3;
+ (id)_messageStringForSplitSignInWithServiceTypes:(id)a3;
+ (id)messageForConfiguration:(id)a3;
@end

@implementation AAUIServiceSignInMessageProvider

+ (id)messageForConfiguration:(id)a3
{
  v4 = a3;
  if ([v4 splitSignIn])
  {
    v5 = [v4 serviceTypes];
    v6 = [a1 _messageStringForSplitSignInWithServiceTypes:v5];
LABEL_5:
    v9 = v6;

    goto LABEL_6;
  }

  v7 = [v4 serviceType];
  v8 = *MEMORY[0x1E698C238];

  if (v7 != v8)
  {
    v5 = [v4 serviceType];
    v6 = [a1 _messageStringForService:v5];
    goto LABEL_5;
  }

  v9 = [a1 _messageStringForAMPService:{objc_msgSend(v4, "ampServiceType")}];
LABEL_6:

  return v9;
}

+ (id)_messageStringForSplitSignInWithServiceTypes:(id)a3
{
  v3 = [a3 containsObject:*MEMORY[0x1E698C238]];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3)
  {
    v6 = @"SIGN_IN_SUBTITLE_SPLIT_STORE";
  }

  else
  {
    v6 = @"SIGN_IN_SUBTITLE_SPLIT_ICLOUD";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F447F790 table:@"Localizable"];

  return v7;
}

+ (id)_messageStringForService:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Setting default subtitle.", v16, 2u);
    }

    goto LABEL_8;
  }

  if ([v3 isEqualToString:*MEMORY[0x1E698C218]])
  {
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Setting iCloud subtitle.", buf, 2u);
    }

    v6 = @"SIGN_IN_SUBTITLE_ICLOUD";
    goto LABEL_21;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698C230]])
  {
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Setting iMessage subtitle.", v14, 2u);
    }

    v6 = @"SIGN_IN_SUBTITLE_IMESSAGE";
    goto LABEL_21;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698C220]])
  {
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Setting FaceTime subtitle.", v13, 2u);
    }

    v6 = @"SIGN_IN_SUBTITLE_FACETIME";
    goto LABEL_21;
  }

  v7 = [v4 isEqualToString:*MEMORY[0x1E698C228]];
  v8 = _AAUILogSystem();
  v5 = v8;
  if (!v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(AAUIServiceSignInMessageProvider *)v4 _messageStringForService:v5];
    }

LABEL_8:
    v6 = @"SIGN_IN_SUBTITLE";
    goto LABEL_21;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Setting GameCenter subtitle.", v12, 2u);
  }

  v6 = @"SIGN_IN_SUBTITLE_GAMECENTER";
LABEL_21:

  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:v6 value:&stru_1F447F790 table:@"Localizable"];

  return v10;
}

+ (id)_messageStringForAMPService:(unint64_t)a3
{
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v4 = _AAUILogSystem();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Setting Apple TV subtitle.", v13, 2u);
        }

        v5 = @"SIGN_IN_SUBTITLE_TV";
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_31;
        }

        v4 = _AAUILogSystem();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Setting Apple Music subtitle.", v12, 2u);
        }

        v5 = @"SIGN_IN_SUBTITLE_MUSIC";
      }
    }

    else
    {
      v4 = _AAUILogSystem();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Setting App Store subtitle.", v14, 2u);
      }

      v5 = @"SIGN_IN_SUBTITLE_STORE";
    }
  }

  else if (a3 > 4)
  {
    if (a3 == 5)
    {
      v4 = _AAUILogSystem();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Setting Apple News subtitle.", v9, 2u);
      }

      v5 = @"SIGN_IN_SUBTITLE_NEWS";
    }

    else
    {
      if (a3 != 6)
      {
        goto LABEL_31;
      }

      v4 = _AAUILogSystem();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Setting Apple Fitness+ subtitle.", v8, 2u);
      }

      v5 = @"SIGN_IN_SUBTITLE_FITNESS";
    }
  }

  else if (a3 == 3)
  {
    v4 = _AAUILogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Setting Apple Podcasts subtitle.", v11, 2u);
    }

    v5 = @"SIGN_IN_SUBTITLE_PODCASTS";
  }

  else
  {
    v4 = _AAUILogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Setting Apple Books subtitle.", buf, 2u);
    }

    v5 = @"SIGN_IN_SUBTITLE_BOOKS";
  }

  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v6 localizedStringForKey:v5 value:&stru_1F447F790 table:@"Localizable"];

LABEL_31:

  return v3;
}

+ (void)_messageStringForService:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&dword_1C5355000, a2, OS_LOG_TYPE_ERROR, "Invalid service type (%{private}@) provided, please file a radar!", &v2, 0xCu);
}

@end