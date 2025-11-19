@interface ATXWidgetPersonality
+ (id)stringRepresentationForATXHomeScreenWidgetDescriptor:(id)a3;
+ (id)stringRepresentationForExtensionBundleId:(id)a3 kind:(id)a4;
+ (id)widgetBundleIdForWidgetPersonalityStringRepresentation:(id)a3;
+ (id)widgetKindForWidgetPersonalityStringRepresentation:(id)a3;
- (ATXWidgetPersonality)initWithCoder:(id)a3;
- (ATXWidgetPersonality)initWithDescriptor:(id)a3;
- (ATXWidgetPersonality)initWithExtensionBundleId:(id)a3 kind:(id)a4;
- (ATXWidgetPersonality)initWithStringRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)stringRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXWidgetPersonality

- (ATXWidgetPersonality)initWithExtensionBundleId:(id)a3 kind:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ATXWidgetPersonality;
  v8 = [(ATXWidgetPersonality *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    extensionBundleId = v8->_extensionBundleId;
    v8->_extensionBundleId = v9;

    v11 = [v7 copy];
    kind = v8->_kind;
    v8->_kind = v11;
  }

  return v8;
}

- (ATXWidgetPersonality)initWithStringRepresentation:(id)a3
{
  v4 = a3;
  v5 = [ATXWidgetPersonality widgetBundleIdForWidgetPersonalityStringRepresentation:v4];
  v6 = [ATXWidgetPersonality widgetKindForWidgetPersonalityStringRepresentation:v4];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    self = [(ATXWidgetPersonality *)self initWithExtensionBundleId:v5 kind:v6];
    v8 = self;
  }

  return v8;
}

- (ATXWidgetPersonality)initWithDescriptor:(id)a3
{
  v4 = a3;
  v5 = [v4 extensionBundleIdentifier];
  v6 = [v4 kind];

  v7 = [(ATXWidgetPersonality *)self initWithExtensionBundleId:v5 kind:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  extensionBundleId = self->_extensionBundleId;
  v5 = a3;
  [v5 encodeObject:extensionBundleId forKey:@"extensionBundleId"];
  [v5 encodeObject:self->_kind forKey:@"kind"];
}

- (ATXWidgetPersonality)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleId"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kind"];

  v7 = [(ATXWidgetPersonality *)self initWithExtensionBundleId:v5 kind:v6];
  return v7;
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
      v6 = self->_extensionBundleId;
      v7 = v6;
      if (v6 == v5->_extensionBundleId)
      {
      }

      else
      {
        v8 = [(NSString *)v6 isEqual:?];

        if ((v8 & 1) == 0)
        {
          v9 = 0;
LABEL_13:

          goto LABEL_14;
        }
      }

      v10 = self->_kind;
      v11 = v10;
      if (v10 == v5->_kind)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSString *)v10 isEqual:?];
      }

      goto LABEL_13;
    }

    v9 = 0;
  }

LABEL_14:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  extensionBundleId = self->_extensionBundleId;
  kind = self->_kind;

  return [v4 initWithExtensionBundleId:extensionBundleId kind:kind];
}

- (id)description
{
  v3 = objc_opt_new();
  [v3 appendFormat:@"Extension bundle id: %@; ", self->_extensionBundleId];
  [v3 appendFormat:@"kind: %@; ", self->_kind];

  return v3;
}

- (id)stringRepresentation
{
  v3 = objc_opt_class();
  extensionBundleId = self->_extensionBundleId;
  kind = self->_kind;

  return [v3 stringRepresentationForExtensionBundleId:extensionBundleId kind:kind];
}

+ (id)stringRepresentationForATXHomeScreenWidgetDescriptor:(id)a3
{
  v4 = a3;
  v5 = [v4 avocadoDescriptor];
  v6 = [v5 extensionBundleIdentifier];
  v7 = [v4 avocadoDescriptor];

  v8 = [v7 kind];
  v9 = [a1 stringRepresentationForExtensionBundleId:v6 kind:v8];

  return v9;
}

+ (id)stringRepresentationForExtensionBundleId:(id)a3 kind:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithFormat:@"%@:%@", v7, v6];

  return v8;
}

+ (id)widgetBundleIdForWidgetPersonalityStringRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@":"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 substringToIndex:v4];
  }

  return v5;
}

+ (id)widgetKindForWidgetPersonalityStringRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@":"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 substringFromIndex:v4 + 1];
  }

  return v5;
}

@end