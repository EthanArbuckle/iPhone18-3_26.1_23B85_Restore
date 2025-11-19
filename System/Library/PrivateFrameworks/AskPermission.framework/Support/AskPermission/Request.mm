@interface Request
- (NSString)description;
- (Request)initWithDate:(id)a3 requestIdentifier:(id)a4 uniqueIdentifier:(id)a5 itemBundleIdentifier:(id)a6 itemIdentifier:(id)a7 localizations:(id)a8 mocked:(BOOL)a9 offerName:(id)a10 previewURL:(id)a11 productType:(id)a12 productTypeName:(id)a13 productURL:(id)a14 requestInfo:(id)a15 status:(int64_t)a16;
- (Request)initWithDictionary:(id)a3;
- (id)compile;
@end

@implementation Request

- (Request)initWithDate:(id)a3 requestIdentifier:(id)a4 uniqueIdentifier:(id)a5 itemBundleIdentifier:(id)a6 itemIdentifier:(id)a7 localizations:(id)a8 mocked:(BOOL)a9 offerName:(id)a10 previewURL:(id)a11 productType:(id)a12 productTypeName:(id)a13 productURL:(id)a14 requestInfo:(id)a15 status:(int64_t)a16
{
  v41 = a3;
  v39 = a4;
  v32 = a5;
  v37 = a5;
  v33 = a6;
  v21 = a6;
  v34 = a7;
  v22 = a7;
  v35 = a8;
  v40 = a8;
  v38 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  v26 = a14;
  v27 = a15;
  v42.receiver = self;
  v42.super_class = Request;
  v28 = [(Request *)&v42 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_date, a3);
    objc_storeStrong(&v29->_requestIdentifier, a4);
    objc_storeStrong(&v29->_uniqueIdentifier, v32);
    objc_storeStrong(&v29->_itemBundleIdentifier, v33);
    objc_storeStrong(&v29->_itemIdentifier, v34);
    objc_storeStrong(&v29->_localizations, v35);
    v29->_mocked = a9;
    objc_storeStrong(&v29->_offerName, a10);
    objc_storeStrong(&v29->_previewURL, a11);
    objc_storeStrong(&v29->_productType, a12);
    objc_storeStrong(&v29->_productTypeName, a13);
    objc_storeStrong(&v29->_productURL, a14);
    objc_storeStrong(&v29->_requestInfo, a15);
    v29->_status = a16;
  }

  return v29;
}

- (Request)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"date"];
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

  v7 = [v4 objectForKeyedSubscript:@"identifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v55 = v7;
  }

  else
  {
    v55 = 0;
  }

  v8 = [v4 objectForKeyedSubscript:@"uniqueIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v49 = v8;
  }

  else
  {
    v49 = 0;
  }

  v9 = [v4 objectForKeyedSubscript:@"itemIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v4 objectForKeyedSubscript:@"itemBundleIdentifier"];
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
  v14 = [v4 objectForKeyedSubscript:@"localizations"];
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
  v16 = [v4 objectForKeyedSubscript:@"mocked"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v45 = [v17 BOOLValue];
  v18 = [v4 objectForKeyedSubscript:@"offerName"];
  objc_opt_class();
  v54 = self;
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [v4 objectForKeyedSubscript:@"previewURL"];
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

  v23 = [v4 objectForKeyedSubscript:@"productType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = [v4 objectForKeyedSubscript:@"productTypeName"];
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

  v27 = [v4 objectForKeyedSubscript:@"productURL"];
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

  v30 = [v4 objectForKeyedSubscript:@"requestInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v32 = [v4 objectForKeyedSubscript:@"status"];
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
    v34 = [v33 integerValue];
  }

  else
  {
    v34 = -2;
  }

  v35 = v49;
  v36 = v22;
  v37 = v26;
  v51 = v4;
  v46 = v22;
  if (v56 && v55 && v49 && v10 && v47)
  {
    v38 = v31;
    v39 = v48;
    v40 = v52;
    LOBYTE(v44) = v45;
    v41 = v53;
    v42 = v37;
    v54 = [(Request *)v54 initWithDate:v56 requestIdentifier:v55 uniqueIdentifier:v49 itemBundleIdentifier:v53 itemIdentifier:v10 localizations:v47 mocked:v44 offerName:v52 previewURL:v36 productType:v48 productTypeName:v37 productURL:v29 requestInfo:v31 status:v34];
    v50 = v54;
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
  v4 = [(Request *)self date];
  [v3 ap_setNullableObject:v4 forKey:@"date"];

  v5 = [(Request *)self requestIdentifier];
  [v3 ap_setNullableObject:v5 forKey:@"identifier"];

  v6 = [(Request *)self uniqueIdentifier];
  [v3 ap_setNullableObject:v6 forKey:@"uniqueIdentifier"];

  v7 = [(Request *)self itemBundleIdentifier];
  [v3 ap_setNullableObject:v7 forKey:@"itemBundleIdentifier"];

  v8 = [(Request *)self itemIdentifier];
  [v3 ap_setNullableObject:v8 forKey:@"itemIdentifier"];

  v9 = [(Request *)self localizations];
  v10 = [v9 compile];
  [v3 ap_setNullableObject:v10 forKey:@"localizations"];

  v11 = [NSNumber numberWithBool:[(Request *)self isMocked]];
  [v3 ap_setNullableObject:v11 forKey:@"mocked"];

  v12 = [(Request *)self offerName];
  [v3 ap_setNullableObject:v12 forKey:@"offerName"];

  v13 = [(Request *)self previewURL];
  v14 = [v13 absoluteString];
  [v3 ap_setNullableObject:v14 forKey:@"previewURL"];

  v15 = [(Request *)self productType];
  [v3 ap_setNullableObject:v15 forKey:@"productType"];

  v16 = [(Request *)self productTypeName];
  [v3 ap_setNullableObject:v16 forKey:@"productTypeName"];

  v17 = [(Request *)self productURL];
  v18 = [v17 absoluteString];
  [v3 ap_setNullableObject:v18 forKey:@"productURL"];

  v19 = [(Request *)self requestInfo];
  [v3 ap_setNullableObject:v19 forKey:@"requestInfo"];

  v20 = [NSNumber numberWithInteger:[(Request *)self status]];
  [v3 ap_setNullableObject:v20 forKey:@"status"];

  return v3;
}

- (NSString)description
{
  v3 = [(Request *)self compile];
  v4 = [(Request *)self ap_generateDescriptionWithSubObjects:v3];

  return v4;
}

@end