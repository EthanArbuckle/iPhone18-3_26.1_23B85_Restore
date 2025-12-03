@interface BKIOHIDServiceSimplePersistentPropertySupport
- (BKIOHIDServiceSimplePersistentPropertySupport)initWithSenderDescriptor:(id)descriptor matcherDataProvider:(id)provider persistentPropertyController:(id)controller;
- (int64_t)setPersistentProperties:(id)properties forServicesMatchingDescriptor:(id)descriptor;
- (void)invalidate;
- (void)matcher:(id)matcher servicesDidMatch:(id)match;
@end

@implementation BKIOHIDServiceSimplePersistentPropertySupport

- (void)matcher:(id)matcher servicesDidMatch:(id)match
{
  v30 = *MEMORY[0x277D85DE8];
  matchCopy = match;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [matchCopy countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v22;
    *&v7 = 138543362;
    v20 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(matchCopy);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        persistentPropertyController = self->_persistentPropertyController;
        senderDescriptor = [v11 senderDescriptor];
        v14 = [(BKIOHIDServicePersistentPropertyController *)persistentPropertyController allPersistentPropertiesForServicesMatchingDescriptor:senderDescriptor];

        v15 = [v14 count];
        v16 = BKLogHID();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        if (v15)
        {
          if (v17)
          {
            v18 = [MEMORY[0x277CF0C08] descriptionForRootObject:v14];
            *buf = 138543618;
            v26 = v18;
            v27 = 2114;
            v28 = v11;
            _os_log_impl(&dword_223CBE000, v16, OS_LOG_TYPE_DEFAULT, "sending persistent properties %{public}@ to %{public}@", buf, 0x16u);
          }

          [v11 setProperties:v14];
        }

        else
        {
          if (v17)
          {
            *buf = v20;
            v26 = v11;
            _os_log_impl(&dword_223CBE000, v16, OS_LOG_TYPE_DEFAULT, "no persistent properties for %{public}@", buf, 0xCu);
          }
        }
      }

      v8 = [matchCopy countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v8);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (int64_t)setPersistentProperties:(id)properties forServicesMatchingDescriptor:(id)descriptor
{
  v18 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  existingServices = [(BKIOHIDServiceMatcher *)self->_matcher existingServices];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [existingServices countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(existingServices);
        }

        [*(*(&v13 + 1) + 8 * v10++) setProperties:propertiesCopy];
      }

      while (v8 != v10);
      v8 = [existingServices countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
  return 2;
}

- (void)invalidate
{
  [(BKIOHIDServiceMatcher *)self->_matcher invalidate];
  matcher = self->_matcher;
  self->_matcher = 0;
}

- (BKIOHIDServiceSimplePersistentPropertySupport)initWithSenderDescriptor:(id)descriptor matcherDataProvider:(id)provider persistentPropertyController:(id)controller
{
  descriptorCopy = descriptor;
  providerCopy = provider;
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = BKIOHIDServiceSimplePersistentPropertySupport;
  v12 = [(BKIOHIDServiceSimplePersistentPropertySupport *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_senderDescriptor, descriptor);
    objc_storeStrong(&v13->_persistentPropertyController, controller);
    v14 = [[BKIOHIDServiceMatcher alloc] initWithSenderDescriptor:descriptorCopy dataProvider:providerCopy];
    matcher = v13->_matcher;
    v13->_matcher = v14;

    [(BKIOHIDServiceMatcher *)v13->_matcher startObserving:v13 queue:MEMORY[0x277D85CD0]];
  }

  return v13;
}

@end