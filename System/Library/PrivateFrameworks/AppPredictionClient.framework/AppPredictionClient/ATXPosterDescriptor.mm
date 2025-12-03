@interface ATXPosterDescriptor
- (ATXPosterDescriptor)initWithCoder:(id)coder;
- (ATXPosterDescriptor)initWithIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier containerBundleIdentifier:(id)containerBundleIdentifier galleryOptions:(id)options;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXPosterDescriptor:(id)descriptor;
- (NSString)coreIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXPosterDescriptor

- (ATXPosterDescriptor)initWithIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier containerBundleIdentifier:(id)containerBundleIdentifier galleryOptions:(id)options
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  containerBundleIdentifierCopy = containerBundleIdentifier;
  optionsCopy = options;
  v24.receiver = self;
  v24.super_class = ATXPosterDescriptor;
  v14 = [(ATXPosterDescriptor *)&v24 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [bundleIdentifierCopy copy];
    extensionBundleIdentifier = v14->_extensionBundleIdentifier;
    v14->_extensionBundleIdentifier = v17;

    v19 = [containerBundleIdentifierCopy copy];
    containerBundleIdentifier = v14->_containerBundleIdentifier;
    v14->_containerBundleIdentifier = v19;

    if (optionsCopy)
    {
      v21 = optionsCopy;
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

  identifier = [(ATXPosterDescriptor *)self identifier];
  [v3 appendFormat:@"identifier: %@; ", identifier];

  extensionBundleIdentifier = [(ATXPosterDescriptor *)self extensionBundleIdentifier];
  [v3 appendFormat:@"extensionBundleIdentifier: %@; ", extensionBundleIdentifier];

  containerBundleIdentifier = [(ATXPosterDescriptor *)self containerBundleIdentifier];
  [v3 appendFormat:@"containerBundleIdentifier: %@; ", containerBundleIdentifier];

  galleryOptions = [(ATXPosterDescriptor *)self galleryOptions];
  [v3 appendFormat:@"galleryOptions: %@; ", galleryOptions];

  score = [(ATXPosterDescriptor *)self score];
  [v3 appendFormat:@"score: %@; ", score];

  return v3;
}

- (NSString)coreIdentifier
{
  v21 = *MEMORY[0x1E69E9840];
  coreIdentifier = self->_coreIdentifier;
  if (!coreIdentifier)
  {
    identifier = [(ATXPosterDescriptor *)self identifier];
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

          v10 = [identifier rangeOfString:*(*(&v15 + 1) + 8 * i) options:14];
          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = [identifier stringByReplacingCharactersInRange:v10 withString:{v11, &stru_1F3E050C8}];

            identifier = v12;
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
    self->_coreIdentifier = identifier;

    coreIdentifier = self->_coreIdentifier;
  }

  return coreIdentifier;
}

- (ATXPosterDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (!v5)
  {
    v6 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ATXPosterDescriptor initWithCoder:v6];
    }

    goto LABEL_9;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
  if (!v6)
  {
    v11 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXPosterDescriptor initWithCoder:v11];
    }

LABEL_9:
    selfCopy = 0;
    goto LABEL_10;
  }

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerBundleIdentifier"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"galleryOptions"];
  self = [(ATXPosterDescriptor *)self initWithIdentifier:v5 extensionBundleIdentifier:v6 containerBundleIdentifier:v7 galleryOptions:v8];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"score"];
  [(ATXPosterDescriptor *)self setScore:v9];

  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(ATXPosterDescriptor *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  extensionBundleIdentifier = [(ATXPosterDescriptor *)self extensionBundleIdentifier];
  [coderCopy encodeObject:extensionBundleIdentifier forKey:@"extensionBundleIdentifier"];

  containerBundleIdentifier = [(ATXPosterDescriptor *)self containerBundleIdentifier];
  [coderCopy encodeObject:containerBundleIdentifier forKey:@"containerBundleIdentifier"];

  galleryOptions = [(ATXPosterDescriptor *)self galleryOptions];
  [coderCopy encodeObject:galleryOptions forKey:@"galleryOptions"];

  score = [(ATXPosterDescriptor *)self score];
  [coderCopy encodeObject:score forKey:@"score"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = [(ATXPosterDescriptor *)self identifier];
  extensionBundleIdentifier = [(ATXPosterDescriptor *)self extensionBundleIdentifier];
  containerBundleIdentifier = [(ATXPosterDescriptor *)self containerBundleIdentifier];
  galleryOptions = [(ATXPosterDescriptor *)self galleryOptions];
  v9 = [v4 initWithIdentifier:identifier extensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier galleryOptions:galleryOptions];

  score = [(ATXPosterDescriptor *)self score];
  [v9 setScore:score];

  return v9;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPosterDescriptor *)self isEqualToATXPosterDescriptor:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXPosterDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = self->_identifier;
  v6 = v5;
  if (v5 == descriptorCopy[2])
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
  if (v8 == descriptorCopy[3])
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
  if (v11 == descriptorCopy[4])
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
  if (v15 == descriptorCopy[5])
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
  identifier = [(ATXPosterDescriptor *)self identifier];
  v4 = [identifier hash];

  extensionBundleIdentifier = [(ATXPosterDescriptor *)self extensionBundleIdentifier];
  v6 = [extensionBundleIdentifier hash] - v4 + 32 * v4;

  containerBundleIdentifier = [(ATXPosterDescriptor *)self containerBundleIdentifier];
  v8 = [containerBundleIdentifier hash] - v6 + 32 * v6;

  galleryOptions = [(ATXPosterDescriptor *)self galleryOptions];
  v10 = [galleryOptions hash] - v8 + 32 * v8;

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