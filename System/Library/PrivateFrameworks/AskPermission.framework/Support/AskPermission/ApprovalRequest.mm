@interface ApprovalRequest
+ (BOOL)isResponseAnExceptionRequest:(id)request;
+ (id)ageRatingValueFromBuyParams:(id)params;
+ (id)createUniqueIDFromRequestID:(id)d andCreatedDate:(id)date;
+ (id)dateFromString:(id)string;
+ (int64_t)lobForProductType:(id)type;
+ (int64_t)lobForSubscription:(id)subscription;
- (ApprovalRequest)initWithApproverDSID:(id)d createdDate:(id)date modifiedDate:(id)modifiedDate requestIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier canSendViaMessages:(BOOL)messages isException:(BOOL)exception itemBundleID:(id)self0 itemDescription:(id)self1 itemIdentifier:(id)self2 itemTitle:(id)self3 localizations:(id)self4 offerName:(id)self5 mocked:(BOOL)self6 previewURL:(id)self7 productType:(id)self8 productTypeName:(id)self9 productURL:(id)rL requesterName:(id)requesterName requesterDSID:(id)sID requestInfo:(id)info requestString:(id)string requestSummary:(id)summary priceSummary:(id)priceSummary status:(int64_t)status;
- (ApprovalRequest)initWithApproverStorageItem:(id)item;
- (ApprovalRequest)initWithCloudPushDictionary:(id)dictionary;
- (ApprovalRequest)initWithCloudPushDictionary:(id)dictionary bag:(id)bag;
- (ApprovalRequest)initWithDictionary:(id)dictionary;
- (ApprovalRequest)initWithRequestStorageItem:(id)item;
- (BOOL)isSubscription;
- (NSString)description;
- (id)compile;
- (id)metricsApp;
- (id)metricsTopic;
- (int64_t)lineOfBusiness;
@end

@implementation ApprovalRequest

- (ApprovalRequest)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v178.receiver = self;
  v178.super_class = ApprovalRequest;
  v5 = [(ApprovalRequest *)&v178 init];

  if (!v5)
  {
    goto LABEL_131;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"ageRating"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v177 = v7;

  v8 = [dictionaryCopy objectForKeyedSubscript:@"ageRatingValue"];
  v9 = &APCustomError_ptr;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v176 = v10;

  v11 = [dictionaryCopy objectForKeyedSubscript:@"approverDSID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v175 = v12;

  v13 = [dictionaryCopy objectForKeyedSubscript:@"canSendViaMessages"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  bOOLValue = [v15 BOOLValue];
  v16 = [dictionaryCopy objectForKeyedSubscript:@"createdTimeInterval"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v16 doubleValue];
      v17 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v18 = +[APLogConfig sharedConfig];
      if (!v18)
      {
        v18 = +[APLogConfig sharedConfig];
      }

      oSLogObject = [v18 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138543618;
        v180 = @"createdTimeInterval";
        v181 = 2114;
        v182 = v21;
        _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_FAULT, "Unexpected type for key %{public}@. Expected NSDate or NSNumber, got %{public}@.", buf, 0x16u);
      }

      v17 = 0;
    }
  }

  v174 = v17;

  v22 = [dictionaryCopy objectForKeyedSubscript:@"modifiedTimeInterval"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v22 doubleValue];
      v23 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v23 = 0;
    }
  }

  obj = v23;
  v162 = v23;

  v24 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = v24;
  }

  else
  {
    v26 = +[APLogConfig sharedConfig];
    if (!v26)
    {
      v26 = +[APLogConfig sharedConfig];
    }

    oSLogObject2 = [v26 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_FAULT))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138543874;
      v180 = @"identifier";
      v181 = 2114;
      v182 = v29;
      v183 = 2114;
      v184 = v31;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_FAULT, "Unexpected type for key %{public}@. Expected %{public}@, got %{public}@.", buf, 0x20u);

      v9 = &APCustomError_ptr;
    }

    v25 = 0;
  }

  v173 = v25;

  v32 = [dictionaryCopy objectForKeyedSubscript:@"uniqueIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = v32;
  }

  else
  {
    v34 = +[APLogConfig sharedConfig];
    if (!v34)
    {
      v34 = +[APLogConfig sharedConfig];
    }

    oSLogObject3 = [v34 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_FAULT))
    {
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      *buf = 138543874;
      v180 = @"uniqueIdentifier";
      v181 = 2114;
      v182 = v37;
      v183 = 2114;
      v184 = v39;
      _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_FAULT, "Unexpected type for key %{public}@. Expected %{public}@, got %{public}@.", buf, 0x20u);

      v9 = &APCustomError_ptr;
    }

    v33 = 0;
  }

  v172 = v33;

  v40 = [dictionaryCopy objectForKeyedSubscript:@"isException"];
  v41 = v9[325];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = v40;
  }

  else
  {
    v43 = +[APLogConfig sharedConfig];
    if (!v43)
    {
      v43 = +[APLogConfig sharedConfig];
    }

    oSLogObject4 = [v43 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_FAULT))
    {
      v45 = v9[325];
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      *buf = 138543874;
      v180 = @"isException";
      v181 = 2114;
      v182 = v47;
      v183 = 2114;
      v184 = v49;
      _os_log_impl(&_mh_execute_header, oSLogObject4, OS_LOG_TYPE_FAULT, "Unexpected type for key %{public}@. Expected %{public}@, got %{public}@.", buf, 0x20u);

      v9 = &APCustomError_ptr;
    }

    v42 = 0;
  }

  v171 = v42;

  v50 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v51 = v50;
  }

  else
  {
    v51 = 0;
  }

  v170 = v51;

  v52 = [dictionaryCopy objectForKeyedSubscript:@"itemDescription"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v53 = v52;
  }

  else
  {
    v53 = 0;
  }

  v169 = v53;

  v54 = [dictionaryCopy objectForKeyedSubscript:@"itemTitle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v55 = v54;
  }

  else
  {
    v55 = 0;
  }

  v168 = v55;

  v56 = [dictionaryCopy objectForKeyedSubscript:@"itemIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v57 = v56;
  }

  else
  {
    v58 = +[APLogConfig sharedConfig];
    if (!v58)
    {
      v58 = +[APLogConfig sharedConfig];
    }

    oSLogObject5 = [v58 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_FAULT))
    {
      v60 = objc_opt_class();
      v61 = NSStringFromClass(v60);
      v62 = objc_opt_class();
      v63 = NSStringFromClass(v62);
      *buf = 138543874;
      v180 = @"itemIdentifier";
      v181 = 2114;
      v182 = v61;
      v183 = 2114;
      v184 = v63;
      _os_log_impl(&_mh_execute_header, oSLogObject5, OS_LOG_TYPE_FAULT, "Unexpected type for key %{public}@. Expected %{public}@, got %{public}@.", buf, 0x20u);

      v9 = &APCustomError_ptr;
    }

    v57 = 0;
  }

  v167 = v57;

  v64 = [RequestLocalizations alloc];
  v65 = [dictionaryCopy objectForKeyedSubscript:@"localizations"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v66 = v65;
  }

  else
  {
    v66 = 0;
  }

  v67 = v66;

  v166 = [(RequestLocalizations *)v64 initWithDictionary:v67];
  v68 = [dictionaryCopy objectForKeyedSubscript:@"offerName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v69 = v68;
  }

  else
  {
    v69 = 0;
  }

  v165 = v69;

  v70 = [dictionaryCopy objectForKeyedSubscript:@"metricsID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v71 = v70;
  }

  else
  {
    v71 = 0;
  }

  v157 = v71;
  v159 = v71;

  v72 = [dictionaryCopy objectForKeyedSubscript:@"mocked"];
  v73 = v9[325];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v74 = v72;
  }

  else
  {
    v74 = 0;
  }

  v75 = v74;

  bOOLValue2 = [v75 BOOLValue];
  v76 = [dictionaryCopy objectForKeyedSubscript:@"previewURL"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v77 = v76;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v77 = [NSURL URLWithString:v76];
    }

    else
    {
      v77 = 0;
    }
  }

  v154 = v77;
  v158 = v77;

  v78 = [dictionaryCopy objectForKeyedSubscript:@"productType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v79 = v78;
  }

  else
  {
    v79 = 0;
  }

  v164 = v79;

  v80 = [dictionaryCopy objectForKeyedSubscript:@"productTypeName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v81 = v80;
  }

  else
  {
    v81 = 0;
  }

  v163 = v81;

  v82 = [dictionaryCopy objectForKeyedSubscript:@"productURL"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v83 = v82;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v84 = 0;
      goto LABEL_94;
    }

    v83 = [NSURL URLWithString:v82];
  }

  v84 = v83;
LABEL_94:
  v156 = v84;

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

  v87 = v86;

  v88 = [dictionaryCopy objectForKeyedSubscript:@"requesterName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v89 = v88;
  }

  else
  {
    v89 = 0;
  }

  v90 = v89;

  v91 = [dictionaryCopy objectForKeyedSubscript:@"starRating"];
  v92 = v9[325];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v93 = v91;
  }

  else
  {
    v93 = 0;
  }

  v153 = v93;

  v94 = [dictionaryCopy objectForKeyedSubscript:@"status"];
  v95 = v9[325];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v96 = v94;
  }

  else
  {
    v96 = 0;
  }

  v97 = v96;

  integerValue = [v97 integerValue];
  v99 = [dictionaryCopy objectForKeyedSubscript:@"suppressClientResume"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v100 = v99;
  }

  else
  {
    v100 = 0;
  }

  v101 = v100;

  bOOLValue3 = [v101 BOOLValue];
  v103 = [v177 copy];
  ageRating = v5->_ageRating;
  v5->_ageRating = v103;

  v105 = [v176 copy];
  ageRatingValue = v5->_ageRatingValue;
  v5->_ageRatingValue = v105;

  v107 = [v175 copy];
  approverDSID = v5->_approverDSID;
  v5->_approverDSID = v107;

  v5->_canSendViaMessages = bOOLValue;
  if (v174)
  {
    v109 = v174;
    createdDate = v5->_createdDate;
    v5->_createdDate = v109;
  }

  else
  {
    createdDate = +[NSDate now];
    objc_storeStrong(&v5->_createdDate, createdDate);
  }

  objc_storeStrong(&v5->_modifiedDate, obj);
  v111 = [v173 copy];
  v112 = v111;
  if (v111)
  {
    v113 = v111;
  }

  else
  {
    v113 = &stru_100057158;
  }

  objc_storeStrong(&v5->_requestIdentifier, v113);

  v114 = [v172 copy];
  v115 = v114;
  if (v114)
  {
    v116 = v114;
  }

  else
  {
    v116 = &stru_100057158;
  }

  objc_storeStrong(&v5->_uniqueIdentifier, v116);

  v5->_isException = [v171 BOOLValue];
  v117 = [v170 copy];
  itemBundleID = v5->_itemBundleID;
  v5->_itemBundleID = v117;

  v119 = [v169 copy];
  itemDescription = v5->_itemDescription;
  v5->_itemDescription = v119;

  v121 = [v168 copy];
  itemTitle = v5->_itemTitle;
  v5->_itemTitle = v121;

  v123 = [v167 copy];
  v124 = v123;
  if (v123)
  {
    v125 = v123;
  }

  else
  {
    v125 = &stru_100057158;
  }

  objc_storeStrong(&v5->_itemIdentifier, v125);

  objc_storeStrong(&v5->_localizations, v166);
  objc_storeStrong(&v5->_metricsID, v157);
  v5->_mocked = bOOLValue2;
  v126 = [v165 copy];
  offerName = v5->_offerName;
  v5->_offerName = v126;

  objc_storeStrong(&v5->_previewURL, v154);
  v128 = [v164 copy];
  productType = v5->_productType;
  v5->_productType = v128;

  v130 = [v163 copy];
  productTypeName = v5->_productTypeName;
  v5->_productTypeName = v130;

  objc_storeStrong(&v5->_productURL, v84);
  v132 = [v87 copy];
  requesterDSID = v5->_requesterDSID;
  v5->_requesterDSID = v132;

  v134 = [v90 copy];
  requesterName = v5->_requesterName;
  v5->_requesterName = v134;

  objc_storeStrong(&v5->_starRating, v93);
  v5->_status = integerValue;
  v5->_suppressClientResume = bOOLValue3;
  v136 = [dictionaryCopy objectForKeyedSubscript:@"requestString"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v137 = v136;
  }

  else
  {
    v137 = 0;
  }

  v138 = v137;

  v139 = [v138 copy];
  requestString = v5->_requestString;
  v5->_requestString = v139;

  v141 = [dictionaryCopy objectForKeyedSubscript:@"requestSummary"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v142 = v141;
  }

  else
  {
    v142 = 0;
  }

  v143 = v142;

  v144 = [v143 copy];
  requestSummary = v5->_requestSummary;
  v5->_requestSummary = v144;

  v146 = [dictionaryCopy objectForKeyedSubscript:@"priceSummary"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v147 = v146;
  }

  else
  {
    v147 = 0;
  }

  v148 = v147;

  v149 = [v148 copy];
  priceSummary = v5->_priceSummary;
  v5->_priceSummary = v149;

LABEL_131:
  v151 = v5;

  return v151;
}

- (ApprovalRequest)initWithApproverDSID:(id)d createdDate:(id)date modifiedDate:(id)modifiedDate requestIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier canSendViaMessages:(BOOL)messages isException:(BOOL)exception itemBundleID:(id)self0 itemDescription:(id)self1 itemIdentifier:(id)self2 itemTitle:(id)self3 localizations:(id)self4 offerName:(id)self5 mocked:(BOOL)self6 previewURL:(id)self7 productType:(id)self8 productTypeName:(id)self9 productURL:(id)rL requesterName:(id)requesterName requesterDSID:(id)sID requestInfo:(id)info requestString:(id)string requestSummary:(id)summary priceSummary:(id)priceSummary status:(int64_t)status
{
  dCopy = d;
  dateCopy = date;
  modifiedDateCopy = modifiedDate;
  modifiedDateCopy2 = modifiedDate;
  identifierCopy = identifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  iDCopy = iD;
  descriptionCopy = description;
  itemIdentifierCopy = itemIdentifier;
  titleCopy = title;
  localizationsCopy = localizations;
  nameCopy = name;
  lCopy = l;
  typeCopy = type;
  typeNameCopy = typeName;
  rLCopy = rL;
  requesterNameCopy = requesterName;
  sIDCopy = sID;
  infoCopy = info;
  stringCopy = string;
  summaryCopy = summary;
  priceSummaryCopy = priceSummary;
  v59.receiver = self;
  v59.super_class = ApprovalRequest;
  v37 = [(ApprovalRequest *)&v59 init];
  v38 = v37;
  if (v37)
  {
    objc_storeStrong(&v37->_approverDSID, d);
    objc_storeStrong(&v38->_createdDate, date);
    objc_storeStrong(&v38->_modifiedDate, modifiedDateCopy);
    v38->_canSendViaMessages = messages;
    objc_storeStrong(&v38->_requestIdentifier, identifier);
    objc_storeStrong(&v38->_uniqueIdentifier, uniqueIdentifier);
    v38->_isException = exception;
    objc_storeStrong(&v38->_itemBundleID, iD);
    objc_storeStrong(&v38->_itemDescription, description);
    objc_storeStrong(&v38->_itemTitle, title);
    objc_storeStrong(&v38->_itemIdentifier, itemIdentifier);
    objc_storeStrong(&v38->_localizations, localizations);
    objc_storeStrong(&v38->_offerName, name);
    v38->_mocked = mocked;
    objc_storeStrong(&v38->_previewURL, l);
    objc_storeStrong(&v38->_productType, type);
    objc_storeStrong(&v38->_productTypeName, typeName);
    objc_storeStrong(&v38->_productURL, rL);
    objc_storeStrong(&v38->_requesterDSID, sID);
    objc_storeStrong(&v38->_requesterName, requesterName);
    objc_storeStrong(&v38->_requestInfo, info);
    objc_storeStrong(&v38->_requestString, string);
    objc_storeStrong(&v38->_requestSummary, summary);
    objc_storeStrong(&v38->_priceSummary, priceSummary);
    v38->_status = status;
  }

  return v38;
}

- (ApprovalRequest)initWithApproverStorageItem:(id)item
{
  itemCopy = item;
  v53.receiver = self;
  v53.super_class = ApprovalRequest;
  v5 = [(ApprovalRequest *)&v53 init];
  if (v5)
  {
    ageRating = [itemCopy ageRating];
    ageRating = v5->_ageRating;
    v5->_ageRating = ageRating;

    ageRatingValue = [itemCopy ageRatingValue];
    ageRatingValue = v5->_ageRatingValue;
    v5->_ageRatingValue = ageRatingValue;

    approverDSID = [itemCopy approverDSID];
    approverDSID = v5->_approverDSID;
    v5->_approverDSID = approverDSID;

    createdDate = [itemCopy createdDate];
    createdDate = v5->_createdDate;
    v5->_createdDate = createdDate;

    modifiedDate = [itemCopy modifiedDate];
    modifiedDate = v5->_modifiedDate;
    v5->_modifiedDate = modifiedDate;

    requestIdentifier = [itemCopy requestIdentifier];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = requestIdentifier;

    uniqueIdentifier = [itemCopy uniqueIdentifier];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = uniqueIdentifier;

    v5->_isException = [itemCopy isException];
    itemBundleID = [itemCopy itemBundleID];
    itemBundleID = v5->_itemBundleID;
    v5->_itemBundleID = itemBundleID;

    itemDescription = [itemCopy itemDescription];
    itemDescription = v5->_itemDescription;
    v5->_itemDescription = itemDescription;

    itemTitle = [itemCopy itemTitle];
    itemTitle = v5->_itemTitle;
    v5->_itemTitle = itemTitle;

    itemIdentifier = [itemCopy itemIdentifier];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = itemIdentifier;

    localizations = [itemCopy localizations];
    localizations = v5->_localizations;
    v5->_localizations = localizations;

    localizedPrice = [itemCopy localizedPrice];
    localizedPrice = v5->_localizedPrice;
    v5->_localizedPrice = localizedPrice;

    metricsID = [itemCopy metricsID];
    metricsID = v5->_metricsID;
    v5->_metricsID = metricsID;

    offerName = [itemCopy offerName];
    offerName = v5->_offerName;
    v5->_offerName = offerName;

    previewURL = [itemCopy previewURL];
    previewURL = v5->_previewURL;
    v5->_previewURL = previewURL;

    productType = [itemCopy productType];
    productType = v5->_productType;
    v5->_productType = productType;

    requesterDSID = [itemCopy requesterDSID];
    requesterDSID = v5->_requesterDSID;
    v5->_requesterDSID = requesterDSID;

    starRating = [itemCopy starRating];
    starRating = v5->_starRating;
    v5->_starRating = starRating;

    v5->_status = [itemCopy status];
    v5->_suppressClientResume = [itemCopy suppressClientResume];
    requestString = [itemCopy requestString];
    requestString = v5->_requestString;
    v5->_requestString = requestString;

    requestSummary = [itemCopy requestSummary];
    requestSummary = v5->_requestSummary;
    v5->_requestSummary = requestSummary;

    priceSummary = [itemCopy priceSummary];
    priceSummary = v5->_priceSummary;
    v5->_priceSummary = priceSummary;

    thumbnailURLString = [itemCopy thumbnailURLString];
    thumbnailURLString = v5->_thumbnailURLString;
    v5->_thumbnailURLString = thumbnailURLString;
  }

  return v5;
}

- (ApprovalRequest)initWithRequestStorageItem:(id)item
{
  itemCopy = item;
  v55.receiver = self;
  v55.super_class = ApprovalRequest;
  v5 = [(ApprovalRequest *)&v55 init];
  if (v5)
  {
    ageRating = [itemCopy ageRating];
    ageRating = v5->_ageRating;
    v5->_ageRating = ageRating;

    ageRatingValue = [itemCopy ageRatingValue];
    ageRatingValue = v5->_ageRatingValue;
    v5->_ageRatingValue = ageRatingValue;

    approverDSID = [itemCopy approverDSID];
    approverDSID = v5->_approverDSID;
    v5->_approverDSID = approverDSID;

    createdDate = [itemCopy createdDate];
    createdDate = v5->_createdDate;
    v5->_createdDate = createdDate;

    modifiedDate = [itemCopy modifiedDate];
    modifiedDate = v5->_modifiedDate;
    v5->_modifiedDate = modifiedDate;

    requestIdentifier = [itemCopy requestIdentifier];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = requestIdentifier;

    uniqueIdentifier = [itemCopy uniqueIdentifier];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = uniqueIdentifier;

    v5->_isException = [itemCopy isException];
    itemBundleID = [itemCopy itemBundleID];
    itemBundleID = v5->_itemBundleID;
    v5->_itemBundleID = itemBundleID;

    itemDescription = [itemCopy itemDescription];
    itemDescription = v5->_itemDescription;
    v5->_itemDescription = itemDescription;

    itemTitle = [itemCopy itemTitle];
    itemTitle = v5->_itemTitle;
    v5->_itemTitle = itemTitle;

    itemIdentifier = [itemCopy itemIdentifier];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = itemIdentifier;

    localizations = [itemCopy localizations];
    localizations = v5->_localizations;
    v5->_localizations = localizations;

    localizedPrice = [itemCopy localizedPrice];
    localizedPrice = v5->_localizedPrice;
    v5->_localizedPrice = localizedPrice;

    offerName = [itemCopy offerName];
    offerName = v5->_offerName;
    v5->_offerName = offerName;

    previewURL = [itemCopy previewURL];
    previewURL = v5->_previewURL;
    v5->_previewURL = previewURL;

    productType = [itemCopy productType];
    productType = v5->_productType;
    v5->_productType = productType;

    productTypeName = [itemCopy productTypeName];
    productTypeName = v5->_productTypeName;
    v5->_productTypeName = productTypeName;

    productURL = [itemCopy productURL];
    productURL = v5->_productURL;
    v5->_productURL = productURL;

    requesterDSID = [itemCopy requesterDSID];
    requesterDSID = v5->_requesterDSID;
    v5->_requesterDSID = requesterDSID;

    starRating = [itemCopy starRating];
    starRating = v5->_starRating;
    v5->_starRating = starRating;

    v5->_status = [itemCopy status];
    v5->_suppressClientResume = [itemCopy suppressClientResume];
    requestString = [itemCopy requestString];
    requestString = v5->_requestString;
    v5->_requestString = requestString;

    requestSummary = [itemCopy requestSummary];
    requestSummary = v5->_requestSummary;
    v5->_requestSummary = requestSummary;

    priceSummary = [itemCopy priceSummary];
    priceSummary = v5->_priceSummary;
    v5->_priceSummary = priceSummary;

    thumbnailURLString = [itemCopy thumbnailURLString];
    thumbnailURLString = v5->_thumbnailURLString;
    v5->_thumbnailURLString = thumbnailURLString;
  }

  return v5;
}

- (ApprovalRequest)initWithCloudPushDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = +[AMSBag sharedBag];
  v6 = [(ApprovalRequest *)self initWithCloudPushDictionary:dictionaryCopy bag:v5];

  return v6;
}

- (ApprovalRequest)initWithCloudPushDictionary:(id)dictionary bag:(id)bag
{
  dictionaryCopy = dictionary;
  bagCopy = bag;
  v249.receiver = self;
  v249.super_class = ApprovalRequest;
  v8 = [(ApprovalRequest *)&v249 init];

  if (!v8)
  {
    goto LABEL_239;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"requestInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v11 objectForKeyedSubscript:@"salables"];
  objc_opt_class();
  v229 = v10;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [v14 objectForKeyedSubscript:@"lockupData"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v18 = [v11 objectForKeyedSubscript:@"productType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  obj = v19;
  v20 = v19;

  v242 = v20;
  if ([v20 isEqualToString:@"A"])
  {
    v21 = [v14 objectForKeyedSubscript:@"parentSalables"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    firstObject = [v23 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = firstObject;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    v244 = v26;
    v27 = [v26 objectForKeyedSubscript:@"lockupData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v243 = v28;
  }

  else
  {
    v243 = 0;
    v244 = 0;
  }

  v29 = [v11 objectForKeyedSubscript:@"requestId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;

  if (!v31)
  {

    goto LABEL_240;
  }

  objc_storeStrong(&v8->_requestIdentifier, v30);
  v32 = [v11 objectForKeyedSubscript:@"clientInfo"];
  v33 = +[APLogConfig sharedDaemonConfig];
  v34 = v33;
  v240 = v17;
  v241 = v32;
  v239 = bagCopy;
  v233 = v31;
  if (v32)
  {
    if (!v33)
    {
      v34 = +[APLogConfig sharedConfig];
    }

    oSLogObject = [v34 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v36 = objc_opt_class();
      *buf = 138543618;
      v252 = v36;
      v253 = 2112;
      v254 = v241;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: clientInfo: %@", buf, 0x16u);
    }

    [v241 componentsSeparatedByString:@"-"];
    v245 = 0u;
    v246 = 0u;
    v247 = 0u;
    oSLogObject2 = v248 = 0u;
    v38 = [oSLogObject2 countByEnumeratingWithState:&v245 objects:v250 count:16];
    if (v38)
    {
      v39 = v38;
      v231 = v14;
      v234 = dictionaryCopy;
      v40 = *v246;
      do
      {
        for (i = 0; i != v39; i = i + 1)
        {
          if (*v246 != v40)
          {
            objc_enumerationMutation(oSLogObject2);
          }

          v42 = [*(*(&v245 + 1) + 8 * i) componentsSeparatedByString:@":"];
          firstObject2 = [v42 firstObject];
          lastObject = [v42 lastObject];
          if ([firstObject2 isEqualToString:@"canSendViaMessages"])
          {
            v8->_canSendViaMessages = [lastObject BOOLValue];
          }
        }

        v39 = [oSLogObject2 countByEnumeratingWithState:&v245 objects:v250 count:16];
      }

      while (v39);
      v34 = oSLogObject2;
      dictionaryCopy = v234;
      bagCopy = v239;
      v17 = v240;
      v14 = v231;
    }

    else
    {
      v34 = oSLogObject2;
    }
  }

  else
  {
    if (!v33)
    {
      v34 = +[APLogConfig sharedConfig];
    }

    oSLogObject2 = [v34 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v45 = objc_opt_class();
      *buf = 138543362;
      v252 = v45;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: Server Response - No clientInfo passed from child device", buf, 0xCu);
    }
  }

  v46 = v14;

  v47 = [v11 objectForKeyedSubscript:@"adamId"];
  objc_opt_class();
  v48 = v17;
  if (objc_opt_isKindOfClass())
  {
    v49 = v47;
  }

  else
  {
    v49 = 0;
  }

  v50 = dictionaryCopy;
  v51 = v49;

  v232 = v51;
  stringValue = [v51 stringValue];
  objc_opt_class();
  v53 = bagCopy;
  if (objc_opt_isKindOfClass())
  {
    v54 = stringValue;
  }

  else
  {
    v54 = 0;
  }

  v55 = v54;

  v226 = v55;
  if (v55)
  {
    objc_storeStrong(&v8->_itemIdentifier, v54);
    v56 = [v11 objectForKeyedSubscript:@"approveButton"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    v59 = v57;

    v60 = [v11 objectForKeyedSubscript:@"declineButton"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = v60;
    }

    else
    {
      v61 = 0;
    }

    v237 = v59;
    v235 = v61;

    v62 = [v11 objectForKeyedSubscript:@"requestString"];
    objc_opt_class();
    dictionaryCopy = v50;
    if (objc_opt_isKindOfClass())
    {
      v63 = v62;
    }

    else
    {
      v63 = 0;
    }

    v64 = v63;

    v65 = v46;
    v225 = v64;
    if (!v64)
    {
      v68 = v46;
      v69 = 0;
      v71 = v235;
      v70 = v237;
      v72 = v233;
      goto LABEL_238;
    }

    objc_storeStrong(&v8->_requestString, v63);
    v66 = [v11 objectForKeyedSubscript:@"requestSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v67 = v66;
    }

    else
    {
      v67 = 0;
    }

    v221 = v67;

    objc_storeStrong(&v8->_requestSummary, v67);
    v73 = [v11 objectForKeyedSubscript:@"priceSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v74 = v73;
    }

    else
    {
      v74 = 0;
    }

    v220 = v74;

    objc_storeStrong(&v8->_priceSummary, v74);
    v75 = [v240 objectForKeyedSubscript:@"contentRating"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v76 = v75;
    }

    else
    {
      v76 = 0;
    }

    v77 = v76;

    v219 = v77;
    v78 = [v77 objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v79 = v78;
    }

    else
    {
      v79 = 0;
    }

    v80 = v79;

    if ([v80 length])
    {
      v81 = v80;
    }

    else
    {
      v81 = @"0";
    }

    ageRating = v8->_ageRating;
    v8->_ageRating = &v81->isa;

    v83 = [ApprovalRequest ageRatingValueFromBuyParams:v11];
    if (v83)
    {
      objc_storeStrong(&v8->_ageRatingValue, v83);
    }

    v218 = v83;
    v84 = [v11 objectForKeyedSubscript:@"approverDsId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v85 = v84;
    }

    else
    {
      v85 = 0;
    }

    v86 = v85;

    v217 = v86;
    stringValue2 = [v86 stringValue];
    approverDSID = v8->_approverDSID;
    v8->_approverDSID = stringValue2;

    v89 = [v11 objectForKeyedSubscript:@"requestCreatedUtc"];
    v222 = v89;
    if (v89)
    {
      v90 = [ApprovalRequest dateFromString:v89];
      if (v90)
      {
        goto LABEL_102;
      }

      v91 = +[APLogConfig sharedDaemonConfig];
      if (!v91)
      {
        v91 = +[APLogConfig sharedConfig];
      }

      oSLogObject3 = [v91 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_FAULT))
      {
LABEL_101:

        v90 = +[NSDate date];
LABEL_102:
        objc_storeStrong(&v8->_createdDate, v90);
        v97 = [v11 objectForKeyedSubscript:@"approvalStatusUpdatedUtc"];
        v223 = v80;
        v224 = v90;
        v216 = v97;
        if (v97)
        {
          v98 = [ApprovalRequest dateFromString:v97];
          v99 = v98;
          if (v98)
          {
            v100 = v98;
            modifiedDate = v8->_modifiedDate;
            v8->_modifiedDate = v100;
          }

          else
          {
            modifiedDate = +[NSDate date];
            objc_storeStrong(&v8->_modifiedDate, modifiedDate);
          }

          v90 = v224;
        }

        else
        {
          v102 = +[NSDate date];
          v99 = v8->_modifiedDate;
          v8->_modifiedDate = v102;
        }

        v103 = [ApprovalRequest createUniqueIDFromRequestID:v8->_requestIdentifier andCreatedDate:v90];
        uniqueIdentifier = v8->_uniqueIdentifier;
        v8->_uniqueIdentifier = v103;

        v105 = [v65 objectForKeyedSubscript:@"bundleIdentifier"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v106 = v105;
        }

        else
        {
          v106 = 0;
        }

        v107 = v106;

        if (v107)
        {
          v108 = v107;
          itemBundleID = v8->_itemBundleID;
          v8->_itemBundleID = v108;
        }

        else
        {
          v110 = [v244 objectForKeyedSubscript:@"bundleIdentifier"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v111 = v110;
          }

          else
          {
            v111 = 0;
          }

          itemBundleID = v111;

          if (itemBundleID)
          {
            v112 = itemBundleID;
          }

          else
          {
            v112 = @"Unknown";
          }

          objc_storeStrong(&v8->_itemBundleID, v112);
        }

        v113 = [v65 objectForKeyedSubscript:@"localizedName"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v114 = v113;
        }

        else
        {
          v114 = 0;
        }

        v115 = v114;

        if (v115)
        {
          v116 = v115;
          itemTitle = v8->_itemTitle;
          v8->_itemTitle = v116;
        }

        else
        {
          v118 = v65;
          v119 = v11;
          v120 = [v244 objectForKeyedSubscript:@"localizedName"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v121 = v120;
          }

          else
          {
            v121 = 0;
          }

          itemTitle = v121;

          objc_storeStrong(&v8->_itemTitle, v121);
          v11 = v119;
          v65 = v118;
        }

        v122 = v237;
        if (!v237)
        {
          v122 = [Localizations stringWithKey:@"ACTION_APPROVE"];
        }

        v123 = v122;

        v124 = v235;
        if (!v235)
        {
          v124 = [Localizations stringWithKey:@"ACTION_DECLINE"];
        }

        v236 = v124;

        v125 = [v11 objectForKeyedSubscript:@"requesterFirstName"];
        objc_opt_class();
        v238 = v123;
        if (objc_opt_isKindOfClass())
        {
          v126 = v125;
        }

        else
        {
          v126 = 0;
        }

        v68 = v65;
        v127 = v126;

        if (v127)
        {
          v128 = v127;
        }

        else
        {
          v128 = @"Unknown";
        }

        objc_storeStrong(&v8->_requesterName, v128);

        v129 = [Localizations stringWithKey:@"NOTIFICATION_TITLE_APPROVER" bag:v239];
        v130 = v129;
        if (v129)
        {
          v129 = [NSString stringWithValidatedFormat:v129 validFormatSpecifiers:@"%@" error:0, v8->_requesterName];
        }

        v72 = v233;
        v70 = v238;
        v131 = v223;
        v132 = v129;

        if (!v132)
        {
          v69 = 0;
          v71 = v236;
LABEL_237:

LABEL_238:
          bagCopy = v239;
          if (v69)
          {
LABEL_239:
            v58 = v8;
            goto LABEL_241;
          }

LABEL_240:
          v58 = 0;
          goto LABEL_241;
        }

        v71 = v236;
        v214 = v132;
        v133 = [[RequestLocalizations alloc] initWithApprove:v238 body:v225 decline:v236 title:v132];
        v215 = v133 != 0;
        if (!v133)
        {
LABEL_236:

          v69 = v215;
          v132 = v214;
          goto LABEL_237;
        }

        objc_storeStrong(&v8->_localizations, v133);
        v134 = [v11 objectForKeyedSubscript:@"priceString"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v135 = v134;
        }

        else
        {
          v135 = 0;
        }

        v136 = v135;

        if (v136)
        {
          v137 = v136;
        }

        else
        {
          v137 = @"Unknown";
        }

        objc_storeStrong(&v8->_localizedPrice, v137);

        v138 = [v240 objectForKeyedSubscript:@"offerName"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v139 = v138;
        }

        else
        {
          v139 = 0;
        }

        v140 = v139;

        if (v140)
        {
          v141 = v140;
        }

        else
        {
          v141 = @"Unknown";
        }

        v213 = v141;

        objc_storeStrong(&v8->_offerName, v141);
        v142 = [v11 objectForKeyedSubscript:@"previewURL"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v143 = v142;
        }

        else
        {
          v143 = 0;
        }

        v144 = v143;

        v145 = v68;
        v212 = v144;
        if (v144)
        {
          previewURL = [NSURL URLWithString:v144];
          objc_storeStrong(&v8->_previewURL, previewURL);
        }

        else
        {
          previewURL = v8->_previewURL;
          v8->_previewURL = 0;
        }

        objc_storeStrong(&v8->_productType, obj);
        v147 = [v68 objectForKeyedSubscript:@"productTypeName"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v148 = v147;
        }

        else
        {
          v148 = 0;
        }

        v149 = v148;

        if (v149)
        {
          v150 = v149;
        }

        else
        {
          v150 = @"Unknown";
        }

        v151 = v150;

        objc_storeStrong(&v8->_productTypeName, v150);
        if (([(__CFString *)v151 isEqualToString:@"Subscription"]& 1) != 0)
        {
          v152 = @"SUB";
        }

        else
        {
          if (![(__CFString *)v151 isEqualToString:@"AudioBook"])
          {
            goto LABEL_173;
          }

          v152 = @"PUB";
        }

        productType = v8->_productType;
        v8->_productType = &v152->isa;

LABEL_173:
        v154 = [v145 objectForKeyedSubscript:@"url"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v155 = v154;
        }

        else
        {
          v155 = 0;
        }

        v156 = v155;

        v211 = v156;
        if (v156)
        {
          productURL = [NSURL URLWithString:v156];
          objc_storeStrong(&v8->_productURL, productURL);
        }

        else
        {
          productURL = v8->_productURL;
          v8->_productURL = 0;
        }

        v158 = [v11 objectForKeyedSubscript:@"requesterDsId"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v159 = v158;
        }

        else
        {
          v159 = 0;
        }

        v160 = v159;

        v210 = v160;
        stringValue3 = [v160 stringValue];
        requesterDSID = v8->_requesterDSID;
        v8->_requesterDSID = stringValue3;

        objc_storeStrong(&v8->_requestInfo, v229);
        v163 = [v11 objectForKeyedSubscript:@"approvalStatus"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v164 = v163;
        }

        else
        {
          v164 = 0;
        }

        v165 = v164;

        v230 = v165;
        if (v165)
        {
          integerValue = [v165 integerValue];
        }

        else
        {
          integerValue = -2;
        }

        v8->_status = integerValue;
        v167 = [v240 objectForKeyedSubscript:@"userRating"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v168 = v167;
        }

        else
        {
          v168 = 0;
        }

        v169 = v168;

        if (v169)
        {
          v170 = v169;
        }

        else
        {
          v171 = [v243 objectForKeyedSubscript:@"userRating"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v172 = v171;
          }

          else
          {
            v172 = 0;
          }

          v173 = v172;

          v170 = v173;
        }

        v174 = [v170 objectForKeyedSubscript:@"value"];
        objc_opt_class();
        v209 = v170;
        if (objc_opt_isKindOfClass())
        {
          v175 = v174;
        }

        else
        {
          v175 = 0;
        }

        v176 = v175;

        if (v176)
        {
          v177 = v176;
        }

        else
        {
          v177 = &off_100058070;
        }

        objc_storeStrong(&v8->_starRating, v177);

        status = v8->_status;
        obja = v151;
        if (!status)
        {
          v179 = @"declinedString";
          goto LABEL_207;
        }

        if (status == 1)
        {
          v179 = @"approvalString";
LABEL_207:
          v180 = [v11 objectForKeyedSubscript:v179];
          objc_opt_class();
          v181 = v133;
          if (objc_opt_isKindOfClass())
          {
            v182 = v180;
          }

          else
          {
            v182 = 0;
          }

          v183 = v11;
          v184 = v182;
          v185 = v184;
LABEL_211:
          v186 = v184;

          v185 = v186;
LABEL_212:
          if (v185)
          {
            v187 = v185;
          }

          else
          {
            v187 = &stru_100057158;
          }

          objc_storeStrong(&v8->_itemDescription, v187);
          v188 = [v145 objectForKeyedSubscript:@"coverArtImageUrl"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v189 = v188;
          }

          else
          {
            v189 = 0;
          }

          v190 = v189;

          if (v190)
          {
            v191 = v190;
          }

          else
          {
            v192 = [v244 objectForKeyedSubscript:@"coverArtImageUrl"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v193 = v192;
            }

            else
            {
              v193 = 0;
            }

            v196 = v193;

            v191 = v196;
          }

          if (v191)
          {
            v197 = v191;
          }

          else
          {
            v197 = @"Unknown";
          }

          objc_storeStrong(&v8->_thumbnailURLString, v197);
          v11 = v183;
          v198 = [v183 objectForKeyedSubscript:@"suppressClientResume"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v199 = v198;
          }

          else
          {
            v199 = 0;
          }

          v133 = v181;
          v68 = v145;
          v200 = v199;

          if (v200)
          {
            bOOLValue = [v200 BOOLValue];
          }

          else
          {
            bOOLValue = 0;
          }

          v72 = v233;
          v131 = v223;
          v8->_suppressClientResume = bOOLValue;
          v8->_isException = [ApprovalRequest isResponseAnExceptionRequest:v11];

          v71 = v236;
          v70 = v238;
          goto LABEL_236;
        }

        v194 = [v240 objectForKeyedSubscript:@"subtitle"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v195 = v194;
        }

        else
        {
          v195 = 0;
        }

        v203 = v195;

        if (v203)
        {
          v181 = v133;
          v183 = v11;
          v185 = v203;
        }

        else
        {
          v204 = [v243 objectForKeyedSubscript:@"subtitle"];
          objc_opt_class();
          v181 = v133;
          if (objc_opt_isKindOfClass())
          {
            v205 = v204;
          }

          else
          {
            v205 = 0;
          }

          v183 = v11;
          v206 = v205;

          v185 = v206;
          if (!v185)
          {
LABEL_250:
            v207 = [v240 objectForKeyedSubscript:@"artistName"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v208 = v207;
            }

            else
            {
              v208 = 0;
            }

            v180 = v208;

            v184 = [v180 stringByReplacingOccurrencesOfString:@"&amp" withString:@"&"];;
            goto LABEL_211;
          }
        }

        if ([(__CFString *)v185 length])
        {
          goto LABEL_212;
        }

        goto LABEL_250;
      }

      v93 = objc_opt_class();
      *buf = 138543618;
      v252 = v93;
      v253 = 2112;
      v254 = v222;
      v94 = "%{public}@: Failed To Parse Created Date. String Value: %@";
      v95 = oSLogObject3;
      v96 = 22;
    }

    else
    {
      v91 = +[APLogConfig sharedDaemonConfig];
      if (!v91)
      {
        v91 = +[APLogConfig sharedConfig];
      }

      oSLogObject3 = [v91 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_101;
      }

      v93 = objc_opt_class();
      *buf = 138543362;
      v252 = v93;
      v94 = "%{public}@: Server Response Missing Created Date";
      v95 = oSLogObject3;
      v96 = 12;
    }

    _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_FAULT, v94, buf, v96);

    goto LABEL_101;
  }

  v58 = 0;
  bagCopy = v53;
  dictionaryCopy = v50;
LABEL_241:

  return v58;
}

+ (id)createUniqueIDFromRequestID:(id)d andCreatedDate:(id)date
{
  dCopy = d;
  [date timeIntervalSinceReferenceDate];
  dCopy = [NSString stringWithFormat:@"%ld_%@", v6, dCopy];

  v8 = +[APLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = objc_opt_class();
    v14 = 2112;
    v15 = dCopy;
    v10 = v13;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Generated UniqueID from request: %@", buf, 0x16u);
  }

  return dCopy;
}

+ (id)ageRatingValueFromBuyParams:(id)params
{
  if (params)
  {
    v3 = [params objectForKeyedSubscript:@"buyParams"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      oSLogObject4 = [[AMSBuyParams alloc] initWithString:v4];
      v8 = AMSBuyParamPropertyAgeRatingValue;
      v9 = [oSLogObject4 objectForKeyedSubscript:AMSBuyParamPropertyAgeRatingValue];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        oSLogObject3 = v9;
      }

      else
      {
        oSLogObject3 = 0;
      }

      if (oSLogObject3)
      {
        oSLogObject3 = oSLogObject3;
        v7 = oSLogObject3;
      }

      else
      {
        v12 = [oSLogObject4 objectForKeyedSubscript:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        if (v13)
        {
          v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v13 integerValue]);
        }

        else
        {
          v14 = [oSLogObject4 objectForKeyedSubscript:v8];

          v15 = +[APLogConfig sharedDaemonConfig];
          v16 = v15;
          if (v14)
          {
            if (!v15)
            {
              v16 = +[APLogConfig sharedConfig];
            }

            oSLogObject = [v16 OSLogObject];
            if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
            {
              v18 = [oSLogObject4 objectForKeyedSubscript:v8];
              v22 = 138543362;
              v23 = v18;
              _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_FAULT, "Unexpected value for ageRatingValue buy param: %{public}@", &v22, 0xCu);
            }
          }

          else
          {
            if (!v15)
            {
              v16 = +[APLogConfig sharedConfig];
            }

            oSLogObject2 = [v16 OSLogObject];
            if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
            {
              v22 = 138543362;
              v23 = objc_opt_class();
              v20 = v23;
            }
          }

          v7 = 0;
        }
      }
    }

    else
    {
      oSLogObject4 = +[APLogConfig sharedDaemonConfig];
      if (!oSLogObject4)
      {
        oSLogObject4 = +[APLogConfig sharedConfig];
      }

      oSLogObject3 = [oSLogObject4 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
      {
        v22 = 138543362;
        v23 = objc_opt_class();
        v11 = v23;
        _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_INFO, "%{public}@: Response buy params are empty, can’t find age rating value.", &v22, 0xCu);
      }

      v7 = 0;
    }
  }

  else
  {
    v4 = +[APLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[APLogConfig sharedConfig];
    }

    oSLogObject4 = [v4 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_INFO))
    {
      v22 = 138543362;
      v23 = objc_opt_class();
      v6 = v23;
      _os_log_impl(&_mh_execute_header, oSLogObject4, OS_LOG_TYPE_INFO, "%{public}@: Response body is empty, can’t find age rating value.", &v22, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

+ (BOOL)isResponseAnExceptionRequest:(id)request
{
  if (!request)
  {
    v4 = +[APLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[APLogConfig sharedConfig];
    }

    oSLogObject = [v4 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v17 = 138543362;
      v18 = objc_opt_class();
      v6 = v18;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: Response body is empty, can’t check for exception approval.", &v17, 0xCu);
    }

    goto LABEL_24;
  }

  v3 = [request objectForKeyedSubscript:@"buyParams"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    oSLogObject = +[APLogConfig sharedDaemonConfig];
    if (!oSLogObject)
    {
      oSLogObject = +[APLogConfig sharedConfig];
    }

    v5OSLogObject = [oSLogObject OSLogObject];
    if (os_log_type_enabled(v5OSLogObject, OS_LOG_TYPE_INFO))
    {
      v17 = 138543362;
      v18 = objc_opt_class();
      v13 = v18;
      _os_log_impl(&_mh_execute_header, v5OSLogObject, OS_LOG_TYPE_INFO, "%{public}@: Response buy params are empty, can’t check for exception approval.", &v17, 0xCu);
    }

    goto LABEL_23;
  }

  oSLogObject = [AMSBuyParams buyParamsWithString:v4];
  v7 = AMSBuyParamPropertyIsExceptionRequest;
  v8 = [oSLogObject objectForKeyedSubscript:AMSBuyParamPropertyIsExceptionRequest];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_18;
  }

  v9 = [oSLogObject objectForKeyedSubscript:v7];
  bOOLValue = [v9 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
LABEL_18:
    v5OSLogObject = +[APLogConfig sharedDaemonConfig];
    if (!v5OSLogObject)
    {
      v5OSLogObject = +[APLogConfig sharedConfig];
    }

    v12OSLogObject = [v5OSLogObject OSLogObject];
    if (os_log_type_enabled(v12OSLogObject, OS_LOG_TYPE_INFO))
    {
      v17 = 138543362;
      v18 = objc_opt_class();
      v15 = v18;
      _os_log_impl(&_mh_execute_header, v12OSLogObject, OS_LOG_TYPE_INFO, "%{public}@: Buy params indicate we don’t need to submit an exception approval.", &v17, 0xCu);
    }

LABEL_23:
LABEL_24:
    v11 = 0;
    goto LABEL_25;
  }

  v11 = 1;
LABEL_25:

  return v11;
}

+ (id)dateFromString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(NSDateFormatter);
  [v4 setDateFormat:@"YYYY-MM-dd'T'HH:mm:ss.SZZZ"];
  if (stringCopy)
  {
    v5 = [v4 dateFromString:stringCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isSubscription
{
  productTypeName = [(ApprovalRequest *)self productTypeName];
  v3 = [productTypeName isEqualToString:@"Subscription"];

  return v3;
}

- (id)metricsApp
{
  if ([(ApprovalRequest *)self isSubscription])
  {
    itemBundleID = [(ApprovalRequest *)self itemBundleID];
    v4 = [ApprovalRequest lobForSubscription:itemBundleID];

    if (v4 < 9)
    {
      v5 = &off_100055B40[v4];
      return *v5;
    }

    return @"xp_its_main";
  }

  else
  {
    productType = [(ApprovalRequest *)self productType];
    v7 = [ApprovalRequest lobForProductType:productType];

    if ((v7 - 1) < 3)
    {
      v5 = &off_100055B88 + v7 - 1;
      return *v5;
    }

    return @"unknown";
  }
}

- (id)metricsTopic
{
  if ([(ApprovalRequest *)self isSubscription])
  {
    itemBundleID = [(ApprovalRequest *)self itemBundleID];
    v4 = [ApprovalRequest lobForSubscription:itemBundleID];

    if ((v4 - 3) >= 6)
    {
      return @"xp_its_main";
    }

    else
    {
      return *(&off_100055BA0 + v4 - 3);
    }
  }

  else
  {
    productType = [(ApprovalRequest *)self productType];
    v7 = [ApprovalRequest lobForProductType:productType];

    v8 = @"xp_its_main";
    if (v7 == 3)
    {
      v8 = @"xp_its_music_main";
    }

    if (v7 == 1)
    {
      return @"xp_ase_payments/appstore_payments_ue";
    }

    else
    {
      return v8;
    }
  }
}

- (int64_t)lineOfBusiness
{
  if ([(ApprovalRequest *)self isSubscription])
  {
    itemBundleID = [(ApprovalRequest *)self itemBundleID];
    v4 = [ApprovalRequest lobForSubscription:itemBundleID];
  }

  else
  {
    itemBundleID = [(ApprovalRequest *)self productType];
    v4 = [ApprovalRequest lobForProductType:itemBundleID];
  }

  v5 = v4;

  return v5;
}

+ (int64_t)lobForSubscription:(id)subscription
{
  lowercaseString = [subscription lowercaseString];
  if ([lowercaseString isEqualToString:@"com.apple.tv"])
  {
    v4 = 8;
  }

  else
  {
    if ([lowercaseString isEqualToString:@"com.apple.music"])
    {
      goto LABEL_4;
    }

    if ([lowercaseString isEqualToString:@"com.apple.appleone"])
    {
      v4 = 6;
      goto LABEL_15;
    }

    if ([lowercaseString isEqualToString:@"com.apple.fitness"])
    {
      v4 = 7;
      goto LABEL_15;
    }

    if ([lowercaseString isEqualToString:@"com.apple.news"])
    {
      v4 = 4;
      goto LABEL_15;
    }

    if (!lowercaseString)
    {
LABEL_4:
      v4 = 3;
    }

    else if ([lowercaseString isEqualToString:@"unknown"])
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }
  }

LABEL_15:

  return v4;
}

+ (int64_t)lobForProductType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"A"] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"ASB") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"C") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"G"))
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"P"] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"Q") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"S") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"V"))
  {
    v4 = 3;
  }

  else
  {
    if (([typeCopy isEqualToString:@"B"] & 1) == 0 && (objc_msgSend(typeCopy, "isEqualToString:", @"W") & 1) == 0 && (objc_msgSend(typeCopy, "isEqualToString:", @"PUB") & 1) == 0)
    {
      [typeCopy isEqualToString:@"PC"];
    }

    v4 = 0;
  }

  return v4;
}

- (id)compile
{
  v3 = objc_alloc_init(NSMutableDictionary);
  createdDate = [(ApprovalRequest *)self createdDate];
  [createdDate timeIntervalSinceReferenceDate];
  v5 = [NSNumber numberWithDouble:?];
  [v3 ap_setNullableObject:v5 forKey:@"createdTimeInterval"];

  modifiedDate = [(ApprovalRequest *)self modifiedDate];
  [modifiedDate timeIntervalSinceReferenceDate];
  v7 = [NSNumber numberWithDouble:?];
  [v3 ap_setNullableObject:v7 forKey:@"modifiedTimeInterval"];

  requestIdentifier = [(ApprovalRequest *)self requestIdentifier];
  [v3 ap_setNullableObject:requestIdentifier forKey:@"identifier"];

  uniqueIdentifier = [(ApprovalRequest *)self uniqueIdentifier];
  [v3 ap_setNullableObject:uniqueIdentifier forKey:@"uniqueIdentifier"];

  itemIdentifier = [(ApprovalRequest *)self itemIdentifier];
  [v3 ap_setNullableObject:itemIdentifier forKey:@"itemIdentifier"];

  ageRating = [(ApprovalRequest *)self ageRating];
  [v3 ap_setNullableObject:ageRating forKey:@"ageRating"];

  ageRatingValue = [(ApprovalRequest *)self ageRatingValue];
  [v3 ap_setNullableObject:ageRatingValue forKey:@"ageRatingValue"];

  approverDSID = [(ApprovalRequest *)self approverDSID];
  [v3 ap_setNullableObject:approverDSID forKey:@"approverDSID"];

  itemBundleID = [(ApprovalRequest *)self itemBundleID];
  [v3 ap_setNullableObject:itemBundleID forKey:@"bundleID"];

  v15 = [NSNumber numberWithBool:[(ApprovalRequest *)self canSendViaMessages]];
  [v3 ap_setNullableObject:v15 forKey:@"canSendViaMessages"];

  v16 = [NSNumber numberWithBool:[(ApprovalRequest *)self isException]];
  [v3 ap_setNullableObject:v16 forKey:@"isException"];

  itemTitle = [(ApprovalRequest *)self itemTitle];
  [v3 ap_setNullableObject:itemTitle forKey:@"itemTitle"];

  itemDescription = [(ApprovalRequest *)self itemDescription];
  [v3 ap_setNullableObject:itemDescription forKey:@"itemDescription"];

  localizations = [(ApprovalRequest *)self localizations];
  compile = [localizations compile];
  [v3 ap_setNullableObject:compile forKey:@"localizations"];

  metricsID = [(ApprovalRequest *)self metricsID];
  [v3 ap_setNullableObject:metricsID forKey:@"metricsID"];

  offerName = [(ApprovalRequest *)self offerName];
  [v3 ap_setNullableObject:offerName forKey:@"offerName"];

  v23 = [NSNumber numberWithBool:[(ApprovalRequest *)self isMocked]];
  [v3 ap_setNullableObject:v23 forKey:@"mocked"];

  localizedPrice = [(ApprovalRequest *)self localizedPrice];
  [v3 ap_setNullableObject:localizedPrice forKey:@"localizedPrice"];

  previewURL = [(ApprovalRequest *)self previewURL];
  absoluteString = [previewURL absoluteString];
  [v3 ap_setNullableObject:absoluteString forKey:@"previewURL"];

  productType = [(ApprovalRequest *)self productType];
  [v3 ap_setNullableObject:productType forKey:@"productType"];

  productTypeName = [(ApprovalRequest *)self productTypeName];
  [v3 ap_setNullableObject:productTypeName forKey:@"productTypeName"];

  productURL = [(ApprovalRequest *)self productURL];
  absoluteString2 = [productURL absoluteString];
  [v3 ap_setNullableObject:absoluteString2 forKey:@"productURL"];

  thumbnailURLString = [(ApprovalRequest *)self thumbnailURLString];
  [v3 ap_setNullableObject:thumbnailURLString forKey:@"thumbnailURL"];

  requesterDSID = [(ApprovalRequest *)self requesterDSID];
  [v3 ap_setNullableObject:requesterDSID forKey:@"requesterDSID"];

  requesterName = [(ApprovalRequest *)self requesterName];
  [v3 ap_setNullableObject:requesterName forKey:@"requesterName"];

  starRating = [(ApprovalRequest *)self starRating];
  [v3 ap_setNullableObject:starRating forKey:@"starRating"];

  v35 = [NSNumber numberWithInteger:[(ApprovalRequest *)self status]];
  [v3 ap_setNullableObject:v35 forKey:@"status"];

  v36 = [NSNumber numberWithBool:[(ApprovalRequest *)self suppressClientResume]];
  [v3 ap_setNullableObject:v36 forKey:@"suppressClientResume"];

  requestString = [(ApprovalRequest *)self requestString];
  [v3 ap_setNullableObject:requestString forKey:@"requestString"];

  requestSummary = [(ApprovalRequest *)self requestSummary];
  [v3 ap_setNullableObject:requestSummary forKey:@"requestSummary"];

  priceSummary = [(ApprovalRequest *)self priceSummary];
  [v3 ap_setNullableObject:priceSummary forKey:@"priceSummary"];

  return v3;
}

- (NSString)description
{
  compile = [(ApprovalRequest *)self compile];
  v4 = [(ApprovalRequest *)self ap_generateDescriptionWithSubObjects:compile];

  return v4;
}

@end