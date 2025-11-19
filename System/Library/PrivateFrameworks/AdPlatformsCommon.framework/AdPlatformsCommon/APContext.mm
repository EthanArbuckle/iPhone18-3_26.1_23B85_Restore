@interface APContext
- ($F24F406B2B787EFB06265DBA3D28CBD5)maxSize;
- (APContext)initWithCoder:(id)a3;
- (APContext)initWithIdentifier:(id)a3 maxSize:(id)a4 requestedAdIdentifier:(id)a5 currentContent:(id)a6 adjacentContent:(id)a7 supplementalContext:(id)a8;
- (NSString)fingerprint;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APContext

- ($F24F406B2B787EFB06265DBA3D28CBD5)maxSize
{
  objc_copyStruct(v4, &self->_maxSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (APContext)initWithIdentifier:(id)a3 maxSize:(id)a4 requestedAdIdentifier:(id)a5 currentContent:(id)a6 adjacentContent:(id)a7 supplementalContext:(id)a8
{
  var1 = a4.var1;
  var0 = a4.var0;
  v31 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v32.receiver = self;
  v32.super_class = APContext;
  v20 = [(APContext *)&v32 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_identifier, a3);
    v21->_maxSize.width = var0;
    v21->_maxSize.height = var1;
    objc_storeStrong(&v21->_requestedAdIdentifier, a5);
    objc_storeStrong(&v21->_current, a6);
    objc_storeStrong(&v21->_adjacent, a7);
    v28 = objc_msgSend_copy(v19, v22, v23, v24, v25, v26, v27);
    supplementalContext = v21->_supplementalContext;
    v21->_supplementalContext = v28;
  }

  return v21;
}

- (APContext)initWithCoder:(id)a3
{
  v4 = a3;
  v78.receiver = self;
  v78.super_class = APContext;
  v5 = [(APContext *)&v78 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"identifier", v8, v9, v10);
    identifier = v5->_identifier;
    v5->_identifier = v11;

    v18 = objc_msgSend_decodeIntForKey_(v4, v13, @"height", v14, v15, v16, v17);
    v5->_maxSize.height = v18;
    v5->_maxSize.width = objc_msgSend_decodeIntForKey_(v4, v19, @"width", v20, v21, v18, v22);
    v23 = objc_opt_class();
    v28 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v24, v23, @"requestedAdIdentifier", v25, v26, v27);
    requestedAdIdentifier = v5->_requestedAdIdentifier;
    v5->_requestedAdIdentifier = v28;

    v30 = objc_opt_class();
    v35 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v31, v30, @"current", v32, v33, v34);
    current = v5->_current;
    v5->_current = v35;

    v37 = MEMORY[0x1E695DFD8];
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v45 = objc_msgSend_setWithObjects_(v37, v40, v38, v41, v42, v43, v44, v39, 0);
    v50 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v46, v45, @"adjacent", v47, v48, v49);
    adjacent = v5->_adjacent;
    v5->_adjacent = v50;

    v52 = MEMORY[0x1E695DFD8];
    v53 = objc_opt_class();
    v54 = objc_opt_class();
    v55 = objc_opt_class();
    v56 = objc_opt_class();
    v57 = objc_opt_class();
    v63 = objc_msgSend_setWithObjects_(v52, v58, v53, v59, v60, v61, v62, v54, v55, v56, v57, 0);
    v68 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v64, v63, @"supplementalContext", v65, v66, v67);
    supplementalContext = v5->_supplementalContext;
    v5->_supplementalContext = v68;

    v70 = objc_opt_class();
    v75 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v71, v70, @"prefetchTimestamp", v72, v73, v74);
    prefetchTimestamp = v5->_prefetchTimestamp;
    v5->_prefetchTimestamp = v75;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v11 = objc_msgSend_identifier(self, v5, v6, v7, v8, v9, v10);
  objc_msgSend_encodeObject_forKey_(v4, v12, v11, @"identifier", v13, v14, v15);

  objc_msgSend_maxSize(self, v16, v17, v18, v19, v20, v21);
  objc_msgSend_encodeInt_forKey_(v4, v23, v22, @"width", v24, v22, v25);
  objc_msgSend_maxSize(self, v26, v27, v28, v29, v30, v31);
  objc_msgSend_encodeInt_forKey_(v4, v33, v32, @"height", v34, v35, v32);
  v42 = objc_msgSend_requestedAdIdentifier(self, v36, v37, v38, v39, v40, v41);
  objc_msgSend_encodeObject_forKey_(v4, v43, v42, @"requestedAdIdentifier", v44, v45, v46);

  v53 = objc_msgSend_current(self, v47, v48, v49, v50, v51, v52);
  objc_msgSend_encodeObject_forKey_(v4, v54, v53, @"current", v55, v56, v57);

  v64 = objc_msgSend_adjacent(self, v58, v59, v60, v61, v62, v63);
  objc_msgSend_encodeObject_forKey_(v4, v65, v64, @"adjacent", v66, v67, v68);

  v75 = objc_msgSend_supplementalContext(self, v69, v70, v71, v72, v73, v74);
  objc_msgSend_encodeObject_forKey_(v4, v76, v75, @"supplementalContext", v77, v78, v79);

  v90 = objc_msgSend_prefetchTimestamp(self, v80, v81, v82, v83, v84, v85);
  objc_msgSend_encodeObject_forKey_(v4, v86, v90, @"prefetchTimestamp", v87, v88, v89);
}

- (NSString)fingerprint
{
  v7 = objc_msgSend_identifier(self, a2, v2, v3, v4, v5, v6);
  v14 = objc_msgSend_UUIDString(v7, v8, v9, v10, v11, v12, v13);

  return v14;
}

@end