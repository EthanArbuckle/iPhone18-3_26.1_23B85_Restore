@interface APInstallAttribution
- (APInstallAttribution)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APInstallAttribution

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v11 = objc_msgSend_adamId(self, v5, v6, v7, v8, v9, v10);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v12, v11, @"adamId", v13, v14, v15);
  v22 = objc_msgSend_campaignId(self, v16, v17, v18, v19, v20, v21);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v23, v22, @"campaignId", v24, v25, v26);
  v33 = objc_msgSend_sourceAppAdamId(self, v27, v28, v29, v30, v31, v32);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v34, v33, @"sourceAppAdamId", v35, v36, v37);
  v44 = objc_msgSend_timestamp(self, v38, v39, v40, v41, v42, v43);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v45, v44, @"timestamp", v46, v47, v48);
  v55 = objc_msgSend_adNetworkId(self, v49, v50, v51, v52, v53, v54);
  objc_msgSend_encodeObject_forKey_(coderCopy, v56, v55, @"adNetworkId", v57, v58, v59);

  v66 = objc_msgSend_attributionSignature(self, v60, v61, v62, v63, v64, v65);
  objc_msgSend_encodeObject_forKey_(coderCopy, v67, v66, @"attributionSignature", v68, v69, v70);

  v77 = objc_msgSend_contextIdentifier(self, v71, v72, v73, v74, v75, v76);
  objc_msgSend_encodeObject_forKey_(coderCopy, v78, v77, @"contextIdentifier", v79, v80, v81);

  v92 = objc_msgSend_version(self, v82, v83, v84, v85, v86, v87);
  objc_msgSend_encodeObject_forKey_(coderCopy, v88, v92, @"version", v89, v90, v91);
}

- (APInstallAttribution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v55.receiver = self;
  v55.super_class = APInstallAttribution;
  v8 = [(APInstallAttribution *)&v55 init];
  if (v8)
  {
    v8->_adamId = objc_msgSend_decodeInt64ForKey_(coderCopy, v5, @"adamId", v6, v7, v9, v10);
    v8->_campaignId = objc_msgSend_decodeInt64ForKey_(coderCopy, v11, @"campaignId", v12, v13, v14, v15);
    v8->_sourceAppAdamId = objc_msgSend_decodeInt64ForKey_(coderCopy, v16, @"sourceAppAdamId", v17, v18, v19, v20);
    v8->_timestamp = objc_msgSend_decodeInt64ForKey_(coderCopy, v21, @"timestamp", v22, v23, v24, v25);
    v26 = objc_opt_class();
    v31 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v27, v26, @"adNetworkId", v28, v29, v30);
    adNetworkId = v8->_adNetworkId;
    v8->_adNetworkId = v31;

    v33 = objc_opt_class();
    v38 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v34, v33, @"attributionSignature", v35, v36, v37);
    attributionSignature = v8->_attributionSignature;
    v8->_attributionSignature = v38;

    v40 = objc_opt_class();
    v45 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v41, v40, @"contextIdentifier", v42, v43, v44);
    contextIdentifier = v8->_contextIdentifier;
    v8->_contextIdentifier = v45;

    v47 = objc_opt_class();
    v52 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v48, v47, @"version", v49, v50, v51);
    version = v8->_version;
    v8->_version = v52;
  }

  return v8;
}

@end