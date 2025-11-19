@interface AddressBookManager
+ (id)sharedManager;
- (AddressBookAddress)meCardHomeAddress;
- (AddressBookAddress)meCardSchoolAddress;
- (AddressBookAddress)meCardWorkAddress;
- (AddressBookManager)init;
- (BOOL)shouldAllowMeCardWrites;
- (CNContactStore)contactStore;
- (MapsSuggestionsCorrectedMapItemProvider)msgCorrectedMapItemProvider;
- (NSArray)allHomeAddresses;
- (NSArray)allOtherAddresses;
- (NSArray)allSchoolAddresses;
- (NSArray)allWorkAddresses;
- (NSArray)properties;
- (NSURL)meCardPunchOutURL;
- (id)_contactWithCacheIdentifier:(id)a3 predicate:(id)a4;
- (id)addressForAddressObject:(id)a3;
- (id)addressForIdentifier:(id)a3;
- (id)contactForCNContactIdentifier:(id)a3;
- (id)contactForRecordId:(int)a3;
- (id)contactWithEmailAddress:(id)a3;
- (id)contactWithPhoneNumber:(id)a3;
- (id)mapItemFormShortcutForCNIdentifier:(id)a3;
- (id)senderNameForAddress:(id)a3 ofType:(id)a4;
- (id)spokenContactNameForAddress:(id)a3 ofType:(id)a4;
- (void)_cancelAddressCollectionTimerIfNeeded;
- (void)_deferredAddressCollectionTimerFired:(id)a3;
- (void)_enumerateContactsWithAddress:(id)a3 ofType:(id)a4 handler:(id)a5;
- (void)_updateStoreWithCoalescing:(BOOL)a3;
- (void)collectAddresses;
- (void)createMeCardWithContact:(id)a3 completion:(id)a4;
- (void)performBlockAfterFirstCollection:(id)a3;
- (void)setNeedsAddressCollection;
- (void)updateContact:(id)a3 completion:(id)a4;
- (void)updateStore:(id)a3;
- (void)updateStoreImmediately:(id)a3;
@end

@implementation AddressBookManager

+ (id)sharedManager
{
  if (qword_10195D190 != -1)
  {
    dispatch_once(&qword_10195D190, &stru_1016286D8);
  }

  v3 = qword_10195D188;

  return v3;
}

- (AddressBookManager)init
{
  v21.receiver = self;
  v21.super_class = AddressBookManager;
  v2 = [(AddressBookManager *)&v21 init];
  if (v2)
  {
    v3 = sub_10006515C();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      *(v2 + 2) = 0;
      v10 = +[NSMutableDictionary dictionary];
      v11 = *(v2 + 11);
      *(v2 + 11) = v10;

      v12 = dispatch_group_create();
      v13 = *(v2 + 6);
      *(v2 + 6) = v12;

      v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v15 = dispatch_queue_create("com.apple.Maps.AddressBookManager.collection", v14);
      v16 = *(v2 + 2);
      *(v2 + 2) = v15;

      v17 = +[NSNotificationCenter defaultCenter];
      [v17 addObserver:v2 selector:"updateStore:" name:CNContactStoreMeContactDidChangeNotification object:0];

      v18 = +[NSNotificationCenter defaultCenter];
      [v18 addObserver:v2 selector:"updateStore:" name:CNContactStoreDidChangeNotification object:0];

      v19 = +[NSNotificationCenter defaultCenter];
      [v19 addObserver:v2 selector:"updateStoreImmediately:" name:@"MapsContactsAuthorizationGrantedNotification" object:0];

      dispatch_group_enter(*(v2 + 6));
      [v2 setNeedsAddressCollection];
      return v2;
    }

    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

    *buf = 138543362;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] initialising", buf, 0xCu);

    goto LABEL_9;
  }

  return v2;
}

- (void)setNeedsAddressCollection
{
  [(AddressBookManager *)self _cancelAddressCollectionTimerIfNeeded];
  objc_initWeak(&location, self);
  v3 = sub_10006515C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(AddressBookManager *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ([v7 isEqualToString:v6] & 1) == 0)
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    v10 = v9;
    GEOConfigGetDouble();
    *buf = 138543618;
    v21 = v10;
    v22 = 2048;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] scheduling deferred address collection in %#.1lfs", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  GEOConfigGetDouble();
  v13 = v12;
  contactStoreQueue = self->_contactStoreQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100777E68;
  v17[3] = &unk_1016616E8;
  objc_copyWeak(&v18, &location);
  v15 = [GCDTimer scheduledTimerWithTimeInterval:contactStoreQueue queue:0 repeating:v17 block:v13];
  deferredAddressCollectionTimer = self->_deferredAddressCollectionTimer;
  self->_deferredAddressCollectionTimer = v15;

  os_unfair_lock_unlock(&self->_lock);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)_cancelAddressCollectionTimerIfNeeded
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_deferredAddressCollectionTimer)
  {
    v3 = sub_10006515C();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      [(GCDTimer *)self->_deferredAddressCollectionTimer invalidate];
      deferredAddressCollectionTimer = self->_deferredAddressCollectionTimer;
      self->_deferredAddressCollectionTimer = 0;

      goto LABEL_10;
    }

    v4 = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(AddressBookManager *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

    v10 = [(GCDTimer *)self->_deferredAddressCollectionTimer fireDate];
    [v10 timeIntervalSinceNow];
    *buf = 138543618;
    v14 = v9;
    v15 = 2048;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] cancelling previous deferred address collection timer (had %#.1lfs to go)", buf, 0x16u);

    goto LABEL_9;
  }

LABEL_10:
  os_unfair_lock_unlock(&self->_lock);
}

- (AddressBookAddress)meCardSchoolAddress
{
  v2 = [(AddressBookManager *)self allSchoolAddresses];
  v3 = [v2 firstObject];

  return v3;
}

- (NSArray)allSchoolAddresses
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_schoolAddresses allValues];
  v4 = [v3 copy];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (AddressBookAddress)meCardWorkAddress
{
  v2 = [(AddressBookManager *)self allWorkAddresses];
  v3 = [v2 firstObject];

  return v3;
}

- (NSArray)allWorkAddresses
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_workAddresses allValues];
  v4 = [v3 copy];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (AddressBookAddress)meCardHomeAddress
{
  v2 = [(AddressBookManager *)self allHomeAddresses];
  v3 = [v2 firstObject];

  return v3;
}

- (NSArray)allHomeAddresses
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_homeAddresses allValues];
  v4 = [v3 copy];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (id)addressForAddressObject:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v36 = 0;
    goto LABEL_44;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v5 = [(NSDictionary *)self->_homeAddresses allValues];
  v57[0] = v5;
  v6 = [(NSDictionary *)self->_workAddresses allValues];
  v57[1] = v6;
  v40 = self;
  v7 = [(NSDictionary *)self->_schoolAddresses allValues];
  v57[2] = v7;
  v8 = [NSArray arrayWithObjects:v57 count:3];

  v39 = [v8 countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v39)
  {
    v9 = *v47;
    v41 = v8;
    v38 = *v47;
    do
    {
      for (i = 0; i != v39; i = i + 1)
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v46 + 1) + 8 * i);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v42 objects:v56 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v43;
          while (2)
          {
            for (j = 0; j != v14; j = j + 1)
            {
              if (*v43 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v42 + 1) + 8 * j);
              v18 = [v17 geocodedMapItem];

              if (v18)
              {
                v19 = [v17 geocodedMapItem];
                v20 = [v19 _geoMapItem];
                v21 = [v20 addressObject];

                if (v21 && [v21 isEqual:v4])
                {
                  v29 = sub_10006515C();
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                  {
                    v30 = v40;
                    if (v30)
                    {
                      v31 = objc_opt_class();
                      v32 = NSStringFromClass(v31);
                      if ((objc_opt_respondsToSelector() & 1) == 0)
                      {
                        goto LABEL_34;
                      }

                      v33 = [(AddressBookManager *)v30 performSelector:"accessibilityIdentifier"];
                      v34 = v33;
                      if (v33 && ![v33 isEqualToString:v32])
                      {
                        v35 = [NSString stringWithFormat:@"%@<%p, %@>", v32, v30, v34];
                      }

                      else
                      {

LABEL_34:
                        v35 = [NSString stringWithFormat:@"%@<%p>", v32, v30];
                      }
                    }

                    else
                    {
                      v35 = @"<nil>";
                    }

                    *buf = 138543875;
                    v51 = v35;
                    v52 = 2113;
                    v53 = v4;
                    v54 = 2113;
                    v55 = v17;
                    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "[%{public}@] found match for address object %{private}@: %{private}@", buf, 0x20u);
                  }

                  v36 = v17;
                  v22 = v41;
                  goto LABEL_43;
                }
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v42 objects:v56 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v9 = v38;
        v8 = v41;
      }

      v39 = [v41 countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v39);
  }

  v22 = sub_10006515C();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = v40;
    if (!v23)
    {
      v28 = @"<nil>";
      goto LABEL_41;
    }

    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    if (objc_opt_respondsToSelector())
    {
      v26 = [(AddressBookManager *)v23 performSelector:"accessibilityIdentifier"];
      v27 = v26;
      if (v26 && ![v26 isEqualToString:v25])
      {
        v28 = [NSString stringWithFormat:@"%@<%p, %@>", v25, v23, v27];

        goto LABEL_27;
      }
    }

    v28 = [NSString stringWithFormat:@"%@<%p>", v25, v23];
LABEL_27:

LABEL_41:
    *buf = 138543619;
    v51 = v28;
    v52 = 2113;
    v53 = v4;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[%{public}@] no match found for address object %{private}@", buf, 0x16u);
  }

  v36 = 0;
LABEL_43:

LABEL_44:

  return v36;
}

- (id)addressForIdentifier:(id)a3
{
  v4 = a3;
  if (![v4 length])
  {
    v11 = 0;
    goto LABEL_24;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v30 = *&self->_homeAddresses;
  schoolAddresses = self->_schoolAddresses;
  v5 = [NSArray arrayWithObjects:&v30 count:3];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v20 + 1) + 8 * i) objectForKeyedSubscript:v4];
        if (v10)
        {
          v11 = v10;
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v32 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_12:

  v12 = sub_10006515C();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = self;
    if (!v13)
    {
      v18 = @"<nil>";
      goto LABEL_22;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(AddressBookManager *)v13 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17];

        goto LABEL_19;
      }
    }

    v18 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
LABEL_19:

LABEL_22:
    *buf = 138543875;
    v25 = v18;
    v26 = 2113;
    v27 = v4;
    v28 = 2113;
    v29 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}@] found match for %{private}@: %{private}@", buf, 0x20u);
  }

LABEL_24:

  return v11;
}

- (void)_enumerateContactsWithAddress:(id)a3 ofType:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!+[AddressBookManager addressBookAllowed])
  {
    goto LABEL_18;
  }

  v11 = sub_10006515C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = self;
    if (!v12)
    {
      v17 = @"<nil>";
      goto LABEL_11;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(AddressBookManager *)v12 performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ![v15 isEqualToString:v14])
      {
        v17 = [NSString stringWithFormat:@"%@<%p, %@>", v14, v12, v16];

        goto LABEL_9;
      }
    }

    v17 = [NSString stringWithFormat:@"%@<%p>", v14, v12];
LABEL_9:

LABEL_11:
    *buf = 138543875;
    v26 = v17;
    v27 = 2113;
    v28 = v8;
    v29 = 2113;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}@] will enumerate contacts with address %{private}@, type %{private}@...", buf, 0x20u);
  }

  v18 = [CNContactFetchRequest alloc];
  v19 = [(AddressBookManager *)self properties];
  v20 = [v18 initWithKeysToFetch:v19];

  if ([v9 isEqualToString:CNContactEmailAddressesKey])
  {
    v21 = [CNContact predicateForContactsMatchingEmailAddress:v8];
  }

  else if ([v9 isEqualToString:CNContactPhoneNumbersKey])
  {
    v22 = [CNPhoneNumber phoneNumberWithStringValue:v8];
    v21 = [CNContact predicateForContactsMatchingPhoneNumber:v22];
  }

  else
  {
    v21 = 0;
  }

  [v20 setPredicate:v21];
  [v20 setSortOrder:1];
  v23 = [(AddressBookManager *)self contactStore];
  v24 = 0;
  [v23 enumerateContactsWithFetchRequest:v20 error:&v24 usingBlock:v10];

LABEL_18:
}

- (id)spokenContactNameForAddress:(id)a3 ofType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10076EBBC;
  v23 = sub_10076EBCC;
  v24 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10076EBD4;
  v18[3] = &unk_101628700;
  v18[4] = &v19;
  [(AddressBookManager *)self _enumerateContactsWithAddress:v6 ofType:v7 handler:v18];
  v8 = sub_10006515C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = self;
    if (!v9)
    {
      v14 = @"<nil>";
      goto LABEL_10;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(AddressBookManager *)v9 performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ([v12 isEqualToString:v11] & 1) == 0)
      {
        v14 = [NSString stringWithFormat:@"%@<%p, %@>", v11, v9, v13];

        goto LABEL_8;
      }
    }

    v14 = [NSString stringWithFormat:@"%@<%p>", v11, v9];
LABEL_8:

LABEL_10:
    v15 = v20[5];
    *buf = 138544131;
    v26 = v14;
    v27 = 2113;
    v28 = v15;
    v29 = 2113;
    v30 = v6;
    v31 = 2113;
    v32 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}@] resolved spoken name %{private}@ for address %{private}@, type %{private}@", buf, 0x2Au);
  }

  v16 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v16;
}

- (id)senderNameForAddress:(id)a3 ofType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10076EBBC;
  v23 = sub_10076EBCC;
  v24 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10076EED8;
  v18[3] = &unk_101628700;
  v18[4] = &v19;
  [(AddressBookManager *)self _enumerateContactsWithAddress:v6 ofType:v7 handler:v18];
  v8 = sub_10006515C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = self;
    if (!v9)
    {
      v14 = @"<nil>";
      goto LABEL_10;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(AddressBookManager *)v9 performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ([v12 isEqualToString:v11] & 1) == 0)
      {
        v14 = [NSString stringWithFormat:@"%@<%p, %@>", v11, v9, v13];

        goto LABEL_8;
      }
    }

    v14 = [NSString stringWithFormat:@"%@<%p>", v11, v9];
LABEL_8:

LABEL_10:
    v15 = v20[5];
    *buf = 138544131;
    v26 = v14;
    v27 = 2113;
    v28 = v15;
    v29 = 2113;
    v30 = v6;
    v31 = 2113;
    v32 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}@] resolved sender name %{private}@ for address %{private}@, type %{private}@", buf, 0x2Au);
  }

  v16 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v16;
}

- (id)_contactWithCacheIdentifier:(id)a3 predicate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (+[AddressBookManager addressBookAllowed])
    {
      *v57 = 0;
      *&v57[8] = v57;
      *&v57[16] = 0x3032000000;
      *&v58 = sub_10076EBBC;
      *(&v58 + 1) = sub_10076EBCC;
      v59 = 0;
      os_unfair_lock_lock(&self->_lock);
      if (v6)
      {
        v8 = [(NSMutableDictionary *)self->_contactCache objectForKeyedSubscript:v6];
        v9 = *(*&v57[8] + 40);
        *(*&v57[8] + 40) = v8;
      }

      os_unfair_lock_unlock(&self->_lock);
      v10 = *(*&v57[8] + 40);
      v11 = sub_10006515C();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
      if (v10)
      {
        if (!v12)
        {
LABEL_24:

          v25 = *(*&v57[8] + 40);
LABEL_53:
          _Block_object_dispose(v57, 8);

          goto LABEL_65;
        }

        v13 = self;
        if (!v13)
        {
          v18 = @"<nil>";
          goto LABEL_23;
        }

        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        if (objc_opt_respondsToSelector())
        {
          v16 = [(AddressBookManager *)v13 performSelector:"accessibilityIdentifier"];
          v17 = v16;
          if (v16 && ([v16 isEqualToString:v15] & 1) == 0)
          {
            v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17];

            goto LABEL_13;
          }
        }

        v18 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
LABEL_13:

LABEL_23:
        *buf = 138543618;
        v54 = v18;
        v55 = 2114;
        v56 = v6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}@] fetched cached contact with identifier %{public}@", buf, 0x16u);

        goto LABEL_24;
      }

      if (!v12)
      {
LABEL_27:

        v26 = [CNContactFetchRequest alloc];
        v27 = [(AddressBookManager *)self properties];
        v28 = [v26 initWithKeysToFetch:v27];

        [v28 setPredicate:v7];
        [v28 setSortOrder:1];
        v29 = [(AddressBookManager *)self contactStore];
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_10076F758;
        v51[3] = &unk_101628700;
        v51[4] = v57;
        v52 = 0;
        [v29 enumerateContactsWithFetchRequest:v28 error:&v52 usingBlock:v51];
        v30 = v52;

        v31 = *(*&v57[8] + 40);
        v32 = sub_10006515C();
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_INFO);
        v34 = v6 == 0;
        if (!v31)
        {
          v34 = 1;
        }

        if (!v34)
        {
          if (!v33)
          {
LABEL_48:

            os_unfair_lock_lock(&self->_lock);
            [(NSMutableDictionary *)self->_contactCache setObject:*(*&v57[8] + 40) forKeyedSubscript:v6];
            os_unfair_lock_unlock(&self->_lock);
LABEL_52:
            v25 = *(*&v57[8] + 40);

            goto LABEL_53;
          }

          v35 = self;
          if (!v35)
          {
            v40 = @"<nil>";
            goto LABEL_47;
          }

          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          if (objc_opt_respondsToSelector())
          {
            v38 = [(AddressBookManager *)v35 performSelector:"accessibilityIdentifier"];
            v39 = v38;
            if (v38 && ([v38 isEqualToString:v37] & 1) == 0)
            {
              v40 = [NSString stringWithFormat:@"%@<%p, %@>", v37, v35, v39];

              goto LABEL_37;
            }
          }

          v40 = [NSString stringWithFormat:@"%@<%p>", v37, v35];
LABEL_37:

LABEL_47:
          *buf = 138543618;
          v54 = v40;
          v55 = 2114;
          v56 = v6;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "[%{public}@] will cache contact with identifier %{public}@", buf, 0x16u);

          goto LABEL_48;
        }

        if (!v33)
        {
LABEL_51:

          goto LABEL_52;
        }

        v41 = self;
        if (!v41)
        {
          v46 = @"<nil>";
          goto LABEL_50;
        }

        v42 = objc_opt_class();
        v43 = NSStringFromClass(v42);
        if (objc_opt_respondsToSelector())
        {
          v44 = [(AddressBookManager *)v41 performSelector:"accessibilityIdentifier"];
          v45 = v44;
          if (v44 && ([v44 isEqualToString:v43] & 1) == 0)
          {
            v46 = [NSString stringWithFormat:@"%@<%p, %@>", v43, v41, v45];

            goto LABEL_45;
          }
        }

        v46 = [NSString stringWithFormat:@"%@<%p>", v43, v41];
LABEL_45:

LABEL_50:
        *buf = 138543618;
        v54 = v46;
        v55 = 2114;
        v56 = v6;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "[%{public}@] no contact found for identifier %{public}@", buf, 0x16u);

        goto LABEL_51;
      }

      v19 = self;
      if (!v19)
      {
        v24 = @"<nil>";
        goto LABEL_26;
      }

      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      if (objc_opt_respondsToSelector())
      {
        v22 = [(AddressBookManager *)v19 performSelector:"accessibilityIdentifier"];
        v23 = v22;
        if (v22 && ([v22 isEqualToString:v21] & 1) == 0)
        {
          v24 = [NSString stringWithFormat:@"%@<%p, %@>", v21, v19, v23];

          goto LABEL_21;
        }
      }

      v24 = [NSString stringWithFormat:@"%@<%p>", v21, v19];
LABEL_21:

LABEL_26:
      *buf = 138543618;
      v54 = v24;
      v55 = 2114;
      v56 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}@] need to fetch uncached contact with identifier %{public}@", buf, 0x16u);

      goto LABEL_27;
    }
  }

  else
  {
    v47 = sub_10006D178();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *v57 = 136315906;
      *&v57[4] = "[AddressBookManager _contactWithCacheIdentifier:predicate:]";
      *&v57[12] = 2080;
      *&v57[14] = "AddressBookAddress.m";
      *&v57[22] = 1024;
      LODWORD(v58) = 644;
      WORD2(v58) = 2080;
      *(&v58 + 6) = "predicate";
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", v57, 0x26u);
    }

    if (sub_100E03634())
    {
      v48 = sub_10006D178();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = +[NSThread callStackSymbols];
        *v57 = 138412290;
        *&v57[4] = v49;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%@", v57, 0xCu);
      }
    }
  }

  v25 = 0;
LABEL_65:

  return v25;
}

- (id)contactWithPhoneNumber:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v16 = sub_10006D178();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v20 = "[AddressBookManager contactWithPhoneNumber:]";
      v21 = 2080;
      v22 = "AddressBookAddress.m";
      v23 = 1024;
      v24 = 633;
      v25 = 2080;
      v26 = "phoneNumber";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v17 = sub_10006D178();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v20 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (![v4 length])
  {
    v12 = 0;
    goto LABEL_15;
  }

  v5 = sub_10006515C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_13;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(AddressBookManager *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_10;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_10:

LABEL_13:
    *buf = 138543619;
    v20 = v11;
    v21 = 2113;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] will fetch contact for phone %{private}@", buf, 0x16u);
  }

  v13 = [CNPhoneNumber phoneNumberWithStringValue:v4];
  v14 = [CNContact predicateForContactsMatchingPhoneNumber:v13];
  v12 = [(AddressBookManager *)self _contactWithCacheIdentifier:v4 predicate:v14];

LABEL_15:

  return v12;
}

- (id)contactWithEmailAddress:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v15 = sub_10006D178();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v19 = "[AddressBookManager contactWithEmailAddress:]";
      v20 = 2080;
      v21 = "AddressBookAddress.m";
      v22 = 1024;
      v23 = 622;
      v24 = 2080;
      v25 = "emailAddress";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v16 = sub_10006D178();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v19 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (![v4 length])
  {
    v12 = 0;
    goto LABEL_15;
  }

  v5 = sub_10006515C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_13;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(AddressBookManager *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_10;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_10:

LABEL_13:
    *buf = 138543619;
    v19 = v11;
    v20 = 2113;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] will fetch contact for email %{private}@", buf, 0x16u);
  }

  v13 = [CNContact predicateForContactsMatchingEmailAddress:v4];
  v12 = [(AddressBookManager *)self _contactWithCacheIdentifier:v4 predicate:v13];

LABEL_15:

  return v12;
}

- (id)contactForCNContactIdentifier:(id)a3
{
  v4 = a3;
  if (![v4 length])
  {
    v12 = 0;
    goto LABEL_14;
  }

  v5 = sub_10006515C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_12;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(AddressBookManager *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_9;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_9:

LABEL_12:
    *buf = 138543618;
    v18 = v11;
    v19 = 2114;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] will fetch contact identifier %{public}@", buf, 0x16u);
  }

  v16 = v4;
  v13 = [NSArray arrayWithObjects:&v16 count:1];
  v14 = [CNContact predicateForContactsWithIdentifiers:v13];
  v12 = [(AddressBookManager *)self _contactWithCacheIdentifier:v4 predicate:v14];

LABEL_14:

  return v12;
}

- (id)contactForRecordId:(int)a3
{
  v3 = *&a3;
  if (!+[AddressBookManager addressBookAllowed])
  {
    v12 = 0;
    goto LABEL_32;
  }

  v5 = sub_10006515C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_12;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(AddressBookManager *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_9;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_9:

LABEL_12:
    *buf = 138543618;
    *&buf[4] = v11;
    *&buf[12] = 2048;
    *&buf[14] = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] will fetch contact for record: %ld...", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v47 = sub_10076EBBC;
  v48 = sub_10076EBCC;
  v49 = 0;
  v13 = [CNContactFetchRequest alloc];
  v14 = +[AddressBookManager sharedManager];
  v15 = [v14 properties];
  v16 = [v13 initWithKeysToFetch:v15];

  v17 = [CNContact predicateForLegacyIdentifier:v3];
  [v16 setPredicate:v17];

  [v16 setSortOrder:1];
  v18 = [(AddressBookManager *)self contactStore];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100770528;
  v36[3] = &unk_101628700;
  v36[4] = buf;
  v37 = 0;
  [v18 enumerateContactsWithFetchRequest:v16 error:&v37 usingBlock:v36];
  v19 = v37;

  v20 = sub_10006515C();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = self;
    if (!v21)
    {
      v26 = @"<nil>";
LABEL_22:

      v27 = v26;
      v28 = *(*&buf[8] + 40);
      if (!v28)
      {
        v33 = @"<nil>";
        goto LABEL_30;
      }

      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      if (objc_opt_respondsToSelector())
      {
        v31 = [v28 performSelector:"accessibilityIdentifier"];
        v32 = v31;
        if (v31 && ([v31 isEqualToString:v30] & 1) == 0)
        {
          v33 = [NSString stringWithFormat:@"%@<%p, %@>", v30, v28, v32];

          goto LABEL_28;
        }
      }

      v33 = [NSString stringWithFormat:@"%@<%p>", v30, v28];
LABEL_28:

LABEL_30:
      v34 = *(*&buf[8] + 40);
      *v38 = 138544131;
      v39 = v27;
      v40 = 2114;
      v41 = v33;
      v42 = 2048;
      v43 = v3;
      v44 = 2113;
      v45 = v34;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}@] ... found record %{public}@ for id %ld: %{private}@ ", v38, 0x2Au);

      goto LABEL_31;
    }

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    if (objc_opt_respondsToSelector())
    {
      v24 = [(AddressBookManager *)v21 performSelector:"accessibilityIdentifier"];
      v25 = v24;
      if (v24 && ([v24 isEqualToString:v23] & 1) == 0)
      {
        v26 = [NSString stringWithFormat:@"%@<%p, %@>", v23, v21, v25];

        goto LABEL_20;
      }
    }

    v26 = [NSString stringWithFormat:@"%@<%p>", v23, v21];
LABEL_20:

    goto LABEL_22;
  }

LABEL_31:

  v12 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

LABEL_32:

  return v12;
}

- (id)mapItemFormShortcutForCNIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(AddressBookManager *)self msgCorrectedMapItemProvider];
    v6 = [v5 mapItemFormShortcutForCNIdentifier:v4];

    if (v6)
    {
      v7 = [[MKMapItem alloc] initWithGeoMapItem:v6 isPlaceHolderPlace:0];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)collectAddresses
{
  v3 = sub_10006515C();
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    goto LABEL_11;
  }

  v4 = self;
  if (!v4)
  {
    v9 = @"<nil>";
    goto LABEL_10;
  }

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (objc_opt_respondsToSelector())
  {
    v7 = [(AddressBookManager *)v4 performSelector:"accessibilityIdentifier"];
    v8 = v7;
    if (v7 && ![v7 isEqualToString:v6])
    {
      v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

      goto LABEL_8;
    }
  }

  v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
  *buf = 138543362;
  v163 = v9;
  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] will collect address...", buf, 0xCu);

LABEL_11:
  [(AddressBookManager *)self _cancelAddressCollectionTimerIfNeeded];
  if (+[AddressBookManager addressBookAllowed])
  {
    v10 = [(AddressBookManager *)self contactStore];
    v11 = [(AddressBookManager *)self properties];
    v156 = 0;
    v12 = [v10 _ios_meContactWithKeysToFetch:v11 error:&v156];
    v138 = v156;
  }

  else
  {
    v12 = 0;
    v138 = 0;
  }

  v146 = objc_alloc_init(NSMutableDictionary);
  v144 = objc_alloc_init(NSMutableDictionary);
  v141 = objc_alloc_init(NSMutableDictionary);
  v139 = self;
  v140 = objc_alloc_init(NSMutableDictionary);
  v13 = v12;
  v143 = v12;
  if (v12)
  {
    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v14 = [v12 postalAddresses];
    v15 = [v14 countByEnumeratingWithState:&v152 objects:v161 count:16];
    if (!v15)
    {
      goto LABEL_34;
    }

    v16 = v15;
    v17 = *v153;
    while (1)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v153 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v152 + 1) + 8 * i);
        v20 = [[AddressBookAddress alloc] initWithContact:v13 addressValue:v19];
        [(AddressBookAddress *)v20 _setSuppressStoreUpdateNotifications:1];
        if (v20)
        {
          v21 = [(AddressBookAddress *)v20 addressValue];
          v22 = [v21 identifier];

          if (v22)
          {
            v23 = [v19 label];
            v24 = [v23 isEqualToString:CNLabelHome];

            if (v24)
            {
              v25 = [(AddressBookAddress *)v20 addressValue];
              v26 = [v25 identifier];
              v27 = v146;
              goto LABEL_26;
            }

            v28 = [v19 label];
            v29 = [v28 isEqualToString:CNLabelWork];

            if (v29)
            {
              v25 = [(AddressBookAddress *)v20 addressValue];
              v26 = [v25 identifier];
              v27 = v144;
LABEL_26:
              [v27 setObject:v20 forKey:v26];
            }

            else
            {
              v30 = [v19 label];
              v31 = [v30 isEqualToString:CNLabelSchool];

              v25 = [(AddressBookAddress *)v20 addressValue];
              v26 = [v25 identifier];
              if (v31)
              {
                v32 = v141;
              }

              else
              {
                v32 = v140;
              }

              [v32 setObject:v20 forKey:v26];
              v13 = v143;
            }
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v152 objects:v161 count:16];
      if (!v16)
      {
LABEL_34:

        self = v139;
        break;
      }
    }
  }

  os_unfair_lock_lock(&self->_lock);
  v33 = sub_10006515C();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    log = v33;
    v34 = self;
    if (!v34)
    {
      v39 = @"<nil>";
      goto LABEL_44;
    }

    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    if (objc_opt_respondsToSelector())
    {
      v37 = [(AddressBookManager *)v34 performSelector:"accessibilityIdentifier"];
      v38 = v37;
      if (v37 && ![v37 isEqualToString:v36])
      {
        v39 = [NSString stringWithFormat:@"%@<%p, %@>", v36, v34, v38];

        goto LABEL_42;
      }
    }

    v39 = [NSString stringWithFormat:@"%@<%p>", v36, v34];
LABEL_42:

LABEL_44:
    v142 = v39;
    v137 = [v146 count];
    v40 = v146;
    v41 = v40;
    if (v40)
    {
      v42 = [v40 count];
      if (v42)
      {
        v43 = [[NSMutableArray alloc] initWithCapacity:v42];
        v157 = 0u;
        v158 = 0u;
        v159 = 0u;
        v160 = 0u;
        v44 = [v41 allKeys];
        v45 = [v44 sortedArrayUsingSelector:"compare:"];

        obj = v45;
        v46 = [v45 countByEnumeratingWithState:&v157 objects:buf count:16];
        if (v46)
        {
          v47 = v46;
          v48 = *v158;
          do
          {
            for (j = 0; j != v47; j = j + 1)
            {
              if (*v158 != v48)
              {
                objc_enumerationMutation(obj);
              }

              v50 = *(*(&v157 + 1) + 8 * j);
              v51 = [NSString alloc];
              v52 = [v41 objectForKeyedSubscript:v50];
              v53 = [v51 initWithFormat:@"%@: %@", v50, v52];
              [v43 addObject:v53];
            }

            v47 = [obj countByEnumeratingWithState:&v157 objects:buf count:16];
          }

          while (v47);
        }

        v54 = [v43 componentsJoinedByString:{@", "}];
        v55 = [NSString stringWithFormat:@"<%p> {%@}", v41, v54];

        self = v139;
      }

      else
      {
        v55 = [NSString stringWithFormat:@"<%p> (empty)", v41];
      }
    }

    else
    {
      v55 = @"<nil>";
    }

    v136 = v55;
    v135 = [v144 count];
    v56 = v144;
    v57 = v56;
    if (v56)
    {
      v58 = [v56 count];
      if (v58)
      {
        v59 = [[NSMutableArray alloc] initWithCapacity:v58];
        v157 = 0u;
        v158 = 0u;
        v159 = 0u;
        v160 = 0u;
        v60 = [v57 allKeys];
        v61 = [v60 sortedArrayUsingSelector:"compare:"];

        obja = v61;
        v62 = [v61 countByEnumeratingWithState:&v157 objects:buf count:16];
        if (v62)
        {
          v63 = v62;
          v64 = *v158;
          do
          {
            for (k = 0; k != v63; k = k + 1)
            {
              if (*v158 != v64)
              {
                objc_enumerationMutation(obja);
              }

              v66 = *(*(&v157 + 1) + 8 * k);
              v67 = [NSString alloc];
              v68 = [v57 objectForKeyedSubscript:v66];
              v69 = [v67 initWithFormat:@"%@: %@", v66, v68];
              [v59 addObject:v69];
            }

            v63 = [obja countByEnumeratingWithState:&v157 objects:buf count:16];
          }

          while (v63);
        }

        v70 = [v59 componentsJoinedByString:{@", "}];
        v71 = [NSString stringWithFormat:@"<%p> {%@}", v57, v70];

        self = v139;
      }

      else
      {
        v71 = [NSString stringWithFormat:@"<%p> (empty)", v57];
      }
    }

    else
    {
      v71 = @"<nil>";
    }

    v72 = v71;
    v73 = [v141 count];
    v74 = v141;
    v75 = v74;
    if (v74)
    {
      v76 = [v74 count];
      if (v76)
      {
        v131 = v73;
        v133 = v72;
        v77 = [[NSMutableArray alloc] initWithCapacity:v76];
        v157 = 0u;
        v158 = 0u;
        v159 = 0u;
        v160 = 0u;
        v78 = v75;
        v79 = [v75 allKeys];
        v80 = [v79 sortedArrayUsingSelector:"compare:"];

        objb = v80;
        v81 = [v80 countByEnumeratingWithState:&v157 objects:buf count:16];
        if (v81)
        {
          v82 = v81;
          v83 = *v158;
          do
          {
            for (m = 0; m != v82; m = m + 1)
            {
              if (*v158 != v83)
              {
                objc_enumerationMutation(objb);
              }

              v85 = *(*(&v157 + 1) + 8 * m);
              v86 = [NSString alloc];
              v87 = [v78 objectForKeyedSubscript:v85];
              v88 = [v86 initWithFormat:@"%@: %@", v85, v87];
              [v77 addObject:v88];
            }

            v82 = [objb countByEnumeratingWithState:&v157 objects:buf count:16];
          }

          while (v82);
        }

        v89 = [v77 componentsJoinedByString:{@", "}];
        v75 = v78;
        v90 = [NSString stringWithFormat:@"<%p> {%@}", v78, v89];

        self = v139;
        v73 = v131;
        v72 = v133;
      }

      else
      {
        v90 = [NSString stringWithFormat:@"<%p> (empty)", v75];
      }
    }

    else
    {
      v90 = @"<nil>";
    }

    v91 = v90;
    v92 = [v140 count];
    v93 = v140;
    v94 = v93;
    if (v93)
    {
      v95 = [v93 count];
      if (v95)
      {
        v130 = v92;
        v132 = v73;
        v134 = v72;
        v96 = [[NSMutableArray alloc] initWithCapacity:v95];
        v157 = 0u;
        v158 = 0u;
        v159 = 0u;
        v160 = 0u;
        v97 = v94;
        v98 = [v94 allKeys];
        v99 = [v98 sortedArrayUsingSelector:"compare:"];

        objc = v99;
        v100 = [v99 countByEnumeratingWithState:&v157 objects:buf count:16];
        if (v100)
        {
          v101 = v100;
          v102 = *v158;
          do
          {
            for (n = 0; n != v101; n = n + 1)
            {
              if (*v158 != v102)
              {
                objc_enumerationMutation(objc);
              }

              v104 = *(*(&v157 + 1) + 8 * n);
              v105 = [NSString alloc];
              v106 = [v97 objectForKeyedSubscript:v104];
              v107 = [v105 initWithFormat:@"%@: %@", v104, v106];
              [v96 addObject:v107];
            }

            v101 = [objc countByEnumeratingWithState:&v157 objects:buf count:16];
          }

          while (v101);
        }

        v108 = [v96 componentsJoinedByString:{@", "}];
        v94 = v97;
        v109 = [NSString stringWithFormat:@"<%p> {%@}", v97, v108];

        self = v139;
        v73 = v132;
        v72 = v134;
        v92 = v130;
      }

      else
      {
        v109 = [NSString stringWithFormat:@"<%p> (empty)", v94];
      }
    }

    else
    {
      v109 = @"<nil>";
    }

    *buf = 138545410;
    v163 = v142;
    v164 = 2048;
    v165 = v137;
    v166 = 2114;
    v167 = v136;
    v168 = 2048;
    v169 = v135;
    v170 = 2114;
    v171 = v72;
    v172 = 2048;
    v173 = v73;
    v174 = 2114;
    v175 = v91;
    v176 = 2048;
    v177 = v92;
    v178 = 2114;
    v179 = v109;
    v33 = log;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "[%{public}@] storing addresses:\n\t%lu Home: %{public}@\n\t%lu Work: %{public}@\n\t%lu School: %{public}@\n\t%lu Other: %{public}@", buf, 0x5Cu);

    v13 = v143;
  }

  objc_storeStrong(&self->_meCard, v13);
  v110 = self->_homeAddresses;
  v111 = self->_workAddresses;
  v112 = self->_schoolAddresses;
  v113 = self->_otherAddresses;
  v114 = [v146 copy];
  homeAddresses = self->_homeAddresses;
  self->_homeAddresses = v114;

  v116 = [v144 copy];
  workAddresses = self->_workAddresses;
  self->_workAddresses = v116;

  v118 = [v141 copy];
  schoolAddresses = self->_schoolAddresses;
  self->_schoolAddresses = v118;

  v120 = [v140 copy];
  otherAddresses = self->_otherAddresses;
  self->_otherAddresses = v120;

  os_unfair_lock_unlock(&self->_lock);
  sub_1007715F0(v110);
  sub_1007715F0(v111);
  sub_1007715F0(v112);
  sub_1007715F0(v113);
  if (self->_collectGroup)
  {
    v122 = sub_10006515C();
    if (!os_log_type_enabled(v122, OS_LOG_TYPE_INFO))
    {
LABEL_101:

      dispatch_group_leave(self->_collectGroup);
      collectGroup = self->_collectGroup;
      self->_collectGroup = 0;

      v13 = v143;
      goto LABEL_102;
    }

    v123 = self;
    v124 = objc_opt_class();
    v125 = NSStringFromClass(v124);
    if (objc_opt_respondsToSelector())
    {
      v126 = [(AddressBookManager *)v123 performSelector:"accessibilityIdentifier"];
      v127 = v126;
      if (v126 && ![v126 isEqualToString:v125])
      {
        v128 = [NSString stringWithFormat:@"%@<%p, %@>", v125, v123, v127];

        goto LABEL_100;
      }
    }

    v128 = [NSString stringWithFormat:@"%@<%p>", v125, v123];
LABEL_100:

    *buf = 138543362;
    v163 = v128;
    _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_INFO, "[%{public}@] completed first address collection", buf, 0xCu);

    self = v139;
    goto LABEL_101;
  }

LABEL_102:
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007716E0;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (NSArray)allOtherAddresses
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_otherAddresses allValues];
  v4 = [v3 copy];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)updateContact:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_contactStoreQueue);
  objc_initWeak(&location, self);
  contactStoreQueue = self->_contactStoreQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100776B58;
  v11[3] = &unk_10165DEA0;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  dispatch_async(contactStoreQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)createMeCardWithContact:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_contactStoreQueue);
  objc_initWeak(&location, self);
  contactStoreQueue = self->_contactStoreQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1007770C4;
  v11[3] = &unk_10165DEA0;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  dispatch_async(contactStoreQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (NSURL)meCardPunchOutURL
{
  if (self->_meCard)
  {
    v3 = [NSURL URLWithString:@"contact://show?ref=me"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)properties
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10077791C;
  block[3] = &unk_101661B18;
  block[4] = self;
  if (qword_10195D1A0 != -1)
  {
    dispatch_once(&qword_10195D1A0, block);
  }

  return qword_10195D198;
}

- (CNContactStore)contactStore
{
  os_unfair_lock_lock(&self->_lock);
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = sub_10006515C();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      v11 = objc_alloc_init(CNContactStore);
      v12 = self->_contactStore;
      self->_contactStore = v11;

      contactStore = self->_contactStore;
      goto LABEL_10;
    }

    v5 = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(AddressBookManager *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_8;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_8:

    *buf = 138543362;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] initialising CNContactStore", buf, 0xCu);

    goto LABEL_9;
  }

LABEL_10:
  v13 = contactStore;
  os_unfair_lock_unlock(&self->_lock);

  return v13;
}

- (void)_deferredAddressCollectionTimerFired:(id)a3
{
  contactStoreQueue = self->_contactStoreQueue;
  v5 = a3;
  dispatch_assert_queue_V2(contactStoreQueue);
  os_unfair_lock_lock(&self->_lock);
  deferredAddressCollectionTimer = self->_deferredAddressCollectionTimer;

  if (deferredAddressCollectionTimer == v5)
  {
    self->_deferredAddressCollectionTimer = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  [(AddressBookManager *)self collectAddresses];
}

- (void)_updateStoreWithCoalescing:(BOOL)a3
{
  v3 = a3;
  v5 = sub_10006515C();
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    goto LABEL_13;
  }

  v6 = self;
  if (!v6)
  {
    v11 = @"<nil>";
    goto LABEL_10;
  }

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  if (objc_opt_respondsToSelector())
  {
    v9 = [(AddressBookManager *)v6 performSelector:"accessibilityIdentifier"];
    v10 = v9;
    if (v9 && ![v9 isEqualToString:v8])
    {
      v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

      goto LABEL_8;
    }
  }

  v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
  v12 = @"NO";
  if (v3)
  {
    v12 = @"YES";
  }

  v13 = v12;
  *buf = 138543618;
  v17 = v11;
  v18 = 2114;
  v19 = v13;
  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] updateStoreWithCoalescing: %{public}@", buf, 0x16u);

LABEL_13:
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_contactCache removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    [(AddressBookManager *)self setNeedsAddressCollection];
  }

  else
  {
    contactStoreQueue = self->_contactStoreQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100778100;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(contactStoreQueue, block);
  }
}

- (void)updateStoreImmediately:(id)a3
{
  v4 = a3;
  v5 = sub_10006515C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(AddressBookManager *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    v12 = [v4 name];
    *buf = 138543618;
    v14 = v11;
    v15 = 2114;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] received notification %{public}@", buf, 0x16u);
  }

  [(AddressBookManager *)self _updateStoreWithCoalescing:0];
}

- (void)updateStore:(id)a3
{
  v4 = a3;
  v5 = sub_10006515C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(AddressBookManager *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    v12 = [v4 name];
    *buf = 138543618;
    v14 = v11;
    v15 = 2114;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] received notification %{public}@", buf, 0x16u);
  }

  [(AddressBookManager *)self _updateStoreWithCoalescing:1];
}

- (MapsSuggestionsCorrectedMapItemProvider)msgCorrectedMapItemProvider
{
  v2 = self;
  objc_sync_enter(v2);
  msgCorrectedMapItemProvider = v2->_msgCorrectedMapItemProvider;
  if (!msgCorrectedMapItemProvider)
  {
    v4 = sub_10006515C();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      v11 = MapsSuggestionsResourceDepotForMapsProcess();
      v12 = [v11 oneFavorites];
      shortcutManager = v2->_shortcutManager;
      v2->_shortcutManager = v12;

      objc_initWeak(buf, v2);
      v14 = [MapsSuggestionsCorrectedMapItemProvider alloc];
      v15 = v2->_shortcutManager;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100778728;
      v20[3] = &unk_101661B98;
      objc_copyWeak(&v21, buf);
      v16 = [v14 initWithMeCardReader:v15 handler:v20];
      v17 = v2->_msgCorrectedMapItemProvider;
      v2->_msgCorrectedMapItemProvider = v16;

      objc_destroyWeak(&v21);
      objc_destroyWeak(buf);
      msgCorrectedMapItemProvider = v2->_msgCorrectedMapItemProvider;
      goto LABEL_10;
    }

    v5 = v2;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(AddressBookManager *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ([v8 isEqualToString:v7] & 1) == 0)
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_8;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_8:

    *buf = 138543362;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] initialising corrected map item provider", buf, 0xCu);

    goto LABEL_9;
  }

LABEL_10:
  v18 = msgCorrectedMapItemProvider;
  objc_sync_exit(v2);

  return v18;
}

- (void)performBlockAfterFirstCollection:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = self->_collectGroup;
    os_unfair_lock_unlock(&self->_lock);
    if (!v5)
    {
      v4[2](v4);
      goto LABEL_12;
    }

    v6 = sub_10006515C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
LABEL_10:

      dispatch_group_notify(v5, &_dispatch_main_q, v4);
LABEL_12:

      goto LABEL_13;
    }

    v7 = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(AddressBookManager *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_9;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_9:

    *buf = 138543362;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] scheduling post-collection block", buf, 0xCu);

    goto LABEL_10;
  }

LABEL_13:
}

- (BOOL)shouldAllowMeCardWrites
{
  v3 = [(AddressBookManager *)self meCard];

  if (v3)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = [(AddressBookManager *)self contactStore];
    v4 = [v5 defaultContainerIdentifier];

    if (v4)
    {
      v6 = [(AddressBookManager *)self contactStore];
      v7 = [v6 defaultContainerIdentifier];
      v16 = v7;
      v8 = [NSArray arrayWithObjects:&v16 count:1];
      v9 = [CNContainer predicateForContainersWithIdentifiers:v8];

      v10 = [(AddressBookManager *)self contactStore];
      v11 = [v10 containersMatchingPredicate:v9 error:0];
      v12 = [v11 firstObject];

      v13 = [v12 type];
      if (v13 >= 3)
      {
        v14 = [v12 lastSyncDate];
        LOBYTE(v4) = v14 != 0;
      }

      else
      {
        LOBYTE(v4) = v13;
      }
    }
  }

  return v4 & 1;
}

@end