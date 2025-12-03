@interface RidesharingPartitionedAppSuggestions
- (RidesharingPartitionedAppSuggestions)initWithInstalledSuggestions:(id)suggestions notInstalledSuggestions:(id)installedSuggestions;
- (id)installedSuggestions;
- (id)notInstalledSuggestions;
@end

@implementation RidesharingPartitionedAppSuggestions

- (id)installedSuggestions
{
  v3 = objc_alloc_init(NSArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_installedSuggestions;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        iOSBundleIdentifier = [v9 iOSBundleIdentifier];
        v11 = isExtensionHidden();

        if ((v11 & 1) == 0)
        {
          v12 = [v3 arrayByAddingObject:v9];

          v3 = v12;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)notInstalledSuggestions
{
  v3 = [(NSArray *)self->_notInstalledSuggestions copy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_installedSuggestions;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        iOSBundleIdentifier = [v9 iOSBundleIdentifier];
        v11 = isExtensionHidden();

        if (v11)
        {
          v12 = [v3 arrayByAddingObject:v9];

          v3 = v12;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (RidesharingPartitionedAppSuggestions)initWithInstalledSuggestions:(id)suggestions notInstalledSuggestions:(id)installedSuggestions
{
  suggestionsCopy = suggestions;
  installedSuggestionsCopy = installedSuggestions;
  v14.receiver = self;
  v14.super_class = RidesharingPartitionedAppSuggestions;
  v8 = [(RidesharingPartitionedAppSuggestions *)&v14 init];
  if (v8)
  {
    v9 = [suggestionsCopy copy];
    installedSuggestions = v8->_installedSuggestions;
    v8->_installedSuggestions = v9;

    v11 = [installedSuggestionsCopy copy];
    notInstalledSuggestions = v8->_notInstalledSuggestions;
    v8->_notInstalledSuggestions = v11;
  }

  return v8;
}

@end