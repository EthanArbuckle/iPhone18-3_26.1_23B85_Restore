@interface BuddyAccountAge
- (BOOL)isUnder18;
- (BuddyAccountAge)initWithAccount:(id)account;
- (BuddyAccountAge)initWithAccount:(id)account accountManager:(id)manager;
- (BuddyAccountAge)initWithAgeRange:(unint64_t)range;
@end

@implementation BuddyAccountAge

- (BuddyAccountAge)initWithAccount:(id)account accountManager:(id)manager
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v37 = 0;
  objc_storeStrong(&v37, manager);
  if (location[0])
  {
    v8 = selfCopy;
    selfCopy = 0;
    v31.receiver = v8;
    v31.super_class = BuddyAccountAge;
    v9 = [(BuddyAccountAge *)&v31 init];
    selfCopy = v9;
    objc_storeStrong(&selfCopy, v9);
    if (v9)
    {
      aa_altDSID = [location[0] aa_altDSID];

      if (aa_altDSID)
      {
        v30 = 0;
        v11 = v37;
        aa_altDSID2 = [location[0] aa_altDSID];
        obj = 0;
        v13 = [v11 authKitAccountWithAltDSID:aa_altDSID2 error:&obj];
        objc_storeStrong(&v30, obj);
        v29 = v13;

        if (v30)
        {
          oslog = _BYLoggingFacility();
          v26 = 16;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            v14 = oslog;
            v15 = v26;
            sub_10006AA68(v25);
            _os_log_error_impl(&_mh_execute_header, v14, v15, "Failed to determine user age range for idms account.", v25, 2u);
          }

          objc_storeStrong(&oslog, 0);
          *(selfCopy + 1) = 0;
        }

        else
        {
          v16 = [v37 userAgeRangeForAccount:v29];
          *(selfCopy + 1) = v16;
        }

        objc_storeStrong(&v29, 0);
        objc_storeStrong(&v30, 0);
      }

      else
      {
        v24 = [location[0] accountPropertyForKey:@"userAgeRange"];
        if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          unsignedIntegerValue = [v24 unsignedIntegerValue];
          *(selfCopy + 1) = unsignedIntegerValue;
        }

        else
        {
          v23 = _BYLoggingFacility();
          v22 = 16;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v18 = v23;
            v19 = v22;
            sub_10006AA68(v21);
            _os_log_error_impl(&_mh_execute_header, v18, v19, "Failed to determine use age range from account", v21, 2u);
          }

          objc_storeStrong(&v23, 0);
          *(selfCopy + 1) = 0;
        }

        objc_storeStrong(&v24, 0);
      }
    }

    v40 = selfCopy;
    v32 = 1;
  }

  else
  {
    v36 = _BYLoggingFacility();
    v35 = 17;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      v5 = v36;
      v6 = v35;
      sub_10006AA68(buf);
      _os_log_fault_impl(&_mh_execute_header, v5, v6, "BuddyAccountAge init without account", buf, 2u);
    }

    objc_storeStrong(&v36, 0);
    *(selfCopy + 1) = 0;
    v7 = selfCopy;
    selfCopy = 0;
    v33.receiver = v7;
    v33.super_class = BuddyAccountAge;
    selfCopy = [(BuddyAccountAge *)&v33 init];
    v40 = selfCopy;
    v32 = 1;
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v40;
}

- (BuddyAccountAge)initWithAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v3 = selfCopy;
  v4 = location[0];
  v5 = +[AKAccountManager sharedInstance];
  selfCopy = 0;
  selfCopy = [v3 initWithAccount:v4 accountManager:v5];
  v6 = selfCopy;

  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (BuddyAccountAge)initWithAgeRange:(unint64_t)range
{
  v8 = a2;
  rangeCopy = range;
  location = 0;
  v6.receiver = self;
  v6.super_class = BuddyAccountAge;
  v3 = [(BuddyAccountAge *)&v6 init];
  location = v3;
  objc_storeStrong(&location, v3);
  if (v3)
  {
    *(location + 1) = rangeCopy;
  }

  v4 = location;
  objc_storeStrong(&location, 0);
  return v4;
}

- (BOOL)isUnder18
{
  isTeen = [(BuddyAccountAge *)self isTeen];
  isChild = 1;
  if ((isTeen & 1) == 0)
  {
    isChild = [(BuddyAccountAge *)self isChild];
  }

  return isChild & 1;
}

@end