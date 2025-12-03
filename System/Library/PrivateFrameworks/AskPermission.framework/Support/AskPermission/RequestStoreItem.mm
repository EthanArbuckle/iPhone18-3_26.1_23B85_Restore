@interface RequestStoreItem
- (RequestStoreItem)initWithDictionary:(id)dictionary;
- (RequestStoreItem)initWithItemIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier uniqueIdentifier:(id)uniqueIdentifier ageRating:(id)rating ageRatingValue:(id)value approverDSID:(id)d requesterDSID:(id)iD createdDate:(id)self0 modifiedDate:(id)self1 isException:(BOOL)self2 itemBundleID:(id)self3 itemDesc:(id)self4 itemTitle:(id)self5 localizedPrice:(id)self6 previewURL:(id)self7 productType:(id)self8 productTypeName:(id)self9 productURL:(id)rL offerName:(id)offerName requestString:(id)string requestSummary:(id)summary priceSummary:(id)priceSummary status:(int64_t)status suppressClientResume:(BOOL)resume starRating:(id)starRating thumbnailURLString:(id)lString;
- (RequestStoreItem)initWithRequest:(id)request;
- (id)compile;
- (id)description;
- (void)overlayItem:(id)item;
@end

@implementation RequestStoreItem

- (RequestStoreItem)initWithItemIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier uniqueIdentifier:(id)uniqueIdentifier ageRating:(id)rating ageRatingValue:(id)value approverDSID:(id)d requesterDSID:(id)iD createdDate:(id)self0 modifiedDate:(id)self1 isException:(BOOL)self2 itemBundleID:(id)self3 itemDesc:(id)self4 itemTitle:(id)self5 localizedPrice:(id)self6 previewURL:(id)self7 productType:(id)self8 productTypeName:(id)self9 productURL:(id)rL offerName:(id)offerName requestString:(id)string requestSummary:(id)summary priceSummary:(id)priceSummary status:(int64_t)status suppressClientResume:(BOOL)resume starRating:(id)starRating thumbnailURLString:(id)lString
{
  identifierCopy = identifier;
  requestIdentifierCopy = requestIdentifier;
  requestIdentifierCopy2 = requestIdentifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  uniqueIdentifierCopy2 = uniqueIdentifier;
  obj = rating;
  ratingCopy = rating;
  valueCopy = value;
  valueCopy2 = value;
  dCopy = d;
  dCopy2 = d;
  iDCopy = iD;
  dateCopy = date;
  modifiedDateCopy = modifiedDate;
  bundleIDCopy = bundleID;
  descCopy = desc;
  titleCopy = title;
  priceCopy = price;
  lCopy = l;
  typeCopy = type;
  nameCopy = name;
  rLCopy = rL;
  offerNameCopy = offerName;
  stringCopy = string;
  summaryCopy = summary;
  priceSummaryCopy = priceSummary;
  starRatingCopy = starRating;
  lStringCopy = lString;
  v66.receiver = self;
  v66.super_class = RequestStoreItem;
  v42 = [(RequestStoreItem *)&v66 init];
  v43 = v42;
  if (v42)
  {
    objc_storeStrong(&v42->_ageRating, obj);
    objc_storeStrong(&v43->_ageRatingValue, valueCopy);
    objc_storeStrong(&v43->_approverDSID, dCopy);
    objc_storeStrong(&v43->_createdDate, date);
    v43->_isException = exception;
    objc_storeStrong(&v43->_itemBundleID, bundleID);
    objc_storeStrong(&v43->_itemDescription, desc);
    objc_storeStrong(&v43->_itemIdentifier, identifier);
    objc_storeStrong(&v43->_itemTitle, title);
    objc_storeStrong(&v43->_localizedPrice, price);
    objc_storeStrong(&v43->_modifiedDate, modifiedDate);
    objc_storeStrong(&v43->_offerName, offerName);
    objc_storeStrong(&v43->_previewURL, l);
    objc_storeStrong(&v43->_priceSummary, priceSummary);
    objc_storeStrong(&v43->_productType, type);
    objc_storeStrong(&v43->_productTypeName, name);
    objc_storeStrong(&v43->_productURL, rL);
    objc_storeStrong(&v43->_requestIdentifier, requestIdentifierCopy);
    objc_storeStrong(&v43->_requestString, string);
    objc_storeStrong(&v43->_requestSummary, summary);
    objc_storeStrong(&v43->_requesterDSID, iD);
    objc_storeStrong(&v43->_starRating, starRating);
    v43->_status = status;
    v43->_suppressClientResume = resume;
    objc_storeStrong(&v43->_thumbnailURLString, lString);
    objc_storeStrong(&v43->_uniqueIdentifier, uniqueIdentifierCopy);
  }

  return v43;
}

- (RequestStoreItem)initWithRequest:(id)request
{
  requestCopy = request;
  v53.receiver = self;
  v53.super_class = RequestStoreItem;
  v5 = [(RequestStoreItem *)&v53 init];
  if (v5)
  {
    ageRating = [requestCopy ageRating];
    ageRating = v5->_ageRating;
    v5->_ageRating = ageRating;

    ageRatingValue = [requestCopy ageRatingValue];
    ageRatingValue = v5->_ageRatingValue;
    v5->_ageRatingValue = ageRatingValue;

    approverDSID = [requestCopy approverDSID];
    approverDSID = v5->_approverDSID;
    v5->_approverDSID = approverDSID;

    createdDate = [requestCopy createdDate];
    createdDate = v5->_createdDate;
    v5->_createdDate = createdDate;

    v5->_isException = [requestCopy isException];
    itemBundleID = [requestCopy itemBundleID];
    itemBundleID = v5->_itemBundleID;
    v5->_itemBundleID = itemBundleID;

    itemDescription = [requestCopy itemDescription];
    itemDescription = v5->_itemDescription;
    v5->_itemDescription = itemDescription;

    itemIdentifier = [requestCopy itemIdentifier];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = itemIdentifier;

    itemTitle = [requestCopy itemTitle];
    itemTitle = v5->_itemTitle;
    v5->_itemTitle = itemTitle;

    localizedPrice = [requestCopy localizedPrice];
    localizedPrice = v5->_localizedPrice;
    v5->_localizedPrice = localizedPrice;

    modifiedDate = [requestCopy modifiedDate];
    modifiedDate = v5->_modifiedDate;
    v5->_modifiedDate = modifiedDate;

    offerName = [requestCopy offerName];
    offerName = v5->_offerName;
    v5->_offerName = offerName;

    previewURL = [requestCopy previewURL];
    previewURL = v5->_previewURL;
    v5->_previewURL = previewURL;

    priceSummary = [requestCopy priceSummary];
    priceSummary = v5->_priceSummary;
    v5->_priceSummary = priceSummary;

    productType = [requestCopy productType];
    productType = v5->_productType;
    v5->_productType = productType;

    productTypeName = [requestCopy productTypeName];
    productTypeName = v5->_productTypeName;
    v5->_productTypeName = productTypeName;

    productURL = [requestCopy productURL];
    productURL = v5->_productURL;
    v5->_productURL = productURL;

    requestIdentifier = [requestCopy requestIdentifier];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = requestIdentifier;

    requestString = [requestCopy requestString];
    requestString = v5->_requestString;
    v5->_requestString = requestString;

    requestSummary = [requestCopy requestSummary];
    requestSummary = v5->_requestSummary;
    v5->_requestSummary = requestSummary;

    requesterDSID = [requestCopy requesterDSID];
    requesterDSID = v5->_requesterDSID;
    v5->_requesterDSID = requesterDSID;

    starRating = [requestCopy starRating];
    starRating = v5->_starRating;
    v5->_starRating = starRating;

    v5->_status = [requestCopy status];
    v5->_suppressClientResume = [requestCopy suppressClientResume];
    thumbnailURLString = [requestCopy thumbnailURLString];
    thumbnailURLString = v5->_thumbnailURLString;
    v5->_thumbnailURLString = thumbnailURLString;

    uniqueIdentifier = [requestCopy uniqueIdentifier];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = uniqueIdentifier;
  }

  return v5;
}

- (RequestStoreItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"ageRating"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v80 = v4;
  }

  else
  {
    v80 = 0;
  }

  v5 = [dictionaryCopy objectForKeyedSubscript:@"ageRatingValue"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"approverDSID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"requesterDSID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"isException"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v83 = v11;
  }

  else
  {
    v83 = 0;
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"itemDescription"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v77 = v12;
  }

  else
  {
    v77 = 0;
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"itemTitle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v84 = v13;
  }

  else
  {
    v84 = 0;
  }

  v85 = v10;

  v14 = [dictionaryCopy objectForKeyedSubscript:@"localizedPrice"];
  objc_opt_class();
  v82 = v8;
  if (objc_opt_isKindOfClass())
  {
    v90 = v14;
  }

  else
  {
    v90 = 0;
  }

  v15 = [dictionaryCopy objectForKeyedSubscript:@"previewURL"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
LABEL_29:
    v81 = v16;
    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [NSURL URLWithString:v15];
    goto LABEL_29;
  }

  v81 = 0;
LABEL_31:

  v17 = [dictionaryCopy objectForKeyedSubscript:@"productType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v91 = v17;
  }

  else
  {
    v91 = 0;
  }

  v18 = [dictionaryCopy objectForKeyedSubscript:@"productTypeName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [dictionaryCopy objectForKeyedSubscript:@"productURL"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
LABEL_41:
    v79 = v21;
    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [NSURL URLWithString:v20];
    goto LABEL_41;
  }

  v79 = 0;
LABEL_43:

  v22 = [dictionaryCopy objectForKeyedSubscript:@"starRating"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v78 = v22;
  }

  else
  {
    v78 = 0;
  }

  v23 = [dictionaryCopy objectForKeyedSubscript:@"thumbnailURLString"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = [dictionaryCopy objectForKeyedSubscript:@"itemBundleID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v76 = v25;
  }

  else
  {
    v76 = 0;
  }

  v26 = [dictionaryCopy objectForKeyedSubscript:@"itemIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v88 = v26;
  }

  else
  {
    v88 = 0;
  }

  v27 = [dictionaryCopy objectForKeyedSubscript:@"requestIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v87 = v27;
  }

  else
  {
    v87 = 0;
  }

  v28 = [dictionaryCopy objectForKeyedSubscript:@"uniqueIdentifier"];
  objc_opt_class();
  v86 = v6;
  if (objc_opt_isKindOfClass())
  {
    v73 = v28;
  }

  else
  {
    v73 = 0;
  }

  v29 = [dictionaryCopy objectForKeyedSubscript:@"createdTimeInterval"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = v29;
LABEL_65:
    v31 = v30;
    goto LABEL_67;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v29 doubleValue];
    v30 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    goto LABEL_65;
  }

  v31 = 0;
LABEL_67:

  v32 = [dictionaryCopy objectForKeyedSubscript:@"modifiedTimeInterval"];
  objc_opt_class();
  v75 = v19;
  if (objc_opt_isKindOfClass())
  {
    v33 = v32;
LABEL_71:
    v34 = v33;
    goto LABEL_73;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v32 doubleValue];
    v33 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    goto LABEL_71;
  }

  v34 = 0;
LABEL_73:

  v35 = [dictionaryCopy objectForKeyedSubscript:@"offerName"];
  objc_opt_class();
  v74 = v24;
  if (objc_opt_isKindOfClass())
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  v37 = [dictionaryCopy objectForKeyedSubscript:@"requestString"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  v39 = [dictionaryCopy objectForKeyedSubscript:@"requestSummary"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  v41 = [dictionaryCopy objectForKeyedSubscript:@"priceSummary"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  v69 = v42;

  v43 = [dictionaryCopy objectForKeyedSubscript:@"status"];
  objc_opt_class();
  v70 = v38;
  if (objc_opt_isKindOfClass())
  {
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  v45 = [dictionaryCopy objectForKeyedSubscript:@"suppressClientResume"];
  objc_opt_class();
  v71 = v36;
  if (objc_opt_isKindOfClass())
  {
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  v47 = v40;
  v48 = v34;

  v49 = 0;
  v50 = v88;
  v72 = dictionaryCopy;
  v66 = v31;
  if (!v88)
  {
    goto LABEL_96;
  }

  v51 = v87;
  if (!v87)
  {
LABEL_97:
    v59 = v73;
    v55 = v46;
    v56 = v40;
    v57 = v70;
    v58 = v71;
    v54 = v69;
    goto LABEL_98;
  }

  if (!v31)
  {
    v50 = v88;
LABEL_96:
    v51 = v87;
    goto LABEL_97;
  }

  v52 = v31;
  bOOLValue = [v83 BOOLValue];
  integerValue = [v44 integerValue];
  LOBYTE(v65) = [v46 BOOLValue];
  v54 = v69;
  v64 = integerValue;
  v63 = v47;
  v55 = v46;
  v56 = v47;
  v57 = v70;
  v58 = v71;
  LOBYTE(v62) = bOOLValue;
  v61 = v52;
  v50 = v88;
  v51 = v87;
  v59 = v73;
  v49 = [(RequestStoreItem *)self initWithItemIdentifier:v88 requestIdentifier:v87 uniqueIdentifier:v73 ageRating:v80 ageRatingValue:v86 approverDSID:v82 requesterDSID:v85 createdDate:v61 modifiedDate:v48 isException:v62 itemBundleID:v76 itemDesc:v77 itemTitle:v84 localizedPrice:v90 previewURL:v81 productType:v91 productTypeName:v75 productURL:v79 offerName:v71 requestString:v70 requestSummary:v63 priceSummary:v69 status:v64 suppressClientResume:v65 starRating:v78 thumbnailURLString:v74, v66];
  self = v49;
LABEL_98:
  v68 = v49;

  return v68;
}

- (id)compile
{
  v3 = objc_alloc_init(NSMutableDictionary);
  ageRating = [(RequestStoreItem *)self ageRating];
  [v3 ap_setNullableObject:ageRating forKey:@"ageRating"];

  ageRatingValue = [(RequestStoreItem *)self ageRatingValue];
  [v3 ap_setNullableObject:ageRatingValue forKey:@"ageRatingValue"];

  approverDSID = [(RequestStoreItem *)self approverDSID];
  [v3 ap_setNullableObject:approverDSID forKey:@"approverDSID"];

  requesterDSID = [(RequestStoreItem *)self requesterDSID];
  [v3 ap_setNullableObject:requesterDSID forKey:@"requesterDSID"];

  v8 = [NSNumber numberWithBool:[(RequestStoreItem *)self isException]];
  [v3 ap_setNullableObject:v8 forKey:@"isException"];

  itemBundleID = [(RequestStoreItem *)self itemBundleID];
  [v3 ap_setNullableObject:itemBundleID forKey:@"itemBundleID"];

  itemDescription = [(RequestStoreItem *)self itemDescription];
  [v3 ap_setNullableObject:itemDescription forKey:@"itemDescription"];

  itemTitle = [(RequestStoreItem *)self itemTitle];
  [v3 ap_setNullableObject:itemTitle forKey:@"itemTitle"];

  localizedPrice = [(RequestStoreItem *)self localizedPrice];
  [v3 ap_setNullableObject:localizedPrice forKey:@"localizedPrice"];

  previewURL = [(RequestStoreItem *)self previewURL];
  absoluteString = [previewURL absoluteString];
  [v3 ap_setNullableObject:absoluteString forKey:@"previewURL"];

  productType = [(RequestStoreItem *)self productType];
  [v3 ap_setNullableObject:productType forKey:@"productType"];

  productTypeName = [(RequestStoreItem *)self productTypeName];
  [v3 ap_setNullableObject:productTypeName forKey:@"productTypeName"];

  productURL = [(RequestStoreItem *)self productURL];
  absoluteString2 = [productURL absoluteString];
  [v3 ap_setNullableObject:absoluteString2 forKey:@"productURL"];

  starRating = [(RequestStoreItem *)self starRating];
  [v3 ap_setNullableObject:starRating forKey:@"starRating"];

  thumbnailURLString = [(RequestStoreItem *)self thumbnailURLString];
  [v3 ap_setNullableObject:thumbnailURLString forKey:@"thumbnailURLString"];

  itemIdentifier = [(RequestStoreItem *)self itemIdentifier];
  [v3 ap_setNullableObject:itemIdentifier forKey:@"itemIdentifier"];

  localizations = [(RequestStoreItem *)self localizations];
  compile = [localizations compile];
  [v3 ap_setNullableObject:compile forKey:@"localizations"];

  offerName = [(RequestStoreItem *)self offerName];
  [v3 ap_setNullableObject:offerName forKey:@"offerName"];

  requestIdentifier = [(RequestStoreItem *)self requestIdentifier];
  [v3 ap_setNullableObject:requestIdentifier forKey:@"requestIdentifier"];

  v26 = [NSNumber numberWithInteger:[(RequestStoreItem *)self status]];
  [v3 ap_setNullableObject:v26 forKey:@"status"];

  uniqueIdentifier = [(RequestStoreItem *)self uniqueIdentifier];
  [v3 ap_setNullableObject:uniqueIdentifier forKey:@"uniqueIdentifier"];

  createdDate = [(RequestStoreItem *)self createdDate];
  [createdDate timeIntervalSinceReferenceDate];
  v29 = [NSNumber numberWithDouble:?];
  [v3 ap_setNullableObject:v29 forKey:@"createdTimeInterval"];

  modifiedDate = [(RequestStoreItem *)self modifiedDate];
  [modifiedDate timeIntervalSinceReferenceDate];
  v31 = [NSNumber numberWithDouble:?];
  [v3 ap_setNullableObject:v31 forKey:@"modifiedTimeInterval"];

  v32 = [NSNumber numberWithBool:[(RequestStoreItem *)self suppressClientResume]];
  [v3 ap_setNullableObject:v32 forKey:@"suppressClientResume"];

  requestString = [(RequestStoreItem *)self requestString];
  [v3 ap_setNullableObject:requestString forKey:@"requestString"];

  requestSummary = [(RequestStoreItem *)self requestSummary];
  [v3 ap_setNullableObject:requestSummary forKey:@"requestSummary"];

  priceSummary = [(RequestStoreItem *)self priceSummary];
  [v3 ap_setNullableObject:priceSummary forKey:@"priceSummary"];

  return v3;
}

- (void)overlayItem:(id)item
{
  itemCopy = item;
  if (![(RequestStoreItem *)self isException])
  {
    -[RequestStoreItem setIsException:](self, "setIsException:", [itemCopy isException]);
  }

  ageRating = [(RequestStoreItem *)self ageRating];
  if (ageRating)
  {
    [(RequestStoreItem *)self setAgeRating:ageRating];
  }

  else
  {
    ageRating2 = [itemCopy ageRating];
    [(RequestStoreItem *)self setAgeRating:ageRating2];
  }

  ageRatingValue = [(RequestStoreItem *)self ageRatingValue];
  if (ageRatingValue)
  {
    [(RequestStoreItem *)self setAgeRatingValue:ageRatingValue];
  }

  else
  {
    ageRatingValue2 = [itemCopy ageRatingValue];
    [(RequestStoreItem *)self setAgeRatingValue:ageRatingValue2];
  }

  approverDSID = [(RequestStoreItem *)self approverDSID];
  if (approverDSID)
  {
    [(RequestStoreItem *)self setApproverDSID:approverDSID];
  }

  else
  {
    approverDSID2 = [itemCopy approverDSID];
    [(RequestStoreItem *)self setApproverDSID:approverDSID2];
  }

  createdDate = [(RequestStoreItem *)self createdDate];
  if (createdDate)
  {
    [(RequestStoreItem *)self setCreatedDate:createdDate];
  }

  else
  {
    createdDate2 = [itemCopy createdDate];
    [(RequestStoreItem *)self setCreatedDate:createdDate2];
  }

  itemBundleID = [(RequestStoreItem *)self itemBundleID];
  if (itemBundleID)
  {
    [(RequestStoreItem *)self setItemBundleID:itemBundleID];
  }

  else
  {
    itemBundleID2 = [itemCopy itemBundleID];
    [(RequestStoreItem *)self setItemBundleID:itemBundleID2];
  }

  itemDescription = [(RequestStoreItem *)self itemDescription];
  if (itemDescription)
  {
    [(RequestStoreItem *)self setItemDescription:itemDescription];
  }

  else
  {
    itemDescription2 = [itemCopy itemDescription];
    [(RequestStoreItem *)self setItemDescription:itemDescription2];
  }

  itemIdentifier = [(RequestStoreItem *)self itemIdentifier];
  if (itemIdentifier)
  {
    [(RequestStoreItem *)self setItemIdentifier:itemIdentifier];
  }

  else
  {
    itemIdentifier2 = [itemCopy itemIdentifier];
    [(RequestStoreItem *)self setItemIdentifier:itemIdentifier2];
  }

  itemTitle = [(RequestStoreItem *)self itemTitle];
  if (itemTitle)
  {
    [(RequestStoreItem *)self setItemTitle:itemTitle];
  }

  else
  {
    itemTitle2 = [itemCopy itemTitle];
    [(RequestStoreItem *)self setItemTitle:itemTitle2];
  }

  localizedPrice = [(RequestStoreItem *)self localizedPrice];
  if (localizedPrice)
  {
    [(RequestStoreItem *)self setLocalizedPrice:localizedPrice];
  }

  else
  {
    localizedPrice2 = [itemCopy localizedPrice];
    [(RequestStoreItem *)self setLocalizedPrice:localizedPrice2];
  }

  modifiedDate = [(RequestStoreItem *)self modifiedDate];
  if (modifiedDate)
  {
    [(RequestStoreItem *)self setModifiedDate:modifiedDate];
  }

  else
  {
    modifiedDate2 = [itemCopy modifiedDate];
    [(RequestStoreItem *)self setModifiedDate:modifiedDate2];
  }

  offerName = [(RequestStoreItem *)self offerName];
  if (offerName)
  {
    [(RequestStoreItem *)self setOfferName:offerName];
  }

  else
  {
    offerName2 = [itemCopy offerName];
    [(RequestStoreItem *)self setOfferName:offerName2];
  }

  priceSummary = [(RequestStoreItem *)self priceSummary];
  if (priceSummary)
  {
    [(RequestStoreItem *)self setPriceSummary:priceSummary];
  }

  else
  {
    priceSummary2 = [itemCopy priceSummary];
    [(RequestStoreItem *)self setPriceSummary:priceSummary2];
  }

  requestIdentifier = [(RequestStoreItem *)self requestIdentifier];
  if (requestIdentifier)
  {
    [(RequestStoreItem *)self setRequestIdentifier:requestIdentifier];
  }

  else
  {
    requestIdentifier2 = [itemCopy requestIdentifier];
    [(RequestStoreItem *)self setRequestIdentifier:requestIdentifier2];
  }

  requestString = [(RequestStoreItem *)self requestString];
  if (requestString)
  {
    [(RequestStoreItem *)self setRequestString:requestString];
  }

  else
  {
    requestString2 = [itemCopy requestString];
    [(RequestStoreItem *)self setRequestString:requestString2];
  }

  requestSummary = [(RequestStoreItem *)self requestSummary];
  if (requestSummary)
  {
    [(RequestStoreItem *)self setRequestSummary:requestSummary];
  }

  else
  {
    requestSummary2 = [itemCopy requestSummary];
    [(RequestStoreItem *)self setRequestSummary:requestSummary2];
  }

  requesterDSID = [(RequestStoreItem *)self requesterDSID];
  if (requesterDSID)
  {
    [(RequestStoreItem *)self setRequesterDSID:requesterDSID];
  }

  else
  {
    requesterDSID2 = [itemCopy requesterDSID];
    [(RequestStoreItem *)self setRequesterDSID:requesterDSID2];
  }

  starRating = [(RequestStoreItem *)self starRating];
  if (starRating)
  {
    [(RequestStoreItem *)self setStarRating:starRating];
  }

  else
  {
    starRating2 = [itemCopy starRating];
    [(RequestStoreItem *)self setStarRating:starRating2];
  }

  thumbnailURLString = [(RequestStoreItem *)self thumbnailURLString];
  if (thumbnailURLString)
  {
    [(RequestStoreItem *)self setThumbnailURLString:thumbnailURLString];
  }

  else
  {
    thumbnailURLString2 = [itemCopy thumbnailURLString];
    [(RequestStoreItem *)self setThumbnailURLString:thumbnailURLString2];
  }
}

- (id)description
{
  compile = [(RequestStoreItem *)self compile];
  v4 = [(RequestStoreItem *)self ap_generateDescriptionWithSubObjects:compile];

  return v4;
}

@end