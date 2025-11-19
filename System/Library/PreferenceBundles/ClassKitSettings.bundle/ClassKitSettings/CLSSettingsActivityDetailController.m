@interface CLSSettingsActivityDetailController
- (NSMutableDictionary)activityItemsByID;
- (double)progressValueWithActivity:(id)a3;
- (id)activityWithID:(id)a3;
- (id)allActivityItemsOfActivity:(id)a3;
- (id)binaryValue:(id)a3;
- (id)createSpecifiersWithActivityItem:(id)a3;
- (id)percentageNumberFormatter;
- (id)percentageStringWithProgress:(double)a3;
- (id)progressValueString:(id)a3;
- (id)quantityValue:(id)a3;
- (id)scoreValue:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)timeSpentFormatter;
- (id)timeValue:(id)a3;
@end

@implementation CLSSettingsActivityDetailController

- (id)specifiers
{
  v2 = self;
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = [(CLSSettingsActivityDetailController *)v2 specifier];
    v7 = [v6 propertyForKey:@"CLSSettingsSpecifierActivityID"];

    v8 = [(CLSSettingsActivityDetailController *)v2 activityWithID:v7];
    [(CLSSettingsActivityDetailController *)v2 setUserActivity:v8];

    v9 = [(CLSSettingsActivityDetailController *)v2 userActivity];

    if (v9)
    {
      v10 = [(CLSSettingsActivityDetailController *)v2 activityItemsByID];
      [v10 removeAllObjects];

      v51 = v7;
      v50 = [PSSpecifier groupSpecifierWithID:v7];
      [v5 addObject:?];
      v11 = [(CLSSettingsActivityDetailController *)v2 userActivity];
      [(CLSSettingsActivityDetailController *)v2 progressValueWithActivity:v11];
      v13 = v12;

      if (v13 > 0.00000011920929)
      {
        v14 = [NSBundle bundleForClass:objc_opt_class()];
        v15 = [v14 localizedStringForKey:@"Progress" value:&stru_C898 table:@"ClassKitSettings"];
        v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:v2 set:0 get:"progressValueString:" detail:0 cell:4 edit:0];

        [v5 addObject:v16];
      }

      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:@"Time" value:&stru_C898 table:@"ClassKitSettings"];
      v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:v2 set:0 get:"timeValue:" detail:0 cell:4 edit:0];

      v49 = v19;
      [v5 addObject:v19];
      v20 = [(CLSSettingsActivityDetailController *)v2 userActivity];
      v21 = [(CLSSettingsActivityDetailController *)v2 allActivityItemsOfActivity:v20];

      v22 = [(CLSSettingsActivityDetailController *)v2 userActivity];
      v55 = [v22 primaryActivityItemIdentifier];

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      obj = v21;
      v23 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
      if (v23)
      {
        v24 = v23;
        v56 = 0;
        v25 = *v66;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v66 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v65 + 1) + 8 * i);
            v28 = [(CLSSettingsActivityDetailController *)v2 activityItemsByID];
            v29 = [v27 objectID];
            [v28 setObject:v27 forKeyedSubscript:v29];

            v30 = [v27 identifier];
            LODWORD(v29) = [v55 isEqualToString:v30];

            if (v29)
            {
              v31 = v27;

              v56 = v31;
            }
          }

          v24 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
        }

        while (v24);
      }

      else
      {
        v56 = 0;
      }

      if ([obj count])
      {
        v48 = v3;
        v47 = [PSSpecifier groupSpecifierWithID:@"ACTIVITY_ITEMS"];
        [v5 addObject:?];
        if (v56)
        {
          v32 = [(CLSSettingsActivityDetailController *)v2 createSpecifiersWithActivityItem:?];
          [v5 addObjectsFromArray:v32];
        }

        v33 = [(CLSSettingsActivityDetailController *)v2 userActivity];
        v34 = [v33 additionalActivityItems];

        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v52 = v34;
        v35 = [v52 countByEnumeratingWithState:&v61 objects:v70 count:16];
        if (v35)
        {
          v36 = v35;
          v54 = *v62;
          v37 = PSCellClassKey;
          do
          {
            for (j = 0; j != v36; j = j + 1)
            {
              if (*v62 != v54)
              {
                objc_enumerationMutation(v52);
              }

              v39 = v2;
              v40 = [(CLSSettingsActivityDetailController *)v2 createSpecifiersWithActivityItem:*(*(&v61 + 1) + 8 * j)];
              v57 = 0u;
              v58 = 0u;
              v59 = 0u;
              v60 = 0u;
              v41 = [v40 countByEnumeratingWithState:&v57 objects:v69 count:16];
              if (v41)
              {
                v42 = v41;
                v43 = *v58;
                do
                {
                  for (k = 0; k != v42; k = k + 1)
                  {
                    if (*v58 != v43)
                    {
                      objc_enumerationMutation(v40);
                    }

                    [*(*(&v57 + 1) + 8 * k) setProperty:objc_opt_class() forKey:v37];
                  }

                  v42 = [v40 countByEnumeratingWithState:&v57 objects:v69 count:16];
                }

                while (v42);
              }

              [v5 addObjectsFromArray:v40];

              v2 = v39;
            }

            v36 = [v52 countByEnumeratingWithState:&v61 objects:v70 count:16];
          }

          while (v36);
        }

        v3 = v48;
      }

      v7 = v51;
    }

    v45 = *&v2->PSListController_opaque[v3];
    *&v2->PSListController_opaque[v3] = v5;

    v4 = *&v2->PSListController_opaque[v3];
  }

  return v4;
}

- (id)createSpecifiersWithActivityItem:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = &selRef_scoreValue_;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = &selRef_quantityValue_;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_8;
      }

      v6 = &selRef_binaryValue_;
    }
  }

  v7 = *v6;
  v8 = [v4 title];
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:v7 detail:0 cell:4 edit:0];

  v10 = [v4 objectID];
  [v9 setProperty:v10 forKey:@"CLSSettingsActivityItemIDKey"];

  [v5 addObject:v9];
LABEL_8:

  return v5;
}

- (NSMutableDictionary)activityItemsByID
{
  activityItemsByID = self->_activityItemsByID;
  if (!activityItemsByID)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = self->_activityItemsByID;
    self->_activityItemsByID = v4;

    activityItemsByID = self->_activityItemsByID;
  }

  return activityItemsByID;
}

- (id)activityWithID:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_5658;
    v16 = sub_5668;
    v17 = 0;
    v4 = [NSPredicate predicateWithFormat:@"objectID = %@", v3];
    v11 = 0;
    v5 = [CLSQuery queryWithObjectType:objc_opt_class() predicate:v4 error:&v11];
    v6 = v11;
    v7 = +[CLSDataStore shared];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_5670;
    v10[3] = &unk_C738;
    v10[4] = &v12;
    [v7 awaitExecuteQuery:v5 completion:v10];

    v8 = v13[5];
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)allActivityItemsOfActivity:(id)a3
{
  v3 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_5658;
  v31 = sub_5668;
  v32 = objc_alloc_init(NSMutableArray);
  if (v3)
  {
    v4 = [v3 objectID];
    v5 = [NSPredicate predicateWithFormat:@"parentObjectID = %@", v4];

    v6 = [NSSortDescriptor sortDescriptorWithKey:@"dateCreated" ascending:1];
    v26 = 0;
    v7 = [CLSQuery queryWithObjectType:objc_opt_class() predicate:v5 error:&v26];
    v8 = v26;
    v35 = v6;
    v9 = [NSArray arrayWithObjects:&v35 count:1];
    [v7 setSortDescriptors:v9];

    v10 = +[CLSDataStore shared];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_5AE8;
    v25[3] = &unk_C738;
    v25[4] = &v27;
    [v10 awaitExecuteQuery:v7 completion:v25];

    v24 = v8;
    v11 = [CLSQuery queryWithObjectType:objc_opt_class() predicate:v5 error:&v24];
    v12 = v24;

    v34 = v6;
    v13 = [NSArray arrayWithObjects:&v34 count:1];
    [v11 setSortDescriptors:v13];

    v14 = +[CLSDataStore shared];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_5B04;
    v23[3] = &unk_C738;
    v23[4] = &v27;
    [v14 awaitExecuteQuery:v11 completion:v23];

    v22 = v12;
    v15 = [CLSQuery queryWithObjectType:objc_opt_class() predicate:v5 error:&v22];
    v16 = v22;

    v33 = v6;
    v17 = [NSArray arrayWithObjects:&v33 count:1];
    [v15 setSortDescriptors:v17];

    v18 = +[CLSDataStore shared];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_5B20;
    v21[3] = &unk_C738;
    v21[4] = &v27;
    [v18 awaitExecuteQuery:v15 completion:v21];
  }

  v19 = v28[5];
  _Block_object_dispose(&v27, 8);

  return v19;
}

- (id)percentageStringWithProgress:(double)a3
{
  v4 = [(CLSSettingsActivityDetailController *)self percentageNumberFormatter];
  v5 = [NSNumber numberWithDouble:a3];
  v6 = [v4 stringFromNumber:v5];

  return v6;
}

- (id)percentageNumberFormatter
{
  if (qword_10E58 != -1)
  {
    dispatch_once(&qword_10E58, &stru_C758);
  }

  v3 = qword_10E50;

  return v3;
}

- (id)timeSpentFormatter
{
  if (qword_10E68 != -1)
  {
    dispatch_once(&qword_10E68, &stru_C778);
  }

  v3 = qword_10E60;

  return v3;
}

- (double)progressValueWithActivity:(id)a3
{
  if (!a3)
  {
    return 0.0;
  }

  [a3 progress];
  if (result < 0.00000011920929)
  {
    return 0.0;
  }

  return result;
}

- (id)progressValueString:(id)a3
{
  v4 = [(CLSSettingsActivityDetailController *)self userActivity];
  [(CLSSettingsActivityDetailController *)self progressValueWithActivity:v4];
  v6 = v5;

  return [(CLSSettingsActivityDetailController *)self percentageStringWithProgress:v6];
}

- (id)timeValue:(id)a3
{
  v4 = [(CLSSettingsActivityDetailController *)self userActivity];

  if (v4)
  {
    v5 = [(CLSSettingsActivityDetailController *)self userActivity];
    [v5 duration];
    v7 = v6;

    if (v7 < 0.00000011920929)
    {
      v7 = 0.0;
    }

    v8 = [(CLSSettingsActivityDetailController *)self timeSpentFormatter];
    v9 = [v8 stringFromTimeInterval:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)scoreValue:(id)a3
{
  v4 = a3;
  v5 = [(CLSSettingsActivityDetailController *)self userActivity];

  if (v5)
  {
    v6 = [v4 propertyForKey:@"CLSSettingsActivityItemIDKey"];
    if (v6)
    {
      v7 = [(CLSSettingsActivityDetailController *)self activityItemsByID];
      v8 = [v7 objectForKeyedSubscript:v6];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
        [v9 maxScore];
        if (v10 >= 0.00000011920929)
        {
          [v9 score];
          v14 = v13;
          [v9 maxScore];
          v12 = [(CLSSettingsActivityDetailController *)self percentageStringWithProgress:v14 / v15];
        }

        else
        {
          [v9 score];
          v11 = [NSNumber numberWithDouble:?];
          v12 = [v11 stringValue];
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)quantityValue:(id)a3
{
  v4 = a3;
  v5 = [(CLSSettingsActivityDetailController *)self userActivity];

  if (v5)
  {
    v6 = [v4 propertyForKey:@"CLSSettingsActivityItemIDKey"];
    if (v6)
    {
      v7 = [(CLSSettingsActivityDetailController *)self activityItemsByID];
      v8 = [v7 objectForKeyedSubscript:v6];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v8 quantity];
        v9 = [NSNumber numberWithDouble:?];
        v10 = [v9 stringValue];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)binaryValue:(id)a3
{
  v4 = a3;
  v5 = [(CLSSettingsActivityDetailController *)self userActivity];

  if (!v5)
  {
    v11 = 0;
    goto LABEL_28;
  }

  v6 = [v4 propertyForKey:@"CLSSettingsActivityItemIDKey"];
  if (v6)
  {
    v7 = [(CLSSettingsActivityDetailController *)self activityItemsByID];
    v8 = [v7 objectForKeyedSubscript:v6];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v9 = v8;
    v10 = [v9 valueType];
    v11 = 0;
    if (v10 > 1)
    {
      if (v10 == &dword_0 + 3)
      {
        v17 = [v9 value];
        v13 = [NSBundle bundleForClass:objc_opt_class()];
        if (v17)
        {
          v14 = @"Correct";
        }

        else
        {
          v14 = @"Incorrect";
        }

        goto LABEL_24;
      }

      if (v10 == &dword_0 + 2)
      {
        v15 = [v9 value];
        v13 = [NSBundle bundleForClass:objc_opt_class()];
        if (v15)
        {
          v14 = @"Yes";
        }

        else
        {
          v14 = @"No";
        }

        goto LABEL_24;
      }
    }

    else
    {
      if (!v10)
      {
        v16 = [v9 value];
        v13 = [NSBundle bundleForClass:objc_opt_class()];
        if (v16)
        {
          v14 = @"True";
        }

        else
        {
          v14 = @"False";
        }

        goto LABEL_24;
      }

      if (v10 == &dword_0 + 1)
      {
        v12 = [v9 value];
        v13 = [NSBundle bundleForClass:objc_opt_class()];
        if (v12)
        {
          v14 = @"Pass";
        }

        else
        {
          v14 = @"Not Yet";
        }

LABEL_24:
        v11 = [v13 localizedStringForKey:v14 value:&stru_C898 table:@"ClassKitSettings"];
      }
    }

    goto LABEL_26;
  }

  v11 = 0;
LABEL_27:

LABEL_28:

  return v11;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = CLSSettingsActivityDetailController;
  v4 = [(CLSSettingsActivityDetailController *)&v7 tableView:a3 cellForRowAtIndexPath:a4];
  v5 = [v4 textLabel];
  [v5 setNumberOfLines:0];

  return v4;
}

@end