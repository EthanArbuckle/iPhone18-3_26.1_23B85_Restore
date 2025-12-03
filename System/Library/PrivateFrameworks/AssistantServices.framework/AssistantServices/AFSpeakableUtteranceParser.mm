@interface AFSpeakableUtteranceParser
+ (id)parseUserGeneratedMessage:(id)message;
- (AFSpeakableUtteranceParser)init;
- (AFSpeakableUtteranceParser)initWithLocale:(id)locale;
- (BOOL)handleTTSCodes;
- (BOOL)handlesFunctions;
- (id)_handleControlCodeAtIndex:(unsigned int)index withBuffer:(id *)buffer totalLength:(unint64_t)length consumedLength:(unsigned int *)consumedLength hadEmpties:(BOOL *)empties containsPrivacySensitiveContents:(BOOL *)contents externalProviders:(BOOL *)providers;
- (id)_handleOptionalAtIndex:(unsigned int)index withBuffer:(id *)buffer totalLength:(unint64_t)length consumedLength:(unsigned int *)consumedLength containsPrivacySensitiveContents:(BOOL *)contents externalProviders:(BOOL *)providers;
- (id)_handleProviderAtIndex:(unsigned int)index withBuffer:(id *)buffer totalLength:(unint64_t)length consumedLength:(unsigned int *)consumedLength containsPrivacySensitiveContents:(BOOL *)contents hadEmpties:(BOOL *)empties externalProviders:(BOOL *)providers;
- (id)parseStringRemovingControlCharacters:(id)characters error:(id *)error;
- (id)parseStringRemovingControlCharacters:(id)characters error:(id *)error containsPrivacySensitiveContents:(BOOL *)contents;
- (id)parseStringWithFormat:(id)format error:(id *)error containsPrivacySensitiveContents:(BOOL *)contents hasExternalDomains:(BOOL *)domains;
- (id)parseStringWithFormat:(id)format error:(id *)error hasExternalDomains:(BOOL *)domains;
- (id)parseStringWithFormat:(id)format includeControlCharacters:(BOOL)characters error:(id *)error hadEmpties:(BOOL *)empties containsPrivacySensitiveContents:(BOOL *)contents externalProviders:(BOOL *)providers;
- (void)registerProvider:(id)provider forNamespace:(id)namespace;
- (void)setHandleTTSCodes:(BOOL)codes;
- (void)setHandlesFunctions:(BOOL)functions;
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

- (id)parseStringRemovingControlCharacters:(id)characters error:(id *)error containsPrivacySensitiveContents:(BOOL *)contents
{
  if (contents)
  {
    *contents = 0;
  }

  v7 = 0;
  v5 = [AFSpeakableUtteranceParser parseStringWithFormat:"parseStringWithFormat:includeControlCharacters:error:hadEmpties:containsPrivacySensitiveContents:externalProviders:" includeControlCharacters:characters error:0 hadEmpties:error containsPrivacySensitiveContents:&v7 externalProviders:?];

  return v5;
}

- (id)parseStringRemovingControlCharacters:(id)characters error:(id *)error
{
  v6 = 0;
  v4 = [(AFSpeakableUtteranceParser *)self parseStringWithFormat:characters includeControlCharacters:0 error:error hadEmpties:&v6 containsPrivacySensitiveContents:&v6 externalProviders:0];

  return v4;
}

- (id)parseStringWithFormat:(id)format error:(id *)error containsPrivacySensitiveContents:(BOOL *)contents hasExternalDomains:(BOOL *)domains
{
  if (contents)
  {
    *contents = 0;
  }

  v8 = 0;
  v6 = [(AFSpeakableUtteranceParser *)self _parseStringWithFormat:format error:error hadEmpties:&v8 containsPrivacySensitiveContents:contents externalProviders:domains];

  return v6;
}

- (id)parseStringWithFormat:(id)format error:(id *)error hasExternalDomains:(BOOL *)domains
{
  v7 = 0;
  v5 = [(AFSpeakableUtteranceParser *)self _parseStringWithFormat:format error:error hadEmpties:&v7 + 1 containsPrivacySensitiveContents:&v7 externalProviders:domains];

  return v5;
}

- (id)parseStringWithFormat:(id)format includeControlCharacters:(BOOL)characters error:(id *)error hadEmpties:(BOOL *)empties containsPrivacySensitiveContents:(BOOL *)contents externalProviders:(BOOL *)providers
{
  charactersCopy = characters;
  formatCopy = format;
  v14 = formatCopy;
  if (contents)
  {
    *contents = 0;
  }

  v15 = [(__CFString *)formatCopy length];
  v16 = [MEMORY[0x1E696AD60] stringWithCapacity:v15];
  if (v15)
  {
    contentsCopy = contents;
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
          v27 = [(AFSpeakableUtteranceParser *)self _handleControlCodeAtIndex:v21 + 1 withBuffer:v33 totalLength:v15 consumedLength:&v36 hadEmpties:empties containsPrivacySensitiveContents:&v35 externalProviders:providers];
          v28 = v27;
          if (charactersCopy && [v27 length])
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
        if (contentsCopy != 0 && (v20 & 1) != 0)
        {
          *contentsCopy = 1;
        }

        break;
      }
    }
  }

  return v16;
}

- (id)_handleControlCodeAtIndex:(unsigned int)index withBuffer:(id *)buffer totalLength:(unint64_t)length consumedLength:(unsigned int *)consumedLength hadEmpties:(BOOL *)empties containsPrivacySensitiveContents:(BOOL *)contents externalProviders:(BOOL *)providers
{
  if (!consumedLength)
  {
    __assert_rtn("[AFSpeakableUtteranceParser _handleControlCodeAtIndex:withBuffer:totalLength:consumedLength:hadEmpties:containsPrivacySensitiveContents:externalProviders:]", "AFSpeakableUtteranceParser.m", 270, "consumed && Need to provide a consumer.");
  }

  if (contents)
  {
    *contents = 0;
  }

  if (length - 1 <= index || (var1 = buffer->var4.var1, var1 <= index))
  {
LABEL_21:
    v27 = &stru_1F0512680;
    goto LABEL_22;
  }

  var2 = buffer->var2;
  if (var2)
  {
    v18 = var2[buffer->var4.var0 + index];
  }

  else
  {
    var3 = buffer->var3;
    if (var3)
    {
      v18 = var3[buffer->var4.var0 + index];
    }

    else
    {
      if (buffer->var6 <= index || (var5 = buffer->var5, var5 > index))
      {
        v21 = index - 4;
        if (index < 4)
        {
          v21 = 0;
        }

        if (v21 + 64 < var1)
        {
          var1 = v21 + 64;
        }

        buffer->var5 = v21;
        buffer->var6 = var1;
        v48.length = var1 - v21;
        v48.location = buffer->var4.var0 + v21;
        CFStringGetCharacters(buffer->var1, v48, buffer->var0);
        var5 = buffer->var5;
      }

      v18 = buffer->var0[index - var5];
    }
  }

  if (v18 != 123)
  {
    if (v18 == 91)
    {
      ++*consumedLength;
      v22 = *&buffer->var3;
      v43 = *&buffer->var1;
      v44 = v22;
      v45 = *&buffer->var4.var1;
      var6 = buffer->var6;
      v23 = *&buffer->var0[40];
      v39 = *&buffer->var0[32];
      v40 = v23;
      v24 = *&buffer->var0[56];
      v41 = *&buffer->var0[48];
      v42 = v24;
      v25 = *&buffer->var0[8];
      v35 = *buffer->var0;
      v36 = v25;
      v26 = *&buffer->var0[24];
      v37 = *&buffer->var0[16];
      v38 = v26;
      v27 = [(AFSpeakableUtteranceParser *)self _handleOptionalAtIndex:index + 1 withBuffer:&v35 totalLength:length consumedLength:consumedLength containsPrivacySensitiveContents:contents externalProviders:providers];
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  ++*consumedLength;
  v29 = *&buffer->var3;
  v43 = *&buffer->var1;
  v44 = v29;
  v45 = *&buffer->var4.var1;
  var6 = buffer->var6;
  v30 = *&buffer->var0[40];
  v39 = *&buffer->var0[32];
  v40 = v30;
  v31 = *&buffer->var0[56];
  v41 = *&buffer->var0[48];
  v42 = v31;
  v32 = *&buffer->var0[8];
  v35 = *buffer->var0;
  v36 = v32;
  v33 = *&buffer->var0[24];
  v37 = *&buffer->var0[16];
  v38 = v33;
  v27 = [(AFSpeakableUtteranceParser *)self _handleProviderAtIndex:index + 1 withBuffer:&v35 totalLength:length consumedLength:consumedLength containsPrivacySensitiveContents:contents hadEmpties:empties externalProviders:providers];
  v34 = [(__CFString *)v27 length];
  if (empties && !v34)
  {
    *empties = 1;
  }

LABEL_22:

  return v27;
}

- (id)_handleOptionalAtIndex:(unsigned int)index withBuffer:(id *)buffer totalLength:(unint64_t)length consumedLength:(unsigned int *)consumedLength containsPrivacySensitiveContents:(BOOL *)contents externalProviders:(BOOL *)providers
{
  if (contents)
  {
    *contents = 0;
  }

  v15 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v16 = length - 1;
  if (length - 1 <= index)
  {
    v18 = &stru_1F0512680;
    goto LABEL_30;
  }

  providersCopy = providers;
  indexCopy = index;
  v18 = &stru_1F0512680;
  while (1)
  {
    var1 = buffer->var4.var1;
    if (var1 > indexCopy)
    {
      break;
    }

    v21 = 0;
    ++*consumedLength;
LABEL_20:
    [v15 appendFormat:@"%C", v21];
    indexCopy = ++index;
    if (v16 <= index)
    {
      goto LABEL_30;
    }
  }

  var2 = buffer->var2;
  if (var2)
  {
    v21 = var2[buffer->var4.var0 + indexCopy];
  }

  else
  {
    var3 = buffer->var3;
    if (var3)
    {
      v21 = var3[buffer->var4.var0 + indexCopy];
    }

    else
    {
      if (buffer->var6 <= indexCopy || (var5 = buffer->var5, var5 > indexCopy))
      {
        v24 = indexCopy - 4;
        if (index < 4)
        {
          v24 = 0;
        }

        if (v24 + 64 < var1)
        {
          var1 = v24 + 64;
        }

        buffer->var5 = v24;
        buffer->var6 = var1;
        v31.length = var1 - v24;
        v31.location = buffer->var4.var0 + v24;
        CFStringGetCharacters(buffer->var1, v31, buffer->var0);
        var5 = buffer->var5;
      }

      v21 = buffer->var0[indexCopy - var5];
    }
  }

  ++*consumedLength;
  if (v21 != 93)
  {
    goto LABEL_20;
  }

  v29 = 0;
  v25 = [(AFSpeakableUtteranceParser *)self parseStringWithFormat:v15 includeControlCharacters:1 error:0 hadEmpties:&v29 + 1 containsPrivacySensitiveContents:&v29 externalProviders:providersCopy];
  v26 = v25;
  if ((v29 & 0x100) != 0)
  {
    v18 = &stru_1F0512680;
  }

  else
  {
    if (contents && (v29 & 1) != 0)
    {
      *contents = 1;
    }

    v18 = v25;
  }

LABEL_30:

  return v18;
}

- (id)_handleProviderAtIndex:(unsigned int)index withBuffer:(id *)buffer totalLength:(unint64_t)length consumedLength:(unsigned int *)consumedLength containsPrivacySensitiveContents:(BOOL *)contents hadEmpties:(BOOL *)empties externalProviders:(BOOL *)providers
{
  if (contents)
  {
    *contents = 0;
  }

  v16 = objc_alloc_init(MEMORY[0x1E696AD60]);
  indexCopy2 = index;
  if (index >= length)
  {
    v18 = &stru_1F0512680;
    goto LABEL_24;
  }

  emptiesCopy = empties;
  selfCopy = self;
  contentsCopy = contents;
  v18 = &stru_1F0512680;
  while (1)
  {
    var1 = buffer->var4.var1;
    if (var1 > indexCopy2)
    {
      break;
    }

    v21 = 0;
    ++*consumedLength;
    ++index;
LABEL_21:
    [v16 appendFormat:@"%C", v21];
    indexCopy2 = index;
    if (index >= length)
    {
      goto LABEL_24;
    }
  }

  var2 = buffer->var2;
  if (var2)
  {
    LOWORD(v21) = var2[buffer->var4.var0 + indexCopy2];
  }

  else
  {
    var3 = buffer->var3;
    if (var3)
    {
      LOWORD(v21) = var3[buffer->var4.var0 + indexCopy2];
    }

    else
    {
      if (buffer->var6 <= indexCopy2 || (var5 = buffer->var5, var5 > indexCopy2))
      {
        v24 = indexCopy2 - 4;
        if (index < 4)
        {
          v24 = 0;
        }

        if (v24 + 64 < var1)
        {
          var1 = v24 + 64;
        }

        buffer->var5 = v24;
        buffer->var6 = var1;
        v50.length = var1 - v24;
        v50.location = buffer->var4.var0 + v24;
        CFStringGetCharacters(buffer->var1, v50, buffer->var0);
        var5 = buffer->var5;
      }

      LOWORD(v21) = buffer->var0[indexCopy2 - var5];
    }
  }

  ++*consumedLength;
  ++index;
  v21 = v21;
  if (v21 != 35)
  {
    if (v21 == 125)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (providers && !*providers && ([v16 isEqualToString:@"tts"] & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"fn") & 1) == 0)
  {
    *providers = 1;
  }

  v26 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v27 = 0;
  while (2)
  {
    v28 = buffer->var4.var1;
    if (v28 <= index)
    {
      v31 = 0;
      v30 = 0;
      ++*consumedLength;
LABEL_51:
      v36 = v30;
      ++index;
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

  v29 = buffer->var2;
  if (v29)
  {
    v30 = v29[buffer->var4.var0 + index];
  }

  else
  {
    v32 = buffer->var3;
    if (v32)
    {
      v30 = v32[buffer->var4.var0 + index];
    }

    else
    {
      if (buffer->var6 <= index || (v33 = buffer->var5, v33 > index))
      {
        v34 = index - 4;
        if (index < 4)
        {
          v34 = 0;
        }

        if (v34 + 64 < v28)
        {
          v28 = v34 + 64;
        }

        buffer->var5 = v34;
        buffer->var6 = v28;
        v51.length = v28 - v34;
        v51.location = buffer->var4.var0 + v34;
        CFStringGetCharacters(buffer->var1, v51, buffer->var0);
        v33 = buffer->var5;
      }

      v30 = buffer->var0[index - v33];
    }
  }

  ++*consumedLength;
  v31 = v30 == 125;
  if (v30 != 125 || v27 != 0)
  {
    goto LABEL_51;
  }

  v48 = 0;
  v47 = 0;
  v38 = [(AFSpeakableUtteranceParser *)self _parseStringWithFormat:v26 error:&v47 hadEmpties:emptiesCopy containsPrivacySensitiveContents:&v48 externalProviders:providers];
  v39 = v47;
  v40 = v39;
  if (v39)
  {
    NSLog(&cfstr_ErrorParsingRe.isa, v39);
  }

  v46 = 0;
  v41 = [(NSMutableDictionary *)selfCopy->_providers objectForKey:v16];
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
    if (!contentsCopy)
    {
      goto LABEL_68;
    }

LABEL_67:
    *contentsCopy = 1;
    goto LABEL_68;
  }

  if (contentsCopy && (v46 & 1) != 0)
  {
    goto LABEL_67;
  }

LABEL_68:
  v18 = v42;

LABEL_24:

  return v18;
}

- (void)setHandlesFunctions:(BOOL)functions
{
  v21 = *MEMORY[0x1E69E9840];
  if (functions && ![(AFSpeakableUtteranceParser *)self handlesFunctions])
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

- (void)setHandleTTSCodes:(BOOL)codes
{
  if (codes && ![(AFSpeakableUtteranceParser *)self handleTTSCodes])
  {
    v4 = objc_alloc_init(_AFSpeakableUtterancePassThroughProvider);
    [(AFSpeakableUtteranceParser *)self registerProvider:v4 forNamespace:@"tts"];
  }

  else
  {

    [(AFSpeakableUtteranceParser *)self registerProvider:0 forNamespace:@"tts"];
  }
}

- (void)registerProvider:(id)provider forNamespace:(id)namespace
{
  providerCopy = provider;
  namespaceCopy = namespace;
  providers = self->_providers;
  if (providerCopy)
  {
    [(NSMutableDictionary *)providers setObject:providerCopy forKey:namespaceCopy];
  }

  else
  {
    [(NSMutableDictionary *)providers removeObjectForKey:namespaceCopy];
  }

  functionHandler = self->_functionHandler;
  if (functionHandler && functionHandler != providerCopy)
  {
    [functionHandler registerProvider:providerCopy forNamespace:namespaceCopy];
  }
}

- (AFSpeakableUtteranceParser)initWithLocale:(id)locale
{
  localeCopy = locale;
  v11.receiver = self;
  v11.super_class = AFSpeakableUtteranceParser;
  v5 = [(AFSpeakableUtteranceParser *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    providers = v5->_providers;
    v5->_providers = v6;

    if (localeCopy)
    {
      currentLocale = localeCopy;
    }

    else
    {
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    }

    locale = v5->_locale;
    v5->_locale = currentLocale;

    if ([objc_opt_class() _shouldAutomaticallyProvideFunctions])
    {
      [(AFSpeakableUtteranceParser *)v5 setHandlesFunctions:1];
    }
  }

  return v5;
}

- (AFSpeakableUtteranceParser)init
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [(AFSpeakableUtteranceParser *)self initWithLocale:currentLocale];

  return v4;
}

+ (id)parseUserGeneratedMessage:(id)message
{
  v12 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  if (parseUserGeneratedMessage__onceToken != -1)
  {
    dispatch_once(&parseUserGeneratedMessage__onceToken, &__block_literal_global_12861);
  }

  if (parseUserGeneratedMessage__AXSpeechTransformTextHandle)
  {
    v4 = parseUserGeneratedMessage__AXSpeechTransformTextHandle(messageCopy, 3);
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "+[AFSpeakableUtteranceParser parseUserGeneratedMessage:]";
      v10 = 2112;
      v11 = messageCopy;
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