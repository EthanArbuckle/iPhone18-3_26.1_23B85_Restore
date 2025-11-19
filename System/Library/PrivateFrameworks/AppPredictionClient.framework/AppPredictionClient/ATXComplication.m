@interface ATXComplication
+ (id)complicationFromDictionaryRepresentation:(id)a3 error:(id *)a4;
+ (id)stringForComplicationSource:(int)a3;
- (ATXComplication)initWithCoder:(id)a3;
- (ATXComplication)initWithExtensionBundleIdentifier:(id)a3 kind:(id)a4 containerBundleIdentifier:(id)a5 widgetFamily:(int64_t)a6 intent:(id)a7 source:(int)a8;
- (ATXComplication)initWithWidgetDescriptor:(id)a3 widgetFamily:(int64_t)a4 intent:(id)a5;
- (ATXComplication)initWithWidgetDescriptor:(id)a3 widgetFamily:(int64_t)a4 intent:(id)a5 source:(int)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXComplication:(id)a3;
- (BOOL)matches:(id)a3;
- (BOOL)matchesPersonality:(id)a3;
- (CHSExtensionIdentity)extensionIdentity;
- (CHSWidgetDescriptor)widgetDescriptor;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXComplication

- (ATXComplication)initWithExtensionBundleIdentifier:(id)a3 kind:(id)a4 containerBundleIdentifier:(id)a5 widgetFamily:(int64_t)a6 intent:(id)a7 source:(int)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v26.receiver = self;
  v26.super_class = ATXComplication;
  v18 = [(ATXComplication *)&v26 init];
  if (v18)
  {
    v19 = [v14 copy];
    extensionBundleIdentifier = v18->_extensionBundleIdentifier;
    v18->_extensionBundleIdentifier = v19;

    v21 = [v15 copy];
    kind = v18->_kind;
    v18->_kind = v21;

    v23 = [v16 copy];
    containerBundleIdentifier = v18->_containerBundleIdentifier;
    v18->_containerBundleIdentifier = v23;

    v18->_widgetFamily = a6;
    objc_storeStrong(&v18->_intent, a7);
    v18->_source = a8;
  }

  return v18;
}

- (ATXComplication)initWithWidgetDescriptor:(id)a3 widgetFamily:(int64_t)a4 intent:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [v9 extensionBundleIdentifier];
  v11 = [v9 kind];
  v12 = [v9 extensionIdentity];

  v13 = [v12 containerBundleIdentifier];
  v14 = [(ATXComplication *)self initWithExtensionBundleIdentifier:v10 kind:v11 containerBundleIdentifier:v13 widgetFamily:a4 intent:v8 source:0];

  return v14;
}

- (ATXComplication)initWithWidgetDescriptor:(id)a3 widgetFamily:(int64_t)a4 intent:(id)a5 source:(int)a6
{
  v6 = *&a6;
  v10 = a5;
  v11 = a3;
  v12 = [v11 extensionBundleIdentifier];
  v13 = [v11 kind];
  v14 = [v11 extensionIdentity];

  v15 = [v14 containerBundleIdentifier];
  v16 = [(ATXComplication *)self initWithExtensionBundleIdentifier:v12 kind:v13 containerBundleIdentifier:v15 widgetFamily:a4 intent:v10 source:v6];

  return v16;
}

+ (id)complicationFromDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"extensionBundleIdentifier"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v5 objectForKeyedSubscript:@"extensionBundleIdentifier"];
    v9 = [v5 objectForKeyedSubscript:@"kind"];
    objc_opt_class();
    v10 = objc_opt_isKindOfClass();

    if (v10)
    {
      v11 = [v5 objectForKeyedSubscript:@"kind"];
      v12 = [v5 objectForKeyedSubscript:@"containerBundleIdentifier"];
      objc_opt_class();
      v13 = objc_opt_isKindOfClass();

      if (v13)
      {
        v14 = [v5 objectForKeyedSubscript:@"containerBundleIdentifier"];
      }

      else
      {
        v14 = 0;
      }

      v18 = [v5 objectForKeyedSubscript:@"widgetFamily"];
      objc_opt_class();
      v19 = objc_opt_isKindOfClass();

      if (v19)
      {
        v20 = [v5 objectForKeyedSubscript:@"widgetFamily"];
        v21 = CHSWidgetFamilyFromString();

        if ((CHSWidgetFamilyIsAccessory() & 1) != 0 || v21 == 1)
        {
          v27 = [v5 objectForKeyedSubscript:@"intent"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = [v27 objectForKeyedSubscript:@"typeName"];
            v29 = [v27 objectForKeyedSubscript:@"parameters"];
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              v30 = [objc_alloc(MEMORY[0x1E69C5B78]) initWithTypeName:@"typeName" parameters:v29];
              v31 = [v30 createIntent];
            }

            else
            {
              v31 = 0;
            }
          }

          else
          {
            v31 = 0;
          }

          v17 = [[ATXComplication alloc] initWithExtensionBundleIdentifier:v8 kind:v11 containerBundleIdentifier:v14 widgetFamily:v21 intent:v31 source:0];

          goto LABEL_34;
        }

        if (a4)
        {
          v22 = objc_alloc(MEMORY[0x1E696AEC0]);
          v23 = NSStringFromWidgetFamily();
          v24 = [v22 initWithFormat:@"missing key: provided widget family is not a complication family: %@", v23];
          *a4 = errorWithDescription(v24);

          v25 = __atxlog_handle_lock_screen();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          goto LABEL_24;
        }
      }

      else if (a4)
      {
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"missing key: %@", @"widgetFamily"];
        *a4 = errorWithDescription(v26);

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

    if (a4)
    {
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"missing key: %@", @"kind"];
      *a4 = errorWithDescription(v16);

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
    if (!a4)
    {
      v17 = 0;
      goto LABEL_37;
    }

    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"missing key: %@", @"extensionBundleIdentifier"];
    *a4 = errorWithDescription(v15);

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
  v3 = [(ATXComplication *)self extensionBundleIdentifier];
  v11[0] = v3;
  v10[1] = @"kind";
  v4 = [(ATXComplication *)self kind];
  v11[1] = v4;
  v10[2] = @"containerBundleIdentifier";
  v5 = [(ATXComplication *)self containerBundleIdentifier];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[2] = v6;
  v10[3] = @"widgetFamily";
  [(ATXComplication *)self widgetFamily];
  v7 = NSStringFromWidgetFamily();
  v11[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  if (!v5)
  {
  }

  return v8;
}

- (CHSWidgetDescriptor)widgetDescriptor
{
  v3 = objc_alloc(MEMORY[0x1E6994388]);
  v4 = objc_alloc(MEMORY[0x1E6994290]);
  v5 = [(ATXComplication *)self extensionBundleIdentifier];
  v6 = [(ATXComplication *)self containerBundleIdentifier];
  v7 = [v4 initWithExtensionBundleIdentifier:v5 containerBundleIdentifier:v6 deviceIdentifier:0];
  v8 = [(ATXComplication *)self kind];
  [(ATXComplication *)self widgetFamily];
  v9 = CHSWidgetFamilyMaskFromWidgetFamily();
  v10 = [(ATXComplication *)self intent];
  v11 = [v10 _className];
  v12 = [v3 initWithExtensionIdentity:v7 kind:v8 supportedFamilies:v9 intentType:v11];

  return v12;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(ATXComplication *)self extensionBundleIdentifier];
  v5 = [(ATXComplication *)self kind];
  v6 = [(ATXComplication *)self containerBundleIdentifier];
  [(ATXComplication *)self widgetFamily];
  v7 = NSStringFromWidgetFamily();
  v8 = [(ATXComplication *)self intent];
  v9 = [v8 description];
  v10 = [objc_opt_class() stringForComplicationSource:{-[ATXComplication source](self, "source")}];
  v11 = [v3 initWithFormat:@"ATXComplication: extensionBundleIdentifier: %@, kind: %@, containerBundleIdentifier: %@, widgetFamily: %@, intent: %@, source:%@", v4, v5, v6, v7, v9, v10];

  return v11;
}

- (ATXComplication)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"widgetDescriptor"];
  if (!v5)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
    if (v7)
    {
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
      if (v8)
      {
        v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"containerBundleIdentifier"];
        v10 = [v4 decodeIntegerForKey:@"widgetFamily"];
        v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
        self = -[ATXComplication initWithExtensionBundleIdentifier:kind:containerBundleIdentifier:widgetFamily:intent:source:](self, "initWithExtensionBundleIdentifier:kind:containerBundleIdentifier:widgetFamily:intent:source:", v7, v8, v9, v10, v11, [v4 decodeInt32ForKey:@"source"]);

        v6 = self;
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

    v6 = 0;
    goto LABEL_12;
  }

  self = -[ATXComplication initWithWidgetDescriptor:widgetFamily:intent:source:](self, "initWithWidgetDescriptor:widgetFamily:intent:source:", v5, [v4 decodeIntegerForKey:@"widgetFamily"], 0, 0);
  v6 = self;
LABEL_13:

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(ATXComplication *)self extensionBundleIdentifier];
  [v8 encodeObject:v4 forKey:@"extensionBundleIdentifier"];

  v5 = [(ATXComplication *)self kind];
  [v8 encodeObject:v5 forKey:@"kind"];

  v6 = [(ATXComplication *)self containerBundleIdentifier];
  [v8 encodeObject:v6 forKey:@"containerBundleIdentifier"];

  [v8 encodeInteger:-[ATXComplication widgetFamily](self forKey:{"widgetFamily"), @"widgetFamily"}];
  v7 = [(ATXComplication *)self intent];
  [v8 encodeObject:v7 forKey:@"intent"];

  [v8 encodeInt32:-[ATXComplication source](self forKey:{"source"), @"source"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ATXComplication allocWithZone:a3];
  v5 = [(ATXComplication *)self extensionBundleIdentifier];
  v6 = [(ATXComplication *)self kind];
  v7 = [(ATXComplication *)self containerBundleIdentifier];
  v8 = [(ATXComplication *)self widgetFamily];
  v9 = [(ATXComplication *)self intent];
  v10 = [v9 copy];
  v11 = [(ATXComplication *)v4 initWithExtensionBundleIdentifier:v5 kind:v6 containerBundleIdentifier:v7 widgetFamily:v8 intent:v10 source:[(ATXComplication *)self source]];

  [(ATXComplication *)v11 setScore:self->_score];
  [(ATXComplication *)v11 setPredictionSource:self->_predictionSource];
  return v11;
}

- (unint64_t)hash
{
  v3 = [(ATXComplication *)self extensionBundleIdentifier];
  v4 = [v3 hash];

  v5 = [(ATXComplication *)self kind];
  v6 = [v5 hash] - v4 + 32 * v4;

  v7 = [(ATXComplication *)self containerBundleIdentifier];
  v8 = [v7 hash] - v6 + 32 * v6;

  return self->_widgetFamily - v8 + 32 * v8;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXComplication *)self isEqualToATXComplication:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXComplication:(id)a3
{
  v4 = a3;
  v5 = self->_extensionBundleIdentifier;
  v6 = v5;
  if (v5 == v4[2])
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
  if (v8 == v4[3])
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
  if (v11 == v4[4])
  {

    goto LABEL_13;
  }

  v13 = [(NSString *)v11 isEqual:?];

  if (v13)
  {
LABEL_13:
    widgetFamily = self->_widgetFamily;
    v14 = widgetFamily == [v4 widgetFamily];
    goto LABEL_14;
  }

LABEL_11:
  v14 = 0;
LABEL_14:

  return v14;
}

+ (id)stringForComplicationSource:(int)a3
{
  if ((a3 - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E80C5438[a3 - 1];
  }
}

- (BOOL)matchesPersonality:(id)a3
{
  v5 = a3;
  v6 = v5;
  extensionBundleIdentifier = self->_extensionBundleIdentifier;
  v8 = extensionBundleIdentifier;
  if (extensionBundleIdentifier)
  {
LABEL_2:
    v9 = [v6 extensionBundleIdentifier];
    LOBYTE(v8) = [(NSString *)v8 isEqualToString:v9];

    if (extensionBundleIdentifier)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v3 = [v5 extensionBundleIdentifier];
  if (v3)
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

  v3 = [v6 kind];
  if (!v3)
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
  v12 = [v6 kind];
  v13 = [(NSString *)v11 isEqualToString:v12];

  if (!kind)
  {
    goto LABEL_16;
  }

LABEL_17:

  return v8 & v13;
}

- (BOOL)matches:(id)a3
{
  v6 = a3;
  v7 = v6;
  extensionBundleIdentifier = self->_extensionBundleIdentifier;
  v9 = extensionBundleIdentifier;
  if (extensionBundleIdentifier)
  {
LABEL_2:
    v10 = [v7 extensionIdentity];
    v11 = [v10 extensionBundleIdentifier];
    LOBYTE(v9) = [(NSString *)v9 isEqualToString:v11];

    if (extensionBundleIdentifier)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v3 = [v6 extensionIdentity];
  v4 = [v3 extensionBundleIdentifier];
  if (v4)
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

  v3 = [v7 kind];
  if (!v3)
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
  v14 = [v7 kind];
  v15 = [(NSString *)v13 isEqualToString:v14];

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