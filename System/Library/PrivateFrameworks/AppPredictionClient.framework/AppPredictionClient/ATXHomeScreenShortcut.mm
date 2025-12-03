@interface ATXHomeScreenShortcut
- (ATXHomeScreenShortcut)initWithCoder:(id)coder;
- (ATXHomeScreenShortcut)initWithIdentifier:(id)identifier name:(id)name bundleIdentifierForDisplay:(id)display isAppLaunchWorkflow:(BOOL)workflow;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXHomeScreenShortcut:(id)shortcut;
- (id)dictionaryRepresentationForIntrospection;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setIcon:(CGImage *)icon;
@end

@implementation ATXHomeScreenShortcut

- (ATXHomeScreenShortcut)initWithIdentifier:(id)identifier name:(id)name bundleIdentifierForDisplay:(id)display isAppLaunchWorkflow:(BOOL)workflow
{
  identifierCopy = identifier;
  nameCopy = name;
  displayCopy = display;
  v21.receiver = self;
  v21.super_class = ATXHomeScreenShortcut;
  v13 = [(ATXHomeScreenShortcut *)&v21 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v16 = [nameCopy copy];
    name = v13->_name;
    v13->_name = v16;

    v18 = [displayCopy copy];
    bundleIdentifierForDisplay = v13->_bundleIdentifierForDisplay;
    v13->_bundleIdentifierForDisplay = v18;

    v13->_isAppLaunchWorkflow = workflow;
  }

  return v13;
}

- (void)setIcon:(CGImage *)icon
{
  icon = self->_icon;
  if (icon != icon)
  {
    if (icon)
    {
      CGImageRelease(icon);
      self->_icon = 0;
    }

    self->_icon = CGImageRetain(icon);
  }
}

- (void)dealloc
{
  icon = self->_icon;
  if (icon)
  {
    CGImageRelease(icon);
    self->_icon = 0;
  }

  v4.receiver = self;
  v4.super_class = ATXHomeScreenShortcut;
  [(ATXHomeScreenShortcut *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_bundleIdentifierForDisplay forKey:@"bundleId"];
  [coderCopy encodeObject:self->_identifier forKey:@"uuid"];
  [coderCopy encodeBool:self->_isAppLaunchWorkflow forKey:@"isAppLaunchWorkflow"];
  if (self->_icon)
  {
    v4 = objc_opt_new();
    v5 = CGImageDestinationCreateWithData(v4, [*MEMORY[0x1E6982F28] identifier], 1uLL, 0);
    CGImageDestinationAddImage(v5, self->_icon, 0);
    CGImageDestinationFinalize(v5);
    CFRelease(v5);
    if ([(__CFData *)v4 length])
    {
      [coderCopy encodeObject:v4 forKey:@"icon"];
    }
  }
}

- (ATXHomeScreenShortcut)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = ATXHomeScreenShortcut;
  v5 = [(ATXHomeScreenShortcut *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
    bundleIdentifierForDisplay = v5->_bundleIdentifierForDisplay;
    v5->_bundleIdentifierForDisplay = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v5->_isAppLaunchWorkflow = [coderCopy decodeBoolForKey:@"isAppLaunchWorkflow"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    if ([(__CFData *)v12 length])
    {
      v13 = CGDataProviderCreateWithCFData(v12);
      if (v13)
      {
        v14 = v13;
        v5->_icon = CGImageCreateWithPNGDataProvider(v13, 0, 0, kCGRenderingIntentDefault);
        CGDataProviderRelease(v14);
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_identifier hash]- v3 + 32 * v3;
  return [(NSString *)self->_bundleIdentifierForDisplay hash]- v4 + 32 * v4;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXHomeScreenShortcut *)self isEqualToATXHomeScreenShortcut:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXHomeScreenShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  v5 = self->_identifier;
  v6 = v5;
  if (v5 == shortcutCopy[2])
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

  v8 = self->_name;
  v9 = v8;
  if (v8 == shortcutCopy[3])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
LABEL_7:
      v11 = 0;
      goto LABEL_13;
    }
  }

  v12 = self->_bundleIdentifierForDisplay;
  v13 = v12;
  if (v12 == shortcutCopy[4])
  {
    v11 = 1;
  }

  else
  {
    v11 = [(NSString *)v12 isEqual:?];
  }

LABEL_13:
  return v11;
}

- (id)dictionaryRepresentationForIntrospection
{
  v12 = *MEMORY[0x1E69E9840];
  v8[0] = @"name";
  v8[1] = @"bundleId";
  identifier = @"<nil>";
  v3 = vbslq_s8(vceqzq_s64(*&self->_name), vdupq_n_s64(@"<nil>"), *&self->_name);
  if (self->_identifier)
  {
    identifier = self->_identifier;
  }

  v8[2] = @"uuid";
  v8[3] = @"isAppLaunchWorkflow";
  v4 = !self->_isAppLaunchWorkflow;
  v5 = @"YES";
  v9 = v3;
  if (v4)
  {
    v5 = @"NO";
  }

  v10 = identifier;
  v11 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:v8 count:4];

  return v6;
}

@end