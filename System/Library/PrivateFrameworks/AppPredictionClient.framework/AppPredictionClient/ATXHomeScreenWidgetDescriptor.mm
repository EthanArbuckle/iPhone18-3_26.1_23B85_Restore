@interface ATXHomeScreenWidgetDescriptor
- (ATXHomeScreenWidgetDescriptor)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)compactDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)extensionBundleIdForMetrics;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXHomeScreenWidgetDescriptor

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_appBundleId copyWithZone:a3];
  [v5 setAppBundleId:v6];

  v7 = [(CHSWidgetDescriptor *)self->_avocadoDescriptor copyWithZone:a3];
  [v5 setAvocadoDescriptor:v7];

  [v5 setSuggestedSize:self->_suggestedSize];
  [v5 setRankType:self->_rankType];
  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  [v3 setObject:self->_appBundleId forKeyedSubscript:@"appBundleId"];
  v4 = [(CHSWidgetDescriptor *)self->_avocadoDescriptor extensionBundleIdentifier];
  [v3 setObject:v4 forKeyedSubscript:@"extensionBundleId"];

  v5 = [(CHSWidgetDescriptor *)self->_avocadoDescriptor displayName];
  [v3 setObject:v5 forKeyedSubscript:@"widgetDisplayName"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_suggestedSize];
  [v3 setObject:v6 forKeyedSubscript:@"widgetSuggestedSize"];

  v7 = [(CHSWidgetDescriptor *)self->_avocadoDescriptor kind];
  [v3 setObject:v7 forKeyedSubscript:@"widgetKind"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_rankType];
  [v3 setObject:v8 forKeyedSubscript:@"rankType"];

  return v3;
}

- (id)extensionBundleIdForMetrics
{
  v3 = [(CHSWidgetDescriptor *)self->_avocadoDescriptor extensionBundleIdentifier];
  v4 = [v3 isEqualToString:&stru_1F3E050C8];

  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = [(CHSWidgetDescriptor *)self->_avocadoDescriptor kind];
  v6 = [v5 isEqualToString:@"SBHSpecialAvocadoDescriptorKindSiri"];

  if (v6)
  {
    v7 = @"suggestions";
    goto LABEL_13;
  }

  v8 = [(CHSWidgetDescriptor *)self->_avocadoDescriptor kind];
  if ([v8 isEqualToString:@"SBHSpecialAvocadoDescriptorKindShortcutsFolder"])
  {

LABEL_7:
    v7 = @"shortcuts";
    goto LABEL_13;
  }

  v9 = [(CHSWidgetDescriptor *)self->_avocadoDescriptor kind];
  v10 = [v9 isEqualToString:@"SBHSpecialAvocadoDescriptorKindShortcutsSingle"];

  if (v10)
  {
    goto LABEL_7;
  }

  v11 = [(CHSWidgetDescriptor *)self->_avocadoDescriptor kind];
  v12 = [v11 isEqualToString:@"SBHSpecialAvocadoDescriptorKindFiles"];

  if (v12)
  {
    v7 = @"files";
    goto LABEL_13;
  }

  v13 = [(CHSWidgetDescriptor *)self->_avocadoDescriptor kind];
  v14 = [v13 isEqualToString:@"SBHSpecialAvocadoDescriptorKindAppPredictions"];

  if (v14)
  {
    v7 = @"apppredpanel";
  }

  else
  {
LABEL_12:
    v7 = [(CHSWidgetDescriptor *)self->_avocadoDescriptor extensionBundleIdentifier];
  }

LABEL_13:

  return v7;
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(ATXHomeScreenWidgetDescriptor *)self dictionaryRepresentation];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (id)compactDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ATXHomeScreenWidgetDescriptor *)self avocadoDescriptor];
  v5 = [v4 extensionBundleIdentifier];
  v6 = [(ATXHomeScreenWidgetDescriptor *)self avocadoDescriptor];
  v7 = [v6 kind];
  v8 = [v3 stringWithFormat:@"%@:%@", v5, v7];

  return v8;
}

- (ATXHomeScreenWidgetDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ATXHomeScreenWidgetDescriptor;
  v5 = [(ATXHomeScreenWidgetDescriptor *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appBundleId"];
    appBundleId = v5->_appBundleId;
    v5->_appBundleId = v6;

    v8 = objc_autoreleasePoolPush();
    v9 = objc_alloc(MEMORY[0x1E695DFD8]);
    v10 = objc_opt_class();
    v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v8);
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"avocadoDescriptor"];
    avocadoDescriptor = v5->_avocadoDescriptor;
    v5->_avocadoDescriptor = v12;

    v5->_suggestedSize = [v4 decodeIntegerForKey:@"widgetSuggestedSize"];
    v5->_rankType = [v4 decodeIntegerForKey:@"rankType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  appBundleId = self->_appBundleId;
  v5 = a3;
  [v5 encodeObject:appBundleId forKey:@"appBundleId"];
  [v5 encodeObject:self->_avocadoDescriptor forKey:@"avocadoDescriptor"];
  [v5 encodeInteger:self->_suggestedSize forKey:@"widgetSuggestedSize"];
  [v5 encodeInteger:self->_rankType forKey:@"rankType"];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_appBundleId hash];
  v4 = [(CHSWidgetDescriptor *)self->_avocadoDescriptor hash];
  v5 = self->_suggestedSize - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
  return self->_rankType - v5 + 32 * v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_appBundleId;
      v7 = v6;
      if (v6 == v5->_appBundleId)
      {
      }

      else
      {
        v8 = [(NSString *)v6 isEqual:?];

        if ((v8 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v10 = self->_avocadoDescriptor;
      v11 = v10;
      if (v10 == v5->_avocadoDescriptor)
      {
      }

      else
      {
        v12 = [(CHSWidgetDescriptor *)v10 isEqual:?];

        if ((v12 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      suggestedSize = self->_suggestedSize;
      if (suggestedSize == [(ATXHomeScreenWidgetDescriptor *)v5 suggestedSize])
      {
        rankType = self->_rankType;
        v9 = rankType == [(ATXHomeScreenWidgetDescriptor *)v5 rankType];
LABEL_16:

        goto LABEL_17;
      }

LABEL_15:
      v9 = 0;
      goto LABEL_16;
    }

    v9 = 0;
  }

LABEL_17:

  return v9;
}

@end