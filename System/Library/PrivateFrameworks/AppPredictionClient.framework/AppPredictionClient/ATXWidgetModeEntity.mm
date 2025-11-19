@interface ATXWidgetModeEntity
- (ATXWidgetModeEntity)initWithCoder:(id)a3;
- (ATXWidgetModeEntity)initWithWidget:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)identifier;
- (id)jsonDict;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXWidgetModeEntity

- (ATXWidgetModeEntity)initWithWidget:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXWidgetModeEntity;
  v5 = [(ATXWidgetModeEntity *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    widget = v5->_widget;
    v5->_widget = v6;
  }

  return v5;
}

- (id)identifier
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(CHSWidget *)self->_widget extensionIdentity];
  v5 = [v4 extensionBundleIdentifier];
  v6 = [(CHSWidget *)self->_widget extensionIdentity];
  v7 = [v6 containerBundleIdentifier];
  v8 = [(CHSWidget *)self->_widget kind];
  [(CHSWidget *)self->_widget family];
  v9 = NSStringFromWidgetFamily();
  v10 = [v3 initWithFormat:@"%@:%@:%@:%@", v5, v7, v8, v9];

  return v10;
}

- (id)jsonDict
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"entityIdentifier";
  v3 = [(ATXWidgetModeEntity *)self identifier];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"scoreMetadata";
  v11[0] = v4;
  v5 = [(ATXWidgetModeEntity *)self scoreMetadata];
  v6 = [v5 jsonDict];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!v6)
  {
  }

  if (!v3)
  {
  }

  return v8;
}

- (NSString)debugDescription
{
  v2 = [(ATXWidgetModeEntity *)self jsonDict];
  v3 = [v2 description];

  return v3;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(ATXWidgetModeEntity *)self identifier];
  v5 = [(ATXWidgetModeEntity *)self scoreMetadata];
  [v5 score];
  v7 = [v3 initWithFormat:@"entityIdentifier: %@, score: %.3f", v4, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ATXWidgetModeEntity *)self identifier];
      v7 = [(ATXWidgetModeEntity *)v5 identifier];

      v8 = [v6 isEqualToString:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(ATXWidgetModeEntity *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXWidgetModeEntity *)self widget];
  [v4 encodeObject:v5 forKey:@"codingKeyForWidget"];

  v6 = [(ATXWidgetModeEntity *)self scoreMetadata];
  [v4 encodeObject:v6 forKey:@"codingKeyForScoreMetadata"];
}

- (ATXWidgetModeEntity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_modes();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForWidget" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.widgetModeEntity" errorCode:-1 logHandle:v7];

  v9 = [v4 error];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = MEMORY[0x1E69C5D78];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_modes();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForScoreMetadata" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.widgetModeEntity" errorCode:-1 logHandle:v13];

    v15 = [v4 error];

    if (v15)
    {
      v10 = 0;
    }

    else
    {
      self = [(ATXWidgetModeEntity *)self initWithWidget:v8];
      [(ATXWidgetModeEntity *)self setScoreMetadata:v14];
      v10 = self;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ATXWidgetModeEntity allocWithZone:a3];
  v5 = [(ATXWidgetModeEntity *)self widget];
  v6 = [(ATXWidgetModeEntity *)v4 initWithWidget:v5];

  return v6;
}

@end