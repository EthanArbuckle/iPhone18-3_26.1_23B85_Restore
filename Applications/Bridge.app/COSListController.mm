@interface COSListController
- (void)reloadSpecifiers;
@end

@implementation COSListController

- (void)reloadSpecifiers
{
  if (![(COSListController *)self reloadingSpecifiersUpdatesSearchModel])
  {
    v28.receiver = self;
    v28.super_class = COSListController;
    [(COSListController *)&v28 reloadSpecifiers];
    return;
  }

  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = [*&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers] mutableCopy];
  v37.receiver = self;
  v37.super_class = COSListController;
  [(COSListController *)&v37 reloadSpecifiers];
  if (!v4)
  {
    goto LABEL_27;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = *&self->BPSListController_opaque[v3];
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (!v6)
  {
    goto LABEL_17;
  }

  v8 = v6;
  v9 = *v34;
  *&v7 = 138412290;
  v26 = v7;
  do
  {
    v10 = 0;
    do
    {
      if (*v34 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v33 + 1) + 8 * v10);
      identifier = [v11 identifier];
      v13 = [v4 specifierForID:identifier];

      if (v13)
      {
        [v4 removeObject:v13];
        v14 = +[PSSearchModel sharedInstance];
        [v14 reloadRootSpecifier:v13];
LABEL_10:

        goto LABEL_11;
      }

      if ([v11 cellType])
      {
        v15 = +[PSSearchModel sharedInstance];
        [v15 addRootSpecifier:v11];

        v14 = pbb_bridge_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v26;
          v40 = v11;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ADD: %@", buf, 0xCu);
        }

        goto LABEL_10;
      }

LABEL_11:

      v10 = v10 + 1;
    }

    while (v8 != v10);
    v16 = [v5 countByEnumeratingWithState:&v33 objects:v41 count:16];
    v8 = v16;
  }

  while (v16);
LABEL_17:

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = v4;
  v18 = [v17 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v18)
  {
    v20 = v18;
    v21 = *v30;
    *&v19 = 138412290;
    v27 = v19;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v29 + 1) + 8 * i);
        v24 = +[PSSearchModel sharedInstance];
        [v24 removeRootSpecifier:v23];

        v25 = pbb_bridge_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v27;
          v40 = v23;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "REMOVE: %@", buf, 0xCu);
        }
      }

      v20 = [v17 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v20);
  }

LABEL_27:
}

@end