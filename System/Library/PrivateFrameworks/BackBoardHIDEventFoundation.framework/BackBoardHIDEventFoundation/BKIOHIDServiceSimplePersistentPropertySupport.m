@interface BKIOHIDServiceSimplePersistentPropertySupport
- (BKIOHIDServiceSimplePersistentPropertySupport)initWithSenderDescriptor:(id)a3 matcherDataProvider:(id)a4 persistentPropertyController:(id)a5;
- (int64_t)setPersistentProperties:(id)a3 forServicesMatchingDescriptor:(id)a4;
- (void)invalidate;
- (void)matcher:(id)a3 servicesDidMatch:(id)a4;
@end

@implementation BKIOHIDServiceSimplePersistentPropertySupport

- (void)matcher:(id)a3 servicesDidMatch:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        persistentPropertyController = self->_persistentPropertyController;
        v13 = [v11 senderDescriptor];
        v14 = [(BKIOHIDServicePersistentPropertyController *)persistentPropertyController allPersistentPropertiesForServicesMatchingDescriptor:v13];

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

      v8 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v8);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (int64_t)setPersistentProperties:(id)a3 forServicesMatchingDescriptor:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(BKIOHIDServiceMatcher *)self->_matcher existingServices];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v13 + 1) + 8 * v10++) setProperties:v5];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (BKIOHIDServiceSimplePersistentPropertySupport)initWithSenderDescriptor:(id)a3 matcherDataProvider:(id)a4 persistentPropertyController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = BKIOHIDServiceSimplePersistentPropertySupport;
  v12 = [(BKIOHIDServiceSimplePersistentPropertySupport *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_senderDescriptor, a3);
    objc_storeStrong(&v13->_persistentPropertyController, a5);
    v14 = [[BKIOHIDServiceMatcher alloc] initWithSenderDescriptor:v9 dataProvider:v10];
    matcher = v13->_matcher;
    v13->_matcher = v14;

    [(BKIOHIDServiceMatcher *)v13->_matcher startObserving:v13 queue:MEMORY[0x277D85CD0]];
  }

  return v13;
}

@end