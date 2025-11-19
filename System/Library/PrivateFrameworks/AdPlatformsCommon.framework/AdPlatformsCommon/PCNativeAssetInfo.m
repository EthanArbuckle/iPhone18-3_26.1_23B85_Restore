@interface PCNativeAssetInfo
- (PCNativeAssetInfo)init;
- (PCNativeAssetInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PCNativeAssetInfo

- (PCNativeAssetInfo)init
{
  v3.receiver = self;
  v3.super_class = PCNativeAssetInfo;
  result = [(PCNativeAssetInfo *)&v3 init];
  if (result)
  {
    result->_contentType = -1;
  }

  return result;
}

- (PCNativeAssetInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v14 = objc_msgSend_init(self, v5, v6, v7, v8, v9, v10);
  if (v14)
  {
    *(v14 + 16) = objc_msgSend_decodeInt32ForKey_(v4, v11, @"contentType", v12, v13, v15, v16);
    *(v14 + 24) = objc_msgSend_decodeInt32ForKey_(v4, v17, @"width", v18, v19, v20, v21);
    *(v14 + 32) = objc_msgSend_decodeInt32ForKey_(v4, v22, @"height", v23, v24, v25, v26);
    *(v14 + 48) = objc_msgSend_decodeInt32ForKey_(v4, v27, @"length", v28, v29, v30, v31);
    objc_msgSend_decodeDoubleForKey_(v4, v32, @"bitrate", v33, v34, v35, v36);
    *(v14 + 56) = v37;
    v38 = objc_opt_class();
    v43 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v39, v38, @"url", v40, v41, v42);
    v44 = *(v14 + 40);
    *(v14 + 40) = v43;

    *(v14 + 8) = objc_msgSend_decodeBoolForKey_(v4, v45, @"autoloop", v46, v47, v48, v49);
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v81 = a3;
  v10 = objc_msgSend_contentType(self, v4, v5, v6, v7, v8, v9);
  objc_msgSend_encodeInt32_forKey_(v81, v11, v10, @"contentType", v12, v13, v14);
  v21 = objc_msgSend_width(self, v15, v16, v17, v18, v19, v20);
  objc_msgSend_encodeInt32_forKey_(v81, v22, v21, @"width", v23, v24, v25);
  v32 = objc_msgSend_height(self, v26, v27, v28, v29, v30, v31);
  objc_msgSend_encodeInt32_forKey_(v81, v33, v32, @"height", v34, v35, v36);
  v43 = objc_msgSend_url(self, v37, v38, v39, v40, v41, v42);
  objc_msgSend_encodeObject_forKey_(v81, v44, v43, @"url", v45, v46, v47);

  v54 = objc_msgSend_length(self, v48, v49, v50, v51, v52, v53);
  objc_msgSend_encodeInt32_forKey_(v81, v55, v54, @"length", v56, v57, v58);
  objc_msgSend_bitrate(self, v59, v60, v61, v62, v63, v64);
  objc_msgSend_encodeDouble_forKey_(v81, v65, @"bitrate", v66, v67, v68, v69);
  v76 = objc_msgSend_autoloop(self, v70, v71, v72, v73, v74, v75);
  objc_msgSend_encodeBool_forKey_(v81, v77, v76, @"autoloop", v78, v79, v80);
}

@end