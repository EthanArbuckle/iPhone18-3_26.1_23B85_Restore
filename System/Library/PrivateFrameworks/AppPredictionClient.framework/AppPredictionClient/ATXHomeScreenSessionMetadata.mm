@interface ATXHomeScreenSessionMetadata
- (ATXHomeScreenSessionMetadata)initWithCoder:(id)a3;
- (ATXHomeScreenSessionMetadata)initWithWidgetUniqueId:(id)a3 widgetBundleId:(id)a4 isWidgetInTodayView:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXHomeScreenSessionMetadata:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXHomeScreenSessionMetadata

- (ATXHomeScreenSessionMetadata)initWithWidgetUniqueId:(id)a3 widgetBundleId:(id)a4 isWidgetInTodayView:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = ATXHomeScreenSessionMetadata;
  v11 = [(ATXHomeScreenSessionMetadata *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_widgetUniqueId, a3);
    objc_storeStrong(&v12->_widgetBundleId, a4);
    v12->_isWidgetInTodayView = a5;
  }

  return v12;
}

- (NSString)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = v6;
  if (self->_isWidgetInTodayView)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [v4 initWithFormat:@"%@: \nwidgetUniqueId: %@ \nwidgetBundleId: %@ \nisWidgetInTodayView: %@ \n", v6, self->_widgetBundleId, self->_widgetUniqueId, v8];

  objc_autoreleasePoolPop(v3);

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  widgetUniqueId = self->_widgetUniqueId;
  v5 = a3;
  [v5 encodeObject:widgetUniqueId forKey:@"widgetUniqueId"];
  [v5 encodeObject:self->_widgetBundleId forKey:@"widgetBundleId"];
  [v5 encodeBool:self->_isWidgetInTodayView forKey:@"widgetTodayView"];
}

- (ATXHomeScreenSessionMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_feedback();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"widgetUniqueId" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.ATXFeedbackSessionMetadata" errorCode:-1 logHandle:v7];

  if (v8)
  {
    v9 = MEMORY[0x1E69C5D78];
    v10 = objc_opt_class();
    v11 = __atxlog_handle_feedback();
    v12 = [v9 robustDecodeObjectOfClass:v10 forKey:@"widgetBundleId" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.ATXFeedbackSessionMetadata" errorCode:-1 logHandle:v11];

    if (v12)
    {
      self = -[ATXHomeScreenSessionMetadata initWithWidgetUniqueId:widgetBundleId:isWidgetInTodayView:](self, "initWithWidgetUniqueId:widgetBundleId:isWidgetInTodayView:", v8, v12, [v4 decodeBoolForKey:@"widgetTodayView"]);
      v13 = self;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_widgetUniqueId hash];
  v4 = [(NSString *)self->_widgetBundleId hash];
  return self->_isWidgetInTodayView - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXHomeScreenSessionMetadata *)self isEqualToATXHomeScreenSessionMetadata:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXHomeScreenSessionMetadata:(id)a3
{
  v4 = a3;
  v5 = self->_widgetUniqueId;
  v6 = v5;
  if (v5 == v4[2])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v8 = self->_widgetBundleId;
  v9 = v8;
  if (v8 == v4[3])
  {

    goto LABEL_9;
  }

  v10 = [(NSString *)v8 isEqual:?];

  if (v10)
  {
LABEL_9:
    v11 = self->_isWidgetInTodayView == *(v4 + 8);
    goto LABEL_10;
  }

LABEL_7:
  v11 = 0;
LABEL_10:

  return v11;
}

@end