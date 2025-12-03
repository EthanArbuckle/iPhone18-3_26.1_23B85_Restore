@interface PCNativeRepresentation
- (PCNativeRepresentation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCNativeRepresentation

- (PCNativeRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v124.receiver = self;
  v124.super_class = PCNativeRepresentation;
  v8 = [(APRepresentationData *)&v124 initWithCoder:coderCopy];
  if (v8)
  {
    v8->_adType = objc_msgSend_decodeInt32ForKey_(coderCopy, v5, @"adType", v6, v7, v9, v10);
    v11 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"accessibleAdCopy", v13, v14, v15);
    accessibleAdCopy = v8->_accessibleAdCopy;
    v8->_accessibleAdCopy = v16;

    v18 = objc_opt_class();
    v23 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v19, v18, @"accessibleHeadline", v20, v21, v22);
    accessibleHeadline = v8->_accessibleHeadline;
    v8->_accessibleHeadline = v23;

    v25 = objc_opt_class();
    v30 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v26, v25, @"adCopy", v27, v28, v29);
    adCopy = v8->_adCopy;
    v8->_adCopy = v30;

    v32 = objc_opt_class();
    v37 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v33, v32, @"defaultStyle", v34, v35, v36);
    defaultStyle = v8->_defaultStyle;
    v8->_defaultStyle = v37;

    v39 = objc_alloc(MEMORY[0x1E695DFD8]);
    v40 = objc_opt_class();
    v41 = objc_opt_class();
    v47 = objc_msgSend_initWithObjects_(v39, v42, v40, v43, v44, v45, v46, v41, 0);
    v52 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v48, v47, @"elements", v49, v50, v51);
    elements = v8->_elements;
    v8->_elements = v52;

    v54 = objc_opt_class();
    v59 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v55, v54, @"headline", v56, v57, v58);
    headline = v8->_headline;
    v8->_headline = v59;

    v61 = objc_opt_class();
    v66 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v62, v61, @"localeIdentifier", v63, v64, v65);
    localeIdentifier = v8->_localeIdentifier;
    v8->_localeIdentifier = v66;

    v68 = objc_opt_class();
    v73 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v69, v68, @"sponsor", v70, v71, v72);
    sponsor = v8->_sponsor;
    v8->_sponsor = v73;

    v8->_adFormatType = objc_msgSend_decodeInt32ForKey_(coderCopy, v75, @"adFormatType", v76, v77, v78, v79);
    v80 = objc_opt_class();
    v85 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v81, v80, @"kSponsoredByAsset", v82, v83, v84);
    sponsoredByAssetURL = v8->_sponsoredByAssetURL;
    v8->_sponsoredByAssetURL = v85;

    v87 = objc_opt_class();
    v92 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v88, v87, @"kSponsoredByAssetForDarkMode", v89, v90, v91);
    sponsoredByAssetURLForDarkMode = v8->_sponsoredByAssetURLForDarkMode;
    v8->_sponsoredByAssetURLForDarkMode = v92;

    v94 = objc_alloc(MEMORY[0x1E695DFD8]);
    v95 = objc_opt_class();
    v96 = objc_opt_class();
    v102 = objc_msgSend_initWithObjects_(v94, v97, v95, v98, v99, v100, v101, v96, 0);
    v107 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v103, v102, @"kLocalizedHeadlines", v104, v105, v106);
    localizedHeadlines = v8->_localizedHeadlines;
    v8->_localizedHeadlines = v107;

    v109 = objc_opt_class();
    v114 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v110, v109, @"kButton", v111, v112, v113);
    button = v8->_button;
    v8->_button = v114;

    v116 = objc_opt_class();
    v121 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v117, v116, @"lActionURL", v118, v119, v120);
    actionURL = v8->_actionURL;
    v8->_actionURL = v121;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v170.receiver = self;
  v170.super_class = PCNativeRepresentation;
  coderCopy = coder;
  [(APRepresentationData *)&v170 encodeWithCoder:coderCopy];
  v11 = objc_msgSend_adType(self, v5, v6, v7, v8, v9, v10, v170.receiver, v170.super_class);
  objc_msgSend_encodeInt32_forKey_(coderCopy, v12, v11, @"adType", v13, v14, v15);
  v22 = objc_msgSend_accessibleAdCopy(self, v16, v17, v18, v19, v20, v21);
  objc_msgSend_encodeObject_forKey_(coderCopy, v23, v22, @"accessibleAdCopy", v24, v25, v26);

  v33 = objc_msgSend_accessibleHeadline(self, v27, v28, v29, v30, v31, v32);
  objc_msgSend_encodeObject_forKey_(coderCopy, v34, v33, @"accessibleHeadline", v35, v36, v37);

  v44 = objc_msgSend_adCopy(self, v38, v39, v40, v41, v42, v43);
  objc_msgSend_encodeObject_forKey_(coderCopy, v45, v44, @"adCopy", v46, v47, v48);

  v55 = objc_msgSend_defaultStyle(self, v49, v50, v51, v52, v53, v54);
  objc_msgSend_encodeObject_forKey_(coderCopy, v56, v55, @"defaultStyle", v57, v58, v59);

  v66 = objc_msgSend_elements(self, v60, v61, v62, v63, v64, v65);
  objc_msgSend_encodeObject_forKey_(coderCopy, v67, v66, @"elements", v68, v69, v70);

  v77 = objc_msgSend_headline(self, v71, v72, v73, v74, v75, v76);
  objc_msgSend_encodeObject_forKey_(coderCopy, v78, v77, @"headline", v79, v80, v81);

  v88 = objc_msgSend_localeIdentifier(self, v82, v83, v84, v85, v86, v87);
  objc_msgSend_encodeObject_forKey_(coderCopy, v89, v88, @"localeIdentifier", v90, v91, v92);

  v99 = objc_msgSend_sponsor(self, v93, v94, v95, v96, v97, v98);
  objc_msgSend_encodeObject_forKey_(coderCopy, v100, v99, @"sponsor", v101, v102, v103);

  v110 = objc_msgSend_adFormatType(self, v104, v105, v106, v107, v108, v109);
  objc_msgSend_encodeInt32_forKey_(coderCopy, v111, v110, @"adFormatType", v112, v113, v114);
  v121 = objc_msgSend_sponsoredByAssetURL(self, v115, v116, v117, v118, v119, v120);
  objc_msgSend_encodeObject_forKey_(coderCopy, v122, v121, @"kSponsoredByAsset", v123, v124, v125);

  v132 = objc_msgSend_sponsoredByAssetURLForDarkMode(self, v126, v127, v128, v129, v130, v131);
  objc_msgSend_encodeObject_forKey_(coderCopy, v133, v132, @"kSponsoredByAssetForDarkMode", v134, v135, v136);

  v143 = objc_msgSend_localizedHeadlines(self, v137, v138, v139, v140, v141, v142);
  objc_msgSend_encodeObject_forKey_(coderCopy, v144, v143, @"kLocalizedHeadlines", v145, v146, v147);

  v154 = objc_msgSend_button(self, v148, v149, v150, v151, v152, v153);
  objc_msgSend_encodeObject_forKey_(coderCopy, v155, v154, @"kButton", v156, v157, v158);

  v165 = objc_msgSend_actionURL(self, v159, v160, v161, v162, v163, v164);
  objc_msgSend_encodeObject_forKey_(coderCopy, v166, v165, @"lActionURL", v167, v168, v169);
}

@end