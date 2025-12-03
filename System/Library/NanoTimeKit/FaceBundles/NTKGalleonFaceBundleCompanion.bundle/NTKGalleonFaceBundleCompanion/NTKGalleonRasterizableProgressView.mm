@interface NTKGalleonRasterizableProgressView
- (NTKGalleonRasterizableProgressView)initWithProgressView:(id)view;
- (void)galleon_setProgress:(double)progress;
- (void)tintColorDidChange;
@end

@implementation NTKGalleonRasterizableProgressView

- (NTKGalleonRasterizableProgressView)initWithProgressView:(id)view
{
  viewCopy = view;
  objc_msgSend_frame(viewCopy, v6, v7, v8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v86.receiver = self;
  v86.super_class = NTKGalleonRasterizableProgressView;
  v20 = [(NTKGalleonRasterizableProgressView *)&v86 initWithFrame:?];
  if (v20)
  {
    objc_msgSend_galleon_setProgress_(viewCopy, v17, v18, v19, 1.0);
    objc_msgSend_layoutIfNeeded(viewCopy, v21, v22, v23);
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = sub_23BE94A4C;
    v84[3] = &unk_278B9EDE0;
    v24 = viewCopy;
    v85 = v24;
    v25 = MEMORY[0x23EEC0850](v84);
    objc_msgSend_bounds(v24, v26, v27, v28);
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = objc_alloc(MEMORY[0x277D75560]);
    v41 = objc_msgSend_initWithBounds_(v37, v38, v39, v40, v30, v32, v34, v36);
    v44 = objc_msgSend_imageWithActions_(v41, v42, v25, v43);
    v47 = objc_msgSend_imageWithRenderingMode_(v44, v45, 2, v46);
    v48 = *(v20 + 53);
    *(v20 + 53) = v47;

    objc_msgSend_galleon_setProgress_(v24, v49, v50, v51, 0.0);
    objc_msgSend_layoutIfNeeded(v24, v52, v53, v54);
    v57 = objc_msgSend_imageWithActions_(v41, v55, v25, v56);
    v60 = objc_msgSend_imageWithRenderingMode_(v57, v58, 2, v59);
    v61 = *(v20 + 52);
    *(v20 + 52) = v60;

    v62 = objc_alloc(MEMORY[0x277D755E8]);
    v65 = objc_msgSend_initWithImage_(v62, v63, *(v20 + 52), v64);
    objc_msgSend_setFrame_(v65, v66, v67, v68, v10, v12, v14, v16);
    objc_msgSend_setContentMode_(v65, v69, 4, v70);
    v71 = *(v20 + 51);
    *(v20 + 51) = v65;
    v72 = v65;

    objc_msgSend_addSubview_(v20, v73, *(v20 + 51), v74);
    objc_storeStrong(v20 + 54, view);
    v87.origin.x = v30;
    v87.origin.y = v32;
    v87.size.width = v34;
    v87.size.height = v36;
    MidX = CGRectGetMidX(v87);
    v88.origin.x = v30;
    v88.origin.y = v32;
    v88.size.width = v34;
    v88.size.height = v36;
    MidY = CGRectGetMidY(v88);
    objc_msgSend_setCenter_(v72, v77, v78, v79, MidX, MidY);

    objc_msgSend_setCenter_(v24, v80, v81, v82, MidX, MidY);
  }

  return v20;
}

- (void)tintColorDidChange
{
  v9 = objc_msgSend_tintColor(self, a2, v2, v3);
  objc_msgSend_setTintColor_(self->_progressView, v5, v9, v6);
  objc_msgSend_setTintColor_(self->_imageView, v7, v9, v8);
}

- (void)galleon_setProgress:(double)progress
{
  v5 = self->_imageView;
  v6 = self->_progressView;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_23BE94C84;
  v20[3] = &unk_278B9EE08;
  v7 = v5;
  v21 = v7;
  selfCopy = self;
  v8 = v6;
  v23 = v8;
  v9 = MEMORY[0x23EEC0850](v20);
  v13 = v9;
  if (fabs(progress) >= 0.00000011920929)
  {
    if (fabs(progress + -1.0) >= 0.00000011920929)
    {
      objc_msgSend_removeFromSuperview(self->_imageView, v10, v11, v12);
      objc_msgSend_addSubview_(self, v15, self->_progressView, v16);
      objc_msgSend_galleon_setProgress_(self->_progressView, v17, v18, v19, progress);
      goto LABEL_7;
    }

    v14 = 424;
  }

  else
  {
    v14 = 416;
  }

  (*(v9 + 16))(v9, *(&self->super.super.super.isa + v14));
LABEL_7:
}

@end