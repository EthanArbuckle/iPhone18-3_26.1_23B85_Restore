@interface AXSSPunctuationEntry
+ (id)punctuationEntryFromJSONDictionary:(id)a3;
+ (id)punctuationEntryFromJSONRepresentation:(id)a3;
- (AXSSPunctuationEntry)init;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonRepresentation;
- (NSDictionary)jsonDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation AXSSPunctuationEntry

- (AXSSPunctuationEntry)init
{
  v5.receiver = self;
  v5.super_class = AXSSPunctuationEntry;
  v2 = [(AXSSPunctuationEntry *)&v5 init];
  v3 = [MEMORY[0x1E696AFB0] UUID];
  [(AXSSPunctuationEntry *)v2 setUuid:v3];

  [(AXSSPunctuationEntry *)v2 setRule:1];
  [(AXSSPunctuationEntry *)v2 setVersion:1];
  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[AXSSPunctuationEntry allocWithZone:?]];
  [(AXSSPunctuationEntry *)v4 setRule:[(AXSSPunctuationEntry *)self rule]];
  v5 = [(AXSSPunctuationEntry *)self punctuation];
  [(AXSSPunctuationEntry *)v4 setPunctuation:v5];

  v6 = [(AXSSPunctuationEntry *)self replacement];
  [(AXSSPunctuationEntry *)v4 setReplacement:v6];

  v7 = [(AXSSPunctuationEntry *)self uuid];
  [(AXSSPunctuationEntry *)v4 setUuid:v7];

  v8 = [(AXSSPunctuationEntry *)self groupUUID];
  [(AXSSPunctuationEntry *)v4 setGroupUUID:v8];

  [(AXSSPunctuationEntry *)v4 setVersion:[(AXSSPunctuationEntry *)self version]];
  [(AXSSPunctuationEntry *)v4 setInCloud:[(AXSSPunctuationEntry *)self inCloud]];
  v9 = [(AXSSPunctuationEntry *)self ckChangeTag];
  [(AXSSPunctuationEntry *)v4 setCkChangeTag:v9];

  v10 = [(AXSSPunctuationEntry *)self lastModifiedDate];
  [(AXSSPunctuationEntry *)v4 setLastModifiedDate:v10];

  v11 = [(AXSSPunctuationEntry *)self ckRecordProcessDate];
  [(AXSSPunctuationEntry *)v4 setCkRecordProcessDate:v11];

  return v4;
}

+ (id)punctuationEntryFromJSONDictionary:(id)a3
{
  v3 = a3;
  v4 = [[AXSSPunctuationEntry alloc] init];
  v5 = [v3 objectForKeyedSubscript:@"rule"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = +[AXSSPunctuationManager sharedDatabase];
    v7 = [v3 objectForKeyedSubscript:@"rule"];
    -[AXSSPunctuationEntry setRule:](v4, "setRule:", [v6 stringToRule:v7]);
  }

  else
  {
    [(AXSSPunctuationEntry *)v4 setRule:[(AXSSPunctuationEntry *)v4 rule]];
  }

  v8 = [v3 objectForKeyedSubscript:@"punctuation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v3 objectForKeyedSubscript:@"punctuation"];
    [(AXSSPunctuationEntry *)v4 setPunctuation:v9];
  }

  else
  {
    [(AXSSPunctuationEntry *)v4 setPunctuation:0];
  }

  v10 = [v3 objectForKeyedSubscript:@"replacement"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v3 objectForKeyedSubscript:@"replacement"];
    [(AXSSPunctuationEntry *)v4 setReplacement:v11];
  }

  else
  {
    [(AXSSPunctuationEntry *)v4 setReplacement:0];
  }

  v12 = [v3 objectForKeyedSubscript:@"version"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v3 objectForKeyedSubscript:@"version"];
    -[AXSSPunctuationEntry setVersion:](v4, "setVersion:", [v13 intValue]);
  }

  else
  {
    [(AXSSPunctuationEntry *)v4 setVersion:1];
  }

  v14 = [v3 objectForKeyedSubscript:@"groupUUID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = objc_alloc(MEMORY[0x1E696AFB0]);
    v16 = [v3 objectForKeyedSubscript:@"groupUUID"];
    v17 = [v15 initWithUUIDString:v16];
    [(AXSSPunctuationEntry *)v4 setGroupUUID:v17];
  }

  else
  {
    [(AXSSPunctuationEntry *)v4 setGroupUUID:0];
  }

  return v4;
}

+ (id)punctuationEntryFromJSONRepresentation:(id)a3
{
  v9 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:1 error:&v9];
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
    v6 = [a1 punctuationEntryFromJSONDictionary:v4];
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

  v7 = [(AXSSPunctuationEntry *)self punctuation];

  if (v7)
  {
    v8 = [(AXSSPunctuationEntry *)self punctuation];
    [v6 setObject:v8 forKeyedSubscript:@"punctuation"];
  }

  v9 = [(AXSSPunctuationEntry *)self replacement];

  if (v9)
  {
    v10 = [(AXSSPunctuationEntry *)self replacement];
    [v6 setObject:v10 forKeyedSubscript:@"replacement"];
  }

  v11 = [(AXSSPunctuationEntry *)self groupUUID];

  if (v11)
  {
    v12 = [(AXSSPunctuationEntry *)self groupUUID];
    v13 = [v12 UUIDString];
    [v6 setObject:v13 forKeyedSubscript:@"groupUUID"];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[AXSSPunctuationEntry version](self, "version")}];
  [v6 setObject:v14 forKeyedSubscript:@"version"];

  v15 = *MEMORY[0x1E69E9840];

  return v6;
}

- (NSData)jsonRepresentation
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(AXSSPunctuationEntry *)self jsonDictionary];
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = AXSSPunctuationEntry;
  v4 = [(AXSSPunctuationEntry *)&v15 description];
  v5 = [(AXSSPunctuationEntry *)self version];
  v6 = [(AXSSPunctuationEntry *)self punctuation];
  v7 = [(AXSSPunctuationEntry *)self replacement];
  v8 = [(AXSSPunctuationEntry *)self rule];
  v9 = [(AXSSPunctuationEntry *)self inCloud];
  v10 = [(AXSSPunctuationEntry *)self ckChangeTag];
  v11 = [(AXSSPunctuationEntry *)self uuid];
  v12 = [(AXSSPunctuationEntry *)self groupUUID];
  v13 = [v3 stringWithFormat:@"%@[v%d]: punctuation: %@, replacement: %@, rule: %d (In Cloud: %d: %@), uuid: %@  group uuid: %@", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 uuid];
    v6 = [(AXSSPunctuationEntry *)self uuid];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end