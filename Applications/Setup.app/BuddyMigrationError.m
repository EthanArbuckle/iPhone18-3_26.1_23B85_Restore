@interface BuddyMigrationError
+ (id)_appendErrorInformationForInternal:(id)a3 error:(id)a4;
+ (id)detailTextForErrorOnSource:(id)a3;
+ (id)detailTextForErrorOnTarget:(id)a3 requiresErase:(BOOL)a4;
+ (id)titleForError:(id)a3;
@end

@implementation BuddyMigrationError

+ (id)titleForError:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] domain];
  v4 = [v3 isEqualToString:@"MBErrorDomain"];

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

  if ([location[0] code] == 202)
  {
    v5 = +[NSBundle mainBundle];
    v11 = [(NSBundle *)v5 localizedStringForKey:@"MIGRATION_ERROR_TITLE_CANCELLED" value:&stru_10032F900 table:@"Migration"];

    goto LABEL_7;
  }

  if ([location[0] code] == 106)
  {
    v6 = +[NSBundle mainBundle];
    v11 = [(NSBundle *)v6 localizedStringForKey:@"MIGRATION_ERROR_TITLE_OUT_OF_SPACE" value:&stru_10032F900 table:@"Migration"];
  }

  else
  {
LABEL_6:
    v7 = +[NSBundle mainBundle];
    v11 = [(NSBundle *)v7 localizedStringForKey:@"MIGRATION_ERROR_TITLE_GENERIC" value:&stru_10032F900 table:@"Migration"];
  }

LABEL_7:
  objc_storeStrong(location, 0);
  v8 = v11;

  return v8;
}

+ (id)detailTextForErrorOnSource:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  v3 = [location[0] domain];
  v4 = [v3 isEqualToString:@"MBErrorDomain"];

  if (v4)
  {
    if ([location[0] code] == 15)
    {
      v5 = +[NSBundle mainBundle];
      v6 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"MIGRATION_ERROR_DETAIL_DISCONNECTED"];
      v7 = [(NSBundle *)v5 localizedStringForKey:v6 value:&stru_10032F900 table:@"Migration"];
      v8 = v18;
      v18 = v7;
    }

    else if ([location[0] code] == 106)
    {
      v9 = +[NSBundle mainBundle];
      v10 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"MIGRATION_ERROR_DETAIL_SOURCE_OUT_OF_SPACE"];
      v11 = [(NSBundle *)v9 localizedStringForKey:v10 value:&stru_10032F900 table:@"Migration"];
      v12 = v18;
      v18 = v11;
    }
  }

  else
  {
    v13 = +[NSBundle mainBundle];
    v14 = [(NSBundle *)v13 localizedStringForKey:@"MIGRATION_ERROR_DETAIL_GENERIC" value:&stru_10032F900 table:@"Migration"];
    v15 = v18;
    v18 = v14;
  }

  v16 = [BuddyMigrationError _appendErrorInformationForInternal:v18 error:location[0], v18];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);

  return v16;
}

+ (id)detailTextForErrorOnTarget:(id)a3 requiresErase:(BOOL)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v36 = a4;
  v35 = 0;
  v5 = [location[0] domain];
  v6 = [v5 isEqualToString:@"MBErrorDomain"];

  if (v6)
  {
    if ([location[0] code] == 202)
    {
      objc_storeStrong(&v35, 0);
    }

    else if ([location[0] code] == 15)
    {
      v7 = +[NSBundle mainBundle];
      v8 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"MIGRATION_ERROR_DETAIL_DISCONNECTED"];
      v9 = [(NSBundle *)v7 localizedStringForKey:v8 value:&stru_10032F900 table:@"Migration"];
      v10 = v35;
      v35 = v9;
    }

    else if ([location[0] code] == 106)
    {
      v11 = +[NSBundle mainBundle];
      v12 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"MIGRATION_ERROR_DETAIL_TARGET_OUT_OF_SPACE"];
      v13 = [(NSBundle *)v11 localizedStringForKey:v12 value:&stru_10032F900 table:@"Migration"];
      v14 = v35;
      v35 = v13;
    }
  }

  else
  {
    v15 = +[NSBundle mainBundle];
    v16 = [(NSBundle *)v15 localizedStringForKey:@"MIGRATION_ERROR_DETAIL_GENERIC" value:&stru_10032F900 table:@"Migration"];
    v17 = v35;
    v35 = v16;
  }

  if (v36)
  {
    if (v35)
    {
      v18 = v35;
      v19 = +[NSBundle mainBundle];
      v20 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"MIGRATION_ERROR_DETAIL_TARGET_SUFFIX_RESET"];
      v21 = [(NSBundle *)v19 localizedStringForKey:v20 value:&stru_10032F900 table:@"Migration"];
      v22 = [NSString localizedStringWithFormat:@"%@ %@", v18, v21];
      v23 = v35;
      v35 = v22;
    }

    else
    {
      v19 = +[NSBundle mainBundle];
      v24 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"MIGRATION_ERROR_DETAIL_TARGET_SUFFIX_RESET"];
      v25 = [(NSBundle *)v19 localizedStringForKey:v24 value:&stru_10032F900 table:@"Migration"];
      v26 = v35;
      v35 = v25;
    }
  }

  else
  {
    v33 = 0;
    v27 = 0;
    if (!v35)
    {
      v34 = [location[0] domain];
      v33 = 1;
      v27 = 0;
      if ([v34 isEqualToString:@"MBErrorDomain"])
      {
        v27 = [location[0] code] == 202;
      }
    }

    if (v33)
    {
    }

    if (v27)
    {
      v28 = +[NSBundle mainBundle];
      v29 = [(NSBundle *)v28 localizedStringForKey:@"MIGRATION_ERROR_DETAIL_GENERIC" value:&stru_10032F900 table:@"Migration"];
      v30 = v35;
      v35 = v29;
    }
  }

  v31 = [BuddyMigrationError _appendErrorInformationForInternal:v35 error:location[0]];
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);

  return v31;
}

+ (id)_appendErrorInformationForInternal:(id)a3 error:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  if ((os_variant_has_internal_ui() & 1) != 0 && v7)
  {
    v9 = [NSString stringWithFormat:@"%@\n\nInternal: %@", location[0], v7];
  }

  else
  {
    v9 = location[0];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  v5 = v9;

  return v5;
}

@end