@interface ATXWidgetPersonality
+ (id)stringRepresentationForATXHomeScreenWidgetDescriptor:(id)descriptor;
+ (id)stringRepresentationForExtensionBundleId:(id)id kind:(id)kind;
+ (id)widgetBundleIdForWidgetPersonalityStringRepresentation:(id)representation;
+ (id)widgetKindForWidgetPersonalityStringRepresentation:(id)representation;
- (ATXWidgetPersonality)initWithCoder:(id)coder;
- (ATXWidgetPersonality)initWithDescriptor:(id)descriptor;
- (ATXWidgetPersonality)initWithExtensionBundleId:(id)id kind:(id)kind;
- (ATXWidgetPersonality)initWithStringRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)stringRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXWidgetPersonality

- (ATXWidgetPersonality)initWithExtensionBundleId:(id)id kind:(id)kind
{
  idCopy = id;
  kindCopy = kind;
  v14.receiver = self;
  v14.super_class = ATXWidgetPersonality;
  v8 = [(ATXWidgetPersonality *)&v14 init];
  if (v8)
  {
    v9 = [idCopy copy];
    extensionBundleId = v8->_extensionBundleId;
    v8->_extensionBundleId = v9;

    v11 = [kindCopy copy];
    kind = v8->_kind;
    v8->_kind = v11;
  }

  return v8;
}

- (ATXWidgetPersonality)initWithStringRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [ATXWidgetPersonality widgetBundleIdForWidgetPersonalityStringRepresentation:representationCopy];
  v6 = [ATXWidgetPersonality widgetKindForWidgetPersonalityStringRepresentation:representationCopy];

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
    selfCopy = 0;
  }

  else
  {
    self = [(ATXWidgetPersonality *)self initWithExtensionBundleId:v5 kind:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (ATXWidgetPersonality)initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  extensionBundleIdentifier = [descriptorCopy extensionBundleIdentifier];
  kind = [descriptorCopy kind];

  v7 = [(ATXWidgetPersonality *)self initWithExtensionBundleId:extensionBundleIdentifier kind:kind];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  extensionBundleId = self->_extensionBundleId;
  coderCopy = coder;
  [coderCopy encodeObject:extensionBundleId forKey:@"extensionBundleId"];
  [coderCopy encodeObject:self->_kind forKey:@"kind"];
}

- (ATXWidgetPersonality)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleId"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kind"];

  v7 = [(ATXWidgetPersonality *)self initWithExtensionBundleId:v5 kind:v6];
  return v7;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
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

+ (id)stringRepresentationForATXHomeScreenWidgetDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  avocadoDescriptor = [descriptorCopy avocadoDescriptor];
  extensionBundleIdentifier = [avocadoDescriptor extensionBundleIdentifier];
  avocadoDescriptor2 = [descriptorCopy avocadoDescriptor];

  kind = [avocadoDescriptor2 kind];
  v9 = [self stringRepresentationForExtensionBundleId:extensionBundleIdentifier kind:kind];

  return v9;
}

+ (id)stringRepresentationForExtensionBundleId:(id)id kind:(id)kind
{
  v5 = MEMORY[0x1E696AEC0];
  kindCopy = kind;
  idCopy = id;
  kindCopy = [[v5 alloc] initWithFormat:@"%@:%@", idCopy, kindCopy];

  return kindCopy;
}

+ (id)widgetBundleIdForWidgetPersonalityStringRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy rangeOfString:@":"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [representationCopy substringToIndex:v4];
  }

  return v5;
}

+ (id)widgetKindForWidgetPersonalityStringRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy rangeOfString:@":"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [representationCopy substringFromIndex:v4 + 1];
  }

  return v5;
}

@end