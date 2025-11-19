@interface IMDebugViewHierarchyDataProvider
- (id)debugData;
@end

@implementation IMDebugViewHierarchyDataProvider

- (id)debugData
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__1;
  v10 = &stru_10658;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __45__IMDebugViewHierarchyDataProvider_debugData__block_invoke;
  block[3] = &unk_10580;
  block[4] = &v5;
  dispatch_sync(&_dispatch_main_q, block);
  v2 = [v6[5] dataUsingEncoding:4];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __45__IMDebugViewHierarchyDataProvider_debugData__block_invoke(uint64_t a1)
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = +[DebugUtil allViewControllers];
  v2 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v22;
    do
    {
      v5 = 0;
      do
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * v5);
        v7 = *(*(*(a1 + 32) + 8) + 40);
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = [NSString stringWithFormat:@"\n\nView Hierarchy for: %@\n", v9];
        v11 = [v7 stringByAppendingString:v10];
        v12 = *(*(a1 + 32) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        v14 = *(*(*(a1 + 32) + 8) + 40);
        v15 = [v6 view];
        v16 = [v15 recursiveDescription];
        v17 = [v14 stringByAppendingString:v16];
        v18 = *(*(a1 + 32) + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = v17;

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }
}

@end