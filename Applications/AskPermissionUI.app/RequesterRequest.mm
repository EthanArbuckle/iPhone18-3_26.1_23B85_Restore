@interface RequesterRequest
- (NSString)description;
- (RequesterRequest)initWithDate:(id)date requestIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier itemIdentifier:(id)itemIdentifier localizations:(id)localizations offerName:(id)name status:(int64_t)status;
- (RequesterRequest)initWithDictionary:(id)dictionary;
- (id)compile;
@end

@implementation RequesterRequest

- (RequesterRequest)initWithDate:(id)date requestIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier itemIdentifier:(id)itemIdentifier localizations:(id)localizations offerName:(id)name status:(int64_t)status
{
  dateCopy = date;
  identifierCopy = identifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  itemIdentifierCopy = itemIdentifier;
  localizationsCopy = localizations;
  nameCopy = name;
  v25.receiver = self;
  v25.super_class = RequesterRequest;
  v19 = [(RequesterRequest *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_date, date);
    objc_storeStrong(&v20->_requestIdentifier, identifier);
    objc_storeStrong(&v20->_uniqueIdentifier, uniqueIdentifier);
    objc_storeStrong(&v20->_itemIdentifier, itemIdentifier);
    objc_storeStrong(&v20->_localizations, localizations);
    objc_storeStrong(&v20->_offerName, name);
    v20->_status = status;
  }

  return v20;
}

- (RequesterRequest)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"date"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 doubleValue];
    v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  v8 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"uniqueIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"itemIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [RequestLocalizations alloc];
  v15 = [dictionaryCopy objectForKeyedSubscript:@"localizations"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = [(RequestLocalizations *)v14 initWithDictionary:v16];
  v18 = [dictionaryCopy objectForKeyedSubscript:@"offerName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [dictionaryCopy objectForKeyedSubscript:@"status"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21)
  {
    integerValue = [v21 integerValue];
  }

  else
  {
    integerValue = -2;
  }

  selfCopy = 0;
  if (v7 && v9 && v11 && v13 && v17)
  {
    self = [(RequesterRequest *)self initWithDate:v7 requestIdentifier:v9 uniqueIdentifier:v11 itemIdentifier:v13 localizations:v17 offerName:v19 status:integerValue];
    selfCopy = self;
  }

  return selfCopy;
}

- (id)compile
{
  v3 = objc_alloc_init(NSMutableDictionary);
  date = [(RequesterRequest *)self date];
  [v3 ap_setNullableObject:date forKey:@"date"];

  requestIdentifier = [(RequesterRequest *)self requestIdentifier];
  [v3 ap_setNullableObject:requestIdentifier forKey:@"identifier"];

  uniqueIdentifier = [(RequesterRequest *)self uniqueIdentifier];
  [v3 ap_setNullableObject:uniqueIdentifier forKey:@"uniqueIdentifier"];

  itemIdentifier = [(RequesterRequest *)self itemIdentifier];
  [v3 ap_setNullableObject:itemIdentifier forKey:@"itemIdentifier"];

  localizations = [(RequesterRequest *)self localizations];
  compile = [localizations compile];
  [v3 ap_setNullableObject:compile forKey:@"localizations"];

  offerName = [(RequesterRequest *)self offerName];
  [v3 ap_setNullableObject:offerName forKey:@"offerName"];

  v11 = [NSNumber numberWithInteger:[(RequesterRequest *)self status]];
  [v3 ap_setNullableObject:v11 forKey:@"status"];

  return v3;
}

- (NSString)description
{
  compile = [(RequesterRequest *)self compile];
  v4 = [(RequesterRequest *)self ap_generateDescriptionWithSubObjects:compile];

  return v4;
}

@end