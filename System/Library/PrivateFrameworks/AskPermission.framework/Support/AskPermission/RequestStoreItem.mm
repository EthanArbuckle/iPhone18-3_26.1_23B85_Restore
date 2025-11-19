@interface RequestStoreItem
- (RequestStoreItem)initWithDictionary:(id)a3;
- (RequestStoreItem)initWithItemIdentifier:(id)a3 requestIdentifier:(id)a4 uniqueIdentifier:(id)a5 ageRating:(id)a6 ageRatingValue:(id)a7 approverDSID:(id)a8 requesterDSID:(id)a9 createdDate:(id)a10 modifiedDate:(id)a11 isException:(BOOL)a12 itemBundleID:(id)a13 itemDesc:(id)a14 itemTitle:(id)a15 localizedPrice:(id)a16 previewURL:(id)a17 productType:(id)a18 productTypeName:(id)a19 productURL:(id)a20 offerName:(id)a21 requestString:(id)a22 requestSummary:(id)a23 priceSummary:(id)a24 status:(int64_t)a25 suppressClientResume:(BOOL)a26 starRating:(id)a27 thumbnailURLString:(id)a28;
- (RequestStoreItem)initWithRequest:(id)a3;
- (id)compile;
- (id)description;
- (void)overlayItem:(id)a3;
@end

@implementation RequestStoreItem

- (RequestStoreItem)initWithItemIdentifier:(id)a3 requestIdentifier:(id)a4 uniqueIdentifier:(id)a5 ageRating:(id)a6 ageRatingValue:(id)a7 approverDSID:(id)a8 requesterDSID:(id)a9 createdDate:(id)a10 modifiedDate:(id)a11 isException:(BOOL)a12 itemBundleID:(id)a13 itemDesc:(id)a14 itemTitle:(id)a15 localizedPrice:(id)a16 previewURL:(id)a17 productType:(id)a18 productTypeName:(id)a19 productURL:(id)a20 offerName:(id)a21 requestString:(id)a22 requestSummary:(id)a23 priceSummary:(id)a24 status:(int64_t)a25 suppressClientResume:(BOOL)a26 starRating:(id)a27 thumbnailURLString:(id)a28
{
  v64 = a3;
  v50 = a4;
  v62 = a4;
  v49 = a5;
  v60 = a5;
  obj = a6;
  v58 = a6;
  v46 = a7;
  v56 = a7;
  v47 = a8;
  v33 = a8;
  v34 = a9;
  v65 = a10;
  v63 = a11;
  v61 = a13;
  v59 = a14;
  v57 = a15;
  v55 = a16;
  v35 = a17;
  v36 = a18;
  v54 = a19;
  v37 = a20;
  v38 = a21;
  v39 = a22;
  v40 = a23;
  v41 = a24;
  v53 = a27;
  v52 = a28;
  v66.receiver = self;
  v66.super_class = RequestStoreItem;
  v42 = [(RequestStoreItem *)&v66 init];
  v43 = v42;
  if (v42)
  {
    objc_storeStrong(&v42->_ageRating, obj);
    objc_storeStrong(&v43->_ageRatingValue, v46);
    objc_storeStrong(&v43->_approverDSID, v47);
    objc_storeStrong(&v43->_createdDate, a10);
    v43->_isException = a12;
    objc_storeStrong(&v43->_itemBundleID, a13);
    objc_storeStrong(&v43->_itemDescription, a14);
    objc_storeStrong(&v43->_itemIdentifier, a3);
    objc_storeStrong(&v43->_itemTitle, a15);
    objc_storeStrong(&v43->_localizedPrice, a16);
    objc_storeStrong(&v43->_modifiedDate, a11);
    objc_storeStrong(&v43->_offerName, a21);
    objc_storeStrong(&v43->_previewURL, a17);
    objc_storeStrong(&v43->_priceSummary, a24);
    objc_storeStrong(&v43->_productType, a18);
    objc_storeStrong(&v43->_productTypeName, a19);
    objc_storeStrong(&v43->_productURL, a20);
    objc_storeStrong(&v43->_requestIdentifier, v50);
    objc_storeStrong(&v43->_requestString, a22);
    objc_storeStrong(&v43->_requestSummary, a23);
    objc_storeStrong(&v43->_requesterDSID, a9);
    objc_storeStrong(&v43->_starRating, a27);
    v43->_status = a25;
    v43->_suppressClientResume = a26;
    objc_storeStrong(&v43->_thumbnailURLString, a28);
    objc_storeStrong(&v43->_uniqueIdentifier, v49);
  }

  return v43;
}

- (RequestStoreItem)initWithRequest:(id)a3
{
  v4 = a3;
  v53.receiver = self;
  v53.super_class = RequestStoreItem;
  v5 = [(RequestStoreItem *)&v53 init];
  if (v5)
  {
    v6 = [v4 ageRating];
    ageRating = v5->_ageRating;
    v5->_ageRating = v6;

    v8 = [v4 ageRatingValue];
    ageRatingValue = v5->_ageRatingValue;
    v5->_ageRatingValue = v8;

    v10 = [v4 approverDSID];
    approverDSID = v5->_approverDSID;
    v5->_approverDSID = v10;

    v12 = [v4 createdDate];
    createdDate = v5->_createdDate;
    v5->_createdDate = v12;

    v5->_isException = [v4 isException];
    v14 = [v4 itemBundleID];
    itemBundleID = v5->_itemBundleID;
    v5->_itemBundleID = v14;

    v16 = [v4 itemDescription];
    itemDescription = v5->_itemDescription;
    v5->_itemDescription = v16;

    v18 = [v4 itemIdentifier];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v18;

    v20 = [v4 itemTitle];
    itemTitle = v5->_itemTitle;
    v5->_itemTitle = v20;

    v22 = [v4 localizedPrice];
    localizedPrice = v5->_localizedPrice;
    v5->_localizedPrice = v22;

    v24 = [v4 modifiedDate];
    modifiedDate = v5->_modifiedDate;
    v5->_modifiedDate = v24;

    v26 = [v4 offerName];
    offerName = v5->_offerName;
    v5->_offerName = v26;

    v28 = [v4 previewURL];
    previewURL = v5->_previewURL;
    v5->_previewURL = v28;

    v30 = [v4 priceSummary];
    priceSummary = v5->_priceSummary;
    v5->_priceSummary = v30;

    v32 = [v4 productType];
    productType = v5->_productType;
    v5->_productType = v32;

    v34 = [v4 productTypeName];
    productTypeName = v5->_productTypeName;
    v5->_productTypeName = v34;

    v36 = [v4 productURL];
    productURL = v5->_productURL;
    v5->_productURL = v36;

    v38 = [v4 requestIdentifier];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v38;

    v40 = [v4 requestString];
    requestString = v5->_requestString;
    v5->_requestString = v40;

    v42 = [v4 requestSummary];
    requestSummary = v5->_requestSummary;
    v5->_requestSummary = v42;

    v44 = [v4 requesterDSID];
    requesterDSID = v5->_requesterDSID;
    v5->_requesterDSID = v44;

    v46 = [v4 starRating];
    starRating = v5->_starRating;
    v5->_starRating = v46;

    v5->_status = [v4 status];
    v5->_suppressClientResume = [v4 suppressClientResume];
    v48 = [v4 thumbnailURLString];
    thumbnailURLString = v5->_thumbnailURLString;
    v5->_thumbnailURLString = v48;

    v50 = [v4 uniqueIdentifier];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v50;
  }

  return v5;
}

- (RequestStoreItem)initWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"ageRating"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v80 = v4;
  }

  else
  {
    v80 = 0;
  }

  v5 = [v3 objectForKeyedSubscript:@"ageRatingValue"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 objectForKeyedSubscript:@"approverDSID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 objectForKeyedSubscript:@"requesterDSID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v3 objectForKeyedSubscript:@"isException"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v83 = v11;
  }

  else
  {
    v83 = 0;
  }

  v12 = [v3 objectForKeyedSubscript:@"itemDescription"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v77 = v12;
  }

  else
  {
    v77 = 0;
  }

  v13 = [v3 objectForKeyedSubscript:@"itemTitle"];
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

  v14 = [v3 objectForKeyedSubscript:@"localizedPrice"];
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

  v15 = [v3 objectForKeyedSubscript:@"previewURL"];
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

  v17 = [v3 objectForKeyedSubscript:@"productType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v91 = v17;
  }

  else
  {
    v91 = 0;
  }

  v18 = [v3 objectForKeyedSubscript:@"productTypeName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [v3 objectForKeyedSubscript:@"productURL"];
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

  v22 = [v3 objectForKeyedSubscript:@"starRating"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v78 = v22;
  }

  else
  {
    v78 = 0;
  }

  v23 = [v3 objectForKeyedSubscript:@"thumbnailURLString"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = [v3 objectForKeyedSubscript:@"itemBundleID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v76 = v25;
  }

  else
  {
    v76 = 0;
  }

  v26 = [v3 objectForKeyedSubscript:@"itemIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v88 = v26;
  }

  else
  {
    v88 = 0;
  }

  v27 = [v3 objectForKeyedSubscript:@"requestIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v87 = v27;
  }

  else
  {
    v87 = 0;
  }

  v28 = [v3 objectForKeyedSubscript:@"uniqueIdentifier"];
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

  v29 = [v3 objectForKeyedSubscript:@"createdTimeInterval"];
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

  v32 = [v3 objectForKeyedSubscript:@"modifiedTimeInterval"];
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

  v35 = [v3 objectForKeyedSubscript:@"offerName"];
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

  v37 = [v3 objectForKeyedSubscript:@"requestString"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  v39 = [v3 objectForKeyedSubscript:@"requestSummary"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  v41 = [v3 objectForKeyedSubscript:@"priceSummary"];
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

  v43 = [v3 objectForKeyedSubscript:@"status"];
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

  v45 = [v3 objectForKeyedSubscript:@"suppressClientResume"];
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
  v72 = v3;
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
  v67 = [v83 BOOLValue];
  v53 = [v44 integerValue];
  LOBYTE(v65) = [v46 BOOLValue];
  v54 = v69;
  v64 = v53;
  v63 = v47;
  v55 = v46;
  v56 = v47;
  v57 = v70;
  v58 = v71;
  LOBYTE(v62) = v67;
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
  v4 = [(RequestStoreItem *)self ageRating];
  [v3 ap_setNullableObject:v4 forKey:@"ageRating"];

  v5 = [(RequestStoreItem *)self ageRatingValue];
  [v3 ap_setNullableObject:v5 forKey:@"ageRatingValue"];

  v6 = [(RequestStoreItem *)self approverDSID];
  [v3 ap_setNullableObject:v6 forKey:@"approverDSID"];

  v7 = [(RequestStoreItem *)self requesterDSID];
  [v3 ap_setNullableObject:v7 forKey:@"requesterDSID"];

  v8 = [NSNumber numberWithBool:[(RequestStoreItem *)self isException]];
  [v3 ap_setNullableObject:v8 forKey:@"isException"];

  v9 = [(RequestStoreItem *)self itemBundleID];
  [v3 ap_setNullableObject:v9 forKey:@"itemBundleID"];

  v10 = [(RequestStoreItem *)self itemDescription];
  [v3 ap_setNullableObject:v10 forKey:@"itemDescription"];

  v11 = [(RequestStoreItem *)self itemTitle];
  [v3 ap_setNullableObject:v11 forKey:@"itemTitle"];

  v12 = [(RequestStoreItem *)self localizedPrice];
  [v3 ap_setNullableObject:v12 forKey:@"localizedPrice"];

  v13 = [(RequestStoreItem *)self previewURL];
  v14 = [v13 absoluteString];
  [v3 ap_setNullableObject:v14 forKey:@"previewURL"];

  v15 = [(RequestStoreItem *)self productType];
  [v3 ap_setNullableObject:v15 forKey:@"productType"];

  v16 = [(RequestStoreItem *)self productTypeName];
  [v3 ap_setNullableObject:v16 forKey:@"productTypeName"];

  v17 = [(RequestStoreItem *)self productURL];
  v18 = [v17 absoluteString];
  [v3 ap_setNullableObject:v18 forKey:@"productURL"];

  v19 = [(RequestStoreItem *)self starRating];
  [v3 ap_setNullableObject:v19 forKey:@"starRating"];

  v20 = [(RequestStoreItem *)self thumbnailURLString];
  [v3 ap_setNullableObject:v20 forKey:@"thumbnailURLString"];

  v21 = [(RequestStoreItem *)self itemIdentifier];
  [v3 ap_setNullableObject:v21 forKey:@"itemIdentifier"];

  v22 = [(RequestStoreItem *)self localizations];
  v23 = [v22 compile];
  [v3 ap_setNullableObject:v23 forKey:@"localizations"];

  v24 = [(RequestStoreItem *)self offerName];
  [v3 ap_setNullableObject:v24 forKey:@"offerName"];

  v25 = [(RequestStoreItem *)self requestIdentifier];
  [v3 ap_setNullableObject:v25 forKey:@"requestIdentifier"];

  v26 = [NSNumber numberWithInteger:[(RequestStoreItem *)self status]];
  [v3 ap_setNullableObject:v26 forKey:@"status"];

  v27 = [(RequestStoreItem *)self uniqueIdentifier];
  [v3 ap_setNullableObject:v27 forKey:@"uniqueIdentifier"];

  v28 = [(RequestStoreItem *)self createdDate];
  [v28 timeIntervalSinceReferenceDate];
  v29 = [NSNumber numberWithDouble:?];
  [v3 ap_setNullableObject:v29 forKey:@"createdTimeInterval"];

  v30 = [(RequestStoreItem *)self modifiedDate];
  [v30 timeIntervalSinceReferenceDate];
  v31 = [NSNumber numberWithDouble:?];
  [v3 ap_setNullableObject:v31 forKey:@"modifiedTimeInterval"];

  v32 = [NSNumber numberWithBool:[(RequestStoreItem *)self suppressClientResume]];
  [v3 ap_setNullableObject:v32 forKey:@"suppressClientResume"];

  v33 = [(RequestStoreItem *)self requestString];
  [v3 ap_setNullableObject:v33 forKey:@"requestString"];

  v34 = [(RequestStoreItem *)self requestSummary];
  [v3 ap_setNullableObject:v34 forKey:@"requestSummary"];

  v35 = [(RequestStoreItem *)self priceSummary];
  [v3 ap_setNullableObject:v35 forKey:@"priceSummary"];

  return v3;
}

- (void)overlayItem:(id)a3
{
  v40 = a3;
  if (![(RequestStoreItem *)self isException])
  {
    -[RequestStoreItem setIsException:](self, "setIsException:", [v40 isException]);
  }

  v4 = [(RequestStoreItem *)self ageRating];
  if (v4)
  {
    [(RequestStoreItem *)self setAgeRating:v4];
  }

  else
  {
    v5 = [v40 ageRating];
    [(RequestStoreItem *)self setAgeRating:v5];
  }

  v6 = [(RequestStoreItem *)self ageRatingValue];
  if (v6)
  {
    [(RequestStoreItem *)self setAgeRatingValue:v6];
  }

  else
  {
    v7 = [v40 ageRatingValue];
    [(RequestStoreItem *)self setAgeRatingValue:v7];
  }

  v8 = [(RequestStoreItem *)self approverDSID];
  if (v8)
  {
    [(RequestStoreItem *)self setApproverDSID:v8];
  }

  else
  {
    v9 = [v40 approverDSID];
    [(RequestStoreItem *)self setApproverDSID:v9];
  }

  v10 = [(RequestStoreItem *)self createdDate];
  if (v10)
  {
    [(RequestStoreItem *)self setCreatedDate:v10];
  }

  else
  {
    v11 = [v40 createdDate];
    [(RequestStoreItem *)self setCreatedDate:v11];
  }

  v12 = [(RequestStoreItem *)self itemBundleID];
  if (v12)
  {
    [(RequestStoreItem *)self setItemBundleID:v12];
  }

  else
  {
    v13 = [v40 itemBundleID];
    [(RequestStoreItem *)self setItemBundleID:v13];
  }

  v14 = [(RequestStoreItem *)self itemDescription];
  if (v14)
  {
    [(RequestStoreItem *)self setItemDescription:v14];
  }

  else
  {
    v15 = [v40 itemDescription];
    [(RequestStoreItem *)self setItemDescription:v15];
  }

  v16 = [(RequestStoreItem *)self itemIdentifier];
  if (v16)
  {
    [(RequestStoreItem *)self setItemIdentifier:v16];
  }

  else
  {
    v17 = [v40 itemIdentifier];
    [(RequestStoreItem *)self setItemIdentifier:v17];
  }

  v18 = [(RequestStoreItem *)self itemTitle];
  if (v18)
  {
    [(RequestStoreItem *)self setItemTitle:v18];
  }

  else
  {
    v19 = [v40 itemTitle];
    [(RequestStoreItem *)self setItemTitle:v19];
  }

  v20 = [(RequestStoreItem *)self localizedPrice];
  if (v20)
  {
    [(RequestStoreItem *)self setLocalizedPrice:v20];
  }

  else
  {
    v21 = [v40 localizedPrice];
    [(RequestStoreItem *)self setLocalizedPrice:v21];
  }

  v22 = [(RequestStoreItem *)self modifiedDate];
  if (v22)
  {
    [(RequestStoreItem *)self setModifiedDate:v22];
  }

  else
  {
    v23 = [v40 modifiedDate];
    [(RequestStoreItem *)self setModifiedDate:v23];
  }

  v24 = [(RequestStoreItem *)self offerName];
  if (v24)
  {
    [(RequestStoreItem *)self setOfferName:v24];
  }

  else
  {
    v25 = [v40 offerName];
    [(RequestStoreItem *)self setOfferName:v25];
  }

  v26 = [(RequestStoreItem *)self priceSummary];
  if (v26)
  {
    [(RequestStoreItem *)self setPriceSummary:v26];
  }

  else
  {
    v27 = [v40 priceSummary];
    [(RequestStoreItem *)self setPriceSummary:v27];
  }

  v28 = [(RequestStoreItem *)self requestIdentifier];
  if (v28)
  {
    [(RequestStoreItem *)self setRequestIdentifier:v28];
  }

  else
  {
    v29 = [v40 requestIdentifier];
    [(RequestStoreItem *)self setRequestIdentifier:v29];
  }

  v30 = [(RequestStoreItem *)self requestString];
  if (v30)
  {
    [(RequestStoreItem *)self setRequestString:v30];
  }

  else
  {
    v31 = [v40 requestString];
    [(RequestStoreItem *)self setRequestString:v31];
  }

  v32 = [(RequestStoreItem *)self requestSummary];
  if (v32)
  {
    [(RequestStoreItem *)self setRequestSummary:v32];
  }

  else
  {
    v33 = [v40 requestSummary];
    [(RequestStoreItem *)self setRequestSummary:v33];
  }

  v34 = [(RequestStoreItem *)self requesterDSID];
  if (v34)
  {
    [(RequestStoreItem *)self setRequesterDSID:v34];
  }

  else
  {
    v35 = [v40 requesterDSID];
    [(RequestStoreItem *)self setRequesterDSID:v35];
  }

  v36 = [(RequestStoreItem *)self starRating];
  if (v36)
  {
    [(RequestStoreItem *)self setStarRating:v36];
  }

  else
  {
    v37 = [v40 starRating];
    [(RequestStoreItem *)self setStarRating:v37];
  }

  v38 = [(RequestStoreItem *)self thumbnailURLString];
  if (v38)
  {
    [(RequestStoreItem *)self setThumbnailURLString:v38];
  }

  else
  {
    v39 = [v40 thumbnailURLString];
    [(RequestStoreItem *)self setThumbnailURLString:v39];
  }
}

- (id)description
{
  v3 = [(RequestStoreItem *)self compile];
  v4 = [(RequestStoreItem *)self ap_generateDescriptionWithSubObjects:v3];

  return v4;
}

@end