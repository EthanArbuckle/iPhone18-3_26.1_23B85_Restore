@interface AXSSPunctuationEntry
+ (id)punctuationEntryFromJSONDictionary:(id)dictionary;
+ (id)punctuationEntryFromJSONRepresentation:(id)representation;
- (AXSSPunctuationEntry)init;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonRepresentation;
- (NSDictionary)jsonDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation AXSSPunctuationEntry

- (AXSSPunctuationEntry)init
{
  v5.receiver = self;
  v5.super_class = AXSSPunctuationEntry;
  v2 = [(AXSSPunctuationEntry *)&v5 init];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [(AXSSPunctuationEntry *)v2 setUuid:uUID];

  [(AXSSPunctuationEntry *)v2 setRule:1];
  [(AXSSPunctuationEntry *)v2 setVersion:1];
  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[AXSSPunctuationEntry allocWithZone:?]];
  [(AXSSPunctuationEntry *)v4 setRule:[(AXSSPunctuationEntry *)self rule]];
  punctuation = [(AXSSPunctuationEntry *)self punctuation];
  [(AXSSPunctuationEntry *)v4 setPunctuation:punctuation];

  replacement = [(AXSSPunctuationEntry *)self replacement];
  [(AXSSPunctuationEntry *)v4 setReplacement:replacement];

  uuid = [(AXSSPunctuationEntry *)self uuid];
  [(AXSSPunctuationEntry *)v4 setUuid:uuid];

  groupUUID = [(AXSSPunctuationEntry *)self groupUUID];
  [(AXSSPunctuationEntry *)v4 setGroupUUID:groupUUID];

  [(AXSSPunctuationEntry *)v4 setVersion:[(AXSSPunctuationEntry *)self version]];
  [(AXSSPunctuationEntry *)v4 setInCloud:[(AXSSPunctuationEntry *)self inCloud]];
  ckChangeTag = [(AXSSPunctuationEntry *)self ckChangeTag];
  [(AXSSPunctuationEntry *)v4 setCkChangeTag:ckChangeTag];

  lastModifiedDate = [(AXSSPunctuationEntry *)self lastModifiedDate];
  [(AXSSPunctuationEntry *)v4 setLastModifiedDate:lastModifiedDate];

  ckRecordProcessDate = [(AXSSPunctuationEntry *)self ckRecordProcessDate];
  [(AXSSPunctuationEntry *)v4 setCkRecordProcessDate:ckRecordProcessDate];

  return v4;
}

+ (id)punctuationEntryFromJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[AXSSPunctuationEntry alloc] init];
  v5 = [dictionaryCopy objectForKeyedSubscript:@"rule"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = +[AXSSPunctuationManager sharedDatabase];
    v7 = [dictionaryCopy objectForKeyedSubscript:@"rule"];
    -[AXSSPunctuationEntry setRule:](v4, "setRule:", [v6 stringToRule:v7]);
  }

  else
  {
    [(AXSSPunctuationEntry *)v4 setRule:[(AXSSPunctuationEntry *)v4 rule]];
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"punctuation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"punctuation"];
    [(AXSSPunctuationEntry *)v4 setPunctuation:v9];
  }

  else
  {
    [(AXSSPunctuationEntry *)v4 setPunctuation:0];
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"replacement"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:@"replacement"];
    [(AXSSPunctuationEntry *)v4 setReplacement:v11];
  }

  else
  {
    [(AXSSPunctuationEntry *)v4 setReplacement:0];
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"version"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [dictionaryCopy objectForKeyedSubscript:@"version"];
    -[AXSSPunctuationEntry setVersion:](v4, "setVersion:", [v13 intValue]);
  }

  else
  {
    [(AXSSPunctuationEntry *)v4 setVersion:1];
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"groupUUID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = objc_alloc(MEMORY[0x1E696AFB0]);
    v16 = [dictionaryCopy objectForKeyedSubscript:@"groupUUID"];
    v17 = [v15 initWithUUIDString:v16];
    [(AXSSPunctuationEntry *)v4 setGroupUUID:v17];
  }

  else
  {
    [(AXSSPunctuationEntry *)v4 setGroupUUID:0];
  }

  return v4;
}

+ (id)punctuationEntryFromJSONRepresentation:(id)representation
{
  v9 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:representation options:1 error:&v9];
  v5 = v9;
  if (v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(AXSSPunctuationGroup *)v5 punctuationGroupFromJSONRepresentation:v4, v7];
    }

    v6 = 0;
  }

  else
  {
    v6 = [self punctuationEntryFromJSONDictionary:v4];
  }

  return v6;
}

- (NSDictionary)jsonDictionary
{
  v18[1] = *MEMORY[0x1E69E9840];
  v17 = @"rule";
  v3 = +[AXSSPunctuationManager sharedDatabase];
  v4 = [v3 ruleToString:{-[AXSSPunctuationEntry rule](self, "rule")}];
  v18[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v6 = [v5 mutableCopy];

  punctuation = [(AXSSPunctuationEntry *)self punctuation];

  if (punctuation)
  {
    punctuation2 = [(AXSSPunctuationEntry *)self punctuation];
    [v6 setObject:punctuation2 forKeyedSubscript:@"punctuation"];
  }

  replacement = [(AXSSPunctuationEntry *)self replacement];

  if (replacement)
  {
    replacement2 = [(AXSSPunctuationEntry *)self replacement];
    [v6 setObject:replacement2 forKeyedSubscript:@"replacement"];
  }

  groupUUID = [(AXSSPunctuationEntry *)self groupUUID];

  if (groupUUID)
  {
    groupUUID2 = [(AXSSPunctuationEntry *)self groupUUID];
    uUIDString = [groupUUID2 UUIDString];
    [v6 setObject:uUIDString forKeyedSubscript:@"groupUUID"];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[AXSSPunctuationEntry version](self, "version")}];
  [v6 setObject:v14 forKeyedSubscript:@"version"];

  v15 = *MEMORY[0x1E69E9840];

  return v6;
}

- (NSData)jsonRepresentation
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDictionary = [(AXSSPunctuationEntry *)self jsonDictionary];
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = AXSSPunctuationEntry;
  v4 = [(AXSSPunctuationEntry *)&v15 description];
  version = [(AXSSPunctuationEntry *)self version];
  punctuation = [(AXSSPunctuationEntry *)self punctuation];
  replacement = [(AXSSPunctuationEntry *)self replacement];
  rule = [(AXSSPunctuationEntry *)self rule];
  inCloud = [(AXSSPunctuationEntry *)self inCloud];
  ckChangeTag = [(AXSSPunctuationEntry *)self ckChangeTag];
  uuid = [(AXSSPunctuationEntry *)self uuid];
  groupUUID = [(AXSSPunctuationEntry *)self groupUUID];
  v13 = [v3 stringWithFormat:@"%@[v%d]: punctuation: %@, replacement: %@, rule: %d (In Cloud: %d: %@), uuid: %@  group uuid: %@", v4, version, punctuation, replacement, rule, inCloud, ckChangeTag, uuid, groupUUID];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uuid = [equalCopy uuid];
    uuid2 = [(AXSSPunctuationEntry *)self uuid];
    v7 = [uuid isEqual:uuid2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end