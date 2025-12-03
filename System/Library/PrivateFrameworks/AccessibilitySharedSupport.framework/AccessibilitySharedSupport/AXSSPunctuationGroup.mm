@interface AXSSPunctuationGroup
+ (id)punctuationGroupFromJSONRepresentation:(id)representation;
- (AXSSPunctuationGroup)init;
- (BOOL)isEqual:(id)equal;
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
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [(AXSSPunctuationGroup *)v2 setUuid:uUID];

  [(AXSSPunctuationGroup *)v2 setBasePunctuationUUID:AXSSVoiceOverPunctuationGroupSome];
  [(AXSSPunctuationGroup *)v2 setInDatabase:0];
  [(AXSSPunctuationGroup *)v2 setVersion:1];
  return v2;
}

+ (id)punctuationGroupFromJSONRepresentation:(id)representation
{
  v22 = 0;
  v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:representation options:1 error:&v22];
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
  name = [(AXSSPunctuationGroup *)self name];
  v23[0] = name;
  v22[1] = @"basePunctuationUUID";
  v3 = +[AXSSPunctuationManager sharedDatabase];
  v4 = [v3 mostBasePunctuationGroupForGroup:self];
  uUIDString = [v4 UUIDString];
  v6 = uUIDString;
  if (uUIDString)
  {
    v7 = uUIDString;
  }

  else
  {
    v7 = &stru_1F405A428;
  }

  v23[1] = v7;
  v22[2] = @"uuid";
  uuid = [(AXSSPunctuationGroup *)self uuid];
  uUIDString2 = [uuid UUIDString];
  v10 = uUIDString2;
  if (uUIDString2)
  {
    v11 = uUIDString2;
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
  entries = [(AXSSPunctuationGroup *)self entries];
  v14 = [entries ax_mappedArrayUsingBlock:&__block_literal_global_27];
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
  uuid = [(AXSSPunctuationGroup *)self uuid];
  v4 = [uuid isEqual:AXSSVoiceOverPunctuationGroupNone];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v6 = v5;
    v7 = @"PUNCTUATION_GROUP_NONE";
LABEL_7:
    v12 = [v5 localizedStringForKey:v7 value:&stru_1F405A428 table:@"AccessibilitySharedSupport"];

    goto LABEL_8;
  }

  uuid2 = [(AXSSPunctuationGroup *)self uuid];
  v9 = [uuid2 isEqual:AXSSVoiceOverPunctuationGroupSome];

  if (v9)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v6 = v5;
    v7 = @"PUNCTUATION_GROUP_SOME";
    goto LABEL_7;
  }

  uuid3 = [(AXSSPunctuationGroup *)self uuid];
  v11 = [uuid3 isEqual:AXSSVoiceOverPunctuationGroupAll];

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
  jsonDictionary = [(AXSSPunctuationGroup *)self jsonDictionary];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDictionary options:1 error:&v8];
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
  uuid = [(AXSSPunctuationGroup *)self uuid];
  v5 = [v3 isBasePunctuationGroup:uuid];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = AXSSPunctuationGroup;
  v4 = [(AXSSPunctuationGroup *)&v12 description];
  inCloud = [(AXSSPunctuationGroup *)self inCloud];
  ckChangeTag = [(AXSSPunctuationGroup *)self ckChangeTag];
  name = [(AXSSPunctuationGroup *)self name];
  autoSwitchContexts = [(AXSSPunctuationGroup *)self autoSwitchContexts];
  entries = [(AXSSPunctuationGroup *)self entries];
  v10 = [v3 stringWithFormat:@"%@[%d/%@]: name: %@, contexts: %@, entries: %@", v4, inCloud, ckChangeTag, name, autoSwitchContexts, entries];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uuid = [equalCopy uuid];
    uuid2 = [(AXSSPunctuationGroup *)self uuid];
    v7 = [uuid isEqual:uuid2];
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
  selfCopy = self;
  _os_log_error_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_ERROR, "Could not json: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end