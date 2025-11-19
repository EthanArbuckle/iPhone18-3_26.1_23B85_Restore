@interface ATXPosterDescriptor
- (ATXPosterDescriptor)initWithCoder:(id)a3;
- (ATXPosterDescriptor)initWithIdentifier:(id)a3 extensionBundleIdentifier:(id)a4 containerBundleIdentifier:(id)a5 galleryOptions:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXPosterDescriptor:(id)a3;
- (NSString)coreIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXPosterDescriptor

- (ATXPosterDescriptor)initWithIdentifier:(id)a3 extensionBundleIdentifier:(id)a4 containerBundleIdentifier:(id)a5 galleryOptions:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = ATXPosterDescriptor;
  v14 = [(ATXPosterDescriptor *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [v11 copy];
    extensionBundleIdentifier = v14->_extensionBundleIdentifier;
    v14->_extensionBundleIdentifier = v17;

    v19 = [v12 copy];
    containerBundleIdentifier = v14->_containerBundleIdentifier;
    v14->_containerBundleIdentifier = v19;

    if (v13)
    {
      v21 = v13;
    }

    else
    {
      v21 = objc_opt_new();
    }

    galleryOptions = v14->_galleryOptions;
    v14->_galleryOptions = v21;
  }

  return v14;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"%@; ", v5];

  v6 = [(ATXPosterDescriptor *)self identifier];
  [v3 appendFormat:@"identifier: %@; ", v6];

  v7 = [(ATXPosterDescriptor *)self extensionBundleIdentifier];
  [v3 appendFormat:@"extensionBundleIdentifier: %@; ", v7];

  v8 = [(ATXPosterDescriptor *)self containerBundleIdentifier];
  [v3 appendFormat:@"containerBundleIdentifier: %@; ", v8];

  v9 = [(ATXPosterDescriptor *)self galleryOptions];
  [v3 appendFormat:@"galleryOptions: %@; ", v9];

  v10 = [(ATXPosterDescriptor *)self score];
  [v3 appendFormat:@"score: %@; ", v10];

  return v3;
}

- (NSString)coreIdentifier
{
  v21 = *MEMORY[0x1E69E9840];
  coreIdentifier = self->_coreIdentifier;
  if (!coreIdentifier)
  {
    v4 = [(ATXPosterDescriptor *)self identifier];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19[0] = @".STATIC";
    v19[1] = @".DYNAMIC";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:{2, 0}];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [v4 rangeOfString:*(*(&v15 + 1) + 8 * i) options:14];
          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = [v4 stringByReplacingCharactersInRange:v10 withString:{v11, &stru_1F3E050C8}];

            v4 = v12;
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v13 = self->_coreIdentifier;
    self->_coreIdentifier = v4;

    coreIdentifier = self->_coreIdentifier;
  }

  return coreIdentifier;
}

- (ATXPosterDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (!v5)
  {
    v6 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ATXPosterDescriptor initWithCoder:v6];
    }

    goto LABEL_9;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
  if (!v6)
  {
    v11 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXPosterDescriptor initWithCoder:v11];
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"containerBundleIdentifier"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"galleryOptions"];
  self = [(ATXPosterDescriptor *)self initWithIdentifier:v5 extensionBundleIdentifier:v6 containerBundleIdentifier:v7 galleryOptions:v8];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"score"];
  [(ATXPosterDescriptor *)self setScore:v9];

  v10 = self;
LABEL_10:

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXPosterDescriptor *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(ATXPosterDescriptor *)self extensionBundleIdentifier];
  [v4 encodeObject:v6 forKey:@"extensionBundleIdentifier"];

  v7 = [(ATXPosterDescriptor *)self containerBundleIdentifier];
  [v4 encodeObject:v7 forKey:@"containerBundleIdentifier"];

  v8 = [(ATXPosterDescriptor *)self galleryOptions];
  [v4 encodeObject:v8 forKey:@"galleryOptions"];

  v9 = [(ATXPosterDescriptor *)self score];
  [v4 encodeObject:v9 forKey:@"score"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(ATXPosterDescriptor *)self identifier];
  v6 = [(ATXPosterDescriptor *)self extensionBundleIdentifier];
  v7 = [(ATXPosterDescriptor *)self containerBundleIdentifier];
  v8 = [(ATXPosterDescriptor *)self galleryOptions];
  v9 = [v4 initWithIdentifier:v5 extensionBundleIdentifier:v6 containerBundleIdentifier:v7 galleryOptions:v8];

  v10 = [(ATXPosterDescriptor *)self score];
  [v9 setScore:v10];

  return v9;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPosterDescriptor *)self isEqualToATXPosterDescriptor:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXPosterDescriptor:(id)a3
{
  v4 = a3;
  v5 = self->_identifier;
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

  v8 = self->_extensionBundleIdentifier;
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
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
LABEL_11:
      v14 = 0;
      goto LABEL_17;
    }
  }

  v15 = self->_galleryOptions;
  v16 = v15;
  if (v15 == v4[5])
  {
    v14 = 1;
  }

  else
  {
    v14 = [(ATXPosterDescriptorGalleryOptions *)v15 isEqual:?];
  }

LABEL_17:
  return v14;
}

- (unint64_t)hash
{
  v3 = [(ATXPosterDescriptor *)self identifier];
  v4 = [v3 hash];

  v5 = [(ATXPosterDescriptor *)self extensionBundleIdentifier];
  v6 = [v5 hash] - v4 + 32 * v4;

  v7 = [(ATXPosterDescriptor *)self containerBundleIdentifier];
  v8 = [v7 hash] - v6 + 32 * v6;

  v9 = [(ATXPosterDescriptor *)self galleryOptions];
  v10 = [v9 hash] - v8 + 32 * v8;

  return v10;
}

- (void)initWithCoder:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[ATXPosterDescriptor initWithCoder:]";
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "%s: error decoding extensionBundleIdentifier", &v1, 0xCu);
}

- (void)initWithCoder:(os_log_t)log .cold.2(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[ATXPosterDescriptor initWithCoder:]";
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "%s: error decoding identifier", &v1, 0xCu);
}

@end