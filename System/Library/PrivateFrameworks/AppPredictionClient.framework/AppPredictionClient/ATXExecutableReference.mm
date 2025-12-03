@interface ATXExecutableReference
- (ATXExecutableReference)initWithClientModelId:(id)id date:(id)date shouldClearOnEngagement:(BOOL)engagement shouldPurge:(BOOL)purge suggestionIsHidden:(BOOL)hidden;
- (ATXExecutableReference)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)jsonDict;
- (void)encodeWithCoder:(id)coder;
- (void)updateDateTo:(id)to;
@end

@implementation ATXExecutableReference

- (ATXExecutableReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientModelId"];
  v7 = [coderCopy decodeBoolForKey:@"shouldClearOnEngagement"];
  v8 = [coderCopy decodeBoolForKey:@"shouldPurge"];
  v9 = [coderCopy decodeBoolForKey:@"suggestionIsHidden"];

  v10 = [(ATXExecutableReference *)self initWithClientModelId:v6 date:v5 shouldClearOnEngagement:v7 shouldPurge:v8 suggestionIsHidden:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  date = self->_date;
  coderCopy = coder;
  [coderCopy encodeObject:date forKey:@"date"];
  [coderCopy encodeObject:self->_clientModelId forKey:@"clientModelId"];
  [coderCopy encodeBool:self->_shouldClearOnEngagement forKey:@"shouldClearOnEngagement"];
  [coderCopy encodeBool:self->_shouldPurge forKey:@"shouldPurge"];
  [coderCopy encodeBool:self->_suggestionIsHidden forKey:@"suggestionIsHidden"];
}

- (ATXExecutableReference)initWithClientModelId:(id)id date:(id)date shouldClearOnEngagement:(BOOL)engagement shouldPurge:(BOOL)purge suggestionIsHidden:(BOOL)hidden
{
  idCopy = id;
  dateCopy = date;
  v19.receiver = self;
  v19.super_class = ATXExecutableReference;
  v14 = [(ATXExecutableReference *)&v19 init];
  if (v14)
  {
    v15 = [idCopy copy];
    clientModelId = v14->_clientModelId;
    v14->_clientModelId = v15;

    objc_storeStrong(&v14->_date, date);
    v14->_shouldClearOnEngagement = engagement;
    v14->_shouldPurge = purge;
    v14->_suggestionIsHidden = hidden;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
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
      if (v5 == equalCopy->_clientModelId)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXExecutableReference alloc];
  clientModelId = self->_clientModelId;
  date = self->_date;
  shouldClearOnEngagement = self->_shouldClearOnEngagement;
  shouldPurge = self->_shouldPurge;
  suggestionIsHidden = self->_suggestionIsHidden;

  return [(ATXExecutableReference *)v4 initWithClientModelId:clientModelId date:date shouldClearOnEngagement:shouldClearOnEngagement shouldPurge:shouldPurge suggestionIsHidden:suggestionIsHidden];
}

- (void)updateDateTo:(id)to
{
  toCopy = to;
  date = self->_date;
  p_date = &self->_date;
  v10 = toCopy;
  v8 = [toCopy earlierDate:date];
  v9 = *p_date;

  if (v8 == v9)
  {
    objc_storeStrong(p_date, to);
  }
}

@end