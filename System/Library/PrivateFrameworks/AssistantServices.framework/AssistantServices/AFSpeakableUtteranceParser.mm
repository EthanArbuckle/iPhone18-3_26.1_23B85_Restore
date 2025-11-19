@interface AFSpeakableUtteranceParser
+ (id)parseUserGeneratedMessage:(id)a3;
- (AFSpeakableUtteranceParser)init;
- (AFSpeakableUtteranceParser)initWithLocale:(id)a3;
- (BOOL)handleTTSCodes;
- (BOOL)handlesFunctions;
- (id)_handleControlCodeAtIndex:(unsigned int)a3 withBuffer:(id *)a4 totalLength:(unint64_t)a5 consumedLength:(unsigned int *)a6 hadEmpties:(BOOL *)a7 containsPrivacySensitiveContents:(BOOL *)a8 externalProviders:(BOOL *)a9;
- (id)_handleOptionalAtIndex:(unsigned int)a3 withBuffer:(id *)a4 totalLength:(unint64_t)a5 consumedLength:(unsigned int *)a6 containsPrivacySensitiveContents:(BOOL *)a7 externalProviders:(BOOL *)a8;
- (id)_handleProviderAtIndex:(unsigned int)a3 withBuffer:(id *)a4 totalLength:(unint64_t)a5 consumedLength:(unsigned int *)a6 containsPrivacySensitiveContents:(BOOL *)a7 hadEmpties:(BOOL *)a8 externalProviders:(BOOL *)a9;
- (id)parseStringRemovingControlCharacters:(id)a3 error:(id *)a4;
- (id)parseStringRemovingControlCharacters:(id)a3 error:(id *)a4 containsPrivacySensitiveContents:(BOOL *)a5;
- (id)parseStringWithFormat:(id)a3 error:(id *)a4 containsPrivacySensitiveContents:(BOOL *)a5 hasExternalDomains:(BOOL *)a6;
- (id)parseStringWithFormat:(id)a3 error:(id *)a4 hasExternalDomains:(BOOL *)a5;
- (id)parseStringWithFormat:(id)a3 includeControlCharacters:(BOOL)a4 error:(id *)a5 hadEmpties:(BOOL *)a6 containsPrivacySensitiveContents:(BOOL *)a7 externalProviders:(BOOL *)a8;
- (void)registerProvider:(id)a3 forNamespace:(id)a4;
- (void)setHandleTTSCodes:(BOOL)a3;
- (void)setHandlesFunctions:(BOOL)a3;
@end

@implementation AFSpeakableUtteranceParser

- (BOOL)handleTTSCodes
{
  v2 = [(NSMutableDictionary *)self->_providers objectForKey:@"tts"];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)handlesFunctions
{
  v2 = [(NSMutableDictionary *)self->_providers objectForKey:@"fn"];
  v3 = v2 != 0;

  return v3;
}

- (id)parseStringRemovingControlCharacters:(id)a3 error:(id *)a4 containsPrivacySensitiveContents:(BOOL *)a5
{
  if (a5)
  {
    *a5 = 0;
  }

  v7 = 0;
  v5 = [AFSpeakableUtteranceParser parseStringWithFormat:"parseStringWithFormat:includeControlCharacters:error:hadEmpties:containsPrivacySensitiveContents:externalProviders:" includeControlCharacters:a3 error:0 hadEmpties:a4 containsPrivacySensitiveContents:&v7 externalProviders:?];

  return v5;
}

- (id)parseStringRemovingControlCharacters:(id)a3 error:(id *)a4
{
  v6 = 0;
  v4 = [(AFSpeakableUtteranceParser *)self parseStringWithFormat:a3 includeControlCharacters:0 error:a4 hadEmpties:&v6 containsPrivacySensitiveContents:&v6 externalProviders:0];

  return v4;
}

- (id)parseStringWithFormat:(id)a3 error:(id *)a4 containsPrivacySensitiveContents:(BOOL *)a5 hasExternalDomains:(BOOL *)a6
{
  if (a5)
  {
    *a5 = 0;
  }

  v8 = 0;
  v6 = [(AFSpeakableUtteranceParser *)self _parseStringWithFormat:a3 error:a4 hadEmpties:&v8 containsPrivacySensitiveContents:a5 externalProviders:a6];

  return v6;
}

- (id)parseStringWithFormat:(id)a3 error:(id *)a4 hasExternalDomains:(BOOL *)a5
{
  v7 = 0;
  v5 = [(AFSpeakableUtteranceParser *)self _parseStringWithFormat:a3 error:a4 hadEmpties:&v7 + 1 containsPrivacySensitiveContents:&v7 externalProviders:a5];

  return v5;
}

- (id)parseStringWithFormat:(id)a3 includeControlCharacters:(BOOL)a4 error:(id *)a5 hadEmpties:(BOOL *)a6 containsPrivacySensitiveContents:(BOOL *)a7 externalProviders:(BOOL *)a8
{
  v11 = a4;
  v13 = a3;
  v14 = v13;
  if (a7)
  {
    *a7 = 0;
  }

  v15 = [(__CFString *)v13 length];
  v16 = [MEMORY[0x1E696AD60] stringWithCapacity:v15];
  if (v15)
  {
    v32 = a7;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    *buffer = 0u;
    v39 = 0u;
    theString[0] = v14;
    *(&v47 + 1) = 0;
    *&v48 = v15;
    CharactersPtr = CFStringGetCharactersPtr(v14);
    CStringPtr = 0;
    theString[1] = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v14, 0x600u);
    }

    v31 = v14;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    *(&v48 + 1) = 0;
    v49 = 0;
    *&v47 = CStringPtr;
    while (1)
    {
      v22 = v48;
      if (v48 <= v19)
      {
        chars = 0;
      }

      else
      {
        if (theString[1])
        {
          v23 = *(&theString[1]->isa + *(&v47 + 1) + v19);
        }

        else if (v47)
        {
          v23 = *(v47 + *(&v47 + 1) + v19);
        }

        else
        {
          v24 = *(&v48 + 1);
          if (v49 <= v19 || *(&v48 + 1) > v19)
          {
            v26 = v19 - 4;
            if (v21 < 4)
            {
              v26 = 0;
            }

            if (v26 + 64 < v48)
            {
              v22 = v26 + 64;
            }

            *(&v48 + 1) = v26;
            v49 = v22;
            v51.length = v22 - v26;
            v51.location = *(&v47 + 1) + v26;
            CFStringGetCharacters(theString[0], v51, buffer);
            v24 = *(&v48 + 1);
          }

          v23 = buffer[v19 - v24];
        }

        chars = v23;
        if (v23 == 64)
        {
          v36 = 0;
          v35 = 0;
          v33[8] = *theString;
          v33[9] = v47;
          v33[10] = v48;
          v34 = v49;
          v33[4] = v42;
          v33[5] = v43;
          v33[6] = v44;
          v33[7] = v45;
          v33[0] = *buffer;
          v33[1] = v39;
          v33[2] = v40;
          v33[3] = v41;
          v27 = [(AFSpeakableUtteranceParser *)self _handleControlCodeAtIndex:v21 + 1 withBuffer:v33 totalLength:v15 consumedLength:&v36 hadEmpties:a6 containsPrivacySensitiveContents:&v35 externalProviders:a8];
          v28 = v27;
          if (v11 && [v27 length])
          {
            [(__CFString *)v16 appendString:v28];
          }

          v29 = v35;
          if (v36)
          {
            v21 += v36;
          }

          else
          {
            CFStringAppendCharacters(v16, &chars, 1);
          }

          v20 |= v29;

          goto LABEL_32;
        }
      }

      CFStringAppendCharacters(v16, &chars, 1);
LABEL_32:
      v19 = ++v21;
      if (v15 <= v21)
      {
        v14 = v31;
        if (v32 != 0 && (v20 & 1) != 0)
        {
          *v32 = 1;
        }

        break;
      }
    }
  }

  return v16;
}

- (id)_handleControlCodeAtIndex:(unsigned int)a3 withBuffer:(id *)a4 totalLength:(unint64_t)a5 consumedLength:(unsigned int *)a6 hadEmpties:(BOOL *)a7 containsPrivacySensitiveContents:(BOOL *)a8 externalProviders:(BOOL *)a9
{
  if (!a6)
  {
    __assert_rtn("[AFSpeakableUtteranceParser _handleControlCodeAtIndex:withBuffer:totalLength:consumedLength:hadEmpties:containsPrivacySensitiveContents:externalProviders:]", "AFSpeakableUtteranceParser.m", 270, "consumed && Need to provide a consumer.");
  }

  if (a8)
  {
    *a8 = 0;
  }

  if (a5 - 1 <= a3 || (var1 = a4->var4.var1, var1 <= a3))
  {
LABEL_21:
    v27 = &stru_1F0512680;
    goto LABEL_22;
  }

  var2 = a4->var2;
  if (var2)
  {
    v18 = var2[a4->var4.var0 + a3];
  }

  else
  {
    var3 = a4->var3;
    if (var3)
    {
      v18 = var3[a4->var4.var0 + a3];
    }

    else
    {
      if (a4->var6 <= a3 || (var5 = a4->var5, var5 > a3))
      {
        v21 = a3 - 4;
        if (a3 < 4)
        {
          v21 = 0;
        }

        if (v21 + 64 < var1)
        {
          var1 = v21 + 64;
        }

        a4->var5 = v21;
        a4->var6 = var1;
        v48.length = var1 - v21;
        v48.location = a4->var4.var0 + v21;
        CFStringGetCharacters(a4->var1, v48, a4->var0);
        var5 = a4->var5;
      }

      v18 = a4->var0[a3 - var5];
    }
  }

  if (v18 != 123)
  {
    if (v18 == 91)
    {
      ++*a6;
      v22 = *&a4->var3;
      v43 = *&a4->var1;
      v44 = v22;
      v45 = *&a4->var4.var1;
      var6 = a4->var6;
      v23 = *&a4->var0[40];
      v39 = *&a4->var0[32];
      v40 = v23;
      v24 = *&a4->var0[56];
      v41 = *&a4->var0[48];
      v42 = v24;
      v25 = *&a4->var0[8];
      v35 = *a4->var0;
      v36 = v25;
      v26 = *&a4->var0[24];
      v37 = *&a4->var0[16];
      v38 = v26;
      v27 = [(AFSpeakableUtteranceParser *)self _handleOptionalAtIndex:a3 + 1 withBuffer:&v35 totalLength:a5 consumedLength:a6 containsPrivacySensitiveContents:a8 externalProviders:a9];
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  ++*a6;
  v29 = *&a4->var3;
  v43 = *&a4->var1;
  v44 = v29;
  v45 = *&a4->var4.var1;
  var6 = a4->var6;
  v30 = *&a4->var0[40];
  v39 = *&a4->var0[32];
  v40 = v30;
  v31 = *&a4->var0[56];
  v41 = *&a4->var0[48];
  v42 = v31;
  v32 = *&a4->var0[8];
  v35 = *a4->var0;
  v36 = v32;
  v33 = *&a4->var0[24];
  v37 = *&a4->var0[16];
  v38 = v33;
  v27 = [(AFSpeakableUtteranceParser *)self _handleProviderAtIndex:a3 + 1 withBuffer:&v35 totalLength:a5 consumedLength:a6 containsPrivacySensitiveContents:a8 hadEmpties:a7 externalProviders:a9];
  v34 = [(__CFString *)v27 length];
  if (a7 && !v34)
  {
    *a7 = 1;
  }

LABEL_22:

  return v27;
}

- (id)_handleOptionalAtIndex:(unsigned int)a3 withBuffer:(id *)a4 totalLength:(unint64_t)a5 consumedLength:(unsigned int *)a6 containsPrivacySensitiveContents:(BOOL *)a7 externalProviders:(BOOL *)a8
{
  if (a7)
  {
    *a7 = 0;
  }

  v15 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v16 = a5 - 1;
  if (a5 - 1 <= a3)
  {
    v18 = &stru_1F0512680;
    goto LABEL_30;
  }

  v28 = a8;
  v17 = a3;
  v18 = &stru_1F0512680;
  while (1)
  {
    var1 = a4->var4.var1;
    if (var1 > v17)
    {
      break;
    }

    v21 = 0;
    ++*a6;
LABEL_20:
    [v15 appendFormat:@"%C", v21];
    v17 = ++a3;
    if (v16 <= a3)
    {
      goto LABEL_30;
    }
  }

  var2 = a4->var2;
  if (var2)
  {
    v21 = var2[a4->var4.var0 + v17];
  }

  else
  {
    var3 = a4->var3;
    if (var3)
    {
      v21 = var3[a4->var4.var0 + v17];
    }

    else
    {
      if (a4->var6 <= v17 || (var5 = a4->var5, var5 > v17))
      {
        v24 = v17 - 4;
        if (a3 < 4)
        {
          v24 = 0;
        }

        if (v24 + 64 < var1)
        {
          var1 = v24 + 64;
        }

        a4->var5 = v24;
        a4->var6 = var1;
        v31.length = var1 - v24;
        v31.location = a4->var4.var0 + v24;
        CFStringGetCharacters(a4->var1, v31, a4->var0);
        var5 = a4->var5;
      }

      v21 = a4->var0[v17 - var5];
    }
  }

  ++*a6;
  if (v21 != 93)
  {
    goto LABEL_20;
  }

  v29 = 0;
  v25 = [(AFSpeakableUtteranceParser *)self parseStringWithFormat:v15 includeControlCharacters:1 error:0 hadEmpties:&v29 + 1 containsPrivacySensitiveContents:&v29 externalProviders:v28];
  v26 = v25;
  if ((v29 & 0x100) != 0)
  {
    v18 = &stru_1F0512680;
  }

  else
  {
    if (a7 && (v29 & 1) != 0)
    {
      *a7 = 1;
    }

    v18 = v25;
  }

LABEL_30:

  return v18;
}

- (id)_handleProviderAtIndex:(unsigned int)a3 withBuffer:(id *)a4 totalLength:(unint64_t)a5 consumedLength:(unsigned int *)a6 containsPrivacySensitiveContents:(BOOL *)a7 hadEmpties:(BOOL *)a8 externalProviders:(BOOL *)a9
{
  if (a7)
  {
    *a7 = 0;
  }

  v16 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v17 = a3;
  if (a3 >= a5)
  {
    v18 = &stru_1F0512680;
    goto LABEL_24;
  }

  v43 = a8;
  v44 = self;
  v45 = a7;
  v18 = &stru_1F0512680;
  while (1)
  {
    var1 = a4->var4.var1;
    if (var1 > v17)
    {
      break;
    }

    v21 = 0;
    ++*a6;
    ++a3;
LABEL_21:
    [v16 appendFormat:@"%C", v21];
    v17 = a3;
    if (a3 >= a5)
    {
      goto LABEL_24;
    }
  }

  var2 = a4->var2;
  if (var2)
  {
    LOWORD(v21) = var2[a4->var4.var0 + v17];
  }

  else
  {
    var3 = a4->var3;
    if (var3)
    {
      LOWORD(v21) = var3[a4->var4.var0 + v17];
    }

    else
    {
      if (a4->var6 <= v17 || (var5 = a4->var5, var5 > v17))
      {
        v24 = v17 - 4;
        if (a3 < 4)
        {
          v24 = 0;
        }

        if (v24 + 64 < var1)
        {
          var1 = v24 + 64;
        }

        a4->var5 = v24;
        a4->var6 = var1;
        v50.length = var1 - v24;
        v50.location = a4->var4.var0 + v24;
        CFStringGetCharacters(a4->var1, v50, a4->var0);
        var5 = a4->var5;
      }

      LOWORD(v21) = a4->var0[v17 - var5];
    }
  }

  ++*a6;
  ++a3;
  v21 = v21;
  if (v21 != 35)
  {
    if (v21 == 125)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (a9 && !*a9 && ([v16 isEqualToString:@"tts"] & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"fn") & 1) == 0)
  {
    *a9 = 1;
  }

  v26 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v27 = 0;
  while (2)
  {
    v28 = a4->var4.var1;
    if (v28 <= a3)
    {
      v31 = 0;
      v30 = 0;
      ++*a6;
LABEL_51:
      v36 = v30;
      ++a3;
      [v26 appendFormat:@"%C", v30];
      v37 = v31 << 31 >> 31;
      if (v36 == 123)
      {
        v37 = 1;
      }

      v27 += v37;
      continue;
    }

    break;
  }

  v29 = a4->var2;
  if (v29)
  {
    v30 = v29[a4->var4.var0 + a3];
  }

  else
  {
    v32 = a4->var3;
    if (v32)
    {
      v30 = v32[a4->var4.var0 + a3];
    }

    else
    {
      if (a4->var6 <= a3 || (v33 = a4->var5, v33 > a3))
      {
        v34 = a3 - 4;
        if (a3 < 4)
        {
          v34 = 0;
        }

        if (v34 + 64 < v28)
        {
          v28 = v34 + 64;
        }

        a4->var5 = v34;
        a4->var6 = v28;
        v51.length = v28 - v34;
        v51.location = a4->var4.var0 + v34;
        CFStringGetCharacters(a4->var1, v51, a4->var0);
        v33 = a4->var5;
      }

      v30 = a4->var0[a3 - v33];
    }
  }

  ++*a6;
  v31 = v30 == 125;
  if (v30 != 125 || v27 != 0)
  {
    goto LABEL_51;
  }

  v48 = 0;
  v47 = 0;
  v38 = [(AFSpeakableUtteranceParser *)self _parseStringWithFormat:v26 error:&v47 hadEmpties:v43 containsPrivacySensitiveContents:&v48 externalProviders:a9];
  v39 = v47;
  v40 = v39;
  if (v39)
  {
    NSLog(&cfstr_ErrorParsingRe.isa, v39);
  }

  v46 = 0;
  v41 = [(NSMutableDictionary *)v44->_providers objectForKey:v16];
  if (!v41)
  {
    goto LABEL_61;
  }

  if (objc_opt_respondsToSelector())
  {
    v42 = [v41 stringForExpression:v38 containsPrivacySensitiveContents:&v46];
    goto LABEL_62;
  }

  if (objc_opt_respondsToSelector())
  {
    v42 = [v41 stringForExpression:v38];
    v46 = [v38 isEqualToString:v42] ^ 1;
  }

  else
  {
LABEL_61:
    v42 = 0;
  }

LABEL_62:
  if (v48)
  {
    if (!v45)
    {
      goto LABEL_68;
    }

LABEL_67:
    *v45 = 1;
    goto LABEL_68;
  }

  if (v45 && (v46 & 1) != 0)
  {
    goto LABEL_67;
  }

LABEL_68:
  v18 = v42;

LABEL_24:

  return v18;
}

- (void)setHandlesFunctions:(BOOL)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3 && ![(AFSpeakableUtteranceParser *)self handlesFunctions])
  {
    functionHandler = self->_functionHandler;
    if (!functionHandler)
    {
      v6 = [[AFSUPFunctionProvider alloc] initWithLocale:self->_locale];
      v7 = self->_functionHandler;
      self->_functionHandler = v6;

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = self->_providers;
      v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v16 + 1) + 8 * i);
            v14 = [(NSMutableDictionary *)self->_providers objectForKey:v13, v16];
            [self->_functionHandler registerProvider:v14 forNamespace:v13];
          }

          v10 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }

      functionHandler = self->_functionHandler;
    }

    [(AFSpeakableUtteranceParser *)self registerProvider:functionHandler forNamespace:@"fn", v16];
    v15 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v4 = *MEMORY[0x1E69E9840];

    [(AFSpeakableUtteranceParser *)self registerProvider:0 forNamespace:@"fn"];
  }
}

- (void)setHandleTTSCodes:(BOOL)a3
{
  if (a3 && ![(AFSpeakableUtteranceParser *)self handleTTSCodes])
  {
    v4 = objc_alloc_init(_AFSpeakableUtterancePassThroughProvider);
    [(AFSpeakableUtteranceParser *)self registerProvider:v4 forNamespace:@"tts"];
  }

  else
  {

    [(AFSpeakableUtteranceParser *)self registerProvider:0 forNamespace:@"tts"];
  }
}

- (void)registerProvider:(id)a3 forNamespace:(id)a4
{
  v9 = a3;
  v6 = a4;
  providers = self->_providers;
  if (v9)
  {
    [(NSMutableDictionary *)providers setObject:v9 forKey:v6];
  }

  else
  {
    [(NSMutableDictionary *)providers removeObjectForKey:v6];
  }

  functionHandler = self->_functionHandler;
  if (functionHandler && functionHandler != v9)
  {
    [functionHandler registerProvider:v9 forNamespace:v6];
  }
}

- (AFSpeakableUtteranceParser)initWithLocale:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AFSpeakableUtteranceParser;
  v5 = [(AFSpeakableUtteranceParser *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    providers = v5->_providers;
    v5->_providers = v6;

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = [MEMORY[0x1E695DF58] currentLocale];
    }

    locale = v5->_locale;
    v5->_locale = v8;

    if ([objc_opt_class() _shouldAutomaticallyProvideFunctions])
    {
      [(AFSpeakableUtteranceParser *)v5 setHandlesFunctions:1];
    }
  }

  return v5;
}

- (AFSpeakableUtteranceParser)init
{
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [(AFSpeakableUtteranceParser *)self initWithLocale:v3];

  return v4;
}

+ (id)parseUserGeneratedMessage:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (parseUserGeneratedMessage__onceToken != -1)
  {
    dispatch_once(&parseUserGeneratedMessage__onceToken, &__block_literal_global_12861);
  }

  if (parseUserGeneratedMessage__AXSpeechTransformTextHandle)
  {
    v4 = parseUserGeneratedMessage__AXSpeechTransformTextHandle(v3, 3);
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "+[AFSpeakableUtteranceParser parseUserGeneratedMessage:]";
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s User Generated Message: %@", &v8, 0x16u);
      v5 = AFSiriLogContextConnection;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "+[AFSpeakableUtteranceParser parseUserGeneratedMessage:]";
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s Transformed Text: %@", &v8, 0x16u);
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

void __56__AFSpeakableUtteranceParser_parseUserGeneratedMessage___block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  if (!parseUserGeneratedMessage__AXSpeechTransformTextHandle)
  {
    v1 = dlopen("/usr/lib/libAXSpeechManager.dylib", 1);
    if (v1)
    {
      parseUserGeneratedMessage__AXSpeechTransformTextHandle = dlsym(v1, "AXSpeechTransformText");
      if (parseUserGeneratedMessage__AXSpeechTransformTextHandle)
      {
        goto LABEL_2;
      }

      v2 = AFSiriLogContextConnection;
      if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_2;
      }

      v3 = v2;
      v6 = 136315394;
      v7 = "+[AFSpeakableUtteranceParser parseUserGeneratedMessage:]_block_invoke";
      v8 = 2082;
      v9 = dlerror();
      v4 = "%s Could not find AXSpeechTransformText: %{public}s";
    }

    else
    {
      v5 = AFSiriLogContextConnection;
      if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_2;
      }

      v3 = v5;
      v6 = 136315394;
      v7 = "+[AFSpeakableUtteranceParser parseUserGeneratedMessage:]_block_invoke";
      v8 = 2082;
      v9 = dlerror();
      v4 = "%s Could not open speech manager dylib: %{public}s";
    }

    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, v4, &v6, 0x16u);
  }

LABEL_2:
  v0 = *MEMORY[0x1E69E9840];
}

@end