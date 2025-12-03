@interface InstallSystemAppsTask
- (void)main;
@end

@implementation InstallSystemAppsTask

- (void)main
{
  selfCopy = self;
  if (self)
  {
    v3 = objc_alloc_init(NSMutableSet);
    v4 = sub_1003C27BC();
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100348308;
    v45[3] = &unk_10051FC80;
    v5 = v3;
    v46 = v5;
    [v4 readUsingSession:v45];

    installs = selfCopy->_installs;
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100348564;
    v43[3] = &unk_100524450;
    v44 = v5;
    v7 = v5;
    v8 = sub_10036FDEC(installs, v43);
  }

  else
  {
    v8 = 0;
  }

  if ([v8 count])
  {
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100347E54;
    v40[3] = &unk_100524408;
    v9 = objc_alloc_init(NSMutableIndexSet);
    v41 = v9;
    v42 = selfCopy;
    [v8 enumerateObjectsUsingBlock:v40];
    if ([v9 count])
    {
      v10 = [v8 mutableCopy];

      [v10 removeObjectsAtIndexes:v9];
      v32 = [v10 copy];

      +[BagService appstoredService];
    }

    else
    {
      v32 = v8;
      +[BagService appstoredService];
    }
    v11 = ;
    lastBag = [v11 lastBag];

    [_TtC9appstored10QOSMetrics cacheQOSPackageInstallMetricsCollectionChanceFromBag:lastBag];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v33 = selfCopy;
    v13 = selfCopy->_installs;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v36 objects:v47 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v37;
      do
      {
        v17 = 0;
        do
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v36 + 1) + 8 * v17);
          v19 = sub_10023E644(v18, @"bundle_id");
          if (v19)
          {
            v20 = [ProgressInfo alloc];
            v21 = sub_100408EB0(v18);
            v22 = sub_100403C3C(&v20->super.isa, v19, 0, v21);

            v23 = [lastBag itemIDForSystemAppWithBundleID:v19];
            v25 = v23;
            if (v22)
            {
              objc_setProperty_atomic(v22, v24, v23, 152);

              v22[18] = 896;
            }

            else
            {
            }

            v26 = sub_1003649C8();
            sub_100364E78(v26, v22, @"System");
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v27 = [(NSArray *)v13 countByEnumeratingWithState:&v36 objects:v47 count:16];
        v15 = v27;
      }

      while (v27);
    }

    v28 = sub_1003C27BC();
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1003481D8;
    v34[3] = &unk_10051D6C8;
    v8 = v32;
    v35 = v8;
    [v28 modifyUsingTransaction:v34];

    selfCopy = v33;
  }

  [(Task *)selfCopy lock];
  if (![(NSArray *)selfCopy->_processedExternalIDs count])
  {
    v29 = sub_10036FDEC(selfCopy->_installs, &stru_100524428);
    processedExternalIDs = selfCopy->_processedExternalIDs;
    selfCopy->_processedExternalIDs = v29;
  }

  [(Task *)selfCopy unlock];
}

@end