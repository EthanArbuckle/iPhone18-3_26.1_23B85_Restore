@interface BuddyAccountAge
- (BOOL)isUnder18;
- (BuddyAccountAge)initWithAccount:(id)a3;
- (BuddyAccountAge)initWithAccount:(id)a3 accountManager:(id)a4;
- (BuddyAccountAge)initWithAgeRange:(unint64_t)a3;
@end

@implementation BuddyAccountAge

- (BuddyAccountAge)initWithAccount:(id)a3 accountManager:(id)a4
{
  v39 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v37 = 0;
  objc_storeStrong(&v37, a4);
  if (location[0])
  {
    v8 = v39;
    v39 = 0;
    v31.receiver = v8;
    v31.super_class = BuddyAccountAge;
    v9 = [(BuddyAccountAge *)&v31 init];
    v39 = v9;
    objc_storeStrong(&v39, v9);
    if (v9)
    {
      v10 = [location[0] aa_altDSID];

      if (v10)
      {
        v30 = 0;
        v11 = v37;
        v12 = [location[0] aa_altDSID];
        obj = 0;
        v13 = [v11 authKitAccountWithAltDSID:v12 error:&obj];
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
          *(v39 + 1) = 0;
        }

        else
        {
          v16 = [v37 userAgeRangeForAccount:v29];
          *(v39 + 1) = v16;
        }

        objc_storeStrong(&v29, 0);
        objc_storeStrong(&v30, 0);
      }

      else
      {
        v24 = [location[0] accountPropertyForKey:@"userAgeRange"];
        if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v17 = [v24 unsignedIntegerValue];
          *(v39 + 1) = v17;
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
          *(v39 + 1) = 0;
        }

        objc_storeStrong(&v24, 0);
      }
    }

    v40 = v39;
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
    *(v39 + 1) = 0;
    v7 = v39;
    v39 = 0;
    v33.receiver = v7;
    v33.super_class = BuddyAccountAge;
    v39 = [(BuddyAccountAge *)&v33 init];
    v40 = v39;
    v32 = 1;
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v39, 0);
  return v40;
}

- (BuddyAccountAge)initWithAccount:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v4 = location[0];
  v5 = +[AKAccountManager sharedInstance];
  v9 = 0;
  v9 = [v3 initWithAccount:v4 accountManager:v5];
  v6 = v9;

  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v6;
}

- (BuddyAccountAge)initWithAgeRange:(unint64_t)a3
{
  v8 = a2;
  v7 = a3;
  location = 0;
  v6.receiver = self;
  v6.super_class = BuddyAccountAge;
  v3 = [(BuddyAccountAge *)&v6 init];
  location = v3;
  objc_storeStrong(&location, v3);
  if (v3)
  {
    *(location + 1) = v7;
  }

  v4 = location;
  objc_storeStrong(&location, 0);
  return v4;
}

- (BOOL)isUnder18
{
  v2 = [(BuddyAccountAge *)self isTeen];
  v3 = 1;
  if ((v2 & 1) == 0)
  {
    v3 = [(BuddyAccountAge *)self isChild];
  }

  return v3 & 1;
}

@end