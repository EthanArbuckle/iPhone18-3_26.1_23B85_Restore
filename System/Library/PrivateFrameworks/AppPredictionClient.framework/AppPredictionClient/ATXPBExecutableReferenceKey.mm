@interface ATXPBExecutableReferenceKey
+ (uint64_t)referencesType;
- (BOOL)hasExecutableAction;
- (BOOL)hasExecutableHeroApp;
- (BOOL)hasExecutableInfoSuggestion;
- (BOOL)hasExecutableLinkAction;
- (BOOL)hasExecutableString;
- (BOOL)isEqual:(id)a3;
- (__CFString)executableTypeAsString:(__CFString *)a1;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)referencesAtIndex:(id *)a1;
- (uint64_t)addReferences:(uint64_t)a1;
- (uint64_t)clearReferences;
- (uint64_t)executableAction;
- (uint64_t)executableHeroApp;
- (uint64_t)executableInfoSuggestion;
- (uint64_t)executableLinkAction;
- (uint64_t)executableString;
- (uint64_t)executableType;
- (uint64_t)references;
- (uint64_t)referencesCount;
- (uint64_t)setExecutableType:(uint64_t)result;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)a1;
- (void)mergeFrom:(uint64_t)a1;
- (void)setExecutableAction:(uint64_t)a1;
- (void)setExecutableHeroApp:(uint64_t)a1;
- (void)setExecutableInfoSuggestion:(uint64_t)a1;
- (void)setExecutableLinkAction:(uint64_t)a1;
- (void)setExecutableString:(uint64_t)a1;
- (void)setReferences:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBExecutableReferenceKey

- (uint64_t)executableType
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (uint64_t)executableString
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)references
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (uint64_t)executableAction
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)executableInfoSuggestion
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

+ (uint64_t)referencesType
{
  objc_opt_self();

  return objc_opt_class();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBExecutableReferenceKey;
  v4 = [(ATXPBExecutableReferenceKey *)&v8 description];
  v5 = [(ATXPBExecutableReferenceKey *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  executableType = self->_executableType;
  if (executableType >= 6)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_executableType];
  }

  else
  {
    v5 = off_1E80C4B80[executableType];
  }

  [v3 setObject:v5 forKey:@"executableType"];

  executableString = self->_executableString;
  if (executableString)
  {
    [v3 setObject:executableString forKey:@"executableString"];
  }

  executableAction = self->_executableAction;
  if (executableAction)
  {
    v8 = [(ATXPBAction *)executableAction dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"executableAction"];
  }

  executableHeroApp = self->_executableHeroApp;
  if (executableHeroApp)
  {
    v10 = [(ATXPBHeroAppPrediction *)executableHeroApp dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"executableHeroApp"];
  }

  if ([(NSMutableArray *)self->_references count])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_references, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = self->_references;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:v17];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"references"];
  }

  executableInfoSuggestion = self->_executableInfoSuggestion;
  if (executableInfoSuggestion)
  {
    v19 = [(ATXPBInfoSuggestion *)executableInfoSuggestion dictionaryRepresentation];
    [v3 setObject:v19 forKey:@"executableInfoSuggestion"];
  }

  executableLinkAction = self->_executableLinkAction;
  if (executableLinkAction)
  {
    v21 = [(ATXPBLinkAction *)executableLinkAction dictionaryRepresentation];
    [v3 setObject:v21 forKey:@"executableLinkAction"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  PBDataWriterWriteInt32Field();
  if (self->_executableString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_executableAction)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_executableHeroApp)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_references;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_executableInfoSuggestion)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_executableLinkAction)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 48) = self->_executableType;
  v6 = [(NSString *)self->_executableString copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(ATXPBAction *)self->_executableAction copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(ATXPBHeroAppPrediction *)self->_executableHeroApp copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = self->_references;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      v16 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v23 + 1) + 8 * v16) copyWithZone:{a3, v23}];
        [(ATXPBExecutableReferenceKey *)v5 addReferences:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  v18 = [(ATXPBInfoSuggestion *)self->_executableInfoSuggestion copyWithZone:a3];
  v19 = *(v5 + 24);
  *(v5 + 24) = v18;

  v20 = [(ATXPBLinkAction *)self->_executableLinkAction copyWithZone:a3];
  v21 = *(v5 + 32);
  *(v5 + 32) = v20;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_executableType == *(v4 + 12) && ((executableString = self->_executableString, !(executableString | v4[5])) || -[NSString isEqual:](executableString, "isEqual:")) && ((executableAction = self->_executableAction, !(executableAction | v4[1])) || -[ATXPBAction isEqual:](executableAction, "isEqual:")) && ((executableHeroApp = self->_executableHeroApp, !(executableHeroApp | v4[2])) || -[ATXPBHeroAppPrediction isEqual:](executableHeroApp, "isEqual:")) && ((references = self->_references, !(references | v4[7])) || -[NSMutableArray isEqual:](references, "isEqual:")) && ((executableInfoSuggestion = self->_executableInfoSuggestion, !(executableInfoSuggestion | v4[3])) || -[ATXPBInfoSuggestion isEqual:](executableInfoSuggestion, "isEqual:")))
  {
    executableLinkAction = self->_executableLinkAction;
    if (executableLinkAction | v4[4])
    {
      v11 = [(ATXPBLinkAction *)executableLinkAction isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_executableType;
  v4 = [(NSString *)self->_executableString hash];
  v5 = v4 ^ [(ATXPBAction *)self->_executableAction hash];
  v6 = v5 ^ [(ATXPBHeroAppPrediction *)self->_executableHeroApp hash];
  v7 = v6 ^ [(NSMutableArray *)self->_references hash];
  v8 = v7 ^ [(ATXPBInfoSuggestion *)self->_executableInfoSuggestion hash]^ v3;
  return v8 ^ [(ATXPBLinkAction *)self->_executableLinkAction hash];
}

- (__CFString)executableTypeAsString:(__CFString *)a1
{
  if (!a1)
  {
LABEL_4:

    return a1;
  }

  if (a2 < 6)
  {
    a1 = off_1E80C4B80[a2];
    goto LABEL_4;
  }

  a1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];

  return a1;
}

- (BOOL)hasExecutableString
{
  if (result)
  {
    return *(result + 40) != 0;
  }

  return result;
}

- (BOOL)hasExecutableAction
{
  if (result)
  {
    return *(result + 8) != 0;
  }

  return result;
}

- (BOOL)hasExecutableHeroApp
{
  if (result)
  {
    return *(result + 16) != 0;
  }

  return result;
}

- (uint64_t)clearReferences
{
  if (result)
  {
    return [*(result + 56) removeAllObjects];
  }

  return result;
}

- (uint64_t)addReferences:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 56);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(a1 + 56);
      *(a1 + 56) = v6;

      v5 = *(a1 + 56);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)referencesCount
{
  if (result)
  {
    return [*(result + 56) count];
  }

  return result;
}

- (id)referencesAtIndex:(id *)a1
{
  if (a1)
  {
    a1 = [a1[7] objectAtIndex:a2];
    v2 = vars8;
  }

  return a1;
}

- (BOOL)hasExecutableInfoSuggestion
{
  if (result)
  {
    return *(result + 24) != 0;
  }

  return result;
}

- (BOOL)hasExecutableLinkAction
{
  if (result)
  {
    return *(result + 32) != 0;
  }

  return result;
}

- (void)copyTo:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    *(v3 + 12) = *(a1 + 48);
    v4 = *(a1 + 40);
    v13 = v3;
    if (v4)
    {
      [(ATXPBExecutableReferenceKey *)v3 setExecutableString:v4];
    }

    v5 = *(a1 + 8);
    if (v5)
    {
      [(ATXPBExecutableReferenceKey *)v13 setExecutableAction:v5];
    }

    v6 = *(a1 + 16);
    if (v6)
    {
      [(ATXPBExecutableReferenceKey *)v13 setExecutableHeroApp:v6];
    }

    if ([*(a1 + 56) count])
    {
      [v13[7] removeAllObjects];
      v7 = [*(a1 + 56) count];
      if (v7)
      {
        v8 = v7;
        for (i = 0; i != v8; ++i)
        {
          v10 = [*(a1 + 56) objectAtIndex:i];
          [(ATXPBExecutableReferenceKey *)v13 addReferences:v10];
        }
      }
    }

    v11 = *(a1 + 24);
    if (v11)
    {
      [(ATXPBExecutableReferenceKey *)v13 setExecutableInfoSuggestion:v11];
    }

    v12 = *(a1 + 32);
    v3 = v13;
    if (v12)
    {
      [(ATXPBExecutableReferenceKey *)v13 setExecutableLinkAction:v12];
      v3 = v13;
    }
  }
}

- (void)setExecutableString:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2(a1, a2, 40);
  }
}

- (void)setExecutableAction:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2(a1, a2, 8);
  }
}

- (void)setExecutableHeroApp:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2(a1, a2, 16);
  }
}

- (void)setExecutableInfoSuggestion:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2(a1, a2, 24);
  }
}

- (void)setExecutableLinkAction:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2(a1, a2, 32);
  }
}

- (void)mergeFrom:(uint64_t)a1
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    *(a1 + 48) = *(v3 + 12);
    v5 = v3[5];
    if (v5)
    {
      objc_storeStrong((a1 + 40), v5);
    }

    v6 = OUTLINED_FUNCTION_1_18(8);
    if (v6)
    {
      if (v7)
      {
        [v6 mergeFrom:?];
      }
    }

    else if (v7)
    {
      OUTLINED_FUNCTION_2_7(v7, v8);
    }

    v9 = OUTLINED_FUNCTION_1_18(16);
    if (v9)
    {
      if (v10)
      {
        [v9 mergeFrom:?];
      }
    }

    else if (v10)
    {
      OUTLINED_FUNCTION_2_7(v10, v11);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = v4[7];
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        v16 = 0;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [(ATXPBExecutableReferenceKey *)a1 addReferences:?];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    v17 = OUTLINED_FUNCTION_1_18(24);
    if (v17)
    {
      if (v18)
      {
        [v17 mergeFrom:v23];
      }
    }

    else if (v18)
    {
      OUTLINED_FUNCTION_2_7(v18, v19);
    }

    v20 = OUTLINED_FUNCTION_1_18(32);
    if (v20)
    {
      if (v21)
      {
        [v20 mergeFrom:?];
      }
    }

    else if (v21)
    {
      OUTLINED_FUNCTION_2_7(v21, v22);
    }
  }
}

- (uint64_t)setExecutableType:(uint64_t)result
{
  if (result)
  {
    *(result + 48) = a2;
  }

  return result;
}

- (uint64_t)executableHeroApp
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (void)setReferences:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2(a1, a2, 56);
  }
}

- (uint64_t)executableLinkAction
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

@end