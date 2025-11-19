@interface ATXExecutableReference
- (ATXExecutableReference)initWithClientModelId:(id)a3 date:(id)a4 shouldClearOnEngagement:(BOOL)a5 shouldPurge:(BOOL)a6 suggestionIsHidden:(BOOL)a7;
- (ATXExecutableReference)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)jsonDict;
- (void)encodeWithCoder:(id)a3;
- (void)updateDateTo:(id)a3;
@end

@implementation ATXExecutableReference

- (ATXExecutableReference)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientModelId"];
  v7 = [v4 decodeBoolForKey:@"shouldClearOnEngagement"];
  v8 = [v4 decodeBoolForKey:@"shouldPurge"];
  v9 = [v4 decodeBoolForKey:@"suggestionIsHidden"];

  v10 = [(ATXExecutableReference *)self initWithClientModelId:v6 date:v5 shouldClearOnEngagement:v7 shouldPurge:v8 suggestionIsHidden:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  date = self->_date;
  v5 = a3;
  [v5 encodeObject:date forKey:@"date"];
  [v5 encodeObject:self->_clientModelId forKey:@"clientModelId"];
  [v5 encodeBool:self->_shouldClearOnEngagement forKey:@"shouldClearOnEngagement"];
  [v5 encodeBool:self->_shouldPurge forKey:@"shouldPurge"];
  [v5 encodeBool:self->_suggestionIsHidden forKey:@"suggestionIsHidden"];
}

- (ATXExecutableReference)initWithClientModelId:(id)a3 date:(id)a4 shouldClearOnEngagement:(BOOL)a5 shouldPurge:(BOOL)a6 suggestionIsHidden:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v19.receiver = self;
  v19.super_class = ATXExecutableReference;
  v14 = [(ATXExecutableReference *)&v19 init];
  if (v14)
  {
    v15 = [v12 copy];
    clientModelId = v14->_clientModelId;
    v14->_clientModelId = v15;

    objc_storeStrong(&v14->_date, a4);
    v14->_shouldClearOnEngagement = a5;
    v14->_shouldPurge = a6;
    v14->_suggestionIsHidden = a7;
    v17 = v14;
  }

  return v14;
}

- (id)jsonDict
{
  v12[5] = *MEMORY[0x1E69E9840];
  clientModelId = self->_clientModelId;
  date = self->_date;
  v12[0] = clientModelId;
  v11[0] = @"clientModelId";
  v11[1] = @"date";
  v5 = [(NSDate *)date description];
  v12[1] = v5;
  v11[2] = @"shouldClearOnEngagement";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldClearOnEngagement];
  v12[2] = v6;
  v11[3] = @"shouldPurge";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldPurge];
  v12[3] = v7;
  v11[4] = @"suggestionIsHidden";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_suggestionIsHidden];
  v12[4] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = self->_clientModelId;
      v6 = v5;
      if (v5 == v4->_clientModelId)
      {
        v7 = 1;
      }

      else
      {
        v7 = [(NSString *)v5 isEqual:?];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ATXExecutableReference alloc];
  clientModelId = self->_clientModelId;
  date = self->_date;
  shouldClearOnEngagement = self->_shouldClearOnEngagement;
  shouldPurge = self->_shouldPurge;
  suggestionIsHidden = self->_suggestionIsHidden;

  return [(ATXExecutableReference *)v4 initWithClientModelId:clientModelId date:date shouldClearOnEngagement:shouldClearOnEngagement shouldPurge:shouldPurge suggestionIsHidden:suggestionIsHidden];
}

- (void)updateDateTo:(id)a3
{
  v5 = a3;
  date = self->_date;
  p_date = &self->_date;
  v10 = v5;
  v8 = [v5 earlierDate:date];
  v9 = *p_date;

  if (v8 == v9)
  {
    objc_storeStrong(p_date, a3);
  }
}

@end