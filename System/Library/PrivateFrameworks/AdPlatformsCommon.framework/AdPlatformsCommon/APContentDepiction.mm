@interface APContentDepiction
- (APContentDepiction)init;
- (APContentDepiction)initWithCoder:(id)coder;
- (id)init:(unint64_t)init adjacency:(unint64_t)adjacency language:(id)language locale:(id)locale searchTerm:(id)term keywords:(id)keywords categories:(id)categories;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APContentDepiction

- (APContentDepiction)init
{
  v12.receiver = self;
  v12.super_class = APContentDepiction;
  v6 = [(APContentDepiction *)&v12 init];
  if (v6)
  {
    v9 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v2, v3, v4, v5, v7, v8);
    identifier = v6->_identifier;
    v6->_identifier = v9;
  }

  return v6;
}

- (id)init:(unint64_t)init adjacency:(unint64_t)adjacency language:(id)language locale:(id)locale searchTerm:(id)term keywords:(id)keywords categories:(id)categories
{
  languageCopy = language;
  localeCopy = locale;
  termCopy = term;
  keywordsCopy = keywords;
  categoriesCopy = categories;
  v24 = objc_msgSend_init(self, v18, v19, v20, v21, v22, v23);
  v25 = v24;
  if (v24)
  {
    *(v24 + 16) = init;
    *(v24 + 24) = adjacency;
    objc_storeStrong((v24 + 32), language);
    objc_storeStrong(v25 + 5, locale);
    objc_storeStrong(v25 + 6, term);
    objc_storeStrong(v25 + 7, keywords);
    objc_storeStrong(v25 + 8, categories);
  }

  return v25;
}

- (APContentDepiction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v65.receiver = self;
  v65.super_class = APContentDepiction;
  v5 = [(APContentDepiction *)&v65 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"identifier", v8, v9, v10);
    identifier = v5->_identifier;
    v5->_identifier = v11;

    v5->_placement = objc_msgSend_decodeIntForKey_(coderCopy, v13, @"placement", v14, v15, v16, v17);
    v5->_adjacency = objc_msgSend_decodeIntForKey_(coderCopy, v18, @"adjacency", v19, v20, v21, v22);
    v23 = objc_opt_class();
    v28 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v24, v23, @"language", v25, v26, v27);
    language = v5->_language;
    v5->_language = v28;

    v30 = objc_opt_class();
    v35 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v31, v30, @"locale", v32, v33, v34);
    locale = v5->_locale;
    v5->_locale = v35;

    v37 = MEMORY[0x1E695DFD8];
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v45 = objc_msgSend_setWithObjects_(v37, v40, v38, v41, v42, v43, v44, v39, 0);
    v50 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v46, v45, @"searchTerms", v47, v48, v49);
    searchTerms = v5->_searchTerms;
    v5->_searchTerms = v50;

    v56 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v52, v45, @"keywords", v53, v54, v55);
    keywords = v5->_keywords;
    v5->_keywords = v56;

    v62 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v58, v45, @"categories", v59, v60, v61);
    categories = v5->_categories;
    v5->_categories = v62;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v11 = objc_msgSend_identifier(self, v5, v6, v7, v8, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"identifier", v13, v14, v15);

  v22 = objc_msgSend_placement(self, v16, v17, v18, v19, v20, v21);
  objc_msgSend_encodeInt_forKey_(coderCopy, v23, v22, @"placement", v24, v25, v26);
  v33 = objc_msgSend_adjacency(self, v27, v28, v29, v30, v31, v32);
  objc_msgSend_encodeInt_forKey_(coderCopy, v34, v33, @"adjacency", v35, v36, v37);
  v44 = objc_msgSend_language(self, v38, v39, v40, v41, v42, v43);
  objc_msgSend_encodeObject_forKey_(coderCopy, v45, v44, @"language", v46, v47, v48);

  v55 = objc_msgSend_locale(self, v49, v50, v51, v52, v53, v54);
  objc_msgSend_encodeObject_forKey_(coderCopy, v56, v55, @"locale", v57, v58, v59);

  v66 = objc_msgSend_searchTerms(self, v60, v61, v62, v63, v64, v65);
  objc_msgSend_encodeObject_forKey_(coderCopy, v67, v66, @"searchTerms", v68, v69, v70);

  v77 = objc_msgSend_keywords(self, v71, v72, v73, v74, v75, v76);
  objc_msgSend_encodeObject_forKey_(coderCopy, v78, v77, @"keywords", v79, v80, v81);

  v92 = objc_msgSend_categories(self, v82, v83, v84, v85, v86, v87);
  objc_msgSend_encodeObject_forKey_(coderCopy, v88, v92, @"categories", v89, v90, v91);
}

@end