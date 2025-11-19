@interface MSPSharedTripContact
+ (id)_maps_contactsMatchingQuery:(id)a3;
+ (id)contactValueFromSuggestionsContact:(id)a3;
+ (id)contactValuesFromSuggestionsContacts:(id)a3;
+ (void)_maps_prepareForFirstUse;
- (id)suggestionContactValue;
@end

@implementation MSPSharedTripContact

+ (void)_maps_prepareForFirstUse
{
  if (qword_10195E7B8 != -1)
  {
    dispatch_once(&qword_10195E7B8, &stru_10163A9E8);
  }
}

- (id)suggestionContactValue
{
  v3 = [MapsSuggestionsContact alloc];
  v4 = [(MSPSharedTripContact *)self stringValue];
  v5 = [v3 initWithHandleValue:v4];

  return v5;
}

+ (id)contactValuesFromSuggestionsContacts:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [MSPSharedTripContact contactValueFromSuggestionsContact:*(*(&v13 + 1) + 8 * i), v13];
          if (v10)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v11 = [v4 copy];
  }

  else
  {
    v11 = &__NSArray0__struct;
  }

  return v11;
}

+ (id)contactValueFromSuggestionsContact:(id)a3
{
  v3 = a3;
  v4 = [MSPSharedTripContact alloc];
  v5 = [v3 handleValue];

  v6 = [v4 initWithContactHandle:v5];

  return v6;
}

+ (id)_maps_contactsMatchingQuery:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CNContactStore);
  v6 = [CNContactFetchRequest alloc];
  v7 = +[AddressBookManager sharedManager];
  v8 = [v7 properties];
  v9 = [v6 initWithKeysToFetch:v8];

  v10 = [CNContact predicateForContactsMatchingName:v4];

  [v9 setPredicate:v10];
  [v9 setSortOrder:1];
  v43 = 0;
  v37 = _NSConcreteStackBlock;
  v38 = 3221225472;
  v39 = sub_100D3135C;
  v40 = &unk_101651B28;
  v11 = objc_alloc_init(NSMutableArray);
  v41 = v11;
  v42 = a1;
  [v5 enumerateContactsWithFetchRequest:v9 error:&v43 usingBlock:&v37];
  v12 = v43;
  if (v12)
  {
    v13 = sub_1000946AC();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_12:

      goto LABEL_13;
    }

    v14 = a1;
    if (!v14)
    {
      v19 = @"<nil>";
      goto LABEL_11;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [v14 performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18, v37, v38, v39, v40];

        goto LABEL_9;
      }
    }

    v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_9:

LABEL_11:
    *buf = 138543618;
    v45 = v19;
    v46 = 2112;
    v47 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%{public}@] [ContactFetching] error searching for contacts: %@", buf, 0x16u);

    goto LABEL_12;
  }

LABEL_13:
  v20 = [v11 count];
  v21 = sub_1000946AC();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
  if (v20)
  {
    if (!v22)
    {
LABEL_32:

      v35 = [v11 copy];
      goto LABEL_36;
    }

    v23 = a1;
    if (!v23)
    {
      v28 = @"<nil>";
      goto LABEL_31;
    }

    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    if (objc_opt_respondsToSelector())
    {
      v26 = [v23 performSelector:"accessibilityIdentifier"];
      v27 = v26;
      if (v26 && ![v26 isEqualToString:v25])
      {
        v28 = [NSString stringWithFormat:@"%@<%p, %@>", v25, v23, v27];

        goto LABEL_21;
      }
    }

    v28 = [NSString stringWithFormat:@"%@<%p>", v25, v23];
LABEL_21:

LABEL_31:
    *buf = 138543618;
    v45 = v28;
    v46 = 2112;
    v47 = v11;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}@] [ContactFetching] found %@", buf, 0x16u);

    goto LABEL_32;
  }

  if (v22)
  {
    v29 = a1;
    if (!v29)
    {
      v34 = @"<nil>";
      goto LABEL_34;
    }

    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    if (objc_opt_respondsToSelector())
    {
      v32 = [v29 performSelector:"accessibilityIdentifier"];
      v33 = v32;
      if (v32 && ![v32 isEqualToString:v31])
      {
        v34 = [NSString stringWithFormat:@"%@<%p, %@>", v31, v29, v33];

        goto LABEL_29;
      }
    }

    v34 = [NSString stringWithFormat:@"%@<%p>", v31, v29];
LABEL_29:

LABEL_34:
    *buf = 138543362;
    v45 = v34;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}@] [ContactFetching] no match found", buf, 0xCu);
  }

  v35 = &__NSArray0__struct;
LABEL_36:

  return v35;
}

@end