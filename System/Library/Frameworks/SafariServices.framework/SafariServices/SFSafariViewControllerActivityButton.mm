@interface SFSafariViewControllerActivityButton
- (BOOL)_fieldsAreValid;
- (SFSafariViewControllerActivityButton)initWithCoder:(id)coder;
- (SFSafariViewControllerActivityButton)initWithTemplateImage:(UIImage *)templateImage extensionIdentifier:(NSString *)extensionIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_fieldsAreValid;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSafariViewControllerActivityButton

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = [(UIImage *)self->_templateImage copy];
  v6 = [(NSString *)self->_extensionIdentifier copy];
  v7 = [v4 initWithTemplateImage:v5 extensionIdentifier:v6];

  accessibilityLabel = [(SFSafariViewControllerActivityButton *)self accessibilityLabel];
  v9 = [accessibilityLabel copy];
  [v7 setAccessibilityLabel:v9];

  return v7;
}

- (SFSafariViewControllerActivityButton)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"templateImage"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityLabel"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionIdentifier"];

  v8 = [(SFSafariViewControllerActivityButton *)self initWithTemplateImage:v5 extensionIdentifier:v7];
  [(SFSafariViewControllerActivityButton *)v8 setAccessibilityLabel:v6];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  templateImage = self->_templateImage;
  coderCopy = coder;
  [coderCopy encodeObject:templateImage forKey:@"templateImage"];
  accessibilityLabel = [(SFSafariViewControllerActivityButton *)self accessibilityLabel];
  [coderCopy encodeObject:accessibilityLabel forKey:@"accessibilityLabel"];

  [coderCopy encodeObject:self->_extensionIdentifier forKey:@"extensionIdentifier"];
}

- (SFSafariViewControllerActivityButton)initWithTemplateImage:(UIImage *)templateImage extensionIdentifier:(NSString *)extensionIdentifier
{
  v6 = templateImage;
  v7 = extensionIdentifier;
  v15.receiver = self;
  v15.super_class = SFSafariViewControllerActivityButton;
  v8 = [(SFSafariViewControllerActivityButton *)&v15 init];
  if (v8)
  {
    v9 = [(UIImage *)v6 copy];
    v10 = v8->_templateImage;
    v8->_templateImage = v9;

    v11 = [(NSString *)v7 copy];
    v12 = v8->_extensionIdentifier;
    v8->_extensionIdentifier = v11;

    v13 = v8;
  }

  return v8;
}

- (BOOL)_fieldsAreValid
{
  if (!self->_extensionIdentifier)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXExtensions();
    v7 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!v7)
    {
      return v7;
    }

    [(SFSafariViewControllerActivityButton *)v8 _fieldsAreValid];
LABEL_12:
    LOBYTE(v7) = 0;
    return v7;
  }

  templateImage = self->_templateImage;
  if (!templateImage)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXExtensions();
    v7 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!v7)
    {
      return v7;
    }

    [(SFSafariViewControllerActivityButton *)v9 _fieldsAreValid];
    goto LABEL_12;
  }

  [(UIImage *)templateImage size];
  v4 = v3;
  v6 = v5;
  if (v5 == 0.0 || v3 == 0.0)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXExtensions();
    v7 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (!v7)
    {
      return v7;
    }

    [(SFSafariViewControllerActivityButton *)v10 _fieldsAreValid];
    goto LABEL_12;
  }

  LOBYTE(v7) = 1;
  return v7;
}

- (void)_fieldsAreValid
{
  v9 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v10.width = a2;
  v10.height = a3;
  v6 = NSStringFromCGSize(v10);
  v7 = 138543362;
  v8 = v6;
  _os_log_error_impl(&dword_1D4644000, selfCopy, OS_LOG_TYPE_ERROR, "Not showing activity button because templateImage has an invalid size: %{public}@", &v7, 0xCu);
}

@end