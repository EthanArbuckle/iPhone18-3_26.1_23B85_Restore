@interface GenericRequest
- (GenericRequest)initWithDate:(id)a3 requestIdentifier:(id)a4 uniqueIdentifier:(id)a5 itemIdentifier:(id)a6 localizations:(id)a7 offerName:(id)a8 status:(int64_t)a9;
- (GenericRequest)initWithDictionary:(id)a3;
- (NSString)description;
- (id)compile;
@end

@implementation GenericRequest

- (GenericRequest)initWithDate:(id)a3 requestIdentifier:(id)a4 uniqueIdentifier:(id)a5 itemIdentifier:(id)a6 localizations:(id)a7 offerName:(id)a8 status:(int64_t)a9
{
  v16 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v17 = a7;
  v18 = a8;
  v25.receiver = self;
  v25.super_class = GenericRequest;
  v19 = [(GenericRequest *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_date, a3);
    objc_storeStrong(&v20->_requestIdentifier, a4);
    objc_storeStrong(&v20->_uniqueIdentifier, a5);
    objc_storeStrong(&v20->_itemIdentifier, a6);
    objc_storeStrong(&v20->_localizations, a7);
    objc_storeStrong(&v20->_offerName, a8);
    v20->_status = a9;
  }

  return v20;
}

- (GenericRequest)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"createdTimeInterval"];
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

  v8 = [v4 objectForKeyedSubscript:@"identifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v4 objectForKeyedSubscript:@"uniqueIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v4 objectForKeyedSubscript:@"itemIdentifier"];
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
  v15 = [v4 objectForKeyedSubscript:@"localizations"];
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
  v18 = [v4 objectForKeyedSubscript:@"offerName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [v4 objectForKeyedSubscript:@"status"];
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
    v22 = [v21 integerValue];
  }

  else
  {
    v22 = -2;
  }

  v23 = 0;
  if (v7 && v9 && v13 && v17)
  {
    self = [(GenericRequest *)self initWithDate:v7 requestIdentifier:v9 uniqueIdentifier:v11 itemIdentifier:v13 localizations:v17 offerName:v19 status:v22];
    v23 = self;
  }

  return v23;
}

- (id)compile
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(GenericRequest *)self date];
  [v3 ap_setNullableObject:v4 forKey:@"createdTimeInterval"];

  v5 = [(GenericRequest *)self requestIdentifier];
  [v3 ap_setNullableObject:v5 forKey:@"identifier"];

  v6 = [(GenericRequest *)self uniqueIdentifier];
  [v3 ap_setNullableObject:v6 forKey:@"uniqueIdentifier"];

  v7 = [(GenericRequest *)self itemIdentifier];
  [v3 ap_setNullableObject:v7 forKey:@"itemIdentifier"];

  v8 = [(GenericRequest *)self localizations];
  v9 = [v8 compile];
  [v3 ap_setNullableObject:v9 forKey:@"localizations"];

  v10 = [(GenericRequest *)self offerName];
  [v3 ap_setNullableObject:v10 forKey:@"offerName"];

  v11 = [NSNumber numberWithInteger:[(GenericRequest *)self status]];
  [v3 ap_setNullableObject:v11 forKey:@"status"];

  return v3;
}

- (NSString)description
{
  v3 = [(GenericRequest *)self compile];
  v4 = [(GenericRequest *)self ap_generateDescriptionWithSubObjects:v3];

  return v4;
}

@end