@interface INWidgetDescriptor
- (INWidgetDescriptor)initWithExtensionBundleIdentifier:(id)a3 kind:(id)a4 intentClassName:(id)a5 preferredSizeClass:(int64_t)a6;
- (id)description;
@end

@implementation INWidgetDescriptor

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(INConfigurableDescriptor *)self extensionBundleIdentifier];
  v5 = [(INConfigurableDescriptor *)self kind];
  v6 = [(INConfigurableDescriptor *)self intentClassName];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_preferredSizeClass];
  v8 = [v3 stringWithFormat:@"extensionBundleIdentifier: %@, kind: %@, intentClassName: %@, preferredSizeClass: %@", v4, v5, v6, v7];

  return v8;
}

- (INWidgetDescriptor)initWithExtensionBundleIdentifier:(id)a3 kind:(id)a4 intentClassName:(id)a5 preferredSizeClass:(int64_t)a6
{
  v8.receiver = self;
  v8.super_class = INWidgetDescriptor;
  result = [(INConfigurableDescriptor *)&v8 initWithExtensionBundleIdentifier:a3 kind:a4 intentClassName:a5];
  if (result)
  {
    result->_preferredSizeClass = a6;
  }

  return result;
}

@end