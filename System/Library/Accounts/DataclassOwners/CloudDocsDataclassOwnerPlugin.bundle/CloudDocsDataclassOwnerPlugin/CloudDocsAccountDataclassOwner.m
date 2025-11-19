@interface CloudDocsAccountDataclassOwner
+ (id)dataclasses;
- (BOOL)performAction:(id)a3 forAccount:(id)a4 withChildren:(id)a5 forDataclass:(id)a6;
- (id)actionsForDisablingDataclassOnAccount:(id)a3 forDataclass:(id)a4;
- (id)actionsForEnablingDataclassOnAccount:(id)a3 forDataclass:(id)a4;
@end

@implementation CloudDocsAccountDataclassOwner

+ (id)dataclasses
{
  v4 = kAccountDataclassUbiquity;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (id)actionsForEnablingDataclassOnAccount:(id)a3 forDataclass:(id)a4
{
  v5 = a3;
  v6 = a4;
  memset(v12, 0, sizeof(v12));
  sub_BD0(0, "[CloudDocsAccountDataclassOwner actionsForEnablingDataclassOnAccount:forDataclass:]", 37, 0, v12);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v15 = v12[0];
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v7;
    _os_log_debug_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx action for enabling %@ in %@%@", buf, 0x2Au);
  }

  v9 = [ACDataclassAction actionWithType:1];
  v13 = v9;
  v10 = [NSArray arrayWithObjects:&v13 count:1];

  sub_DA0(v12);

  return v10;
}

- (id)actionsForDisablingDataclassOnAccount:(id)a3 forDataclass:(id)a4
{
  v5 = a3;
  v6 = a4;
  memset(v32, 0, sizeof(v32));
  sub_BD0(0, "[CloudDocsAccountDataclassOwner actionsForDisablingDataclassOnAccount:forDataclass:]", 43, 0, v32);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v37 = v32[0];
    v38 = 2112;
    v39 = v6;
    v40 = 2112;
    v41 = v5;
    v42 = 2112;
    v43 = v7;
    _os_log_debug_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx action for disabling %@ in %@%@", buf, 0x2Au);
  }

  v9 = [BRAccount currentLoggedInAccountWithError:0];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

  v11 = [v9 containerWithPendingChanges];
  v12 = [v11 count];
  if (v11 && !v12)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_16E8(v13, v14);
    }

LABEL_9:
    v15 = [ACDataclassAction actionWithType:3];
    v33[0] = v15;
    v16 = [ACDataclassAction actionWithType:0];
    v33[1] = v16;
    v17 = [NSArray arrayWithObjects:v33 count:2];
    goto LABEL_20;
  }

  v16 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v11, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = v11;
  v18 = [v15 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v15);
        }

        v22 = [*(*(&v28 + 1) + 8 * i) localizedName];
        [v16 addObject:v22];
      }

      v19 = [v15 countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v19);
  }

  v23 = brc_bread_crumbs();
  v24 = brc_default_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    sub_1660(v15, v23, v24);
  }

  v25 = [ACDataclassAction destructiveActionWithType:8 affectedContainers:v16];
  v34[0] = v25;
  v26 = [ACDataclassAction actionWithType:0];
  v34[1] = v26;
  v17 = [NSArray arrayWithObjects:v34 count:2];

LABEL_20:
  sub_DA0(v32);

  return v17;
}

- (BOOL)performAction:(id)a3 forAccount:(id)a4 withChildren:(id)a5 forDataclass:(id)a6
{
  v7 = a3;
  v8 = a4;
  memset(v12, 0, sizeof(v12));
  sub_BD0(0, "[CloudDocsAccountDataclassOwner performAction:forAccount:withChildren:forDataclass:]", 79, 0, v12);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v14 = v12[0];
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_debug_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx perform action %@ for %@%@", buf, 0x2Au);
  }

  sub_DA0(v12);
  return 1;
}

@end