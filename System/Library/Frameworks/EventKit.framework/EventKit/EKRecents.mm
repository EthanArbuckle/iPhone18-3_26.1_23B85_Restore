@interface EKRecents
+ (BOOL)recentDirectoryLocation:(id)location matchesSource:(id)source;
+ (BOOL)recentIsDirectoryLocation:(id)location;
+ (BOOL)recentMissingStyleAttributes:(id)attributes;
+ (BOOL)recordRecentForContactWithName:(id)name emailAddress:(id)address phoneNumber:(id)number;
+ (Class)crRecentContactsLibraryClass;
+ (id)_archivedInstance:(id)instance;
+ (id)crAddressKindEmailString;
+ (id)crAddressKindPhoneNumberString;
+ (id)crRecentsDomainCalendarString;
+ (id)directoryLocationForRecent:(id)recent onSource:(id)source;
+ (id)locationForRecent:(id)recent;
+ (id)logHandle;
+ (id)mapKitHandleForRecent:(id)recent;
+ (id)mapKitStyleAttributesForRecent:(id)recent;
+ (id)recentEventWithRecentContact:(id)contact styleAttributes:(id)attributes;
+ (id)recentForContactWithAddress:(id)address name:(id)name kind:(id)kind;
+ (id)recentForDirectoryLocation:(id)location onSource:(id)source;
+ (id)recentForLocation:(id)location withAddressString:(id)string andTitle:(id)title mapItem:(id)item;
+ (void)recordRecentWithAddress:(id)address name:(id)name kind:(id)kind;
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

+ (id)recentForContactWithAddress:(id)address name:(id)name kind:(id)kind
{
  kindCopy = kind;
  nameCopy = name;
  addressCopy = address;
  crRecentContactsLibraryClass = [self crRecentContactsLibraryClass];
  date = [MEMORY[0x1E695DF00] date];
  v13 = [crRecentContactsLibraryClass recentEventForAddress:addressCopy displayName:nameCopy kind:kindCopy date:date weight:0 metadata:0 options:1];

  return v13;
}

+ (void)recordRecentWithAddress:(id)address name:(id)name kind:(id)kind
{
  v15[1] = *MEMORY[0x1E69E9840];
  addressCopy = address;
  nameCopy = name;
  if (!nameCopy)
  {
    nameCopy = addressCopy;
  }

  v10 = [self recentForContactWithAddress:addressCopy name:nameCopy kind:kind];
  v11 = [objc_msgSend(self "crRecentContactsLibraryClass")];
  v15[0] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  crRecentsDomainCalendarString = [self crRecentsDomainCalendarString];
  [v11 recordContactEvents:v12 recentsDomain:crRecentsDomainCalendarString sendingAddress:0 completion:0];

  v14 = *MEMORY[0x1E69E9840];
}

+ (BOOL)recordRecentForContactWithName:(id)name emailAddress:(id)address phoneNumber:(id)number
{
  nameCopy = name;
  addressCopy = address;
  numberCopy = number;
  if (addressCopy)
  {
    crAddressKindEmailString = [self crAddressKindEmailString];
    [self recordRecentWithAddress:addressCopy name:nameCopy kind:crAddressKindEmailString];
  }

  if (numberCopy)
  {
    crAddressKindPhoneNumberString = [self crAddressKindPhoneNumberString];
    [self recordRecentWithAddress:numberCopy name:nameCopy kind:crAddressKindPhoneNumberString];
  }

  return (addressCopy | numberCopy) != 0;
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

+ (id)mapKitHandleForRecent:(id)recent
{
  metadata = [recent metadata];
  v4 = [metadata objectForKey:@"mapKitHandle"];

  return v4;
}

+ (id)mapKitStyleAttributesForRecent:(id)recent
{
  v15[2] = *MEMORY[0x1E69E9840];
  metadata = [recent metadata];
  v5 = [metadata objectForKey:@"mapItemStyleAttributes"];

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
    logHandle = [self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKRecents *)v10 mapKitStyleAttributesForRecent:logHandle];
    }
  }

  v9 = 0;
LABEL_10:

LABEL_11:
  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (BOOL)recentMissingStyleAttributes:(id)attributes
{
  metadata = [attributes metadata];
  v4 = [metadata objectForKey:@"mapItemStyleAttributes"];

  return v4 == 0;
}

+ (id)recentEventWithRecentContact:(id)contact styleAttributes:(id)attributes
{
  attributesCopy = attributes;
  contactCopy = contact;
  metadata = [contactCopy metadata];
  v9 = [metadata mutableCopy];

  if (attributesCopy)
  {
    v10 = [self _archivedInstance:attributesCopy];
    if (!v10)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  null = [MEMORY[0x1E695DFB0] null];
  v10 = [self _archivedInstance:null];

  if (v10)
  {
LABEL_3:
    [v9 setObject:v10 forKey:@"mapItemStyleAttributes"];
  }

LABEL_4:
  v11 = EKWeakLinkClass();
  address = [contactCopy address];
  displayName = [contactCopy displayName];
  kind = [contactCopy kind];
  mostRecentDate = [contactCopy mostRecentDate];
  weight = [contactCopy weight];

  v17 = [v11 recentEventForAddress:address displayName:displayName kind:kind date:mostRecentDate weight:weight metadata:v9 options:0];

  return v17;
}

+ (id)_archivedInstance:(id)instance
{
  v9 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:instance requiringSecureCoding:1 error:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    logHandle = [self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKRecents *)v5 _archivedInstance:logHandle];
    }
  }

  return v4;
}

+ (id)locationForRecent:(id)recent
{
  recentCopy = recent;
  metadata = [recentCopy metadata];
  v5 = [metadata objectForKey:@"locationType"];
  v6 = v5;
  if (v5 && [v5 unsignedIntegerValue] == 1)
  {
    v7 = 0;
  }

  else
  {
    v8 = EKWeakLinkSymbol();
    v9 = EKWeakLinkClass();
    v10 = [metadata objectForKey:@"latitude"];
    [v10 doubleValue];
    v12 = v11;
    v13 = [metadata objectForKey:@"longitude"];
    doubleValue = [v13 doubleValue];
    v16 = v8(doubleValue, v12, v15);
    v18 = v17;

    v19 = [v9 alloc];
    v20 = [metadata objectForKey:@"hAccuracy"];
    [v20 doubleValue];
    v22 = v21;
    v23 = [metadata objectForKey:@"vAccuracy"];
    [v23 doubleValue];
    v25 = v24;
    date = [MEMORY[0x1E695DF00] date];
    v27 = [metadata objectForKey:@"referenceFrame"];
    v28 = [v19 initWithCoordinate:date altitude:objc_msgSend(v27 horizontalAccuracy:"integerValue") verticalAccuracy:v16 timestamp:v18 referenceFrame:{0.0, v22, v25}];

    v29 = [metadata objectForKey:@"radius"];
    [v29 doubleValue];
    v31 = v30;

    displayName = [recentCopy displayName];
    v7 = [EKStructuredLocation locationWithTitle:displayName];

    [v7 setGeoLocation:v28];
    address = [recentCopy address];
    [v7 setAddress:address];

    [v7 setRadius:v31];
    v34 = [metadata objectForKey:@"mapKitHandle"];
    if (v34)
    {
      [v7 setMapKitHandle:v34];
    }

    v35 = [metadata objectForKey:@"addressBookID"];
    if (v35)
    {
      [v7 setContactLabel:v35];
    }
  }

  return v7;
}

+ (id)recentForLocation:(id)location withAddressString:(id)string andTitle:(id)title mapItem:(id)item
{
  v47[7] = *MEMORY[0x1E69E9840];
  locationCopy = location;
  itemCopy = item;
  titleCopy = title;
  stringCopy = string;
  geoLocation = [locationCopy geoLocation];
  v46[0] = @"latitude";
  v11 = MEMORY[0x1E696AD98];
  [geoLocation coordinate];
  v12 = [v11 numberWithDouble:?];
  v47[0] = v12;
  v46[1] = @"longitude";
  v13 = MEMORY[0x1E696AD98];
  [geoLocation coordinate];
  v15 = [v13 numberWithDouble:v14];
  v47[1] = v15;
  v46[2] = @"hAccuracy";
  v16 = MEMORY[0x1E696AD98];
  [geoLocation horizontalAccuracy];
  v17 = [v16 numberWithDouble:?];
  v47[2] = v17;
  v46[3] = @"vAccuracy";
  v18 = MEMORY[0x1E696AD98];
  [geoLocation verticalAccuracy];
  v19 = [v18 numberWithDouble:?];
  v47[3] = v19;
  v46[4] = @"locationType";
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
  v47[4] = v20;
  v46[5] = @"radius";
  v21 = MEMORY[0x1E696AD98];
  [locationCopy radius];
  v22 = [v21 numberWithDouble:?];
  v47[5] = v22;
  v46[6] = @"referenceFrame";
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(geoLocation, "referenceFrame")}];
  v47[6] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:7];

  mapKitHandle = [locationCopy mapKitHandle];
  if (mapKitHandle)
  {
  }

  else
  {
    contactLabel = [locationCopy contactLabel];

    if (!contactLabel)
    {
      v27 = v24;
      v29 = itemCopy;
      goto LABEL_14;
    }
  }

  v27 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v24];

  mapKitHandle2 = [locationCopy mapKitHandle];

  v29 = itemCopy;
  if (mapKitHandle2)
  {
    mapKitHandle3 = [locationCopy mapKitHandle];
    [v27 setObject:mapKitHandle3 forKey:@"mapKitHandle"];

    _styleAttributes = [itemCopy _styleAttributes];

    if (_styleAttributes)
    {
      [itemCopy _styleAttributes];
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
    }
    v32 = ;
    v33 = [self _archivedInstance:v32];

    if (v33)
    {
      [v27 setObject:v33 forKey:@"mapItemStyleAttributes"];
    }
  }

  contactLabel2 = [locationCopy contactLabel];

  if (contactLabel2)
  {
    contactLabel3 = [locationCopy contactLabel];
    [v27 setObject:contactLabel3 forKey:@"addressBookID"];
  }

LABEL_14:
  v36 = EKWeakLinkClass();
  v37 = EKWeakLinkStringConstant();
  date = [MEMORY[0x1E695DF00] date];
  v39 = [v36 recentEventForAddress:stringCopy displayName:titleCopy kind:v37 date:date weight:0 metadata:v27 options:1];

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

+ (id)directoryLocationForRecent:(id)recent onSource:(id)source
{
  recentCopy = recent;
  if ([self recentDirectoryLocation:recentCopy matchesSource:source])
  {
    v7 = objc_alloc_init(EKDirectoryLocation);
    displayName = [recentCopy displayName];
    [(EKDirectoryRecord *)v7 setDisplayName:displayName];

    address = [recentCopy address];
    [(EKDirectoryRecord *)v7 setPreferredAddress:address];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)recentForDirectoryLocation:(id)location onSource:(id)source
{
  v21[2] = *MEMORY[0x1E69E9840];
  v20[0] = @"sourceExternalID";
  locationCopy = location;
  externalID = [source externalID];
  v20[1] = @"locationType";
  v21[0] = externalID;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
  v21[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v9 = EKWeakLinkClass();
  v10 = EKWeakLinkStringConstant();
  preferredAddress = [locationCopy preferredAddress];
  v12 = preferredAddress;
  if (preferredAddress)
  {
    v13 = preferredAddress;
  }

  else
  {
    v13 = &stru_1F1B49D68;
  }

  displayName = [locationCopy displayName];

  if (displayName)
  {
    v15 = displayName;
  }

  else
  {
    v15 = &stru_1F1B49D68;
  }

  date = [MEMORY[0x1E695DF00] date];
  v17 = [v9 recentEventForAddress:v13 displayName:v15 kind:v10 date:date weight:0 metadata:v8 options:{1, v20[0]}];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (BOOL)recentIsDirectoryLocation:(id)location
{
  metadata = [location metadata];
  v4 = [metadata objectForKey:@"locationType"];
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

+ (BOOL)recentDirectoryLocation:(id)location matchesSource:(id)source
{
  sourceCopy = source;
  metadata = [location metadata];
  v7 = [metadata objectForKey:@"locationType"];
  v8 = [metadata objectForKey:@"sourceExternalID"];
  v11 = 0;
  if (v7)
  {
    if ([v7 unsignedIntegerValue] == 1)
    {
      if (v8)
      {
        externalID = [sourceCopy externalID];
        v10 = [v8 isEqualToString:externalID];

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