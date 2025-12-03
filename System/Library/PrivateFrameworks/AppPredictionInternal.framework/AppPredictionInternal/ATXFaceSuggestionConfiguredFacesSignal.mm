@interface ATXFaceSuggestionConfiguredFacesSignal
- (ATXFaceSuggestionConfiguredFacesSignal)init;
- (double)valueForDescriptor:(id)descriptor;
- (void)_prepare;
@end

@implementation ATXFaceSuggestionConfiguredFacesSignal

- (ATXFaceSuggestionConfiguredFacesSignal)init
{
  v5.receiver = self;
  v5.super_class = ATXFaceSuggestionConfiguredFacesSignal;
  v2 = [(ATXFaceSuggestionConfiguredFacesSignal *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ATXFaceSuggestionConfiguredFacesSignal *)v2 _prepare];
  }

  return v3;
}

- (void)_prepare
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[ATXFaceSuggestionConfiguredFacesSignal _prepare]";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%s: no posters in configuration cache!", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

id __50__ATXFaceSuggestionConfiguredFacesSignal__prepare__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 galleryItem];
  v4 = [v3 extensionBundleIdentifier];
  v5 = [v2 galleryItem];

  v6 = [v5 descriptorIdentifier];
  v7 = descriptorKey(v4, v6);

  return v7;
}

- (double)valueForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  extensionBundleIdentifier = [descriptorCopy extensionBundleIdentifier];
  identifier = [descriptorCopy identifier];

  v7 = descriptorKey(extensionBundleIdentifier, identifier);

  if ([(NSCountedSet *)self->_configuredExtensionBundleIdentifiers countForObject:v7])
  {
    v8 = -5.0;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

@end