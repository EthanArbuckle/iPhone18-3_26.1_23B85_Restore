@interface ExceptionRequest
- (ExceptionRequest)initWithDictionary:(id)a3;
- (ExceptionRequest)initWithUniqueIdentifier:(id)a3 bundleIdentifier:(id)a4 adamID:(id)a5 distributorID:(id)a6 ageRatingValue:(id)a7 requesterDSID:(id)a8 approvalStatus:(int64_t)a9 title:(id)a10 message:(id)a11 preApproveTitle:(id)a12 postApproveTitle:(id)a13 preDeclineTitle:(id)a14 postDeclineTitle:(id)a15 metadata:(id)a16;
- (id)compile;
- (id)copy;
- (id)screenTimeException;
@end

@implementation ExceptionRequest

- (ExceptionRequest)initWithUniqueIdentifier:(id)a3 bundleIdentifier:(id)a4 adamID:(id)a5 distributorID:(id)a6 ageRatingValue:(id)a7 requesterDSID:(id)a8 approvalStatus:(int64_t)a9 title:(id)a10 message:(id)a11 preApproveTitle:(id)a12 postApproveTitle:(id)a13 preDeclineTitle:(id)a14 postDeclineTitle:(id)a15 metadata:(id)a16
{
  v42 = a3;
  v40 = a4;
  v38 = a5;
  v33 = a6;
  v37 = a6;
  v34 = a7;
  v21 = a7;
  v41 = a8;
  v39 = a10;
  v36 = a11;
  v22 = a12;
  v23 = a13;
  v24 = a14;
  v25 = a15;
  v26 = a16;
  v43.receiver = self;
  v43.super_class = ExceptionRequest;
  v27 = [(ExceptionRequest *)&v43 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_uniqueIdentifier, a3);
    objc_storeStrong(&v28->_bundleIdentifier, a4);
    objc_storeStrong(&v28->_adamID, a5);
    objc_storeStrong(&v28->_distributorID, v33);
    objc_storeStrong(&v28->_ageRatingValue, v34);
    v28->_approvalStatus = a9;
    v29 = +[NSDate date];
    createdDate = v28->_createdDate;
    v28->_createdDate = v29;

    objc_storeStrong(&v28->_requesterDSID, a8);
    objc_storeStrong(&v28->_title, a10);
    objc_storeStrong(&v28->_message, a11);
    objc_storeStrong(&v28->_preApproveTitle, a12);
    objc_storeStrong(&v28->_postApproveTitle, a13);
    objc_storeStrong(&v28->_preDeclineTitle, a14);
    objc_storeStrong(&v28->_postDeclineTitle, a15);
    objc_storeStrong(&v28->_metadata, a16);
  }

  return v28;
}

- (ExceptionRequest)initWithDictionary:(id)a3
{
  v4 = a3;
  v44.receiver = self;
  v44.super_class = ExceptionRequest;
  v5 = [(ExceptionRequest *)&v44 init];
  if (!v5)
  {
    goto LABEL_58;
  }

  v6 = [v4 objectForKeyedSubscript:@"uniqueIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 objectForKeyedSubscript:@"bundleIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    obj = v8;
  }

  else
  {
    obj = 0;
  }

  v9 = [v4 objectForKeyedSubscript:@"adamID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v43 = v9;
  }

  else
  {
    v43 = 0;
  }

  v10 = [v4 objectForKeyedSubscript:@"distributorID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = v10;
  }

  else
  {
    v42 = 0;
  }

  v11 = [v4 objectForKeyedSubscript:@"ageRatingValue"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = v11;
  }

  else
  {
    v41 = 0;
  }

  v12 = [v4 objectForKeyedSubscript:@"approvalStatus"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v40 = v12;
  }

  else
  {
    v40 = 0;
  }

  v13 = [v4 objectForKeyedSubscript:@"createdTimeInterval"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v39 = 0;
      goto LABEL_26;
    }

    [v13 doubleValue];
    v14 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  v39 = v14;
LABEL_26:

  v15 = [v4 objectForKeyedSubscript:@"requesterDSID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = v15;
  }

  else
  {
    v38 = 0;
  }

  v16 = [v4 objectForKeyedSubscript:@"title"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = v16;
  }

  else
  {
    v37 = 0;
  }

  v17 = [v4 objectForKeyedSubscript:@"message"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = [v4 objectForKeyedSubscript:@"preApproveTitle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = [v4 objectForKeyedSubscript:@"postApproveTitle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = [v4 objectForKeyedSubscript:@"preDeclineTitle"];
  objc_opt_class();
  v24 = v7;
  if (objc_opt_isKindOfClass())
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  v26 = [v4 objectForKeyedSubscript:@"postDeclineTitle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v28 = [v4 objectForKeyedSubscript:@"metadata"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  objc_storeStrong(&v5->_uniqueIdentifier, v24);
  objc_storeStrong(&v5->_bundleIdentifier, obj);
  objc_storeStrong(&v5->_adamID, v43);
  objc_storeStrong(&v5->_distributorID, v42);
  objc_storeStrong(&v5->_ageRatingValue, v41);
  v30 = v40;
  if (v40)
  {
    v30 = [v40 integerValue];
  }

  v5->_approvalStatus = v30;
  if (v39)
  {
    v31 = v39;
  }

  else
  {
    v31 = +[NSDate date];
  }

  createdDate = v5->_createdDate;
  v5->_createdDate = v31;

  objc_storeStrong(&v5->_requesterDSID, v38);
  objc_storeStrong(&v5->_title, v37);
  objc_storeStrong(&v5->_message, v18);
  objc_storeStrong(&v5->_preApproveTitle, v20);
  objc_storeStrong(&v5->_postApproveTitle, v22);
  objc_storeStrong(&v5->_preDeclineTitle, v25);
  objc_storeStrong(&v5->_postDeclineTitle, v27);
  if (v29)
  {
    v33 = [[APAskToAgeRestrictionMetadata alloc] initWithDictionary:v29];
    metadata = v5->_metadata;
    v5->_metadata = v33;
  }

LABEL_58:
  return v5;
}

- (id)compile
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(ExceptionRequest *)self bundleIdentifier];
  [v3 ap_setNullableObject:v4 forKey:@"bundleIdentifier"];

  v5 = [(ExceptionRequest *)self adamID];
  [v3 ap_setNullableObject:v5 forKey:@"adamID"];

  v6 = [(ExceptionRequest *)self distributorID];
  [v3 ap_setNullableObject:v6 forKey:@"distributorID"];

  v7 = [(ExceptionRequest *)self ageRatingValue];
  [v3 ap_setNullableObject:v7 forKey:@"ageRatingValue"];

  v8 = [NSNumber numberWithInteger:[(ExceptionRequest *)self approvalStatus]];
  [v3 ap_setNullableObject:v8 forKey:@"approvalStatus"];

  v9 = [(ExceptionRequest *)self createdDate];
  [v9 timeIntervalSinceReferenceDate];
  v10 = [NSNumber numberWithDouble:?];
  [v3 ap_setNullableObject:v10 forKey:@"createdTimeInterval"];

  v11 = [(ExceptionRequest *)self uniqueIdentifier];
  [v3 ap_setNullableObject:v11 forKey:@"uniqueIdentifier"];

  v12 = [(ExceptionRequest *)self requesterDSID];
  [v3 ap_setNullableObject:v12 forKey:@"requesterDSID"];

  v13 = [(ExceptionRequest *)self title];
  [v3 ap_setNullableObject:v13 forKey:@"title"];

  v14 = [(ExceptionRequest *)self message];
  [v3 ap_setNullableObject:v14 forKey:@"message"];

  v15 = [(ExceptionRequest *)self preApproveTitle];
  [v3 ap_setNullableObject:v15 forKey:@"preApproveTitle"];

  v16 = [(ExceptionRequest *)self postApproveTitle];
  [v3 ap_setNullableObject:v16 forKey:@"postApproveTitle"];

  v17 = [(ExceptionRequest *)self preDeclineTitle];
  [v3 ap_setNullableObject:v17 forKey:@"preDeclineTitle"];

  v18 = [(ExceptionRequest *)self postDeclineTitle];
  [v3 ap_setNullableObject:v18 forKey:@"postDeclineTitle"];

  v19 = [(ExceptionRequest *)self metadata];
  v20 = [v19 compile];
  [v3 ap_setNullableObject:v20 forKey:@"metadata"];

  return v3;
}

- (id)copy
{
  v22 = [ExceptionRequest alloc];
  v30 = [(ExceptionRequest *)self uniqueIdentifier];
  v35 = [v30 copy];
  v29 = [(ExceptionRequest *)self bundleIdentifier];
  v34 = [v29 copy];
  v28 = [(ExceptionRequest *)self adamID];
  v33 = [v28 copy];
  v27 = [(ExceptionRequest *)self distributorID];
  v32 = [v27 copy];
  v26 = [(ExceptionRequest *)self ageRatingValue];
  v19 = [v26 copy];
  v25 = [(ExceptionRequest *)self requesterDSID];
  v18 = [v25 copy];
  v16 = [(ExceptionRequest *)self approvalStatus];
  v24 = [(ExceptionRequest *)self title];
  v31 = [v24 copy];
  v21 = [(ExceptionRequest *)self message];
  v15 = [v21 copy];
  v20 = [(ExceptionRequest *)self preApproveTitle];
  v3 = [v20 copy];
  v17 = [(ExceptionRequest *)self postApproveTitle];
  v14 = [v17 copy];
  v4 = [(ExceptionRequest *)self preDeclineTitle];
  v5 = [v4 copy];
  v6 = [(ExceptionRequest *)self postDeclineTitle];
  v7 = [v6 copy];
  v8 = [(ExceptionRequest *)self metadata];
  v9 = [v8 copy];
  v23 = [(ExceptionRequest *)v22 initWithUniqueIdentifier:v35 bundleIdentifier:v34 adamID:v33 distributorID:v32 ageRatingValue:v19 requesterDSID:v18 approvalStatus:v16 title:v31 message:v15 preApproveTitle:v3 postApproveTitle:v14 preDeclineTitle:v5 postDeclineTitle:v7 metadata:v9];

  v10 = [(ExceptionRequest *)self createdDate];
  v11 = [v10 copy];
  createdDate = v23->_createdDate;
  v23->_createdDate = v11;

  return v23;
}

- (id)screenTimeException
{
  v3 = [STExceptionApp alloc];
  v4 = [(ExceptionRequest *)self requesterDSID];
  v5 = [(ExceptionRequest *)self bundleIdentifier];
  v6 = [(ExceptionRequest *)self adamID];
  v7 = [v6 longLongValue];
  v8 = [(ExceptionRequest *)self distributorID];
  v9 = [(ExceptionRequest *)self ageRatingValue];
  v10 = [v3 initWithRequesterDSID:v4 bundleIdentifier:v5 adamID:v7 distributorID:v8 ratingValue:{objc_msgSend(v9, "longLongValue")}];

  return v10;
}

@end