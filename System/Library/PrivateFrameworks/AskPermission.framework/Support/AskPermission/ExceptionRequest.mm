@interface ExceptionRequest
- (ExceptionRequest)initWithDictionary:(id)dictionary;
- (ExceptionRequest)initWithUniqueIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier adamID:(id)d distributorID:(id)iD ageRatingValue:(id)value requesterDSID:(id)sID approvalStatus:(int64_t)status title:(id)self0 message:(id)self1 preApproveTitle:(id)self2 postApproveTitle:(id)self3 preDeclineTitle:(id)self4 postDeclineTitle:(id)self5 metadata:(id)self6;
- (id)compile;
- (id)copy;
- (id)screenTimeException;
@end

@implementation ExceptionRequest

- (ExceptionRequest)initWithUniqueIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier adamID:(id)d distributorID:(id)iD ageRatingValue:(id)value requesterDSID:(id)sID approvalStatus:(int64_t)status title:(id)self0 message:(id)self1 preApproveTitle:(id)self2 postApproveTitle:(id)self3 preDeclineTitle:(id)self4 postDeclineTitle:(id)self5 metadata:(id)self6
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  dCopy = d;
  iDCopy = iD;
  iDCopy2 = iD;
  valueCopy = value;
  valueCopy2 = value;
  sIDCopy = sID;
  titleCopy = title;
  messageCopy = message;
  approveTitleCopy = approveTitle;
  postApproveTitleCopy = postApproveTitle;
  declineTitleCopy = declineTitle;
  postDeclineTitleCopy = postDeclineTitle;
  metadataCopy = metadata;
  v43.receiver = self;
  v43.super_class = ExceptionRequest;
  v27 = [(ExceptionRequest *)&v43 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_uniqueIdentifier, identifier);
    objc_storeStrong(&v28->_bundleIdentifier, bundleIdentifier);
    objc_storeStrong(&v28->_adamID, d);
    objc_storeStrong(&v28->_distributorID, iDCopy);
    objc_storeStrong(&v28->_ageRatingValue, valueCopy);
    v28->_approvalStatus = status;
    v29 = +[NSDate date];
    createdDate = v28->_createdDate;
    v28->_createdDate = v29;

    objc_storeStrong(&v28->_requesterDSID, sID);
    objc_storeStrong(&v28->_title, title);
    objc_storeStrong(&v28->_message, message);
    objc_storeStrong(&v28->_preApproveTitle, approveTitle);
    objc_storeStrong(&v28->_postApproveTitle, postApproveTitle);
    objc_storeStrong(&v28->_preDeclineTitle, declineTitle);
    objc_storeStrong(&v28->_postDeclineTitle, postDeclineTitle);
    objc_storeStrong(&v28->_metadata, metadata);
  }

  return v28;
}

- (ExceptionRequest)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v44.receiver = self;
  v44.super_class = ExceptionRequest;
  v5 = [(ExceptionRequest *)&v44 init];
  if (!v5)
  {
    goto LABEL_58;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"uniqueIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"bundleIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    obj = v8;
  }

  else
  {
    obj = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"adamID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v43 = v9;
  }

  else
  {
    v43 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"distributorID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = v10;
  }

  else
  {
    v42 = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"ageRatingValue"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = v11;
  }

  else
  {
    v41 = 0;
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"approvalStatus"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v40 = v12;
  }

  else
  {
    v40 = 0;
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"createdTimeInterval"];
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

  v15 = [dictionaryCopy objectForKeyedSubscript:@"requesterDSID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = v15;
  }

  else
  {
    v38 = 0;
  }

  v16 = [dictionaryCopy objectForKeyedSubscript:@"title"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = v16;
  }

  else
  {
    v37 = 0;
  }

  v17 = [dictionaryCopy objectForKeyedSubscript:@"message"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = [dictionaryCopy objectForKeyedSubscript:@"preApproveTitle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = [dictionaryCopy objectForKeyedSubscript:@"postApproveTitle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = [dictionaryCopy objectForKeyedSubscript:@"preDeclineTitle"];
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

  v26 = [dictionaryCopy objectForKeyedSubscript:@"postDeclineTitle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v28 = [dictionaryCopy objectForKeyedSubscript:@"metadata"];
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
  integerValue = v40;
  if (v40)
  {
    integerValue = [v40 integerValue];
  }

  v5->_approvalStatus = integerValue;
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
  bundleIdentifier = [(ExceptionRequest *)self bundleIdentifier];
  [v3 ap_setNullableObject:bundleIdentifier forKey:@"bundleIdentifier"];

  adamID = [(ExceptionRequest *)self adamID];
  [v3 ap_setNullableObject:adamID forKey:@"adamID"];

  distributorID = [(ExceptionRequest *)self distributorID];
  [v3 ap_setNullableObject:distributorID forKey:@"distributorID"];

  ageRatingValue = [(ExceptionRequest *)self ageRatingValue];
  [v3 ap_setNullableObject:ageRatingValue forKey:@"ageRatingValue"];

  v8 = [NSNumber numberWithInteger:[(ExceptionRequest *)self approvalStatus]];
  [v3 ap_setNullableObject:v8 forKey:@"approvalStatus"];

  createdDate = [(ExceptionRequest *)self createdDate];
  [createdDate timeIntervalSinceReferenceDate];
  v10 = [NSNumber numberWithDouble:?];
  [v3 ap_setNullableObject:v10 forKey:@"createdTimeInterval"];

  uniqueIdentifier = [(ExceptionRequest *)self uniqueIdentifier];
  [v3 ap_setNullableObject:uniqueIdentifier forKey:@"uniqueIdentifier"];

  requesterDSID = [(ExceptionRequest *)self requesterDSID];
  [v3 ap_setNullableObject:requesterDSID forKey:@"requesterDSID"];

  title = [(ExceptionRequest *)self title];
  [v3 ap_setNullableObject:title forKey:@"title"];

  message = [(ExceptionRequest *)self message];
  [v3 ap_setNullableObject:message forKey:@"message"];

  preApproveTitle = [(ExceptionRequest *)self preApproveTitle];
  [v3 ap_setNullableObject:preApproveTitle forKey:@"preApproveTitle"];

  postApproveTitle = [(ExceptionRequest *)self postApproveTitle];
  [v3 ap_setNullableObject:postApproveTitle forKey:@"postApproveTitle"];

  preDeclineTitle = [(ExceptionRequest *)self preDeclineTitle];
  [v3 ap_setNullableObject:preDeclineTitle forKey:@"preDeclineTitle"];

  postDeclineTitle = [(ExceptionRequest *)self postDeclineTitle];
  [v3 ap_setNullableObject:postDeclineTitle forKey:@"postDeclineTitle"];

  metadata = [(ExceptionRequest *)self metadata];
  compile = [metadata compile];
  [v3 ap_setNullableObject:compile forKey:@"metadata"];

  return v3;
}

- (id)copy
{
  v22 = [ExceptionRequest alloc];
  uniqueIdentifier = [(ExceptionRequest *)self uniqueIdentifier];
  v35 = [uniqueIdentifier copy];
  bundleIdentifier = [(ExceptionRequest *)self bundleIdentifier];
  v34 = [bundleIdentifier copy];
  adamID = [(ExceptionRequest *)self adamID];
  v33 = [adamID copy];
  distributorID = [(ExceptionRequest *)self distributorID];
  v32 = [distributorID copy];
  ageRatingValue = [(ExceptionRequest *)self ageRatingValue];
  v19 = [ageRatingValue copy];
  requesterDSID = [(ExceptionRequest *)self requesterDSID];
  v18 = [requesterDSID copy];
  approvalStatus = [(ExceptionRequest *)self approvalStatus];
  title = [(ExceptionRequest *)self title];
  v31 = [title copy];
  message = [(ExceptionRequest *)self message];
  v15 = [message copy];
  preApproveTitle = [(ExceptionRequest *)self preApproveTitle];
  v3 = [preApproveTitle copy];
  postApproveTitle = [(ExceptionRequest *)self postApproveTitle];
  v14 = [postApproveTitle copy];
  preDeclineTitle = [(ExceptionRequest *)self preDeclineTitle];
  v5 = [preDeclineTitle copy];
  postDeclineTitle = [(ExceptionRequest *)self postDeclineTitle];
  v7 = [postDeclineTitle copy];
  metadata = [(ExceptionRequest *)self metadata];
  v9 = [metadata copy];
  v23 = [(ExceptionRequest *)v22 initWithUniqueIdentifier:v35 bundleIdentifier:v34 adamID:v33 distributorID:v32 ageRatingValue:v19 requesterDSID:v18 approvalStatus:approvalStatus title:v31 message:v15 preApproveTitle:v3 postApproveTitle:v14 preDeclineTitle:v5 postDeclineTitle:v7 metadata:v9];

  createdDate = [(ExceptionRequest *)self createdDate];
  v11 = [createdDate copy];
  createdDate = v23->_createdDate;
  v23->_createdDate = v11;

  return v23;
}

- (id)screenTimeException
{
  v3 = [STExceptionApp alloc];
  requesterDSID = [(ExceptionRequest *)self requesterDSID];
  bundleIdentifier = [(ExceptionRequest *)self bundleIdentifier];
  adamID = [(ExceptionRequest *)self adamID];
  longLongValue = [adamID longLongValue];
  distributorID = [(ExceptionRequest *)self distributorID];
  ageRatingValue = [(ExceptionRequest *)self ageRatingValue];
  v10 = [v3 initWithRequesterDSID:requesterDSID bundleIdentifier:bundleIdentifier adamID:longLongValue distributorID:distributorID ratingValue:{objc_msgSend(ageRatingValue, "longLongValue")}];

  return v10;
}

@end