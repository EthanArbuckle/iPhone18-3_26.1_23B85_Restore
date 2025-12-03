@interface ATXWidgetModeEntity
- (ATXWidgetModeEntity)initWithCoder:(id)coder;
- (ATXWidgetModeEntity)initWithWidget:(id)widget;
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)identifier;
- (id)jsonDict;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXWidgetModeEntity

- (ATXWidgetModeEntity)initWithWidget:(id)widget
{
  widgetCopy = widget;
  v9.receiver = self;
  v9.super_class = ATXWidgetModeEntity;
  v5 = [(ATXWidgetModeEntity *)&v9 init];
  if (v5)
  {
    v6 = [widgetCopy copy];
    widget = v5->_widget;
    v5->_widget = v6;
  }

  return v5;
}

- (id)identifier
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  extensionIdentity = [(CHSWidget *)self->_widget extensionIdentity];
  extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
  extensionIdentity2 = [(CHSWidget *)self->_widget extensionIdentity];
  containerBundleIdentifier = [extensionIdentity2 containerBundleIdentifier];
  kind = [(CHSWidget *)self->_widget kind];
  [(CHSWidget *)self->_widget family];
  v9 = NSStringFromWidgetFamily();
  v10 = [v3 initWithFormat:@"%@:%@:%@:%@", extensionBundleIdentifier, containerBundleIdentifier, kind, v9];

  return v10;
}

- (id)jsonDict
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"entityIdentifier";
  identifier = [(ATXWidgetModeEntity *)self identifier];
  null = identifier;
  if (!identifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"scoreMetadata";
  v11[0] = null;
  scoreMetadata = [(ATXWidgetModeEntity *)self scoreMetadata];
  jsonDict = [scoreMetadata jsonDict];
  null2 = jsonDict;
  if (!jsonDict)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!jsonDict)
  {
  }

  if (!identifier)
  {
  }

  return v8;
}

- (NSString)debugDescription
{
  jsonDict = [(ATXWidgetModeEntity *)self jsonDict];
  v3 = [jsonDict description];

  return v3;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(ATXWidgetModeEntity *)self identifier];
  scoreMetadata = [(ATXWidgetModeEntity *)self scoreMetadata];
  [scoreMetadata score];
  v7 = [v3 initWithFormat:@"entityIdentifier: %@, score: %.3f", identifier, v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(ATXWidgetModeEntity *)self identifier];
      identifier2 = [(ATXWidgetModeEntity *)v5 identifier];

      v8 = [identifier isEqualToString:identifier2];
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
  identifier = [(ATXWidgetModeEntity *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  widget = [(ATXWidgetModeEntity *)self widget];
  [coderCopy encodeObject:widget forKey:@"codingKeyForWidget"];

  scoreMetadata = [(ATXWidgetModeEntity *)self scoreMetadata];
  [coderCopy encodeObject:scoreMetadata forKey:@"codingKeyForScoreMetadata"];
}

- (ATXWidgetModeEntity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_modes();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForWidget" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.widgetModeEntity" errorCode:-1 logHandle:v7];

  error = [coderCopy error];

  if (error)
  {
    selfCopy = 0;
  }

  else
  {
    v11 = MEMORY[0x1E69C5D78];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_modes();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForScoreMetadata" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.widgetModeEntity" errorCode:-1 logHandle:v13];

    error2 = [coderCopy error];

    if (error2)
    {
      selfCopy = 0;
    }

    else
    {
      self = [(ATXWidgetModeEntity *)self initWithWidget:v8];
      [(ATXWidgetModeEntity *)self setScoreMetadata:v14];
      selfCopy = self;
    }
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXWidgetModeEntity allocWithZone:zone];
  widget = [(ATXWidgetModeEntity *)self widget];
  v6 = [(ATXWidgetModeEntity *)v4 initWithWidget:widget];

  return v6;
}

@end