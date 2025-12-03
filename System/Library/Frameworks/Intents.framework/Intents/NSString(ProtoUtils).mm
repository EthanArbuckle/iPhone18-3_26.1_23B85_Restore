@interface NSString(ProtoUtils)
- (id)_intents_allowedUnarchiverClassesForProtoAsClasses;
- (id)_intents_allowedUnarchiverClassesForProtoAsStrings;
- (id)_intents_decodeFromProto;
- (id)_intents_encodeForProto;
@end

@implementation NSString(ProtoUtils)

- (id)_intents_encodeForProto
{
  v1 = [self copy];

  return v1;
}

- (id)_intents_decodeFromProto
{
  v27 = *MEMORY[0x1E69E9840];
  if (_INSharedClassPrefixRegularExpression_onceToken != -1)
  {
    dispatch_once(&_INSharedClassPrefixRegularExpression_onceToken, &__block_literal_global_35);
  }

  v2 = _INSharedClassPrefixRegularExpression_regularExpression;
  v3 = [v2 firstMatchInString:self options:0 range:{0, objc_msgSend(self, "length")}];

  if (v3 && (v4 = [v3 rangeAtIndex:1], v4 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v7 = [self substringWithRange:{v4, v5}];
    [v3 range];
    v9 = [self substringFromIndex:v8];
    if ([v9 length])
    {
      v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:0];
      if (v10)
      {
        _intents_allowedUnarchiverClassesForProtoAsStrings = [self _intents_allowedUnarchiverClassesForProtoAsStrings];
        _intents_allowedUnarchiverClassesForProtoAsClasses = [self _intents_allowedUnarchiverClassesForProtoAsClasses];
        if (_intents_allowedUnarchiverClassesForProtoAsClasses && _intents_allowedUnarchiverClassesForProtoAsStrings)
        {
          if (([_intents_allowedUnarchiverClassesForProtoAsStrings containsObject:v7] & 1) == 0)
          {
            v13 = INSiriLogContextIntents;
            if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v22 = "[NSString(ProtoUtils) _intents_decodeFromProto]";
              v23 = 2112;
              v24 = v7;
              v25 = 2112;
              v26 = _intents_allowedUnarchiverClassesForProtoAsClasses;
              _os_log_error_impl(&dword_18E991000, v13, OS_LOG_TYPE_ERROR, "%s Proto references class %@ which is not an allowed class (%@)", buf, 0x20u);
            }
          }

          v20 = 0;
          selfCopy3 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:_intents_allowedUnarchiverClassesForProtoAsClasses fromData:v10 error:&v20];
          v14 = v20;
          if (selfCopy3)
          {
            v15 = selfCopy3;
          }

          else
          {
            v17 = INSiriLogContextIntents;
            if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v22 = "[NSString(ProtoUtils) _intents_decodeFromProto]";
              v23 = 2112;
              v24 = v14;
              _os_log_error_impl(&dword_18E991000, v17, OS_LOG_TYPE_ERROR, "%s Failed to decode string for proto: %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v16 = INSiriLogContextIntents;
          if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v22 = "[NSString(ProtoUtils) _intents_decodeFromProto]";
            _os_log_error_impl(&dword_18E991000, v16, OS_LOG_TYPE_ERROR, "%s Failed to find allowed classes for proto", buf, 0xCu);
          }

          selfCopy3 = 0;
        }
      }

      else
      {
        selfCopy3 = self;
      }
    }

    else
    {
      selfCopy3 = self;
    }
  }

  else
  {
    selfCopy3 = self;
  }

  v18 = *MEMORY[0x1E69E9840];

  return selfCopy3;
}

- (id)_intents_allowedUnarchiverClassesForProtoAsStrings
{
  if (_intents_allowedUnarchiverClassesForProtoAsStrings_onceToken != -1)
  {
    dispatch_once(&_intents_allowedUnarchiverClassesForProtoAsStrings_onceToken, &__block_literal_global_5_94148);
  }

  v1 = _intents_allowedUnarchiverClassesForProtoAsStrings___classesAsStrings;

  return v1;
}

- (id)_intents_allowedUnarchiverClassesForProtoAsClasses
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__NSString_ProtoUtils___intents_allowedUnarchiverClassesForProtoAsClasses__block_invoke;
  block[3] = &unk_1E72882F8;
  block[4] = self;
  if (_intents_allowedUnarchiverClassesForProtoAsClasses_onceToken != -1)
  {
    dispatch_once(&_intents_allowedUnarchiverClassesForProtoAsClasses_onceToken, block);
  }

  return _intents_allowedUnarchiverClassesForProtoAsClasses___allowedClasses;
}

@end