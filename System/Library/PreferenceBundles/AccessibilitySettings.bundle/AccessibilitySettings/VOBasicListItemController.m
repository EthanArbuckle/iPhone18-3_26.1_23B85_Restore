@interface VOBasicListItemController
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation VOBasicListItemController

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->PSListItemsController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = +[NSMutableArray array];
    v7 = [(VOBasicListItemController *)self specifier];
    v8 = [v7 propertyForKey:PSValidTitlesKey];

    v9 = [(VOBasicListItemController *)self specifier];
    v10 = [v9 propertyForKey:PSValidValuesKey];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __39__VOBasicListItemController_specifiers__block_invoke;
    v16[3] = &unk_2589A8;
    v16[4] = self;
    v17 = v10;
    v18 = v6;
    v11 = v6;
    v12 = v10;
    [v8 enumerateObjectsUsingBlock:v16];
    v13 = [v11 copy];
    v14 = *&self->PSListItemsController_opaque[v2];
    *&self->PSListItemsController_opaque[v2] = v13;

    v4 = *&self->PSListItemsController_opaque[v2];
  }

  return v4;
}

void __39__VOBasicListItemController_specifiers__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 specifier];
  v8 = [v7 propertyForKey:PSStringsKey];
  v9 = settingsLocString(v6, v8);
  v11 = [PSSpecifier preferenceSpecifierNamed:v9 target:*(a1 + 32) set:0 get:0 detail:0 cell:3 edit:0];

  v10 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  [v11 setProperty:v10 forKey:@"value"];

  [v11 setProperty:v6 forKey:PSIDKey];
  [*(a1 + 48) addObject:v11];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = __UIAccessibilitySafeClass();
  v12 = [v11 specifier];
  v13 = [(VOBasicListItemController *)self specifier];
  v14 = [v13 propertyForKey:@"blockGetter"];

  v15 = v14[2](v14);
  v16 = [v12 propertyForKey:@"value"];
  [v11 setChecked:{objc_msgSend(v15, "isEqual:", v16)}];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v35 = 0;
  v8 = [v6 cellForRowAtIndexPath:v7];
  v9 = __UIAccessibilitySafeClass();

  v27 = v7;
  v10 = [v9 specifier];
  v11 = [(VOBasicListItemController *)self specifier];
  v12 = [v11 propertyForKey:@"blockSetter"];

  v26 = v10;
  v13 = [v10 propertyForKey:@"value"];
  v25 = v12;
  (*(v12 + 16))(v12, v13);

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v28 = v6;
  obj = [v6 visibleCells];
  v14 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v32;
    do
    {
      v17 = 0;
      v18 = v9;
      do
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v35 = 0;
        v19 = __UIAccessibilitySafeClass();
        if (v35 == 1)
        {
          abort();
        }

        v9 = v19;

        v20 = [(VOBasicListItemController *)self specifier];
        v21 = [v20 propertyForKey:@"blockGetter"];

        v22 = v21[2](v21);
        v23 = [v9 specifier];
        v24 = [v23 propertyForKey:@"value"];
        [v9 setChecked:{objc_msgSend(v22, "isEqual:", v24)}];

        ++v17;
        v18 = v9;
      }

      while (v15 != v17);
      v15 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v15);
  }

  v30.receiver = self;
  v30.super_class = VOBasicListItemController;
  [(VOBasicListItemController *)&v30 tableView:v28 didSelectRowAtIndexPath:v27];
}

@end