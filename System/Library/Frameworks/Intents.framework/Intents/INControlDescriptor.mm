@interface INControlDescriptor
- (INControlDescriptor)initWithExtensionBundleIdentifier:(id)identifier kind:(id)kind intentClassName:(id)name actionIntentType:(id)type;
- (id)description;
@end

@implementation INControlDescriptor

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  extensionBundleIdentifier = [(INConfigurableDescriptor *)self extensionBundleIdentifier];
  kind = [(INConfigurableDescriptor *)self kind];
  intentClassName = [(INConfigurableDescriptor *)self intentClassName];
  v7 = [v3 stringWithFormat:@"extensionBundleIdentifier: %@, kind: %@, intentClassName: %@, actionIntentType: %@", extensionBundleIdentifier, kind, intentClassName, self->_actionIntentType];

  return v7;
}

- (INControlDescriptor)initWithExtensionBundleIdentifier:(id)identifier kind:(id)kind intentClassName:(id)name actionIntentType:(id)type
{
  typeCopy = type;
  v15.receiver = self;
  v15.super_class = INControlDescriptor;
  v11 = [(INConfigurableDescriptor *)&v15 initWithExtensionBundleIdentifier:identifier kind:kind intentClassName:name];
  if (v11)
  {
    v12 = [typeCopy copy];
    actionIntentType = v11->_actionIntentType;
    v11->_actionIntentType = v12;
  }

  return v11;
}

@end