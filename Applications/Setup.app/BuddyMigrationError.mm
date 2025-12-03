@interface BuddyMigrationError
+ (id)_appendErrorInformationForInternal:(id)internal error:(id)error;
+ (id)detailTextForErrorOnSource:(id)source;
+ (id)detailTextForErrorOnTarget:(id)target requiresErase:(BOOL)erase;
+ (id)titleForError:(id)error;
@end

@implementation BuddyMigrationError

+ (id)titleForError:(id)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  domain = [location[0] domain];
  v4 = [domain isEqualToString:@"MBErrorDomain"];

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

+ (id)detailTextForErrorOnSource:(id)source
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, source);
  v18 = 0;
  domain = [location[0] domain];
  v4 = [domain isEqualToString:@"MBErrorDomain"];

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

+ (id)detailTextForErrorOnTarget:(id)target requiresErase:(BOOL)erase
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, target);
  eraseCopy = erase;
  v35 = 0;
  domain = [location[0] domain];
  v6 = [domain isEqualToString:@"MBErrorDomain"];

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

  if (eraseCopy)
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
      domain2 = [location[0] domain];
      v33 = 1;
      v27 = 0;
      if ([domain2 isEqualToString:@"MBErrorDomain"])
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

+ (id)_appendErrorInformationForInternal:(id)internal error:(id)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, internal);
  v7 = 0;
  objc_storeStrong(&v7, error);
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