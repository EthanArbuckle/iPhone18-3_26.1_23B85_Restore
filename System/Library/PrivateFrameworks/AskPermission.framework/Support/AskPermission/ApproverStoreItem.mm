@interface ApproverStoreItem
- (ApproverStoreItem)initWithDictionary:(id)dictionary;
- (ApproverStoreItem)initWithItemIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier uniqueIdentifier:(id)uniqueIdentifier date:(id)date;
- (ApproverStoreItem)initWithRequest:(id)request date:(id)date;
- (id)compile;
- (id)description;
@end

@implementation ApproverStoreItem

- (ApproverStoreItem)initWithRequest:(id)request date:(id)date
{
  requestCopy = request;
  v58.receiver = self;
  v58.super_class = ApproverStoreItem;
  v6 = [(ApproverStoreItem *)&v58 init];
  if (v6)
  {
    ageRating = [requestCopy ageRating];
    ageRating = v6->_ageRating;
    v6->_ageRating = ageRating;

    ageRatingValue = [requestCopy ageRatingValue];
    ageRatingValue = v6->_ageRatingValue;
    v6->_ageRatingValue = ageRatingValue;

    approverDSID = [requestCopy approverDSID];
    approverDSID = v6->_approverDSID;
    v6->_approverDSID = approverDSID;

    v6->_canSendViaMessages = [requestCopy canSendViaMessages];
    createdDate = [requestCopy createdDate];
    createdDate = v6->_createdDate;
    v6->_createdDate = createdDate;

    modifiedDate = [requestCopy modifiedDate];
    modifiedDate = v6->_modifiedDate;
    v6->_modifiedDate = modifiedDate;

    v6->_isException = [requestCopy isException];
    itemIdentifier = [requestCopy itemIdentifier];
    itemIdentifier = v6->_itemIdentifier;
    v6->_itemIdentifier = itemIdentifier;

    requestIdentifier = [requestCopy requestIdentifier];
    requestIdentifier = v6->_requestIdentifier;
    v6->_requestIdentifier = requestIdentifier;

    uniqueIdentifier = [requestCopy uniqueIdentifier];
    uniqueIdentifier = v6->_uniqueIdentifier;
    v6->_uniqueIdentifier = uniqueIdentifier;

    itemTitle = [requestCopy itemTitle];
    itemTitle = v6->_itemTitle;
    v6->_itemTitle = itemTitle;

    itemDescription = [requestCopy itemDescription];
    itemDescription = v6->_itemDescription;
    v6->_itemDescription = itemDescription;

    localizedPrice = [requestCopy localizedPrice];
    localizedPrice = v6->_localizedPrice;
    v6->_localizedPrice = localizedPrice;

    itemBundleID = [requestCopy itemBundleID];
    itemBundleID = v6->_itemBundleID;
    v6->_itemBundleID = itemBundleID;

    localizations = [requestCopy localizations];
    localizations = v6->_localizations;
    v6->_localizations = localizations;

    metricsID = [requestCopy metricsID];
    metricsID = v6->_metricsID;
    v6->_metricsID = metricsID;

    offerName = [requestCopy offerName];
    offerName = v6->_offerName;
    v6->_offerName = offerName;

    previewURL = [requestCopy previewURL];
    previewURL = v6->_previewURL;
    v6->_previewURL = previewURL;

    productType = [requestCopy productType];
    productType = v6->_productType;
    v6->_productType = productType;

    thumbnailURLString = [requestCopy thumbnailURLString];
    thumbnailURLString = v6->_thumbnailURLString;
    v6->_thumbnailURLString = thumbnailURLString;

    requesterDSID = [requestCopy requesterDSID];
    requesterDSID = v6->_requesterDSID;
    v6->_requesterDSID = requesterDSID;

    requesterName = [requestCopy requesterName];
    requesterName = v6->_requesterName;
    v6->_requesterName = requesterName;

    requestInfo = [requestCopy requestInfo];
    requestInfo = v6->_requestInfo;
    v6->_requestInfo = requestInfo;

    starRating = [requestCopy starRating];
    starRating = v6->_starRating;
    v6->_starRating = starRating;

    v6->_status = [requestCopy status];
    v6->_suppressClientResume = [requestCopy suppressClientResume];
    requestString = [requestCopy requestString];
    requestString = v6->_requestString;
    v6->_requestString = requestString;

    requestSummary = [requestCopy requestSummary];
    requestSummary = v6->_requestSummary;
    v6->_requestSummary = requestSummary;

    priceSummary = [requestCopy priceSummary];
    priceSummary = v6->_priceSummary;
    v6->_priceSummary = priceSummary;
  }

  return v6;
}

- (ApproverStoreItem)initWithItemIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier uniqueIdentifier:(id)uniqueIdentifier date:(id)date
{
  identifierCopy = identifier;
  requestIdentifierCopy = requestIdentifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  dateCopy = date;
  v18.receiver = self;
  v18.super_class = ApproverStoreItem;
  v15 = [(ApproverStoreItem *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_itemIdentifier, identifier);
    objc_storeStrong(&v16->_requestIdentifier, requestIdentifier);
    objc_storeStrong(&v16->_uniqueIdentifier, uniqueIdentifier);
    objc_storeStrong(&v16->_createdDate, date);
  }

  return v16;
}

- (ApproverStoreItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v154.receiver = self;
  v154.super_class = ApproverStoreItem;
  v5 = [(ApproverStoreItem *)&v154 init];

  if (!v5)
  {
LABEL_121:
    v50 = v5;
    goto LABEL_122;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"itemIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v8 = +[APLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543874;
      v156 = @"itemIdentifier";
      v157 = 2114;
      v158 = v11;
      v159 = 2114;
      v160 = v13;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_FAULT, "Unexpected type for key %{public}@. Expected %{public}@, got %{public}@.", buf, 0x20u);
    }

    v7 = 0;
  }

  v151 = v7;
  v14 = v7;

  v15 = [dictionaryCopy objectForKeyedSubscript:@"requestIdentifier"];
  objc_opt_class();
  v152 = v14;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v17 = +[APLogConfig sharedConfig];
    if (!v17)
    {
      v17 = +[APLogConfig sharedConfig];
    }

    oSLogObject2 = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_FAULT))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138543874;
      v156 = @"requestIdentifier";
      v157 = 2114;
      v158 = v20;
      v159 = 2114;
      v160 = v22;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_FAULT, "Unexpected type for key %{public}@. Expected %{public}@, got %{public}@.", buf, 0x20u);

      v14 = v152;
    }

    v16 = 0;
  }

  v150 = v16;
  v153 = v16;

  v23 = [dictionaryCopy objectForKeyedSubscript:@"uniqueIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v25 = +[APLogConfig sharedConfig];
    if (!v25)
    {
      v25 = +[APLogConfig sharedConfig];
    }

    oSLogObject3 = [v25 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_FAULT))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138543874;
      v156 = @"uniqueIdentifier";
      v157 = 2114;
      v158 = v28;
      v159 = 2114;
      v160 = v30;
      _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_FAULT, "Unexpected type for key %{public}@. Expected %{public}@, got %{public}@.", buf, 0x20u);

      v14 = v152;
    }

    v24 = 0;
  }

  v147 = v24;
  v31 = v24;

  v32 = [dictionaryCopy objectForKeyedSubscript:@"createdTimeInterval"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = v32;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v32 doubleValue];
      v33 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v34 = v31;
      v35 = +[APLogConfig sharedConfig];
      if (!v35)
      {
        v35 = +[APLogConfig sharedConfig];
      }

      oSLogObject4 = [v35 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_FAULT))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        *buf = 138543618;
        v156 = @"createdTimeInterval";
        v157 = 2114;
        v158 = v38;
        _os_log_impl(&_mh_execute_header, oSLogObject4, OS_LOG_TYPE_FAULT, "Unexpected type for key %{public}@. Expected NSDate or NSNumber, got %{public}@.", buf, 0x16u);

        v14 = v152;
      }

      v33 = 0;
      v31 = v34;
    }
  }

  v146 = v33;
  v39 = v33;

  v40 = [dictionaryCopy objectForKeyedSubscript:@"modifiedTimeInterval"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = v40;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v40 doubleValue];
      v41 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v148 = v39;
      v42 = v31;
      v43 = +[APLogConfig sharedConfig];
      if (!v43)
      {
        v43 = +[APLogConfig sharedConfig];
      }

      oSLogObject5 = [v43 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_FAULT))
      {
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        *buf = 138543618;
        v156 = @"modifiedTimeInterval";
        v157 = 2114;
        v158 = v46;
        _os_log_impl(&_mh_execute_header, oSLogObject5, OS_LOG_TYPE_FAULT, "Unexpected type for key %{public}@. Expected NSDate or NSNumber, got %{public}@.", buf, 0x16u);

        v14 = v152;
      }

      v41 = 0;
      v31 = v42;
      v39 = v148;
    }
  }

  v145 = v41;
  v47 = v41;

  if (v14 && v153 && v39 && v31)
  {
    v48 = [dictionaryCopy objectForKeyedSubscript:@"ageRating"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    v142 = v49;

    v51 = [dictionaryCopy objectForKeyedSubscript:@"ageRatingValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52 = v51;
    }

    else
    {
      v52 = 0;
    }

    v136 = v52;
    v141 = v52;

    v53 = [dictionaryCopy objectForKeyedSubscript:@"canSendViaMessages"];
    objc_opt_class();
    obj = v49;
    if (objc_opt_isKindOfClass())
    {
      v54 = v53;
    }

    else
    {
      v54 = 0;
    }

    v55 = v54;

    v56 = [dictionaryCopy objectForKeyedSubscript:@"approverDSID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    v133 = v57;
    v140 = v57;

    v58 = [dictionaryCopy objectForKeyedSubscript:@"isException"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v59 = v58;
    }

    else
    {
      v59 = 0;
    }

    v139 = v59;

    v60 = [dictionaryCopy objectForKeyedSubscript:@"itemBundleID"];
    objc_opt_class();
    v143 = v47;
    if (objc_opt_isKindOfClass())
    {
      v61 = v60;
    }

    else
    {
      v61 = 0;
    }

    v137 = v61;

    v62 = [dictionaryCopy objectForKeyedSubscript:@"localizations"];
    objc_opt_class();
    v132 = v61;
    if (objc_opt_isKindOfClass())
    {
      v63 = v62;
    }

    else
    {
      v63 = 0;
    }

    v64 = v63;

    v135 = v64;
    v134 = [[RequestLocalizations alloc] initWithDictionary:v64];
    v65 = [dictionaryCopy objectForKeyedSubscript:@"price"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v66 = v65;
    }

    else
    {
      v66 = 0;
    }

    v129 = v66;
    v67 = v66;

    v68 = [dictionaryCopy objectForKeyedSubscript:@"metricsID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v69 = v68;
    }

    else
    {
      v69 = 0;
    }

    v128 = v69;
    v131 = v69;

    v70 = [dictionaryCopy objectForKeyedSubscript:@"offerName"];
    objc_opt_class();
    v144 = v31;
    if (objc_opt_isKindOfClass())
    {
      v71 = v70;
    }

    else
    {
      v71 = 0;
    }

    v126 = v71;
    v130 = v71;

    v72 = [dictionaryCopy objectForKeyedSubscript:@"previewURL"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v73 = v72;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v73 = [NSURL URLWithString:v72];
      }

      else
      {
        v73 = 0;
      }
    }

    v124 = v73;
    v74 = v73;

    v75 = [dictionaryCopy objectForKeyedSubscript:@"productType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v76 = v75;
    }

    else
    {
      v76 = 0;
    }

    v122 = v76;
    v125 = v76;

    v77 = [dictionaryCopy objectForKeyedSubscript:@"itemTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v78 = v77;
    }

    else
    {
      v78 = 0;
    }

    v119 = v78;
    v123 = v78;

    v79 = [dictionaryCopy objectForKeyedSubscript:@"itemDescription"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v80 = v79;
    }

    else
    {
      v80 = 0;
    }

    v117 = v80;
    v121 = v80;

    v81 = [dictionaryCopy objectForKeyedSubscript:@"thumbnailURL"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v82 = v81;
    }

    else
    {
      v82 = 0;
    }

    v116 = v82;
    v120 = v82;

    v83 = [dictionaryCopy objectForKeyedSubscript:@"requesterName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v84 = v83;
    }

    else
    {
      v84 = 0;
    }

    v114 = v84;
    v118 = v84;

    v85 = [dictionaryCopy objectForKeyedSubscript:@"requesterDSID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v86 = v85;
    }

    else
    {
      v86 = 0;
    }

    v112 = v86;
    v115 = v86;

    v87 = [dictionaryCopy objectForKeyedSubscript:@"requestInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v88 = v87;
    }

    else
    {
      v88 = 0;
    }

    v111 = v88;
    v113 = v88;

    v89 = [dictionaryCopy objectForKeyedSubscript:@"starRating"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v90 = v89;
    }

    else
    {
      v90 = 0;
    }

    v109 = v90;
    v110 = v90;

    v91 = [dictionaryCopy objectForKeyedSubscript:@"status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v92 = v91;
    }

    else
    {
      v92 = 0;
    }

    v93 = v92;

    v94 = [dictionaryCopy objectForKeyedSubscript:@"suppressClientResume"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v95 = v94;
    }

    else
    {
      v95 = 0;
    }

    v96 = v95;

    v97 = [dictionaryCopy objectForKeyedSubscript:@"requestString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v98 = v97;
    }

    else
    {
      v98 = 0;
    }

    v107 = v98;
    v108 = v98;

    v99 = [dictionaryCopy objectForKeyedSubscript:@"requestSummary"];
    objc_opt_class();
    v149 = v39;
    v127 = v74;
    if (objc_opt_isKindOfClass())
    {
      v100 = v99;
    }

    else
    {
      v100 = 0;
    }

    v106 = v100;
    v101 = v100;

    v102 = [dictionaryCopy objectForKeyedSubscript:@"priceSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v103 = v102;
    }

    else
    {
      v103 = 0;
    }

    v104 = v103;

    objc_storeStrong(&v5->_ageRating, obj);
    objc_storeStrong(&v5->_ageRatingValue, v136);
    objc_storeStrong(&v5->_approverDSID, v133);
    v5->_canSendViaMessages = [v55 BOOLValue];
    objc_storeStrong(&v5->_createdDate, v146);
    objc_storeStrong(&v5->_modifiedDate, v145);
    v5->_isException = [v139 BOOLValue];
    objc_storeStrong(&v5->_itemIdentifier, v151);
    objc_storeStrong(&v5->_requestIdentifier, v150);
    objc_storeStrong(&v5->_uniqueIdentifier, v147);
    objc_storeStrong(&v5->_itemTitle, v119);
    objc_storeStrong(&v5->_itemDescription, v117);
    objc_storeStrong(&v5->_localizations, v134);
    objc_storeStrong(&v5->_localizedPrice, v129);
    objc_storeStrong(&v5->_metricsID, v128);
    objc_storeStrong(&v5->_offerName, v126);
    objc_storeStrong(&v5->_previewURL, v124);
    objc_storeStrong(&v5->_productType, v122);
    objc_storeStrong(&v5->_itemBundleID, v132);
    objc_storeStrong(&v5->_thumbnailURLString, v116);
    objc_storeStrong(&v5->_requesterDSID, v112);
    objc_storeStrong(&v5->_requesterName, v114);
    objc_storeStrong(&v5->_requestInfo, v111);
    objc_storeStrong(&v5->_starRating, v109);
    v5->_status = [v93 integerValue];
    v5->_suppressClientResume = [v96 BOOLValue];
    objc_storeStrong(&v5->_requestString, v107);
    objc_storeStrong(&v5->_requestSummary, v106);
    objc_storeStrong(&v5->_priceSummary, v103);

    goto LABEL_121;
  }

  v50 = 0;
LABEL_122:

  return v50;
}

- (id)compile
{
  v3 = objc_alloc_init(NSMutableDictionary);
  itemIdentifier = [(ApproverStoreItem *)self itemIdentifier];
  [v3 ap_setNullableObject:itemIdentifier forKey:@"itemIdentifier"];

  requestIdentifier = [(ApproverStoreItem *)self requestIdentifier];
  [v3 ap_setNullableObject:requestIdentifier forKey:@"requestIdentifier"];

  uniqueIdentifier = [(ApproverStoreItem *)self uniqueIdentifier];
  [v3 ap_setNullableObject:uniqueIdentifier forKey:@"uniqueIdentifier"];

  createdDate = [(ApproverStoreItem *)self createdDate];
  [createdDate timeIntervalSinceReferenceDate];
  v8 = [NSNumber numberWithDouble:?];
  [v3 ap_setNullableObject:v8 forKey:@"createdTimeInterval"];

  modifiedDate = [(ApproverStoreItem *)self modifiedDate];
  [modifiedDate timeIntervalSinceReferenceDate];
  v10 = [NSNumber numberWithDouble:?];
  [v3 ap_setNullableObject:v10 forKey:@"modifiedTimeInterval"];

  ageRating = [(ApproverStoreItem *)self ageRating];
  [v3 ap_setNullableObject:ageRating forKey:@"ageRating"];

  ageRatingValue = [(ApproverStoreItem *)self ageRatingValue];
  [v3 ap_setNullableObject:ageRatingValue forKey:@"ageRatingValue"];

  approverDSID = [(ApproverStoreItem *)self approverDSID];
  [v3 ap_setNullableObject:approverDSID forKey:@"approverDSID"];

  v14 = [NSNumber numberWithBool:[(ApproverStoreItem *)self isException]];
  [v3 ap_setNullableObject:v14 forKey:@"isException"];

  itemBundleID = [(ApproverStoreItem *)self itemBundleID];
  [v3 ap_setNullableObject:itemBundleID forKey:@"itemBundleID"];

  v16 = [NSNumber numberWithBool:[(ApproverStoreItem *)self canSendViaMessages]];
  [v3 ap_setNullableObject:v16 forKey:@"canSendViaMessages"];

  itemTitle = [(ApproverStoreItem *)self itemTitle];
  [v3 ap_setNullableObject:itemTitle forKey:@"itemTitle"];

  itemDescription = [(ApproverStoreItem *)self itemDescription];
  [v3 ap_setNullableObject:itemDescription forKey:@"itemDescription"];

  localizations = [(ApproverStoreItem *)self localizations];
  compile = [localizations compile];
  [v3 ap_setNullableObject:compile forKey:@"localizations"];

  localizedPrice = [(ApproverStoreItem *)self localizedPrice];
  [v3 ap_setNullableObject:localizedPrice forKey:@"price"];

  metricsID = [(ApproverStoreItem *)self metricsID];
  [v3 ap_setNullableObject:metricsID forKey:@"metricsID"];

  offerName = [(ApproverStoreItem *)self offerName];
  [v3 ap_setNullableObject:offerName forKey:@"offerName"];

  previewURL = [(ApproverStoreItem *)self previewURL];
  absoluteString = [previewURL absoluteString];
  [v3 ap_setNullableObject:absoluteString forKey:@"previewURL"];

  productType = [(ApproverStoreItem *)self productType];
  [v3 ap_setNullableObject:productType forKey:@"productType"];

  thumbnailURLString = [(ApproverStoreItem *)self thumbnailURLString];
  [v3 ap_setNullableObject:thumbnailURLString forKey:@"thumbnailURL"];

  requesterName = [(ApproverStoreItem *)self requesterName];
  [v3 ap_setNullableObject:requesterName forKey:@"requesterName"];

  requesterDSID = [(ApproverStoreItem *)self requesterDSID];
  [v3 ap_setNullableObject:requesterDSID forKey:@"requesterDSID"];

  requestInfo = [(ApproverStoreItem *)self requestInfo];
  [v3 ap_setNullableObject:requestInfo forKey:@"requestInfo"];

  starRating = [(ApproverStoreItem *)self starRating];
  [v3 ap_setNullableObject:starRating forKey:@"starRating"];

  v32 = [NSNumber numberWithInteger:[(ApproverStoreItem *)self status]];
  [v3 ap_setNullableObject:v32 forKey:@"status"];

  v33 = [NSNumber numberWithBool:[(ApproverStoreItem *)self suppressClientResume]];
  [v3 ap_setNullableObject:v33 forKey:@"suppressClientResume"];

  requestString = [(ApproverStoreItem *)self requestString];
  [v3 ap_setNullableObject:requestString forKey:@"requestString"];

  requestSummary = [(ApproverStoreItem *)self requestSummary];
  [v3 ap_setNullableObject:requestSummary forKey:@"requestSummary"];

  priceSummary = [(ApproverStoreItem *)self priceSummary];
  [v3 ap_setNullableObject:priceSummary forKey:@"priceSummary"];

  return v3;
}

- (id)description
{
  compile = [(ApproverStoreItem *)self compile];
  v4 = [(ApproverStoreItem *)self ap_generateDescriptionWithSubObjects:compile];

  return v4;
}

@end