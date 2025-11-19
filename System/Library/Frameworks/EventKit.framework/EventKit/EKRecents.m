@interface EKRecents
+ (BOOL)recentDirectoryLocation:(id)a3 matchesSource:(id)a4;
+ (BOOL)recentIsDirectoryLocation:(id)a3;
+ (BOOL)recentMissingStyleAttributes:(id)a3;
+ (BOOL)recordRecentForContactWithName:(id)a3 emailAddress:(id)a4 phoneNumber:(id)a5;
+ (Class)crRecentContactsLibraryClass;
+ (id)_archivedInstance:(id)a3;
+ (id)crAddressKindEmailString;
+ (id)crAddressKindPhoneNumberString;
+ (id)crRecentsDomainCalendarString;
+ (id)directoryLocationForRecent:(id)a3 onSource:(id)a4;
+ (id)locationForRecent:(id)a3;
+ (id)logHandle;
+ (id)mapKitHandleForRecent:(id)a3;
+ (id)mapKitStyleAttributesForRecent:(id)a3;
+ (id)recentEventWithRecentContact:(id)a3 styleAttributes:(id)a4;
+ (id)recentForContactWithAddress:(id)a3 name:(id)a4 kind:(id)a5;
+ (id)recentForDirectoryLocation:(id)a3 onSource:(id)a4;
+ (id)recentForLocation:(id)a3 withAddressString:(id)a4 andTitle:(id)a5 mapItem:(id)a6;
+ (void)recordRecentWithAddress:(id)a3 name:(id)a4 kind:(id)a5;
@end

@implementation EKRecents

+ (Class)crRecentContactsLibraryClass
{
  if (crRecentContactsLibraryClass_onceToken != -1)
  {
    +[EKRecents crRecentContactsLibraryClass];
  }

  v3 = crRecentContactsLibraryClass_crRecentContactsLibraryClass;

  return v3;
}

uint64_t __41__EKRecents_crRecentContactsLibraryClass__block_invoke()
{
  result = EKWeakLinkClass();
  crRecentContactsLibraryClass_crRecentContactsLibraryClass = result;
  return result;
}

+ (id)crAddressKindEmailString
{
  if (crAddressKindEmailString_onceToken != -1)
  {
    +[EKRecents crAddressKindEmailString];
  }

  v3 = crAddressKindEmailString_crAddressKindEmailString;

  return v3;
}

uint64_t __37__EKRecents_crAddressKindEmailString__block_invoke()
{
  crAddressKindEmailString_crAddressKindEmailString = EKWeakLinkStringConstant();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)crAddressKindPhoneNumberString
{
  if (crAddressKindPhoneNumberString_onceToken != -1)
  {
    +[EKRecents crAddressKindPhoneNumberString];
  }

  v3 = crAddressKindPhoneNumberString_crAddressKindPhoneNumberString;

  return v3;
}

uint64_t __43__EKRecents_crAddressKindPhoneNumberString__block_invoke()
{
  crAddressKindPhoneNumberString_crAddressKindPhoneNumberString = EKWeakLinkStringConstant();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)crRecentsDomainCalendarString
{
  if (crRecentsDomainCalendarString_onceToken != -1)
  {
    +[EKRecents crRecentsDomainCalendarString];
  }

  v3 = crRecentsDomainCalendarString_crRecentsDomainCalendarString;

  return v3;
}

uint64_t __42__EKRecents_crRecentsDomainCalendarString__block_invoke()
{
  crRecentsDomainCalendarString_crRecentsDomainCalendarString = EKWeakLinkStringConstant();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)recentForContactWithAddress:(id)a3 name:(id)a4 kind:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 crRecentContactsLibraryClass];
  v12 = [MEMORY[0x1E695DF00] date];
  v13 = [v11 recentEventForAddress:v10 displayName:v9 kind:v8 date:v12 weight:0 metadata:0 options:1];

  return v13;
}

+ (void)recordRecentWithAddress:(id)a3 name:(id)a4 kind:(id)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v9 = v8;
  }

  v10 = [a1 recentForContactWithAddress:v8 name:v9 kind:a5];
  v11 = [objc_msgSend(a1 "crRecentContactsLibraryClass")];
  v15[0] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v13 = [a1 crRecentsDomainCalendarString];
  [v11 recordContactEvents:v12 recentsDomain:v13 sendingAddress:0 completion:0];

  v14 = *MEMORY[0x1E69E9840];
}

+ (BOOL)recordRecentForContactWithName:(id)a3 emailAddress:(id)a4 phoneNumber:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = [a1 crAddressKindEmailString];
    [a1 recordRecentWithAddress:v9 name:v8 kind:v11];
  }

  if (v10)
  {
    v12 = [a1 crAddressKindPhoneNumberString];
    [a1 recordRecentWithAddress:v10 name:v8 kind:v12];
  }

  return (v9 | v10) != 0;
}

+ (id)logHandle
{
  if (logHandle_onceToken != -1)
  {
    +[EKRecents logHandle];
  }

  v3 = logHandle_handle;

  return v3;
}

uint64_t __22__EKRecents_logHandle__block_invoke()
{
  logHandle_handle = os_log_create("com.apple.calendar.caluikit", "EKRecents");

  return MEMORY[0x1EEE66BB8]();
}

+ (id)mapKitHandleForRecent:(id)a3
{
  v3 = [a3 metadata];
  v4 = [v3 objectForKey:@"mapKitHandle"];

  return v4;
}

+ (id)mapKitStyleAttributesForRecent:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = [a3 metadata];
  v5 = [v4 objectForKey:@"mapItemStyleAttributes"];

  if (!v5)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v6 = MEMORY[0x1E695DFD8];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v8 = [v6 setWithArray:v7];

  v14 = 0;
  v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v8 fromData:v5 error:&v14];
  v10 = v14;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = [a1 logHandle];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(EKRecents *)v10 mapKitStyleAttributesForRecent:v11];
    }
  }

  v9 = 0;
LABEL_10:

LABEL_11:
  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (BOOL)recentMissingStyleAttributes:(id)a3
{
  v3 = [a3 metadata];
  v4 = [v3 objectForKey:@"mapItemStyleAttributes"];

  return v4 == 0;
}

+ (id)recentEventWithRecentContact:(id)a3 styleAttributes:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 metadata];
  v9 = [v8 mutableCopy];

  if (v6)
  {
    v10 = [a1 _archivedInstance:v6];
    if (!v10)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v19 = [MEMORY[0x1E695DFB0] null];
  v10 = [a1 _archivedInstance:v19];

  if (v10)
  {
LABEL_3:
    [v9 setObject:v10 forKey:@"mapItemStyleAttributes"];
  }

LABEL_4:
  v11 = EKWeakLinkClass();
  v12 = [v7 address];
  v13 = [v7 displayName];
  v14 = [v7 kind];
  v15 = [v7 mostRecentDate];
  v16 = [v7 weight];

  v17 = [v11 recentEventForAddress:v12 displayName:v13 kind:v14 date:v15 weight:v16 metadata:v9 options:0];

  return v17;
}

+ (id)_archivedInstance:(id)a3
{
  v9 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [a1 logHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(EKRecents *)v5 _archivedInstance:v7];
    }
  }

  return v4;
}

+ (id)locationForRecent:(id)a3
{
  v3 = a3;
  v4 = [v3 metadata];
  v5 = [v4 objectForKey:@"locationType"];
  v6 = v5;
  if (v5 && [v5 unsignedIntegerValue] == 1)
  {
    v7 = 0;
  }

  else
  {
    v8 = EKWeakLinkSymbol();
    v9 = EKWeakLinkClass();
    v10 = [v4 objectForKey:@"latitude"];
    [v10 doubleValue];
    v12 = v11;
    v13 = [v4 objectForKey:@"longitude"];
    v14 = [v13 doubleValue];
    v16 = v8(v14, v12, v15);
    v18 = v17;

    v19 = [v9 alloc];
    v20 = [v4 objectForKey:@"hAccuracy"];
    [v20 doubleValue];
    v22 = v21;
    v23 = [v4 objectForKey:@"vAccuracy"];
    [v23 doubleValue];
    v25 = v24;
    v26 = [MEMORY[0x1E695DF00] date];
    v27 = [v4 objectForKey:@"referenceFrame"];
    v28 = [v19 initWithCoordinate:v26 altitude:objc_msgSend(v27 horizontalAccuracy:"integerValue") verticalAccuracy:v16 timestamp:v18 referenceFrame:{0.0, v22, v25}];

    v29 = [v4 objectForKey:@"radius"];
    [v29 doubleValue];
    v31 = v30;

    v32 = [v3 displayName];
    v7 = [EKStructuredLocation locationWithTitle:v32];

    [v7 setGeoLocation:v28];
    v33 = [v3 address];
    [v7 setAddress:v33];

    [v7 setRadius:v31];
    v34 = [v4 objectForKey:@"mapKitHandle"];
    if (v34)
    {
      [v7 setMapKitHandle:v34];
    }

    v35 = [v4 objectForKey:@"addressBookID"];
    if (v35)
    {
      [v7 setContactLabel:v35];
    }
  }

  return v7;
}

+ (id)recentForLocation:(id)a3 withAddressString:(id)a4 andTitle:(id)a5 mapItem:(id)a6
{
  v47[7] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v45 = a6;
  v44 = a5;
  v43 = a4;
  v10 = [v9 geoLocation];
  v46[0] = @"latitude";
  v11 = MEMORY[0x1E696AD98];
  [v10 coordinate];
  v12 = [v11 numberWithDouble:?];
  v47[0] = v12;
  v46[1] = @"longitude";
  v13 = MEMORY[0x1E696AD98];
  [v10 coordinate];
  v15 = [v13 numberWithDouble:v14];
  v47[1] = v15;
  v46[2] = @"hAccuracy";
  v16 = MEMORY[0x1E696AD98];
  [v10 horizontalAccuracy];
  v17 = [v16 numberWithDouble:?];
  v47[2] = v17;
  v46[3] = @"vAccuracy";
  v18 = MEMORY[0x1E696AD98];
  [v10 verticalAccuracy];
  v19 = [v18 numberWithDouble:?];
  v47[3] = v19;
  v46[4] = @"locationType";
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
  v47[4] = v20;
  v46[5] = @"radius";
  v21 = MEMORY[0x1E696AD98];
  [v9 radius];
  v22 = [v21 numberWithDouble:?];
  v47[5] = v22;
  v46[6] = @"referenceFrame";
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "referenceFrame")}];
  v47[6] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:7];

  v25 = [v9 mapKitHandle];
  if (v25)
  {
  }

  else
  {
    v26 = [v9 contactLabel];

    if (!v26)
    {
      v27 = v24;
      v29 = v45;
      goto LABEL_14;
    }
  }

  v27 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v24];

  v28 = [v9 mapKitHandle];

  v29 = v45;
  if (v28)
  {
    v30 = [v9 mapKitHandle];
    [v27 setObject:v30 forKey:@"mapKitHandle"];

    v31 = [v45 _styleAttributes];

    if (v31)
    {
      [v45 _styleAttributes];
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
    }
    v32 = ;
    v33 = [a1 _archivedInstance:v32];

    if (v33)
    {
      [v27 setObject:v33 forKey:@"mapItemStyleAttributes"];
    }
  }

  v34 = [v9 contactLabel];

  if (v34)
  {
    v35 = [v9 contactLabel];
    [v27 setObject:v35 forKey:@"addressBookID"];
  }

LABEL_14:
  v36 = EKWeakLinkClass();
  v37 = EKWeakLinkStringConstant();
  v38 = [MEMORY[0x1E695DF00] date];
  v39 = [v36 recentEventForAddress:v43 displayName:v44 kind:v37 date:v38 weight:0 metadata:v27 options:1];

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

+ (id)directoryLocationForRecent:(id)a3 onSource:(id)a4
{
  v6 = a3;
  if ([a1 recentDirectoryLocation:v6 matchesSource:a4])
  {
    v7 = objc_alloc_init(EKDirectoryLocation);
    v8 = [v6 displayName];
    [(EKDirectoryRecord *)v7 setDisplayName:v8];

    v9 = [v6 address];
    [(EKDirectoryRecord *)v7 setPreferredAddress:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)recentForDirectoryLocation:(id)a3 onSource:(id)a4
{
  v21[2] = *MEMORY[0x1E69E9840];
  v20[0] = @"sourceExternalID";
  v5 = a3;
  v6 = [a4 externalID];
  v20[1] = @"locationType";
  v21[0] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
  v21[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v9 = EKWeakLinkClass();
  v10 = EKWeakLinkStringConstant();
  v11 = [v5 preferredAddress];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1F1B49D68;
  }

  v14 = [v5 displayName];

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = &stru_1F1B49D68;
  }

  v16 = [MEMORY[0x1E695DF00] date];
  v17 = [v9 recentEventForAddress:v13 displayName:v15 kind:v10 date:v16 weight:0 metadata:v8 options:{1, v20[0]}];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (BOOL)recentIsDirectoryLocation:(id)a3
{
  v3 = [a3 metadata];
  v4 = [v3 objectForKey:@"locationType"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 unsignedIntegerValue] == 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)recentDirectoryLocation:(id)a3 matchesSource:(id)a4
{
  v5 = a4;
  v6 = [a3 metadata];
  v7 = [v6 objectForKey:@"locationType"];
  v8 = [v6 objectForKey:@"sourceExternalID"];
  v11 = 0;
  if (v7)
  {
    if ([v7 unsignedIntegerValue] == 1)
    {
      if (v8)
      {
        v9 = [v5 externalID];
        v10 = [v8 isEqualToString:v9];

        if (v10)
        {
          v11 = 1;
        }
      }
    }
  }

  return v11;
}

+ (void)mapKitStyleAttributesForRecent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "Unable to unarchive style attributes for recent: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_archivedInstance:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "Unable to archive instance for recent: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end