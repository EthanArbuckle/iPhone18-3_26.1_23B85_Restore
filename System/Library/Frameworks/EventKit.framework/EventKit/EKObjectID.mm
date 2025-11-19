@interface EKObjectID
+ (EKObjectID)objectIDWithCADObjectID:(id)a3;
+ (EKObjectID)objectIDWithURL:(id)a3;
+ (id)EKObjectIDsFromCADObjectIDs:(id)a3;
+ (id)EKObjectIDsFromData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (EKObjectID)initWithCoder:(id)a3;
- (EKObjectID)initWithDictionaryRepresentation:(id)a3;
- (EKObjectID)initWithEntityType:(int)a3 rowID:(int)a4 databaseID:(int)a5 temporary:(BOOL)a6;
- (NSDictionary)dictionaryRepresentation;
- (NSString)stringRepresentation;
- (NSURL)URIRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EKObjectID

+ (EKObjectID)objectIDWithCADObjectID:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [a1 alloc];
    v7 = [v5 entityType];
    v8 = [v5 entityID];
    if (v8 >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = -v8;
    }

    v10 = [v5 databaseID];
    v11 = [v5 isTemporary];

    v12 = [v6 initWithEntityType:v7 rowID:v9 databaseID:v10 temporary:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (EKObjectID)objectIDWithURL:(id)a3
{
  v4 = a3;
  v5 = [v4 scheme];
  v6 = [v5 isEqualToString:@"x-apple-eventkit"];

  if (v6)
  {
    v7 = [v4 host];
    if ([v7 length])
    {
      v8 = [v7 intValue];
      if (v8)
      {
        goto LABEL_7;
      }

      v9 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        [(EKObjectID *)v4 objectIDWithURL:v9, v7];
      }
    }

    v8 = 0;
LABEL_7:
    v10 = [v4 path];
    v11 = [v10 lastPathComponent];
    if (![v11 length])
    {
      v17 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        [EKObjectID objectIDWithURL:v17];
      }

      v16 = 0;
      goto LABEL_33;
    }

    v12 = [v11 characterAtIndex:0];
    if (v12 != 112)
    {
      v13 = v12;
      if (v12 == 116)
      {
        v14 = 1;
LABEL_20:
        v19 = [v11 substringFromIndex:1];
        v20 = [v19 intValue];

        v21 = [v10 pathComponents];
        if ([v21 count] > 1)
        {
          v23 = [v21 objectAtIndex:1];
          v27 = v14;
          if (objectIDWithURL__onceToken != -1)
          {
            +[EKObjectID objectIDWithURL:];
          }

          v24 = [objectIDWithURL__entityNameToEntityTypeMap objectForKeyedSubscript:v23];
          if (v24)
          {
            v16 = [[a1 alloc] initWithEntityType:objc_msgSend(v24 rowID:"intValue") databaseID:v20 temporary:{v8, v27}];
          }

          else
          {
            v25 = EKLogHandle;
            if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
            {
              [(EKObjectID *)v23 objectIDWithURL:v25, v4];
            }

            v16 = 0;
          }
        }

        else
        {
          v22 = EKLogHandle;
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
          {
            [EKObjectID objectIDWithURL:v22];
          }

          v16 = 0;
        }

LABEL_33:
        goto LABEL_34;
      }

      v18 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        [(EKObjectID *)v13 objectIDWithURL:v18];
      }
    }

    v14 = 0;
    goto LABEL_20;
  }

  v15 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [(EKObjectID *)v15 objectIDWithURL:v4];
  }

  v16 = 0;
LABEL_34:

  return v16;
}

void __30__EKObjectID_objectIDWithURL___block_invoke()
{
  v0 = objectIDWithURL__entityNameToEntityTypeMap;
  objectIDWithURL__entityNameToEntityTypeMap = &unk_1F1B6B300;
}

- (EKObjectID)initWithEntityType:(int)a3 rowID:(int)a4 databaseID:(int)a5 temporary:(BOOL)a6
{
  v11.receiver = self;
  v11.super_class = EKObjectID;
  result = [(EKObjectID *)&v11 init];
  if (result)
  {
    result->_entityType = a3;
    result->_rowID = a4;
    result->_databaseID = a5;
    result->_temporary = a6;
  }

  return result;
}

- (EKObjectID)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = EKObjectID;
  v5 = [(EKObjectID *)&v7 init];
  if (v5)
  {
    v5->_entityType = [v4 decodeIntForKey:@"entityType"];
    v5->_rowID = [v4 decodeIntForKey:@"rowID"];
    v5->_databaseID = [v4 decodeIntForKey:@"dbID"];
    v5->_temporary = [v4 decodeBoolForKey:@"temporary"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInt:self->_entityType forKey:@"entityType"];
  [v5 encodeInt:self->_rowID forKey:@"rowID"];
  databaseID = self->_databaseID;
  if (databaseID)
  {
    [v5 encodeInt:databaseID forKey:@"dbID"];
  }

  [v5 encodeBool:self->_temporary forKey:@"temporary"];
}

- (EKObjectID)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = EKObjectID;
  v5 = [(EKObjectID *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"entityType"];
    v5->_entityType = [v6 intValue];

    v7 = [v4 objectForKey:@"rowID"];
    v5->_rowID = [v7 intValue];

    v8 = [v4 objectForKey:@"dbID"];
    v5->_databaseID = [v8 intValue];

    v9 = [v4 objectForKey:@"temporary"];
    v5->_temporary = [v9 BOOLValue];
  }

  return v5;
}

- (NSDictionary)dictionaryRepresentation
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = @"entityType";
  v3 = [MEMORY[0x1E696AD98] numberWithInt:self->_entityType];
  v11[0] = v3;
  v10[1] = @"rowID";
  v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_rowID];
  v11[1] = v4;
  v10[2] = @"dbID";
  v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_databaseID];
  v11[2] = v5;
  v10[3] = @"temporary";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_temporary];
  v11[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (NSString)stringRepresentation
{
  databaseID = self->_databaseID;
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(EKObjectID *)self entityName];
  v6 = v5;
  v7 = @"p";
  if (self->_temporary)
  {
    v7 = @"t";
  }

  rowID = self->_rowID;
  if (databaseID)
  {
    [v4 stringWithFormat:@"%@://%d/%@/%@%d", @"x-apple-eventkit", databaseID, v5, v7, rowID];
  }

  else
  {
    [v4 stringWithFormat:@"%@:///%@/%@%d", @"x-apple-eventkit", v5, v7, rowID, v11];
  }
  v9 = ;

  return v9;
}

- (NSURL)URIRepresentation
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [(EKObjectID *)self stringRepresentation];
  v4 = [v2 URLWithString:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v7 = 1;
  }

  else if (v4 && (Class = object_getClass(self), Class == object_getClass(v5)))
  {
    v8 = v5;
    v7 = self->_entityType == v8->_entityType && self->_rowID == v8->_rowID && self->_temporary == v8->_temporary && self->_databaseID == v8->_databaseID;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)EKObjectIDsFromCADObjectIDs:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [EKObjectID objectIDWithCADObjectID:*(*(&v13 + 1) + 8 * i), v13];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)EKObjectIDsFromData:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v3 objectForKeyedSubscript:v10];
        v12 = +[EKObjectID EKObjectIDsFromData:databaseID:](EKObjectID, "EKObjectIDsFromData:databaseID:", v11, [v10 intValue]);
        if ([v12 count])
        {
          if (v7)
          {
            if (!v6)
            {
              v6 = [v7 mutableCopy];

              v7 = v6;
            }

            [v6 addObjectsFromArray:v12];
          }

          else
          {
            v7 = v12;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (void)objectIDWithURL:(void *)a1 .cold.1(void *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 scheme];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = @"x-apple-eventkit";
  _os_log_error_impl(&dword_1A805E000, v3, OS_LOG_TYPE_ERROR, "Wrong scheme for EKObjectID URL; got %@, expected %@; will return nil for objectIDWithURL:", &v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)objectIDWithURL:(void *)a3 .cold.2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  [a3 length];
  OUTLINED_FUNCTION_2_2(&dword_1A805E000, v5, v6, "Redundant specification of database ID 0 (URL %@ has host length %lu)", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)objectIDWithURL:(int)a1 .cold.3(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "URL with unrecognized ID type %c", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)objectIDWithURL:(void *)a3 .cold.5(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v12 = [a3 path];
  OUTLINED_FUNCTION_2_2(&dword_1A805E000, v5, v6, "Unknown entity name %@ with URI %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)EKObjectIDsFromData:(void *)a1 range:(void *)a2 databaseID:.cold.1(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1;
  [a2 length];
  OUTLINED_FUNCTION_2_2(&dword_1A805E000, v4, v5, "Invalid range passed to +[EKObjectIDsFromData:range:]. Need at least %lu bytes, but only have %lu", v6, v7, v8, v9, 0);

  v10 = *MEMORY[0x1E69E9840];
}

@end