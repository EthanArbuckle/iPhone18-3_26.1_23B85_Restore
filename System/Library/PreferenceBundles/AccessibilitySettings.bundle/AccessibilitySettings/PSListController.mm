@interface PSListController
- (void)updateCellAccessories:(id)accessories;
@end

@implementation PSListController

- (void)updateCellAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  if (accessoriesCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    table = [(PSListController *)self table];
    visibleCells = [table visibleCells];

    v7 = [visibleCells countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(visibleCells);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            specifier = [v11 specifier];
            [v11 setAccessoryType:{accessoriesCopy[2](accessoriesCopy, specifier, v11)}];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [visibleCells countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

@end