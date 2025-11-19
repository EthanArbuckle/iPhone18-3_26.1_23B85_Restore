@interface ApproverStoreItem
- (ApproverStoreItem)initWithDictionary:(id)a3;
- (ApproverStoreItem)initWithItemIdentifier:(id)a3 requestIdentifier:(id)a4 uniqueIdentifier:(id)a5 date:(id)a6;
- (ApproverStoreItem)initWithRequest:(id)a3 date:(id)a4;
- (id)compile;
- (id)description;
@end

@implementation ApproverStoreItem

- (ApproverStoreItem)initWithRequest:(id)a3 date:(id)a4
{
  v5 = a3;
  v58.receiver = self;
  v58.super_class = ApproverStoreItem;
  v6 = [(ApproverStoreItem *)&v58 init];
  if (v6)
  {
    v7 = [v5 ageRating];
    ageRating = v6->_ageRating;
    v6->_ageRating = v7;

    v9 = [v5 ageRatingValue];
    ageRatingValue = v6->_ageRatingValue;
    v6->_ageRatingValue = v9;

    v11 = [v5 approverDSID];
    approverDSID = v6->_approverDSID;
    v6->_approverDSID = v11;

    v6->_canSendViaMessages = [v5 canSendViaMessages];
    v13 = [v5 createdDate];
    createdDate = v6->_createdDate;
    v6->_createdDate = v13;

    v15 = [v5 modifiedDate];
    modifiedDate = v6->_modifiedDate;
    v6->_modifiedDate = v15;

    v6->_isException = [v5 isException];
    v17 = [v5 itemIdentifier];
    itemIdentifier = v6->_itemIdentifier;
    v6->_itemIdentifier = v17;

    v19 = [v5 requestIdentifier];
    requestIdentifier = v6->_requestIdentifier;
    v6->_requestIdentifier = v19;

    v21 = [v5 uniqueIdentifier];
    uniqueIdentifier = v6->_uniqueIdentifier;
    v6->_uniqueIdentifier = v21;

    v23 = [v5 itemTitle];
    itemTitle = v6->_itemTitle;
    v6->_itemTitle = v23;

    v25 = [v5 itemDescription];
    itemDescription = v6->_itemDescription;
    v6->_itemDescription = v25;

    v27 = [v5 localizedPrice];
    localizedPrice = v6->_localizedPrice;
    v6->_localizedPrice = v27;

    v29 = [v5 itemBundleID];
    itemBundleID = v6->_itemBundleID;
    v6->_itemBundleID = v29;

    v31 = [v5 localizations];
    localizations = v6->_localizations;
    v6->_localizations = v31;

    v33 = [v5 metricsID];
    metricsID = v6->_metricsID;
    v6->_metricsID = v33;

    v35 = [v5 offerName];
    offerName = v6->_offerName;
    v6->_offerName = v35;

    v37 = [v5 previewURL];
    previewURL = v6->_previewURL;
    v6->_previewURL = v37;

    v39 = [v5 productType];
    productType = v6->_productType;
    v6->_productType = v39;

    v41 = [v5 thumbnailURLString];
    thumbnailURLString = v6->_thumbnailURLString;
    v6->_thumbnailURLString = v41;

    v43 = [v5 requesterDSID];
    requesterDSID = v6->_requesterDSID;
    v6->_requesterDSID = v43;

    v45 = [v5 requesterName];
    requesterName = v6->_requesterName;
    v6->_requesterName = v45;

    v47 = [v5 requestInfo];
    requestInfo = v6->_requestInfo;
    v6->_requestInfo = v47;

    v49 = [v5 starRating];
    starRating = v6->_starRating;
    v6->_starRating = v49;

    v6->_status = [v5 status];
    v6->_suppressClientResume = [v5 suppressClientResume];
    v51 = [v5 requestString];
    requestString = v6->_requestString;
    v6->_requestString = v51;

    v53 = [v5 requestSummary];
    requestSummary = v6->_requestSummary;
    v6->_requestSummary = v53;

    v55 = [v5 priceSummary];
    priceSummary = v6->_priceSummary;
    v6->_priceSummary = v55;
  }

  return v6;
}

- (ApproverStoreItem)initWithItemIdentifier:(id)a3 requestIdentifier:(id)a4 uniqueIdentifier:(id)a5 date:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ApproverStoreItem;
  v15 = [(ApproverStoreItem *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_itemIdentifier, a3);
    objc_storeStrong(&v16->_requestIdentifier, a4);
    objc_storeStrong(&v16->_uniqueIdentifier, a5);
    objc_storeStrong(&v16->_createdDate, a6);
  }

  return v16;
}

- (ApproverStoreItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v154.receiver = self;
  v154.super_class = ApproverStoreItem;
  v5 = [(ApproverStoreItem *)&v154 init];

  if (!v5)
  {
LABEL_121:
    v50 = v5;
    goto LABEL_122;
  }

  v6 = [v4 objectForKeyedSubscript:@"itemIdentifier"];
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

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
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
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Unexpected type for key %{public}@. Expected %{public}@, got %{public}@.", buf, 0x20u);
    }

    v7 = 0;
  }

  v151 = v7;
  v14 = v7;

  v15 = [v4 objectForKeyedSubscript:@"requestIdentifier"];
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

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
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
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "Unexpected type for key %{public}@. Expected %{public}@, got %{public}@.", buf, 0x20u);

      v14 = v152;
    }

    v16 = 0;
  }

  v150 = v16;
  v153 = v16;

  v23 = [v4 objectForKeyedSubscript:@"uniqueIdentifier"];
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

    v26 = [v25 OSLogObject];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
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
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "Unexpected type for key %{public}@. Expected %{public}@, got %{public}@.", buf, 0x20u);

      v14 = v152;
    }

    v24 = 0;
  }

  v147 = v24;
  v31 = v24;

  v32 = [v4 objectForKeyedSubscript:@"createdTimeInterval"];
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

      v36 = [v35 OSLogObject];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        *buf = 138543618;
        v156 = @"createdTimeInterval";
        v157 = 2114;
        v158 = v38;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_FAULT, "Unexpected type for key %{public}@. Expected NSDate or NSNumber, got %{public}@.", buf, 0x16u);

        v14 = v152;
      }

      v33 = 0;
      v31 = v34;
    }
  }

  v146 = v33;
  v39 = v33;

  v40 = [v4 objectForKeyedSubscript:@"modifiedTimeInterval"];
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

      v44 = [v43 OSLogObject];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        *buf = 138543618;
        v156 = @"modifiedTimeInterval";
        v157 = 2114;
        v158 = v46;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_FAULT, "Unexpected type for key %{public}@. Expected NSDate or NSNumber, got %{public}@.", buf, 0x16u);

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
    v48 = [v4 objectForKeyedSubscript:@"ageRating"];
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

    v51 = [v4 objectForKeyedSubscript:@"ageRatingValue"];
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

    v53 = [v4 objectForKeyedSubscript:@"canSendViaMessages"];
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

    v56 = [v4 objectForKeyedSubscript:@"approverDSID"];
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

    v58 = [v4 objectForKeyedSubscript:@"isException"];
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

    v60 = [v4 objectForKeyedSubscript:@"itemBundleID"];
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

    v62 = [v4 objectForKeyedSubscript:@"localizations"];
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
    v65 = [v4 objectForKeyedSubscript:@"price"];
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

    v68 = [v4 objectForKeyedSubscript:@"metricsID"];
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

    v70 = [v4 objectForKeyedSubscript:@"offerName"];
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

    v72 = [v4 objectForKeyedSubscript:@"previewURL"];
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

    v75 = [v4 objectForKeyedSubscript:@"productType"];
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

    v77 = [v4 objectForKeyedSubscript:@"itemTitle"];
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

    v79 = [v4 objectForKeyedSubscript:@"itemDescription"];
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

    v81 = [v4 objectForKeyedSubscript:@"thumbnailURL"];
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

    v83 = [v4 objectForKeyedSubscript:@"requesterName"];
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

    v85 = [v4 objectForKeyedSubscript:@"requesterDSID"];
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

    v87 = [v4 objectForKeyedSubscript:@"requestInfo"];
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

    v89 = [v4 objectForKeyedSubscript:@"starRating"];
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

    v91 = [v4 objectForKeyedSubscript:@"status"];
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

    v94 = [v4 objectForKeyedSubscript:@"suppressClientResume"];
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

    v97 = [v4 objectForKeyedSubscript:@"requestString"];
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

    v99 = [v4 objectForKeyedSubscript:@"requestSummary"];
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

    v102 = [v4 objectForKeyedSubscript:@"priceSummary"];
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
  v4 = [(ApproverStoreItem *)self itemIdentifier];
  [v3 ap_setNullableObject:v4 forKey:@"itemIdentifier"];

  v5 = [(ApproverStoreItem *)self requestIdentifier];
  [v3 ap_setNullableObject:v5 forKey:@"requestIdentifier"];

  v6 = [(ApproverStoreItem *)self uniqueIdentifier];
  [v3 ap_setNullableObject:v6 forKey:@"uniqueIdentifier"];

  v7 = [(ApproverStoreItem *)self createdDate];
  [v7 timeIntervalSinceReferenceDate];
  v8 = [NSNumber numberWithDouble:?];
  [v3 ap_setNullableObject:v8 forKey:@"createdTimeInterval"];

  v9 = [(ApproverStoreItem *)self modifiedDate];
  [v9 timeIntervalSinceReferenceDate];
  v10 = [NSNumber numberWithDouble:?];
  [v3 ap_setNullableObject:v10 forKey:@"modifiedTimeInterval"];

  v11 = [(ApproverStoreItem *)self ageRating];
  [v3 ap_setNullableObject:v11 forKey:@"ageRating"];

  v12 = [(ApproverStoreItem *)self ageRatingValue];
  [v3 ap_setNullableObject:v12 forKey:@"ageRatingValue"];

  v13 = [(ApproverStoreItem *)self approverDSID];
  [v3 ap_setNullableObject:v13 forKey:@"approverDSID"];

  v14 = [NSNumber numberWithBool:[(ApproverStoreItem *)self isException]];
  [v3 ap_setNullableObject:v14 forKey:@"isException"];

  v15 = [(ApproverStoreItem *)self itemBundleID];
  [v3 ap_setNullableObject:v15 forKey:@"itemBundleID"];

  v16 = [NSNumber numberWithBool:[(ApproverStoreItem *)self canSendViaMessages]];
  [v3 ap_setNullableObject:v16 forKey:@"canSendViaMessages"];

  v17 = [(ApproverStoreItem *)self itemTitle];
  [v3 ap_setNullableObject:v17 forKey:@"itemTitle"];

  v18 = [(ApproverStoreItem *)self itemDescription];
  [v3 ap_setNullableObject:v18 forKey:@"itemDescription"];

  v19 = [(ApproverStoreItem *)self localizations];
  v20 = [v19 compile];
  [v3 ap_setNullableObject:v20 forKey:@"localizations"];

  v21 = [(ApproverStoreItem *)self localizedPrice];
  [v3 ap_setNullableObject:v21 forKey:@"price"];

  v22 = [(ApproverStoreItem *)self metricsID];
  [v3 ap_setNullableObject:v22 forKey:@"metricsID"];

  v23 = [(ApproverStoreItem *)self offerName];
  [v3 ap_setNullableObject:v23 forKey:@"offerName"];

  v24 = [(ApproverStoreItem *)self previewURL];
  v25 = [v24 absoluteString];
  [v3 ap_setNullableObject:v25 forKey:@"previewURL"];

  v26 = [(ApproverStoreItem *)self productType];
  [v3 ap_setNullableObject:v26 forKey:@"productType"];

  v27 = [(ApproverStoreItem *)self thumbnailURLString];
  [v3 ap_setNullableObject:v27 forKey:@"thumbnailURL"];

  v28 = [(ApproverStoreItem *)self requesterName];
  [v3 ap_setNullableObject:v28 forKey:@"requesterName"];

  v29 = [(ApproverStoreItem *)self requesterDSID];
  [v3 ap_setNullableObject:v29 forKey:@"requesterDSID"];

  v30 = [(ApproverStoreItem *)self requestInfo];
  [v3 ap_setNullableObject:v30 forKey:@"requestInfo"];

  v31 = [(ApproverStoreItem *)self starRating];
  [v3 ap_setNullableObject:v31 forKey:@"starRating"];

  v32 = [NSNumber numberWithInteger:[(ApproverStoreItem *)self status]];
  [v3 ap_setNullableObject:v32 forKey:@"status"];

  v33 = [NSNumber numberWithBool:[(ApproverStoreItem *)self suppressClientResume]];
  [v3 ap_setNullableObject:v33 forKey:@"suppressClientResume"];

  v34 = [(ApproverStoreItem *)self requestString];
  [v3 ap_setNullableObject:v34 forKey:@"requestString"];

  v35 = [(ApproverStoreItem *)self requestSummary];
  [v3 ap_setNullableObject:v35 forKey:@"requestSummary"];

  v36 = [(ApproverStoreItem *)self priceSummary];
  [v3 ap_setNullableObject:v36 forKey:@"priceSummary"];

  return v3;
}

- (id)description
{
  v3 = [(ApproverStoreItem *)self compile];
  v4 = [(ApproverStoreItem *)self ap_generateDescriptionWithSubObjects:v3];

  return v4;
}

@end