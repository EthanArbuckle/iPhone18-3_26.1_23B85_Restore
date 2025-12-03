@interface CLSSettingsActivityDetailController
- (NSMutableDictionary)activityItemsByID;
- (double)progressValueWithActivity:(id)activity;
- (id)activityWithID:(id)d;
- (id)allActivityItemsOfActivity:(id)activity;
- (id)binaryValue:(id)value;
- (id)createSpecifiersWithActivityItem:(id)item;
- (id)percentageNumberFormatter;
- (id)percentageStringWithProgress:(double)progress;
- (id)progressValueString:(id)string;
- (id)quantityValue:(id)value;
- (id)scoreValue:(id)value;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)timeSpentFormatter;
- (id)timeValue:(id)value;
@end

@implementation CLSSettingsActivityDetailController

- (id)specifiers
{
  selfCopy = self;
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    specifier = [(CLSSettingsActivityDetailController *)selfCopy specifier];
    v7 = [specifier propertyForKey:@"CLSSettingsSpecifierActivityID"];

    v8 = [(CLSSettingsActivityDetailController *)selfCopy activityWithID:v7];
    [(CLSSettingsActivityDetailController *)selfCopy setUserActivity:v8];

    userActivity = [(CLSSettingsActivityDetailController *)selfCopy userActivity];

    if (userActivity)
    {
      activityItemsByID = [(CLSSettingsActivityDetailController *)selfCopy activityItemsByID];
      [activityItemsByID removeAllObjects];

      v51 = v7;
      v50 = [PSSpecifier groupSpecifierWithID:v7];
      [v5 addObject:?];
      userActivity2 = [(CLSSettingsActivityDetailController *)selfCopy userActivity];
      [(CLSSettingsActivityDetailController *)selfCopy progressValueWithActivity:userActivity2];
      v13 = v12;

      if (v13 > 0.00000011920929)
      {
        v14 = [NSBundle bundleForClass:objc_opt_class()];
        v15 = [v14 localizedStringForKey:@"Progress" value:&stru_C898 table:@"ClassKitSettings"];
        v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:selfCopy set:0 get:"progressValueString:" detail:0 cell:4 edit:0];

        [v5 addObject:v16];
      }

      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:@"Time" value:&stru_C898 table:@"ClassKitSettings"];
      v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:selfCopy set:0 get:"timeValue:" detail:0 cell:4 edit:0];

      v49 = v19;
      [v5 addObject:v19];
      userActivity3 = [(CLSSettingsActivityDetailController *)selfCopy userActivity];
      v21 = [(CLSSettingsActivityDetailController *)selfCopy allActivityItemsOfActivity:userActivity3];

      userActivity4 = [(CLSSettingsActivityDetailController *)selfCopy userActivity];
      primaryActivityItemIdentifier = [userActivity4 primaryActivityItemIdentifier];

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
            activityItemsByID2 = [(CLSSettingsActivityDetailController *)selfCopy activityItemsByID];
            objectID = [v27 objectID];
            [activityItemsByID2 setObject:v27 forKeyedSubscript:objectID];

            identifier = [v27 identifier];
            LODWORD(objectID) = [primaryActivityItemIdentifier isEqualToString:identifier];

            if (objectID)
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
          v32 = [(CLSSettingsActivityDetailController *)selfCopy createSpecifiersWithActivityItem:?];
          [v5 addObjectsFromArray:v32];
        }

        userActivity5 = [(CLSSettingsActivityDetailController *)selfCopy userActivity];
        additionalActivityItems = [userActivity5 additionalActivityItems];

        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v52 = additionalActivityItems;
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

              v39 = selfCopy;
              v40 = [(CLSSettingsActivityDetailController *)selfCopy createSpecifiersWithActivityItem:*(*(&v61 + 1) + 8 * j)];
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

              selfCopy = v39;
            }

            v36 = [v52 countByEnumeratingWithState:&v61 objects:v70 count:16];
          }

          while (v36);
        }

        v3 = v48;
      }

      v7 = v51;
    }

    v45 = *&selfCopy->PSListController_opaque[v3];
    *&selfCopy->PSListController_opaque[v3] = v5;

    v4 = *&selfCopy->PSListController_opaque[v3];
  }

  return v4;
}

- (id)createSpecifiersWithActivityItem:(id)item
{
  itemCopy = item;
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
  title = [itemCopy title];
  v9 = [PSSpecifier preferenceSpecifierNamed:title target:self set:0 get:v7 detail:0 cell:4 edit:0];

  objectID = [itemCopy objectID];
  [v9 setProperty:objectID forKey:@"CLSSettingsActivityItemIDKey"];

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

- (id)activityWithID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_5658;
    v16 = sub_5668;
    v17 = 0;
    dCopy = [NSPredicate predicateWithFormat:@"objectID = %@", dCopy];
    v11 = 0;
    v5 = [CLSQuery queryWithObjectType:objc_opt_class() predicate:dCopy error:&v11];
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

- (id)allActivityItemsOfActivity:(id)activity
{
  activityCopy = activity;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_5658;
  v31 = sub_5668;
  v32 = objc_alloc_init(NSMutableArray);
  if (activityCopy)
  {
    objectID = [activityCopy objectID];
    v5 = [NSPredicate predicateWithFormat:@"parentObjectID = %@", objectID];

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

- (id)percentageStringWithProgress:(double)progress
{
  percentageNumberFormatter = [(CLSSettingsActivityDetailController *)self percentageNumberFormatter];
  v5 = [NSNumber numberWithDouble:progress];
  v6 = [percentageNumberFormatter stringFromNumber:v5];

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

- (double)progressValueWithActivity:(id)activity
{
  if (!activity)
  {
    return 0.0;
  }

  [activity progress];
  if (result < 0.00000011920929)
  {
    return 0.0;
  }

  return result;
}

- (id)progressValueString:(id)string
{
  userActivity = [(CLSSettingsActivityDetailController *)self userActivity];
  [(CLSSettingsActivityDetailController *)self progressValueWithActivity:userActivity];
  v6 = v5;

  return [(CLSSettingsActivityDetailController *)self percentageStringWithProgress:v6];
}

- (id)timeValue:(id)value
{
  userActivity = [(CLSSettingsActivityDetailController *)self userActivity];

  if (userActivity)
  {
    userActivity2 = [(CLSSettingsActivityDetailController *)self userActivity];
    [userActivity2 duration];
    v7 = v6;

    if (v7 < 0.00000011920929)
    {
      v7 = 0.0;
    }

    timeSpentFormatter = [(CLSSettingsActivityDetailController *)self timeSpentFormatter];
    v9 = [timeSpentFormatter stringFromTimeInterval:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)scoreValue:(id)value
{
  valueCopy = value;
  userActivity = [(CLSSettingsActivityDetailController *)self userActivity];

  if (userActivity)
  {
    v6 = [valueCopy propertyForKey:@"CLSSettingsActivityItemIDKey"];
    if (v6)
    {
      activityItemsByID = [(CLSSettingsActivityDetailController *)self activityItemsByID];
      v8 = [activityItemsByID objectForKeyedSubscript:v6];

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
          stringValue = [(CLSSettingsActivityDetailController *)self percentageStringWithProgress:v14 / v15];
        }

        else
        {
          [v9 score];
          v11 = [NSNumber numberWithDouble:?];
          stringValue = [v11 stringValue];
        }
      }

      else
      {
        stringValue = 0;
      }
    }

    else
    {
      stringValue = 0;
    }
  }

  else
  {
    stringValue = 0;
  }

  return stringValue;
}

- (id)quantityValue:(id)value
{
  valueCopy = value;
  userActivity = [(CLSSettingsActivityDetailController *)self userActivity];

  if (userActivity)
  {
    v6 = [valueCopy propertyForKey:@"CLSSettingsActivityItemIDKey"];
    if (v6)
    {
      activityItemsByID = [(CLSSettingsActivityDetailController *)self activityItemsByID];
      v8 = [activityItemsByID objectForKeyedSubscript:v6];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v8 quantity];
        v9 = [NSNumber numberWithDouble:?];
        stringValue = [v9 stringValue];
      }

      else
      {
        stringValue = 0;
      }
    }

    else
    {
      stringValue = 0;
    }
  }

  else
  {
    stringValue = 0;
  }

  return stringValue;
}

- (id)binaryValue:(id)value
{
  valueCopy = value;
  userActivity = [(CLSSettingsActivityDetailController *)self userActivity];

  if (!userActivity)
  {
    v11 = 0;
    goto LABEL_28;
  }

  v6 = [valueCopy propertyForKey:@"CLSSettingsActivityItemIDKey"];
  if (v6)
  {
    activityItemsByID = [(CLSSettingsActivityDetailController *)self activityItemsByID];
    v8 = [activityItemsByID objectForKeyedSubscript:v6];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v9 = v8;
    valueType = [v9 valueType];
    v11 = 0;
    if (valueType > 1)
    {
      if (valueType == &dword_0 + 3)
      {
        value = [v9 value];
        v13 = [NSBundle bundleForClass:objc_opt_class()];
        if (value)
        {
          v14 = @"Correct";
        }

        else
        {
          v14 = @"Incorrect";
        }

        goto LABEL_24;
      }

      if (valueType == &dword_0 + 2)
      {
        value2 = [v9 value];
        v13 = [NSBundle bundleForClass:objc_opt_class()];
        if (value2)
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
      if (!valueType)
      {
        value3 = [v9 value];
        v13 = [NSBundle bundleForClass:objc_opt_class()];
        if (value3)
        {
          v14 = @"True";
        }

        else
        {
          v14 = @"False";
        }

        goto LABEL_24;
      }

      if (valueType == &dword_0 + 1)
      {
        value4 = [v9 value];
        v13 = [NSBundle bundleForClass:objc_opt_class()];
        if (value4)
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = CLSSettingsActivityDetailController;
  v4 = [(CLSSettingsActivityDetailController *)&v7 tableView:view cellForRowAtIndexPath:path];
  textLabel = [v4 textLabel];
  [textLabel setNumberOfLines:0];

  return v4;
}

@end