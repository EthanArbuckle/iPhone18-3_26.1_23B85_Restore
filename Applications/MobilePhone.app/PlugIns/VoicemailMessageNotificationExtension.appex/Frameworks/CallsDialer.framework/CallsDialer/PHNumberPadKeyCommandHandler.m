@interface PHNumberPadKeyCommandHandler
- (PHNumberPadKeyCommandHandler)initWithViewController:(id)a3 selector:(SEL)a4;
- (char)characterForNumberPadCharacter:(int64_t)a3;
- (int64_t)numberPadCharacterForString:(id)a3;
- (void)handleKeyCommand:(id)a3 receivedCharacterBlock:(id)a4 receivedSpecialCharacterBlock:(id)a5;
@end

@implementation PHNumberPadKeyCommandHandler

- (PHNumberPadKeyCommandHandler)initWithViewController:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  if (initWithViewController_selector__onceToken != -1)
  {
    [PHNumberPadKeyCommandHandler initWithViewController:selector:];
  }

  v14.receiver = self;
  v14.super_class = PHNumberPadKeyCommandHandler;
  v7 = [(PHNumberPadKeyCommandHandler *)&v14 init];
  if (v7)
  {
    if ([initWithViewController_selector__commandCharacters length])
    {
      v8 = 0;
      do
      {
        v9 = [initWithViewController_selector__commandCharacters substringWithRange:{v8, 1}];
        v10 = [UIKeyCommand keyCommandWithInput:v9 modifierFlags:0 action:a4];
        [v6 addKeyCommand:v10];

        ++v8;
      }

      while (v8 < [initWithViewController_selector__commandCharacters length]);
    }

    v11 = [UIKeyCommand keyCommandWithInput:@"\r" modifierFlags:0 action:a4];
    [v6 addKeyCommand:v11];
    v12 = [UIKeyCommand keyCommandWithInput:@"\b" modifierFlags:0 action:a4];

    [v6 addKeyCommand:v12];
  }

  return v7;
}

void __64__PHNumberPadKeyCommandHandler_initWithViewController_selector___block_invoke(id a1)
{
  v6 = [NSMutableString stringWithString:@"01234567890abcdefghijklmnopqrstuvwxyz+*#"];
  for (i = 0; i != 12; ++i)
  {
    v2 = [TPNumberPadButton localizedLettersForCharacter:TPNumberPadCharacters[i]];
    [v6 appendString:v2];
  }

  v3 = +[NSCharacterSet whitespaceCharacterSet];
  v4 = [v6 stringByTrimmingCharactersInSet:v3];
  v5 = initWithViewController_selector__commandCharacters;
  initWithViewController_selector__commandCharacters = v4;
}

- (void)handleKeyCommand:(id)a3 receivedCharacterBlock:(id)a4 receivedSpecialCharacterBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PHDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = v8;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Handling key command - %@", &v23, 0xCu);
  }

  if (v10)
  {
    v12 = [v8 input];
    v13 = [v12 isEqualToString:@"\r"];

    if (v13)
    {
      v14 = PHDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Calling callback for PHNumberPadKeyCommandHandlerSpecialCharacterDial", &v23, 2u);
      }

      v15 = 1;
LABEL_12:

      v10[2](v10, v15);
      goto LABEL_13;
    }

    v16 = [v8 input];
    v17 = [v16 isEqualToString:@"\b"];

    if (v17)
    {
      v14 = PHDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Calling callback for PHNumberPadKeyCommandHandlerSpecialCharacterBackspace", &v23, 2u);
      }

      v15 = 0;
      goto LABEL_12;
    }
  }

LABEL_13:
  if (v9)
  {
    v18 = [v8 input];
    v19 = [(PHNumberPadKeyCommandHandler *)self numberPadCharacterForString:v18];

    v20 = [(PHNumberPadKeyCommandHandler *)self characterForNumberPadCharacter:v19];
    if (v20)
    {
      v21 = v20;
      v22 = PHDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 67109120;
        LODWORD(v24) = v21;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Calling callback for character '%c'", &v23, 8u);
      }

      v9[2](v9, v21);
    }
  }
}

- (char)characterForNumberPadCharacter:(int64_t)a3
{
  if (a3 > 0xE)
  {
    return 48;
  }

  else
  {
    return a1234567890[a3];
  }
}

- (int64_t)numberPadCharacterForString:(id)a3
{
  v3 = a3;
  v4 = [[NSMutableDictionary alloc] initWithDictionary:&off_55E90];
  for (i = 0; i != 12; ++i)
  {
    v6 = TPNumberPadCharacters[i];
    v7 = [TPNumberPadButton localizedLettersForCharacter:v6];
    v8 = [v7 localizedLowercaseString];

    v9 = [NSNumber numberWithInteger:v6];
    [v4 setObject:v9 forKeyedSubscript:v8];
  }

  v10 = [v3 localizedLowercaseString];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [v4 allKeys];
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    v15 = 13;
    while (2)
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v20 + 1) + 8 * j);
        if ([v17 containsString:v10])
        {
          v18 = [v4 objectForKeyedSubscript:v17];
          v15 = [v18 intValue];

          goto LABEL_14;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 13;
  }

LABEL_14:

  return v15;
}

@end