@interface NTKGalleonHeadingImageGenerator
+ (id)_generatePrerenderedLookup;
+ (id)_imageForHeadingString:(id)string font:(id)font;
+ (id)sharedGenerator;
- (id)_init;
- (id)imageForHeading:(unint64_t)heading;
@end

@implementation NTKGalleonHeadingImageGenerator

+ (id)sharedGenerator
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&qword_27E1DD870);
  if (!WeakRetained)
  {
    v4 = [NTKGalleonHeadingImageGenerator alloc];
    WeakRetained = objc_msgSend__init(v4, v5, v6, v7);
    objc_storeWeak(&qword_27E1DD870, WeakRetained);
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

- (id)imageForHeading:(unint64_t)heading
{
  imageLookup = self->_imageLookup;
  v5 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], a2, heading, v3);
  v8 = objc_msgSend_objectForKey_(imageLookup, v6, v5, v7);

  return v8;
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = NTKGalleonHeadingImageGenerator;
  v5 = [(NTKGalleonHeadingImageGenerator *)&v9 init];
  if (v5)
  {
    v6 = objc_msgSend__generatePrerenderedLookup(NTKGalleonHeadingImageGenerator, v2, v3, v4);
    imageLookup = v5->_imageLookup;
    v5->_imageLookup = v6;
  }

  return v5;
}

+ (id)_generatePrerenderedLookup
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3);
  v9 = objc_msgSend_sharedGenerator(NTKGalleonHeadingGenerator, v6, v7, v8);
  v15 = objc_msgSend_galleon_headingFont(MEMORY[0x277CBBB08], v10, v11, v12);
  for (i = 0; i != 360; ++i)
  {
    v17 = objc_msgSend_stringForHeading_(v9, v13, i, v14);
    v19 = objc_msgSend__imageForHeadingString_font_(self, v18, v17, v15);
    v22 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v20, i, v21);
    objc_msgSend_setObject_forKey_(v5, v23, v19, v22);
  }

  v24 = objc_msgSend_stringForHeading_(v9, v13, -1, v14);
  v26 = objc_msgSend__imageForHeadingString_font_(self, v25, v24, v15);
  objc_msgSend_setObject_forKey_(v5, v27, v26, &unk_284EA7BD8);

  v31 = objc_msgSend_copy(v5, v28, v29, v30);

  return v31;
}

+ (id)_imageForHeadingString:(id)string font:(id)font
{
  v44[2] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v6 = *MEMORY[0x277D740A8];
  v44[0] = font;
  v7 = *MEMORY[0x277D740C0];
  v43[0] = v6;
  v43[1] = v7;
  v8 = MEMORY[0x277D75348];
  fontCopy = font;
  v13 = objc_msgSend_whiteColor(v8, v10, v11, v12);
  v44[1] = v13;
  v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v44, v43, 2);

  objc_msgSend_sizeWithAttributes_(stringCopy, v16, v15, v17);
  v19 = v18;
  v21 = v20;
  v22 = objc_alloc(MEMORY[0x277D75560]);
  v26 = objc_msgSend_initWithSize_(v22, v23, v24, v25, v19, v21);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_23BE96C64;
  v36[3] = &unk_278B9EE80;
  v39 = 0;
  v40 = 0;
  v41 = v19;
  v42 = v21;
  v37 = stringCopy;
  v38 = v15;
  v27 = v15;
  v28 = stringCopy;
  v31 = objc_msgSend_imageWithActions_(v26, v29, v36, v30);
  v34 = objc_msgSend_imageWithRenderingMode_(v31, v32, 2, v33);

  return v34;
}

@end