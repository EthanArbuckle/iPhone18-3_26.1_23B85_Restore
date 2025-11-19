@interface CKMessagesComplicationImageProvider
+ (id)sharedInstance;
- (CGSize)imageSize;
- (CKMessagesComplicationImageProvider)init;
- (id)_simpleTintableImageOverImage:(id)a3 withContext:(id)a4;
- (id)imageForUnreadCount:(unint64_t)a3 family:(int64_t)a4 complicationTemplate:(id)a5 specs:(id)a6;
@end

@implementation CKMessagesComplicationImageProvider

+ (id)sharedInstance
{
  if (qword_27E1C4170 != -1)
  {
    sub_23BD21158();
  }

  v3 = qword_27E1C4168;

  return v3;
}

- (CKMessagesComplicationImageProvider)init
{
  v14.receiver = self;
  v14.super_class = CKMessagesComplicationImageProvider;
  v2 = [(CKMessagesComplicationImageProvider *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCAB00]);
    v9 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v3, v4, v5, v6, v7, v8, 0, 5, 0);
    imageCache = v2->_imageCache;
    v2->_imageCache = v9;

    v11 = os_log_create("com.apple.Messages", "CKMessagesComplicationImageProvider");
    log = v2->_log;
    v2->_log = v11;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (id)imageForUnreadCount:(unint64_t)a3 family:(int64_t)a4 complicationTemplate:(id)a5 specs:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [CKMessagesComplicationDataContext alloc];
  objc_msgSend_imageSize(self, v13, v14, v15, v16, v17);
  v23 = objc_msgSend_initWithUnreadCount_family_template_specs_imageSize_(v12, v18, v19, v20, v21, v22, a3, a4, v10, v11);
  os_unfair_lock_lock(&self->_lock);
  v29 = objc_msgSend_objectForKey_(self->_imageCache, v24, v25, v26, v27, v28, v23);
  v35 = v29;
  if (v29)
  {
    v36 = v29;
  }

  else
  {
    v37 = objc_msgSend_systemImageNamed_(MEMORY[0x277D755B8], v30, v31, v32, v33, v34, @"message.fill");
    v43 = objc_msgSend_imageWithRenderingMode_(v37, v38, v39, v40, v41, v42, 2);
    v36 = objc_msgSend__simpleTintableImageOverImage_withContext_(self, v44, v45, v46, v47, v48, v43, v23);

    objc_msgSend_setObject_forKey_(self->_imageCache, v49, v50, v51, v52, v53, v36, v23);
  }

  os_unfair_lock_unlock(&self->_lock);

  return v36;
}

- (id)_simpleTintableImageOverImage:(id)a3 withContext:(id)a4
{
  v94 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_msgSend_imageFrame(v7, v8, v9, v10, v11, v12);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  if (objc_msgSend_unreadCount(v7, v21, v13, v15, v17, v19))
  {
    v27 = objc_msgSend_textAttributes(v7, v22, v23, v24, v25, v26);
    v28 = v27 != 0;
  }

  else
  {
    v28 = 0;
  }

  v29 = objc_msgSend_preferredFormat(MEMORY[0x277D75568], v22, v23, v24, v25, v26);
  objc_msgSend_setPreferredRange_(v29, v30, v31, v32, v33, v34, 2);
  v40 = objc_msgSend_log(self, v35, v36, v37, v38, v39);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    objc_msgSend_backgroundFrame(v7, v41, v42, v43, v44, v45);
    v47 = v46;
    objc_msgSend_backgroundFrame(v7, v48, v49, v50, v51, v46);
    *buf = 134219008;
    v85 = v47;
    v86 = 2048;
    v87 = v56;
    v88 = 2048;
    v89 = v20;
    v90 = 2048;
    v91 = v18;
    v92 = 2048;
    v93 = objc_msgSend_unreadCount(v7, v52, v53, v54, v56, v55);
    _os_log_impl(&dword_23BD1C000, v40, OS_LOG_TYPE_DEFAULT, "generating image with background size: (%f, %f), imageSize: (%f, %f), unreadCount: %lu", buf, 0x34u);
  }

  v57 = objc_alloc(MEMORY[0x277D75560]);
  objc_msgSend_backgroundFrame(v7, v58, v59, v60, v61, v62);
  v66 = objc_msgSend_initWithSize_format_(v57, v63, v64, v65, v64, v65, v29);
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = sub_23BD2012C;
  v76[3] = &unk_278B93210;
  v79 = v14;
  v80 = v16;
  v81 = v18;
  v82 = v20;
  v83 = v28;
  v77 = v6;
  v78 = v7;
  v67 = v7;
  v68 = v6;
  v74 = objc_msgSend_imageWithActions_(v66, v69, v70, v71, v72, v73, v76);

  return v74;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  if (width == *MEMORY[0x277CBF3A8] && height == v4)
  {
    v7 = objc_msgSend_systemImageNamed_(MEMORY[0x277D755B8], a2, width, height, *MEMORY[0x277CBF3A8], v4, @"message.fill");
    objc_msgSend_size(v7, v8, v9, v10, v11, v12);
    self->_imageSize.width = v13;
    self->_imageSize.height = v14;

    width = self->_imageSize.width;
    height = self->_imageSize.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

@end