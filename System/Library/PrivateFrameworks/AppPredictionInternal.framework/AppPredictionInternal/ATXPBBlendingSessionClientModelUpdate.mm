@interface ATXPBBlendingSessionClientModelUpdate
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSuggestion:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBBlendingSessionClientModelUpdate

- (void)addSuggestion:(id)a3
{
  v4 = a3;
  suggestions = self->_suggestions;
  v8 = v4;
  if (!suggestions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_suggestions;
    self->_suggestions = v6;

    v4 = v8;
    suggestions = self->_suggestions;
  }

  [(NSMutableArray *)suggestions addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXPBBlendingSessionClientModelUpdate;
  v4 = [(ATXPBBlendingSessionClientModelUpdate *)&v8 description];
  v5 = [(ATXPBBlendingSessionClientModelUpdate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  clientModelId = self->_clientModelId;
  if (clientModelId)
  {
    [v3 setObject:clientModelId forKey:@"clientModelId"];
  }

  clientModelVersion = self->_clientModelVersion;
  if (clientModelVersion)
  {
    [v4 setObject:clientModelVersion forKey:@"clientModelVersion"];
  }

  if ([(NSMutableArray *)self->_suggestions count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_suggestions, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_suggestions;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

          v13 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [v4 setObject:v7 forKey:@"suggestion"];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_clientModelId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_clientModelVersion)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_suggestions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_clientModelId)
  {
    [v8 setClientModelId:?];
  }

  if (self->_clientModelVersion)
  {
    [v8 setClientModelVersion:?];
  }

  if ([(ATXPBBlendingSessionClientModelUpdate *)self suggestionsCount])
  {
    [v8 clearSuggestions];
    v4 = [(ATXPBBlendingSessionClientModelUpdate *)self suggestionsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ATXPBBlendingSessionClientModelUpdate *)self suggestionAtIndex:i];
        [v8 addSuggestion:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_clientModelId copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_clientModelVersion copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_suggestions;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v18 + 1) + 8 * v14) copyWithZone:{a3, v18}];
        [v5 addSuggestion:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((clientModelId = self->_clientModelId, !(clientModelId | v4[1])) || -[NSString isEqual:](clientModelId, "isEqual:")) && ((clientModelVersion = self->_clientModelVersion, !(clientModelVersion | v4[2])) || -[NSString isEqual:](clientModelVersion, "isEqual:")))
  {
    suggestions = self->_suggestions;
    if (suggestions | v4[3])
    {
      v8 = [(NSMutableArray *)suggestions isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_clientModelId hash];
  v4 = [(NSString *)self->_clientModelVersion hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_suggestions hash];
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 1))
  {
    [(ATXPBBlendingSessionClientModelUpdate *)self setClientModelId:?];
  }

  if (*(v4 + 2))
  {
    [(ATXPBBlendingSessionClientModelUpdate *)self setClientModelVersion:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(v4 + 3);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(ATXPBBlendingSessionClientModelUpdate *)self addSuggestion:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end