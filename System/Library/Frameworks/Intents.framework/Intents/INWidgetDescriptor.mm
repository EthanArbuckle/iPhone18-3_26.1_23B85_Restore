@interface INWidgetDescriptor
- (INWidgetDescriptor)initWithExtensionBundleIdentifier:(id)identifier kind:(id)kind intentClassName:(id)name preferredSizeClass:(int64_t)class;
- (id)description;
@end

@implementation INWidgetDescriptor

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  extensionBundleIdentifier = [(INConfigurableDescriptor *)self extensionBundleIdentifier];
  kind = [(INConfigurableDescriptor *)self kind];
  intentClassName = [(INConfigurableDescriptor *)self intentClassName];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_preferredSizeClass];
  v8 = [v3 stringWithFormat:@"extensionBundleIdentifier: %@, kind: %@, intentClassName: %@, preferredSizeClass: %@", extensionBundleIdentifier, kind, intentClassName, v7];

  return v8;
}

- (INWidgetDescriptor)initWithExtensionBundleIdentifier:(id)identifier kind:(id)kind intentClassName:(id)name preferredSizeClass:(int64_t)class
{
  v8.receiver = self;
  v8.super_class = INWidgetDescriptor;
  result = [(INConfigurableDescriptor *)&v8 initWithExtensionBundleIdentifier:identifier kind:kind intentClassName:name];
  if (result)
  {
    result->_preferredSizeClass = class;
  }

  return result;
}

@end