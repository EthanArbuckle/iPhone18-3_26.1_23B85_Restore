@interface _BGTaskIdentifierRegistry
+ (id)registryWithContentsFromPlist;
- (BOOL)isIdentifierValidContinuedProcessingBaseNotation:(id)a3;
- (BOOL)isIdentifierValidContinuedProcessingComposedNotation:(id)a3;
- (BOOL)isIdentifierValidContinuedProcessingWildcardNotation:(id)a3;
- (BOOL)isPermissibleFullyComposedIdentifier:(id)a3;
- (NSSet)permittedContinuedProcessingBaseNotationIdentifiers;
- (_BGTaskIdentifierRegistry)initWithContentsFromPlist;
- (_BGTaskIdentifierRegistry)initWithPermittedIdentifiers:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _BGTaskIdentifierRegistry

+ (id)registryWithContentsFromPlist
{
  v2 = [objc_alloc(objc_opt_class()) initWithContentsFromPlist];

  return v2;
}

- (_BGTaskIdentifierRegistry)initWithContentsFromPlist
{
  v34 = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = _BGTaskIdentifierRegistry;
  v2 = [(_BGTaskIdentifierRegistry *)&v30 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.BackgroundTasks", "TaskIdentifierRegistry");
    log = v2->_log;
    v2->_log = v3;

    v5 = [MEMORY[0x1E696AAE8] mainBundle];
    v6 = [v5 infoDictionary];
    v7 = [v6 objectForKey:@"BGTaskSchedulerPermittedIdentifiers"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v7 = MEMORY[0x1E695E0F0];
    }

    v8 = [MEMORY[0x1E695DFA8] set];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v33 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v27;
      *&v11 = 138412290;
      v25 = v11;
      do
      {
        v14 = 0;
        do
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v26 + 1) + 8 * v14);
          if ([v15 length] >= 0x81)
          {
            v16 = v2->_log;
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_17;
            }

            *buf = v25;
            v32 = v15;
            v17 = v16;
            v18 = "Identifier is too long, must be less than 128 characters: %@";
            goto LABEL_12;
          }

          if ([v15 containsString:@".*"] && !-[_BGTaskIdentifierRegistry isIdentifierValidContinuedProcessingWildcardNotation:](v2, "isIdentifierValidContinuedProcessingWildcardNotation:", v15))
          {
            v19 = v2->_log;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = v25;
              v32 = v15;
              v17 = v19;
              v18 = "Invalid identifier form for Continued Processing Task: %@";
LABEL_12:
              _os_log_error_impl(&dword_1AC80E000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0xCu);
            }
          }

          else
          {
            [v8 addObject:v15];
          }

LABEL_17:
          ++v14;
        }

        while (v12 != v14);
        v20 = [v9 countByEnumeratingWithState:&v26 objects:v33 count:16];
        v12 = v20;
      }

      while (v20);
    }

    v21 = [v8 copy];
    permittedIdentifiers = v2->_permittedIdentifiers;
    v2->_permittedIdentifiers = v21;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v2;
}

- (NSSet)permittedContinuedProcessingBaseNotationIdentifiers
{
  v22 = *MEMORY[0x1E69E9840];
  permittedContinuedProcessingBaseNotationIdentifiers = self->_permittedContinuedProcessingBaseNotationIdentifiers;
  if (permittedContinuedProcessingBaseNotationIdentifiers)
  {
    v3 = permittedContinuedProcessingBaseNotationIdentifiers;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [(_BGTaskIdentifierRegistry *)self permittedIdentifiers];
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if ([(_BGTaskIdentifierRegistry *)self isIdentifierValidContinuedProcessingWildcardNotation:v11])
          {
            v12 = [v11 stringByReplacingOccurrencesOfString:@".*" withString:@"."];
            [v5 addObject:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v13 = [v5 copy];
    v14 = self->_permittedContinuedProcessingBaseNotationIdentifiers;
    self->_permittedContinuedProcessingBaseNotationIdentifiers = v13;

    v3 = self->_permittedContinuedProcessingBaseNotationIdentifiers;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (_BGTaskIdentifierRegistry)initWithPermittedIdentifiers:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _BGTaskIdentifierRegistry;
  v5 = [(_BGTaskIdentifierRegistry *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    permittedIdentifiers = v5->_permittedIdentifiers;
    v5->_permittedIdentifiers = v6;
  }

  return v5;
}

- (BOOL)isPermissibleFullyComposedIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length] <= 0x80)
  {
    if ([(_BGTaskIdentifierRegistry *)self isIdentifierValidContinuedProcessingWildcardNotation:v4])
    {
      v6 = [(_BGTaskIdentifierRegistry *)self permittedIdentifiers];
      v5 = [v6 containsObject:v4] ^ 1;
    }

    else
    {
      v7 = [(_BGTaskIdentifierRegistry *)self isIdentifierValidContinuedProcessingComposedNotation:v4];
      v6 = [(_BGTaskIdentifierRegistry *)self permittedIdentifiers];
      v5 = [v6 containsObject:v4] | v7;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (BOOL)isIdentifierValidContinuedProcessingWildcardNotation:(id)a3
{
  v3 = a3;
  if ([v3 containsString:@".*"] && objc_msgSend(v3, "hasSuffix:", @".*") && (objc_msgSend(v3, "componentsSeparatedByString:", @".*"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v5 <= 2))
  {
    v8 = [MEMORY[0x1E696AAE8] mainBundle];
    v9 = [v8 bundleIdentifier];

    v6 = [v3 hasPrefix:v9];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isIdentifierValidContinuedProcessingBaseNotation:(id)a3
{
  v4 = a3;
  if ([v4 length] <= 0x80)
  {
    v6 = [(_BGTaskIdentifierRegistry *)self permittedContinuedProcessingBaseNotationIdentifiers];
    v5 = [v6 containsObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isIdentifierValidContinuedProcessingComposedNotation:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length] <= 0x80)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(_BGTaskIdentifierRegistry *)self permittedContinuedProcessingBaseNotationIdentifiers];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([v4 hasPrefix:*(*(&v15 + 1) + 8 * i)])
          {
            v11 = [(_BGTaskIdentifierRegistry *)self permittedIdentifiers];
            if ([v11 containsObject:v4])
            {
              LOBYTE(v5) = 0;
            }

            else
            {
              v12 = [(_BGTaskIdentifierRegistry *)self permittedContinuedProcessingBaseNotationIdentifiers];
              v5 = [v12 containsObject:v4] ^ 1;
            }

            goto LABEL_16;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    LOBYTE(v5) = 0;
LABEL_16:
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  permittedIdentifiers = self->_permittedIdentifiers;

  return [v4 initWithPermittedIdentifiers:permittedIdentifiers];
}

@end