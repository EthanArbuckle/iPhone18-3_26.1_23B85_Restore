@interface MapsActivityItemsConfiguration
- (BOOL)_hasItemsForActivityItemsConfiguration;
- (BOOL)activityItemsConfigurationSupportsInteraction:(id)interaction;
- (NSArray)itemProvidersForActivityItemsConfiguration;
- (UIActivityItemsConfiguration)internalActivityItemsConfiguration;
- (id)_excludedInteractions;
- (void)setShareItemSource:(id)source;
@end

@implementation MapsActivityItemsConfiguration

- (id)_excludedInteractions
{
  v4[0] = _UIActivityItemsConfigurationInteractionServicesMenu;
  v4[1] = _UIActivityItemsConfigurationInteractionShare;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (void)setShareItemSource:(id)source
{
  objc_storeStrong(&self->_shareItemSource, source);
  sourceCopy = source;
  internalActivityItemsConfiguration = self->_internalActivityItemsConfiguration;
  self->_internalActivityItemsConfiguration = 0;

  [(NSTimer *)self->_invalidationTimer invalidate];
}

- (BOOL)activityItemsConfigurationSupportsInteraction:(id)interaction
{
  interactionCopy = interaction;
  internalActivityItemsConfiguration = [(MapsActivityItemsConfiguration *)self internalActivityItemsConfiguration];
  v6 = [internalActivityItemsConfiguration activityItemsConfigurationSupportsInteraction:interactionCopy];

  return v6;
}

- (UIActivityItemsConfiguration)internalActivityItemsConfiguration
{
  internalActivityItemsConfiguration = self->_internalActivityItemsConfiguration;
  if (!internalActivityItemsConfiguration)
  {
    shareItemSource = [(MapsActivityItemsConfiguration *)self shareItemSource];

    if (shareItemSource)
    {
      shareItemSource2 = [(MapsActivityItemsConfiguration *)self shareItemSource];
    }

    else
    {
      v6 = +[UIApplication _maps_keyMapsSceneDelegate];
      chromeViewController = [v6 chromeViewController];

      shareItemSource2 = [chromeViewController currentShareItemSource];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100C8F58C;
      v17[3] = &unk_10164FBA0;
      v17[4] = self;
      v8 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v17 block:0.0];
      invalidationTimer = self->_invalidationTimer;
      self->_invalidationTimer = v8;
    }

    v10 = [UIActivityItemsConfiguration alloc];
    activityProviders = [shareItemSource2 activityProviders];
    applicationActivities = [shareItemSource2 applicationActivities];
    v13 = [v10 _initWithActivityItems:activityProviders applicationActivities:applicationActivities];
    v14 = self->_internalActivityItemsConfiguration;
    self->_internalActivityItemsConfiguration = v13;

    excludedActivityTypes = [shareItemSource2 excludedActivityTypes];
    [(UIActivityItemsConfiguration *)self->_internalActivityItemsConfiguration _setExcludedActivityTypes:excludedActivityTypes];

    [(UIActivityItemsConfiguration *)self->_internalActivityItemsConfiguration setLocalObject:shareItemSource2];
    internalActivityItemsConfiguration = self->_internalActivityItemsConfiguration;
  }

  return internalActivityItemsConfiguration;
}

- (BOOL)_hasItemsForActivityItemsConfiguration
{
  v3 = sub_100798C48();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "checkHasActivityItems", "", buf, 2u);
  }

  internalActivityItemsConfiguration = [(MapsActivityItemsConfiguration *)self internalActivityItemsConfiguration];
  _hasItemsForActivityItemsConfiguration = [internalActivityItemsConfiguration _hasItemsForActivityItemsConfiguration];

  v6 = sub_100798C48();
  if (os_signpost_enabled(v6))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "checkHasActivityItems", "", v8, 2u);
  }

  return _hasItemsForActivityItemsConfiguration;
}

- (NSArray)itemProvidersForActivityItemsConfiguration
{
  v3 = sub_100798C48();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "getItemProviders", "", buf, 2u);
  }

  internalActivityItemsConfiguration = [(MapsActivityItemsConfiguration *)self internalActivityItemsConfiguration];
  itemProvidersForActivityItemsConfiguration = [internalActivityItemsConfiguration itemProvidersForActivityItemsConfiguration];

  v6 = sub_100798C48();
  if (os_signpost_enabled(v6))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "getItemProviders", "", v8, 2u);
  }

  return itemProvidersForActivityItemsConfiguration;
}

@end