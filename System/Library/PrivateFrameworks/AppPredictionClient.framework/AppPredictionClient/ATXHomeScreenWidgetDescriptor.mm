@interface ATXHomeScreenWidgetDescriptor
- (ATXHomeScreenWidgetDescriptor)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)compactDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)extensionBundleIdForMetrics;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXHomeScreenWidgetDescriptor

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_appBundleId copyWithZone:zone];
  [v5 setAppBundleId:v6];

  v7 = [(CHSWidgetDescriptor *)self->_avocadoDescriptor copyWithZone:zone];
  [v5 setAvocadoDescriptor:v7];

  [v5 setSuggestedSize:self->_suggestedSize];
  [v5 setRankType:self->_rankType];
  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  [v3 setObject:self->_appBundleId forKeyedSubscript:@"appBundleId"];
  extensionBundleIdentifier = [(CHSWidgetDescriptor *)self->_avocadoDescriptor extensionBundleIdentifier];
  [v3 setObject:extensionBundleIdentifier forKeyedSubscript:@"extensionBundleId"];

  displayName = [(CHSWidgetDescriptor *)self->_avocadoDescriptor displayName];
  [v3 setObject:displayName forKeyedSubscript:@"widgetDisplayName"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_suggestedSize];
  [v3 setObject:v6 forKeyedSubscript:@"widgetSuggestedSize"];

  kind = [(CHSWidgetDescriptor *)self->_avocadoDescriptor kind];
  [v3 setObject:kind forKeyedSubscript:@"widgetKind"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_rankType];
  [v3 setObject:v8 forKeyedSubscript:@"rankType"];

  return v3;
}

- (id)extensionBundleIdForMetrics
{
  extensionBundleIdentifier = [(CHSWidgetDescriptor *)self->_avocadoDescriptor extensionBundleIdentifier];
  v4 = [extensionBundleIdentifier isEqualToString:&stru_1F3E050C8];

  if (!v4)
  {
    goto LABEL_12;
  }

  kind = [(CHSWidgetDescriptor *)self->_avocadoDescriptor kind];
  v6 = [kind isEqualToString:@"SBHSpecialAvocadoDescriptorKindSiri"];

  if (v6)
  {
    extensionBundleIdentifier2 = @"suggestions";
    goto LABEL_13;
  }

  kind2 = [(CHSWidgetDescriptor *)self->_avocadoDescriptor kind];
  if ([kind2 isEqualToString:@"SBHSpecialAvocadoDescriptorKindShortcutsFolder"])
  {

LABEL_7:
    extensionBundleIdentifier2 = @"shortcuts";
    goto LABEL_13;
  }

  kind3 = [(CHSWidgetDescriptor *)self->_avocadoDescriptor kind];
  v10 = [kind3 isEqualToString:@"SBHSpecialAvocadoDescriptorKindShortcutsSingle"];

  if (v10)
  {
    goto LABEL_7;
  }

  kind4 = [(CHSWidgetDescriptor *)self->_avocadoDescriptor kind];
  v12 = [kind4 isEqualToString:@"SBHSpecialAvocadoDescriptorKindFiles"];

  if (v12)
  {
    extensionBundleIdentifier2 = @"files";
    goto LABEL_13;
  }

  kind5 = [(CHSWidgetDescriptor *)self->_avocadoDescriptor kind];
  v14 = [kind5 isEqualToString:@"SBHSpecialAvocadoDescriptorKindAppPredictions"];

  if (v14)
  {
    extensionBundleIdentifier2 = @"apppredpanel";
  }

  else
  {
LABEL_12:
    extensionBundleIdentifier2 = [(CHSWidgetDescriptor *)self->_avocadoDescriptor extensionBundleIdentifier];
  }

LABEL_13:

  return extensionBundleIdentifier2;
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  dictionaryRepresentation = [(ATXHomeScreenWidgetDescriptor *)self dictionaryRepresentation];
  v4 = [v2 stringWithFormat:@"%@", dictionaryRepresentation];

  return v4;
}

- (id)compactDescription
{
  v3 = MEMORY[0x1E696AEC0];
  avocadoDescriptor = [(ATXHomeScreenWidgetDescriptor *)self avocadoDescriptor];
  extensionBundleIdentifier = [avocadoDescriptor extensionBundleIdentifier];
  avocadoDescriptor2 = [(ATXHomeScreenWidgetDescriptor *)self avocadoDescriptor];
  kind = [avocadoDescriptor2 kind];
  v8 = [v3 stringWithFormat:@"%@:%@", extensionBundleIdentifier, kind];

  return v8;
}

- (ATXHomeScreenWidgetDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = ATXHomeScreenWidgetDescriptor;
  v5 = [(ATXHomeScreenWidgetDescriptor *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleId"];
    appBundleId = v5->_appBundleId;
    v5->_appBundleId = v6;

    v8 = objc_autoreleasePoolPush();
    v9 = objc_alloc(MEMORY[0x1E695DFD8]);
    v10 = objc_opt_class();
    v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v8);
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"avocadoDescriptor"];
    avocadoDescriptor = v5->_avocadoDescriptor;
    v5->_avocadoDescriptor = v12;

    v5->_suggestedSize = [coderCopy decodeIntegerForKey:@"widgetSuggestedSize"];
    v5->_rankType = [coderCopy decodeIntegerForKey:@"rankType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  appBundleId = self->_appBundleId;
  coderCopy = coder;
  [coderCopy encodeObject:appBundleId forKey:@"appBundleId"];
  [coderCopy encodeObject:self->_avocadoDescriptor forKey:@"avocadoDescriptor"];
  [coderCopy encodeInteger:self->_suggestedSize forKey:@"widgetSuggestedSize"];
  [coderCopy encodeInteger:self->_rankType forKey:@"rankType"];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_appBundleId hash];
  v4 = [(CHSWidgetDescriptor *)self->_avocadoDescriptor hash];
  v5 = self->_suggestedSize - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
  return self->_rankType - v5 + 32 * v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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