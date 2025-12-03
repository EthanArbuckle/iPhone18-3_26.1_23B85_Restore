@interface _SFContentBlockersPreferenceManager
- (_SFContentBlockersPreferenceManager)initWithPerSitePreferencesStore:(id)store extensionsController:(id)controller;
- (void)checkForContentBlockers;
@end

@implementation _SFContentBlockersPreferenceManager

- (_SFContentBlockersPreferenceManager)initWithPerSitePreferencesStore:(id)store extensionsController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = _SFContentBlockersPreferenceManager;
  v8 = [(WBSContentBlockersPreferenceManager *)&v12 initWithPerSitePreferencesStore:store];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_extensionsController, controller);
    [(_SFContentBlockersPreferenceManager *)v9 checkForContentBlockers];
    v10 = v9;
  }

  return v9;
}

- (void)checkForContentBlockers
{
  v34 = *MEMORY[0x1E69E9840];
  self->_hasEnabledContentBlockers = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  allContentBlockerManagers = [(SFWebExtensionsController *)self->_extensionsController allContentBlockerManagers];
  v4 = [allContentBlockerManagers countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    v18 = *v28;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(allContentBlockerManagers);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        extensions = [v8 extensions];
        v10 = [extensions countByEnumeratingWithState:&v23 objects:v32 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v24;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v24 != v12)
              {
                objc_enumerationMutation(extensions);
              }

              if ([v8 extensionIsEnabled:*(*(&v23 + 1) + 8 * j)])
              {
                self->_hasEnabledContentBlockers = 1;

                goto LABEL_27;
              }
            }

            v11 = [extensions countByEnumeratingWithState:&v23 objects:v32 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v6 = v18;
      }

      v5 = [allContentBlockerManagers countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v5);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  allContentBlockerManagers = [(SFWebExtensionsController *)self->_extensionsController allWebExtensionControllers];
  v14 = [allContentBlockerManagers countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    while (2)
    {
      for (k = 0; k != v15; ++k)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(allContentBlockerManagers);
        }

        if ([*(*(&v19 + 1) + 8 * k) anyWebExtensionContentBlockerEnabled])
        {
          self->_hasEnabledContentBlockers = 1;
          goto LABEL_27;
        }
      }

      v15 = [allContentBlockerManagers countByEnumeratingWithState:&v19 objects:v31 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_27:
}

@end