@interface IMDebugViewControllerHierarchyDataProvider
- (id)debugData;
@end

@implementation IMDebugViewControllerHierarchyDataProvider

- (id)debugData
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = &stru_10658;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __55__IMDebugViewControllerHierarchyDataProvider_debugData__block_invoke;
  block[3] = &unk_10580;
  block[4] = &v5;
  dispatch_sync(&_dispatch_main_q, block);
  v2 = [v6[5] dataUsingEncoding:4];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __55__IMDebugViewControllerHierarchyDataProvider_debugData__block_invoke(uint64_t a1)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = +[DebugUtil allViewControllers];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = [*(*(*(a1 + 32) + 8) + 40) stringByAppendingString:@"\n\n"];
        v9 = *(*(a1 + 32) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        v11 = *(*(*(a1 + 32) + 8) + 40);
        v12 = [v7 recursiveDescription];
        v13 = [v11 stringByAppendingString:v12];
        v14 = *(*(a1 + 32) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }
}

@end