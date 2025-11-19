@interface AXSSPunctuationGroup
+ (id)punctuationGroupFromJSONRepresentation:(id)a3;
- (AXSSPunctuationGroup)init;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSystemPunctuationGroup;
- (NSData)jsonRepresentation;
- (NSDictionary)jsonDictionary;
- (NSString)name;
- (id)description;
- (void)jsonRepresentation;
@end

@implementation AXSSPunctuationGroup

- (AXSSPunctuationGroup)init
{
  v5.receiver = self;
  v5.super_class = AXSSPunctuationGroup;
  v2 = [(AXSSPunctuationGroup *)&v5 init];
  v3 = [MEMORY[0x1E696AFB0] UUID];
  [(AXSSPunctuationGroup *)v2 setUuid:v3];

  [(AXSSPunctuationGroup *)v2 setBasePunctuationUUID:AXSSVoiceOverPunctuationGroupSome];
  [(AXSSPunctuationGroup *)v2 setInDatabase:0];
  [(AXSSPunctuationGroup *)v2 setVersion:1];
  return v2;
}

+ (id)punctuationGroupFromJSONRepresentation:(id)a3
{
  v22 = 0;
  v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:1 error:&v22];
  v4 = v22;
  if (v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(AXSSPunctuationGroup *)v4 punctuationGroupFromJSONRepresentation:v3, v8];
    }

    v5 = 0;
  }

  else
  {
    v5 = [[AXSSPunctuationGroup alloc] init];
    v6 = [v3 objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v3 objectForKeyedSubscript:@"name"];
      [(AXSSPunctuationGroup *)v5 setName:v7];
    }

    else
    {
      [(AXSSPunctuationGroup *)v5 setName:&stru_1F405A428];
    }

    v10 = [v3 objectForKeyedSubscript:@"version"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v3 objectForKeyedSubscript:@"version"];
      -[AXSSPunctuationGroup setVersion:](v5, "setVersion:", [v11 intValue]);
    }

    else
    {
      [(AXSSPunctuationGroup *)v5 setVersion:1];
    }

    v12 = [v3 objectForKeyedSubscript:@"uuid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = objc_alloc(MEMORY[0x1E696AFB0]);
      v14 = [v3 objectForKeyedSubscript:@"uuid"];
      v15 = [v13 initWithUUIDString:v14];
      [(AXSSPunctuationGroup *)v5 setUuid:v15];
    }

    else
    {
      [(AXSSPunctuationGroup *)v5 setUuid:0];
    }

    v16 = [v3 objectForKeyedSubscript:@"basePunctuationUUID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = objc_alloc(MEMORY[0x1E696AFB0]);
      v18 = [v3 objectForKeyedSubscript:@"basePunctuationUUID"];
      v19 = [v17 initWithUUIDString:v18];
      [(AXSSPunctuationGroup *)v5 setBasePunctuationUUID:v19];
    }

    else
    {
      [(AXSSPunctuationGroup *)v5 setBasePunctuationUUID:0];
    }

    v8 = [v3 objectForKeyedSubscript:@"entries"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [v3 objectForKeyedSubscript:@"entries"];
      v21 = [v20 ax_mappedArrayUsingBlock:&__block_literal_global_9];
      [(AXSSPunctuationGroup *)v5 setEntries:v21];
    }

    else
    {
      [(AXSSPunctuationGroup *)v5 setEntries:0];
    }
  }

  return v5;
}

id __63__AXSSPunctuationGroup_punctuationGroupFromJSONRepresentation___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [AXSSPunctuationEntry punctuationEntryFromJSONDictionary:a2];
  if (!v2)
  {
    v2 = objc_opt_new();
  }

  return v2;
}

- (NSDictionary)jsonDictionary
{
  v23[5] = *MEMORY[0x1E69E9840];
  v22[0] = @"name";
  v21 = [(AXSSPunctuationGroup *)self name];
  v23[0] = v21;
  v22[1] = @"basePunctuationUUID";
  v3 = +[AXSSPunctuationManager sharedDatabase];
  v4 = [v3 mostBasePunctuationGroupForGroup:self];
  v5 = [v4 UUIDString];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1F405A428;
  }

  v23[1] = v7;
  v22[2] = @"uuid";
  v8 = [(AXSSPunctuationGroup *)self uuid];
  v9 = [v8 UUIDString];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_1F405A428;
  }

  v23[2] = v11;
  v22[3] = @"version";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[AXSSPunctuationGroup version](self, "version")}];
  v23[3] = v12;
  v22[4] = @"entries";
  v13 = [(AXSSPunctuationGroup *)self entries];
  v14 = [v13 ax_mappedArrayUsingBlock:&__block_literal_global_27];
  v15 = v14;
  v16 = MEMORY[0x1E695E0F0];
  if (v14)
  {
    v16 = v14;
  }

  v23[4] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:5];
  v18 = [v17 mutableCopy];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (NSString)name
{
  v3 = [(AXSSPunctuationGroup *)self uuid];
  v4 = [v3 isEqual:AXSSVoiceOverPunctuationGroupNone];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v6 = v5;
    v7 = @"PUNCTUATION_GROUP_NONE";
LABEL_7:
    v12 = [v5 localizedStringForKey:v7 value:&stru_1F405A428 table:@"AccessibilitySharedSupport"];

    goto LABEL_8;
  }

  v8 = [(AXSSPunctuationGroup *)self uuid];
  v9 = [v8 isEqual:AXSSVoiceOverPunctuationGroupSome];

  if (v9)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v6 = v5;
    v7 = @"PUNCTUATION_GROUP_SOME";
    goto LABEL_7;
  }

  v10 = [(AXSSPunctuationGroup *)self uuid];
  v11 = [v10 isEqual:AXSSVoiceOverPunctuationGroupAll];

  if (v11)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v6 = v5;
    v7 = @"PUNCTUATION_GROUP_ALL";
    goto LABEL_7;
  }

  v12 = self->_name;
LABEL_8:

  return v12;
}

- (NSData)jsonRepresentation
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(AXSSPunctuationGroup *)self jsonDictionary];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(AXSSPunctuationGroup *)v5 jsonRepresentation];
    }
  }

  return v4;
}

- (BOOL)isSystemPunctuationGroup
{
  v3 = +[AXSSPunctuationManager sharedDatabase];
  v4 = [(AXSSPunctuationGroup *)self uuid];
  v5 = [v3 isBasePunctuationGroup:v4];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = AXSSPunctuationGroup;
  v4 = [(AXSSPunctuationGroup *)&v12 description];
  v5 = [(AXSSPunctuationGroup *)self inCloud];
  v6 = [(AXSSPunctuationGroup *)self ckChangeTag];
  v7 = [(AXSSPunctuationGroup *)self name];
  v8 = [(AXSSPunctuationGroup *)self autoSwitchContexts];
  v9 = [(AXSSPunctuationGroup *)self entries];
  v10 = [v3 stringWithFormat:@"%@[%d/%@]: name: %@, contexts: %@, entries: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 uuid];
    v6 = [(AXSSPunctuationGroup *)self uuid];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)punctuationGroupFromJSONRepresentation:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1C0E8A000, log, OS_LOG_TYPE_ERROR, "Could not json: %@ %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)jsonRepresentation
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_ERROR, "Could not json: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end