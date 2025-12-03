@interface Request
- (NSString)description;
- (Request)initWithDate:(id)date requestIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier itemBundleIdentifier:(id)bundleIdentifier itemIdentifier:(id)itemIdentifier localizations:(id)localizations mocked:(BOOL)mocked offerName:(id)self0 previewURL:(id)self1 productType:(id)self2 productTypeName:(id)self3 productURL:(id)self4 requestInfo:(id)self5 status:(int64_t)self6;
- (Request)initWithDictionary:(id)dictionary;
- (id)compile;
@end

@implementation Request

- (Request)initWithDate:(id)date requestIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier itemBundleIdentifier:(id)bundleIdentifier itemIdentifier:(id)itemIdentifier localizations:(id)localizations mocked:(BOOL)mocked offerName:(id)self0 previewURL:(id)self1 productType:(id)self2 productTypeName:(id)self3 productURL:(id)self4 requestInfo:(id)self5 status:(int64_t)self6
{
  dateCopy = date;
  identifierCopy = identifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  uniqueIdentifierCopy2 = uniqueIdentifier;
  bundleIdentifierCopy = bundleIdentifier;
  bundleIdentifierCopy2 = bundleIdentifier;
  itemIdentifierCopy = itemIdentifier;
  itemIdentifierCopy2 = itemIdentifier;
  localizationsCopy = localizations;
  localizationsCopy2 = localizations;
  nameCopy = name;
  lCopy = l;
  typeCopy = type;
  typeNameCopy = typeName;
  rLCopy = rL;
  infoCopy = info;
  v42.receiver = self;
  v42.super_class = Request;
  v28 = [(Request *)&v42 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_date, date);
    objc_storeStrong(&v29->_requestIdentifier, identifier);
    objc_storeStrong(&v29->_uniqueIdentifier, uniqueIdentifierCopy);
    objc_storeStrong(&v29->_itemBundleIdentifier, bundleIdentifierCopy);
    objc_storeStrong(&v29->_itemIdentifier, itemIdentifierCopy);
    objc_storeStrong(&v29->_localizations, localizationsCopy);
    v29->_mocked = mocked;
    objc_storeStrong(&v29->_offerName, name);
    objc_storeStrong(&v29->_previewURL, l);
    objc_storeStrong(&v29->_productType, type);
    objc_storeStrong(&v29->_productTypeName, typeName);
    objc_storeStrong(&v29->_productURL, rL);
    objc_storeStrong(&v29->_requestInfo, info);
    v29->_status = status;
  }

  return v29;
}

- (Request)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"date"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
LABEL_5:
    v56 = v6;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 doubleValue];
    v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    goto LABEL_5;
  }

  v56 = 0;
LABEL_7:

  v7 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v55 = v7;
  }

  else
  {
    v55 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"uniqueIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v49 = v8;
  }

  else
  {
    v49 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"itemIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"itemBundleIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v53 = v12;

  v13 = [RequestLocalizations alloc];
  v14 = [dictionaryCopy objectForKeyedSubscript:@"localizations"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v47 = [(RequestLocalizations *)v13 initWithDictionary:v15];
  v16 = [dictionaryCopy objectForKeyedSubscript:@"mocked"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  bOOLValue = [v17 BOOLValue];
  v18 = [dictionaryCopy objectForKeyedSubscript:@"offerName"];
  objc_opt_class();
  selfCopy = self;
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [dictionaryCopy objectForKeyedSubscript:@"previewURL"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
LABEL_32:
    v22 = v21;
    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [NSURL URLWithString:v20];
    goto LABEL_32;
  }

  v22 = 0;
LABEL_34:

  v23 = [dictionaryCopy objectForKeyedSubscript:@"productType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = [dictionaryCopy objectForKeyedSubscript:@"productTypeName"];
  objc_opt_class();
  v52 = v19;
  if (objc_opt_isKindOfClass())
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = [dictionaryCopy objectForKeyedSubscript:@"productURL"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = v27;
LABEL_44:
    v29 = v28;
    goto LABEL_46;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = [NSURL URLWithString:v27];
    goto LABEL_44;
  }

  v29 = 0;
LABEL_46:

  v30 = [dictionaryCopy objectForKeyedSubscript:@"requestInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v32 = [dictionaryCopy objectForKeyedSubscript:@"status"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v48 = v24;

  if (v33)
  {
    integerValue = [v33 integerValue];
  }

  else
  {
    integerValue = -2;
  }

  v35 = v49;
  v36 = v22;
  v37 = v26;
  v51 = dictionaryCopy;
  v46 = v22;
  if (v56 && v55 && v49 && v10 && v47)
  {
    v38 = v31;
    v39 = v48;
    v40 = v52;
    LOBYTE(v44) = bOOLValue;
    v41 = v53;
    v42 = v37;
    selfCopy = [(Request *)selfCopy initWithDate:v56 requestIdentifier:v55 uniqueIdentifier:v49 itemBundleIdentifier:v53 itemIdentifier:v10 localizations:v47 mocked:v44 offerName:v52 previewURL:v36 productType:v48 productTypeName:v37 productURL:v29 requestInfo:v31 status:integerValue];
    v50 = selfCopy;
  }

  else
  {
    v41 = v53;
    v40 = v52;
    v39 = v48;
    v42 = v26;
    v38 = v31;
    v50 = 0;
  }

  return v50;
}

- (id)compile
{
  v3 = objc_alloc_init(NSMutableDictionary);
  date = [(Request *)self date];
  [v3 ap_setNullableObject:date forKey:@"date"];

  requestIdentifier = [(Request *)self requestIdentifier];
  [v3 ap_setNullableObject:requestIdentifier forKey:@"identifier"];

  uniqueIdentifier = [(Request *)self uniqueIdentifier];
  [v3 ap_setNullableObject:uniqueIdentifier forKey:@"uniqueIdentifier"];

  itemBundleIdentifier = [(Request *)self itemBundleIdentifier];
  [v3 ap_setNullableObject:itemBundleIdentifier forKey:@"itemBundleIdentifier"];

  itemIdentifier = [(Request *)self itemIdentifier];
  [v3 ap_setNullableObject:itemIdentifier forKey:@"itemIdentifier"];

  localizations = [(Request *)self localizations];
  compile = [localizations compile];
  [v3 ap_setNullableObject:compile forKey:@"localizations"];

  v11 = [NSNumber numberWithBool:[(Request *)self isMocked]];
  [v3 ap_setNullableObject:v11 forKey:@"mocked"];

  offerName = [(Request *)self offerName];
  [v3 ap_setNullableObject:offerName forKey:@"offerName"];

  previewURL = [(Request *)self previewURL];
  absoluteString = [previewURL absoluteString];
  [v3 ap_setNullableObject:absoluteString forKey:@"previewURL"];

  productType = [(Request *)self productType];
  [v3 ap_setNullableObject:productType forKey:@"productType"];

  productTypeName = [(Request *)self productTypeName];
  [v3 ap_setNullableObject:productTypeName forKey:@"productTypeName"];

  productURL = [(Request *)self productURL];
  absoluteString2 = [productURL absoluteString];
  [v3 ap_setNullableObject:absoluteString2 forKey:@"productURL"];

  requestInfo = [(Request *)self requestInfo];
  [v3 ap_setNullableObject:requestInfo forKey:@"requestInfo"];

  v20 = [NSNumber numberWithInteger:[(Request *)self status]];
  [v3 ap_setNullableObject:v20 forKey:@"status"];

  return v3;
}

- (NSString)description
{
  compile = [(Request *)self compile];
  v4 = [(Request *)self ap_generateDescriptionWithSubObjects:compile];

  return v4;
}

@end