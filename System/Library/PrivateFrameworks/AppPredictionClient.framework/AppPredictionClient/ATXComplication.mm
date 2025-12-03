@interface ATXComplication
+ (id)complicationFromDictionaryRepresentation:(id)representation error:(id *)error;
+ (id)stringForComplicationSource:(int)source;
- (ATXComplication)initWithCoder:(id)coder;
- (ATXComplication)initWithExtensionBundleIdentifier:(id)identifier kind:(id)kind containerBundleIdentifier:(id)bundleIdentifier widgetFamily:(int64_t)family intent:(id)intent source:(int)source;
- (ATXComplication)initWithWidgetDescriptor:(id)descriptor widgetFamily:(int64_t)family intent:(id)intent;
- (ATXComplication)initWithWidgetDescriptor:(id)descriptor widgetFamily:(int64_t)family intent:(id)intent source:(int)source;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXComplication:(id)complication;
- (BOOL)matches:(id)matches;
- (BOOL)matchesPersonality:(id)personality;
- (CHSExtensionIdentity)extensionIdentity;
- (CHSWidgetDescriptor)widgetDescriptor;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXComplication

- (ATXComplication)initWithExtensionBundleIdentifier:(id)identifier kind:(id)kind containerBundleIdentifier:(id)bundleIdentifier widgetFamily:(int64_t)family intent:(id)intent source:(int)source
{
  identifierCopy = identifier;
  kindCopy = kind;
  bundleIdentifierCopy = bundleIdentifier;
  intentCopy = intent;
  v26.receiver = self;
  v26.super_class = ATXComplication;
  v18 = [(ATXComplication *)&v26 init];
  if (v18)
  {
    v19 = [identifierCopy copy];
    extensionBundleIdentifier = v18->_extensionBundleIdentifier;
    v18->_extensionBundleIdentifier = v19;

    v21 = [kindCopy copy];
    kind = v18->_kind;
    v18->_kind = v21;

    v23 = [bundleIdentifierCopy copy];
    containerBundleIdentifier = v18->_containerBundleIdentifier;
    v18->_containerBundleIdentifier = v23;

    v18->_widgetFamily = family;
    objc_storeStrong(&v18->_intent, intent);
    v18->_source = source;
  }

  return v18;
}

- (ATXComplication)initWithWidgetDescriptor:(id)descriptor widgetFamily:(int64_t)family intent:(id)intent
{
  intentCopy = intent;
  descriptorCopy = descriptor;
  extensionBundleIdentifier = [descriptorCopy extensionBundleIdentifier];
  kind = [descriptorCopy kind];
  extensionIdentity = [descriptorCopy extensionIdentity];

  containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];
  v14 = [(ATXComplication *)self initWithExtensionBundleIdentifier:extensionBundleIdentifier kind:kind containerBundleIdentifier:containerBundleIdentifier widgetFamily:family intent:intentCopy source:0];

  return v14;
}

- (ATXComplication)initWithWidgetDescriptor:(id)descriptor widgetFamily:(int64_t)family intent:(id)intent source:(int)source
{
  v6 = *&source;
  intentCopy = intent;
  descriptorCopy = descriptor;
  extensionBundleIdentifier = [descriptorCopy extensionBundleIdentifier];
  kind = [descriptorCopy kind];
  extensionIdentity = [descriptorCopy extensionIdentity];

  containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];
  v16 = [(ATXComplication *)self initWithExtensionBundleIdentifier:extensionBundleIdentifier kind:kind containerBundleIdentifier:containerBundleIdentifier widgetFamily:family intent:intentCopy source:v6];

  return v16;
}

+ (id)complicationFromDictionaryRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v6 = [representationCopy objectForKeyedSubscript:@"extensionBundleIdentifier"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [representationCopy objectForKeyedSubscript:@"extensionBundleIdentifier"];
    v9 = [representationCopy objectForKeyedSubscript:@"kind"];
    objc_opt_class();
    v10 = objc_opt_isKindOfClass();

    if (v10)
    {
      v11 = [representationCopy objectForKeyedSubscript:@"kind"];
      v12 = [representationCopy objectForKeyedSubscript:@"containerBundleIdentifier"];
      objc_opt_class();
      v13 = objc_opt_isKindOfClass();

      if (v13)
      {
        v14 = [representationCopy objectForKeyedSubscript:@"containerBundleIdentifier"];
      }

      else
      {
        v14 = 0;
      }

      v18 = [representationCopy objectForKeyedSubscript:@"widgetFamily"];
      objc_opt_class();
      v19 = objc_opt_isKindOfClass();

      if (v19)
      {
        v20 = [representationCopy objectForKeyedSubscript:@"widgetFamily"];
        v21 = CHSWidgetFamilyFromString();

        if ((CHSWidgetFamilyIsAccessory() & 1) != 0 || v21 == 1)
        {
          v27 = [representationCopy objectForKeyedSubscript:@"intent"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = [v27 objectForKeyedSubscript:@"typeName"];
            v29 = [v27 objectForKeyedSubscript:@"parameters"];
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              v30 = [objc_alloc(MEMORY[0x1E69C5B78]) initWithTypeName:@"typeName" parameters:v29];
              createIntent = [v30 createIntent];
            }

            else
            {
              createIntent = 0;
            }
          }

          else
          {
            createIntent = 0;
          }

          v17 = [[ATXComplication alloc] initWithExtensionBundleIdentifier:v8 kind:v11 containerBundleIdentifier:v14 widgetFamily:v21 intent:createIntent source:0];

          goto LABEL_34;
        }

        if (error)
        {
          v22 = objc_alloc(MEMORY[0x1E696AEC0]);
          v23 = NSStringFromWidgetFamily();
          v24 = [v22 initWithFormat:@"missing key: provided widget family is not a complication family: %@", v23];
          *error = errorWithDescription(v24);

          v25 = __atxlog_handle_lock_screen();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          goto LABEL_24;
        }
      }

      else if (error)
      {
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"missing key: %@", @"widgetFamily"];
        *error = errorWithDescription(v26);

        v25 = __atxlog_handle_lock_screen();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
LABEL_23:
          +[ATXComplication complicationFromDictionaryRepresentation:error:];
        }

LABEL_24:
      }

      v17 = 0;
LABEL_34:

LABEL_35:
      goto LABEL_36;
    }

    if (error)
    {
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"missing key: %@", @"kind"];
      *error = errorWithDescription(v16);

      v11 = __atxlog_handle_lock_screen();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[ATXComplication complicationFromDictionaryRepresentation:error:];
      }

      v17 = 0;
      goto LABEL_35;
    }
  }

  else
  {
    if (!error)
    {
      v17 = 0;
      goto LABEL_37;
    }

    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"missing key: %@", @"extensionBundleIdentifier"];
    *error = errorWithDescription(v15);

    v8 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[ATXComplication complicationFromDictionaryRepresentation:error:];
    }
  }

  v17 = 0;
LABEL_36:

LABEL_37:

  return v17;
}

- (id)dictionaryRepresentation
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = @"extensionBundleIdentifier";
  extensionBundleIdentifier = [(ATXComplication *)self extensionBundleIdentifier];
  v11[0] = extensionBundleIdentifier;
  v10[1] = @"kind";
  kind = [(ATXComplication *)self kind];
  v11[1] = kind;
  v10[2] = @"containerBundleIdentifier";
  containerBundleIdentifier = [(ATXComplication *)self containerBundleIdentifier];
  null = containerBundleIdentifier;
  if (!containerBundleIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v11[2] = null;
  v10[3] = @"widgetFamily";
  [(ATXComplication *)self widgetFamily];
  v7 = NSStringFromWidgetFamily();
  v11[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  if (!containerBundleIdentifier)
  {
  }

  return v8;
}

- (CHSWidgetDescriptor)widgetDescriptor
{
  v3 = objc_alloc(MEMORY[0x1E6994388]);
  v4 = objc_alloc(MEMORY[0x1E6994290]);
  extensionBundleIdentifier = [(ATXComplication *)self extensionBundleIdentifier];
  containerBundleIdentifier = [(ATXComplication *)self containerBundleIdentifier];
  v7 = [v4 initWithExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier deviceIdentifier:0];
  kind = [(ATXComplication *)self kind];
  [(ATXComplication *)self widgetFamily];
  v9 = CHSWidgetFamilyMaskFromWidgetFamily();
  intent = [(ATXComplication *)self intent];
  _className = [intent _className];
  v12 = [v3 initWithExtensionIdentity:v7 kind:kind supportedFamilies:v9 intentType:_className];

  return v12;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  extensionBundleIdentifier = [(ATXComplication *)self extensionBundleIdentifier];
  kind = [(ATXComplication *)self kind];
  containerBundleIdentifier = [(ATXComplication *)self containerBundleIdentifier];
  [(ATXComplication *)self widgetFamily];
  v7 = NSStringFromWidgetFamily();
  intent = [(ATXComplication *)self intent];
  v9 = [intent description];
  v10 = [objc_opt_class() stringForComplicationSource:{-[ATXComplication source](self, "source")}];
  v11 = [v3 initWithFormat:@"ATXComplication: extensionBundleIdentifier: %@, kind: %@, containerBundleIdentifier: %@, widgetFamily: %@, intent: %@, source:%@", extensionBundleIdentifier, kind, containerBundleIdentifier, v7, v9, v10];

  return v11;
}

- (ATXComplication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"widgetDescriptor"];
  if (!v5)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
    if (v7)
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
      if (v8)
      {
        v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerBundleIdentifier"];
        v10 = [coderCopy decodeIntegerForKey:@"widgetFamily"];
        v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
        self = -[ATXComplication initWithExtensionBundleIdentifier:kind:containerBundleIdentifier:widgetFamily:intent:source:](self, "initWithExtensionBundleIdentifier:kind:containerBundleIdentifier:widgetFamily:intent:source:", v7, v8, v9, v10, v11, [coderCopy decodeInt32ForKey:@"source"]);

        selfCopy2 = self;
LABEL_12:

        goto LABEL_13;
      }

      v12 = __atxlog_handle_lock_screen();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [ATXComplication initWithCoder:];
      }
    }

    else
    {
      v8 = __atxlog_handle_lock_screen();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [ATXComplication initWithCoder:];
      }
    }

    selfCopy2 = 0;
    goto LABEL_12;
  }

  self = -[ATXComplication initWithWidgetDescriptor:widgetFamily:intent:source:](self, "initWithWidgetDescriptor:widgetFamily:intent:source:", v5, [coderCopy decodeIntegerForKey:@"widgetFamily"], 0, 0);
  selfCopy2 = self;
LABEL_13:

  return selfCopy2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  extensionBundleIdentifier = [(ATXComplication *)self extensionBundleIdentifier];
  [coderCopy encodeObject:extensionBundleIdentifier forKey:@"extensionBundleIdentifier"];

  kind = [(ATXComplication *)self kind];
  [coderCopy encodeObject:kind forKey:@"kind"];

  containerBundleIdentifier = [(ATXComplication *)self containerBundleIdentifier];
  [coderCopy encodeObject:containerBundleIdentifier forKey:@"containerBundleIdentifier"];

  [coderCopy encodeInteger:-[ATXComplication widgetFamily](self forKey:{"widgetFamily"), @"widgetFamily"}];
  intent = [(ATXComplication *)self intent];
  [coderCopy encodeObject:intent forKey:@"intent"];

  [coderCopy encodeInt32:-[ATXComplication source](self forKey:{"source"), @"source"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXComplication allocWithZone:zone];
  extensionBundleIdentifier = [(ATXComplication *)self extensionBundleIdentifier];
  kind = [(ATXComplication *)self kind];
  containerBundleIdentifier = [(ATXComplication *)self containerBundleIdentifier];
  widgetFamily = [(ATXComplication *)self widgetFamily];
  intent = [(ATXComplication *)self intent];
  v10 = [intent copy];
  v11 = [(ATXComplication *)v4 initWithExtensionBundleIdentifier:extensionBundleIdentifier kind:kind containerBundleIdentifier:containerBundleIdentifier widgetFamily:widgetFamily intent:v10 source:[(ATXComplication *)self source]];

  [(ATXComplication *)v11 setScore:self->_score];
  [(ATXComplication *)v11 setPredictionSource:self->_predictionSource];
  return v11;
}

- (unint64_t)hash
{
  extensionBundleIdentifier = [(ATXComplication *)self extensionBundleIdentifier];
  v4 = [extensionBundleIdentifier hash];

  kind = [(ATXComplication *)self kind];
  v6 = [kind hash] - v4 + 32 * v4;

  containerBundleIdentifier = [(ATXComplication *)self containerBundleIdentifier];
  v8 = [containerBundleIdentifier hash] - v6 + 32 * v6;

  return self->_widgetFamily - v8 + 32 * v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXComplication *)self isEqualToATXComplication:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXComplication:(id)complication
{
  complicationCopy = complication;
  v5 = self->_extensionBundleIdentifier;
  v6 = v5;
  if (v5 == complicationCopy[2])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v8 = self->_kind;
  v9 = v8;
  if (v8 == complicationCopy[3])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v11 = self->_containerBundleIdentifier;
  v12 = v11;
  if (v11 == complicationCopy[4])
  {

    goto LABEL_13;
  }

  v13 = [(NSString *)v11 isEqual:?];

  if (v13)
  {
LABEL_13:
    widgetFamily = self->_widgetFamily;
    v14 = widgetFamily == [complicationCopy widgetFamily];
    goto LABEL_14;
  }

LABEL_11:
  v14 = 0;
LABEL_14:

  return v14;
}

+ (id)stringForComplicationSource:(int)source
{
  if ((source - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E80C5438[source - 1];
  }
}

- (BOOL)matchesPersonality:(id)personality
{
  personalityCopy = personality;
  v6 = personalityCopy;
  extensionBundleIdentifier = self->_extensionBundleIdentifier;
  v8 = extensionBundleIdentifier;
  if (extensionBundleIdentifier)
  {
LABEL_2:
    extensionBundleIdentifier = [v6 extensionBundleIdentifier];
    LOBYTE(v8) = [(NSString *)v8 isEqualToString:extensionBundleIdentifier];

    if (extensionBundleIdentifier)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  extensionBundleIdentifier2 = [personalityCopy extensionBundleIdentifier];
  if (extensionBundleIdentifier2)
  {
    v8 = self->_extensionBundleIdentifier;
    if (v8)
    {
      goto LABEL_2;
    }
  }

  else
  {
    LOBYTE(v8) = 1;
  }

LABEL_8:

LABEL_9:
  kind = self->_kind;
  v11 = kind;
  if (kind)
  {
    goto LABEL_10;
  }

  extensionBundleIdentifier2 = [v6 kind];
  if (!extensionBundleIdentifier2)
  {
    v13 = 1;
    goto LABEL_16;
  }

  v11 = self->_kind;
  if (!v11)
  {
    v13 = 0;
LABEL_16:

    goto LABEL_17;
  }

LABEL_10:
  kind = [v6 kind];
  v13 = [(NSString *)v11 isEqualToString:kind];

  if (!kind)
  {
    goto LABEL_16;
  }

LABEL_17:

  return v8 & v13;
}

- (BOOL)matches:(id)matches
{
  matchesCopy = matches;
  v7 = matchesCopy;
  extensionBundleIdentifier = self->_extensionBundleIdentifier;
  v9 = extensionBundleIdentifier;
  if (extensionBundleIdentifier)
  {
LABEL_2:
    extensionIdentity = [v7 extensionIdentity];
    extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
    LOBYTE(v9) = [(NSString *)v9 isEqualToString:extensionBundleIdentifier];

    if (extensionBundleIdentifier)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  extensionIdentity2 = [matchesCopy extensionIdentity];
  extensionBundleIdentifier2 = [extensionIdentity2 extensionBundleIdentifier];
  if (extensionBundleIdentifier2)
  {
    v9 = self->_extensionBundleIdentifier;
    if (v9)
    {
      goto LABEL_2;
    }
  }

  else
  {
    LOBYTE(v9) = 1;
  }

LABEL_8:

LABEL_9:
  kind = self->_kind;
  v13 = kind;
  if (kind)
  {
    goto LABEL_10;
  }

  extensionIdentity2 = [v7 kind];
  if (!extensionIdentity2)
  {
    v15 = 1;
    goto LABEL_16;
  }

  v13 = self->_kind;
  if (!v13)
  {
    v15 = 0;
LABEL_16:

    goto LABEL_17;
  }

LABEL_10:
  kind = [v7 kind];
  v15 = [(NSString *)v13 isEqualToString:kind];

  if (!kind)
  {
    goto LABEL_16;
  }

LABEL_17:

  return v9 & v15;
}

- (CHSExtensionIdentity)extensionIdentity
{
  v2 = [objc_alloc(MEMORY[0x1E6994290]) initWithExtensionBundleIdentifier:self->_extensionBundleIdentifier containerBundleIdentifier:self->_containerBundleIdentifier deviceIdentifier:0];

  return v2;
}

+ (void)complicationFromDictionaryRepresentation:error:.cold.1()
{
  OUTLINED_FUNCTION_2_10(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end