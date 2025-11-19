@interface CLLocationButton
- (CGSize)intrinsicContentSize;
- (CLLocationButton)init;
- (CLLocationButton)initWithCoder:(id)a3;
- (CLLocationButton)initWithFrame:(CGRect)a3;
- (LocationUIProtocol)locationUIProxy;
- (id)_computeLocationButtonTag;
- (int)convertToControlSize:(int)a3;
- (unsigned)_secureName;
- (void)_populateArchivedSubviews:(id)a3;
- (void)_sendActionsForEvents:(unint64_t)a3 withEvent:(id)a4;
- (void)_setupSlotView;
- (void)_yieldSlotViewContentForLayerContextID:(unint64_t)a3 slotStyle:(id)a4 withYieldBlock:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setTintColor:(id)a3;
@end

@implementation CLLocationButton

- (CLLocationButton)init
{
  v15.receiver = self;
  v15.super_class = CLLocationButton;
  v2 = [(CLLocationButton *)&v15 init];
  v6 = v2;
  if (v2)
  {
    objc_msgSend_setClipsToBounds_(v2, v3, v4, v5, 1);
    objc_msgSend__setupSlotView(v6, v7, v8, v9);
    objc_msgSend_markDirty(v6, v10, v11, v12);
    v13 = v6;
  }

  return v6;
}

- (CLLocationButton)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = CLLocationButton;
  v3 = [(CLLocationButton *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v7 = v3;
  if (v3)
  {
    objc_msgSend_setClipsToBounds_(v3, v4, v5, v6, 1);
    objc_msgSend__setupSlotView(v7, v8, v9, v10);
    objc_msgSend_markDirty(v7, v11, v12, v13);
    v14 = v7;
  }

  return v7;
}

- (CLLocationButton)initWithCoder:(id)a3
{
  v4 = a3;
  v58.receiver = self;
  v58.super_class = CLLocationButton;
  v6 = [(CLLocationButton *)&v58 initWithCoder:v4];
  if (v6)
  {
    v9 = objc_msgSend_decodeIntForKey_(v4, v5, v7, v8, @"kCLLocationButtonIcon");
    v13 = objc_msgSend_decodeIntForKey_(v4, v10, v11, v12, @"kCLLocationButtonLabel");
    objc_msgSend_decodeFloatForKey_(v4, v14, v15, v16, @"kCLLocationButtonCornerRadius");
    v18 = v17.n128_f32[0];
    objc_msgSend_decodeFloatForKey_(v4, v19, v17, v20, @"kCLLocationButtonFontSize");
    v22 = v21;
    v23 = objc_opt_class();
    v27 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v24, v25, v26, v23, @"kCLLocationButtonBackgroundColor");
    backgroundColor = v6->_backgroundColor;
    v6->_backgroundColor = v27;

    v29 = objc_opt_class();
    v33 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v30, v31, v32, v29, @"kCLLocationButtonTintColor");
    tintColor = v6->_tintColor;
    v6->_tintColor = v33;

    objc_msgSend_setIcon_(v6, v35, v36, v37, v9);
    objc_msgSend_setLabel_(v6, v38, v39, v40, v13);
    v41.n128_f64[0] = v18;
    objc_msgSend_setCornerRadius_(v6, v42, v41, v43);
    v44.n128_f64[0] = v22;
    objc_msgSend_setFontSize_(v6, v45, v44, v46);
    objc_msgSend_setClipsToBounds_(v6, v47, v48, v49, 1);
    objc_msgSend__setupSlotView(v6, v50, v51, v52);
    objc_msgSend_markDirty(v6, v53, v54, v55);
    v56 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v40.receiver = self;
  v40.super_class = CLLocationButton;
  v4 = a3;
  [(CLLocationButton *)&v40 encodeWithCoder:v4];
  objc_msgSend_encodeInt_forKey_(v4, v5, v6, v7, 1, @"kCLLocationButtonVersion", v40.receiver, v40.super_class);
  v11 = objc_msgSend_icon(self, v8, v9, v10);
  objc_msgSend_encodeInt_forKey_(v4, v12, v13, v14, v11, @"kCLLocationButtonIcon");
  v18 = objc_msgSend_label(self, v15, v16, v17);
  objc_msgSend_encodeInt_forKey_(v4, v19, v20, v21, v18, @"kCLLocationButtonLabel");
  objc_msgSend_cornerRadius(self, v22, v23, v24);
  v25.n128_f32[0] = v25.n128_f64[0];
  objc_msgSend_encodeFloat_forKey_(v4, v26, v25, v27, @"kCLLocationButtonCornerRadius");
  objc_msgSend_fontSize(self, v28, v29, v30);
  v31.n128_f32[0] = v31.n128_f64[0];
  objc_msgSend_encodeFloat_forKey_(v4, v32, v31, v33, @"kCLLocationButtonFontSize");
  objc_msgSend_encodeObject_forKey_(v4, v34, v35, v36, self->_backgroundColor, @"kCLLocationButtonBackgroundColor");
  objc_msgSend_encodeObject_forKey_(v4, v37, v38, v39, self->_tintColor, @"kCLLocationButtonTintColor");
}

- (void)_populateArchivedSubviews:(id)a3
{
  v8.receiver = self;
  v8.super_class = CLLocationButton;
  v4 = a3;
  [(CLLocationButton *)&v8 _populateArchivedSubviews:v4];
  objc_msgSend_removeObject_(v4, v5, v6, v7, self->_slotView, v8.receiver, v8.super_class);
}

- (LocationUIProtocol)locationUIProxy
{
  proxy = self->_proxy;
  if (!proxy)
  {
    v4 = objc_alloc(MEMORY[0x277CCAE80]);
    v8 = objc_msgSend_initWithServiceName_(v4, v5, v6, v7, @"com.apple.corelocation.locationUI");
    v12 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x277CCAE90], v9, v10, v11, &unk_284A53678);
    objc_msgSend_setRemoteObjectInterface_(v8, v13, v14, v15, v12);

    objc_msgSend_setInterruptionHandler_(v8, v16, v17, v18, &unk_284A439E8);
    objc_msgSend_setInvalidationHandler_(v8, v19, v20, v21, &unk_284A43A08);
    objc_msgSend_resume(v8, v22, v23, v24);
    v28 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v8, v25, v26, v27, &unk_284A43A28);
    v29 = self->_proxy;
    self->_proxy = v28;

    proxy = self->_proxy;
  }

  return proxy;
}

- (void)_setupSlotView
{
  v134 = *MEMORY[0x277D85DE8];
  if (self->_slotView)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2371B9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "#locationButton _slotView has been already created", buf, 2u);
    }
  }

  else
  {
    objc_msgSend_addTarget_action_forControlEvents_(self, a2, v2, v3, 0, sel__actionForPreSetTarget, 64);
    v8 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v5, v6, v7);
    v12 = objc_msgSend_bundleURL(v8, v9, v10, v11);
    v13 = *MEMORY[0x277D861B8];
    v14 = v12;
    objc_msgSend_fileSystemRepresentation(v14, v15, v16, v17);
    v18 = *MEMORY[0x277D861E8];
    v19 = sandbox_extension_issue_file();

    if (v19)
    {
      v23 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v20, v21, v22, v19, 4);
      sandboxExtension = self->_sandboxExtension;
      self->_sandboxExtension = v23;

      free(v19);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v124 = self->_sandboxExtension;
        *buf = 138412290;
        v133 = v124;
        _os_log_debug_impl(&dword_2371B9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "#locationButton sandbox-extension: %@", buf, 0xCu);
      }
    }

    v25 = objc_msgSend_systemBlueColor(MEMORY[0x277D75340], v20, v21, v22);
    backgroundColor = self->_backgroundColor;
    self->_backgroundColor = v25;

    v30 = objc_msgSend_systemWhiteColor(MEMORY[0x277D75340], v27, v28, v29);
    tintColor = self->_tintColor;
    self->_tintColor = v30;

    if (_os_feature_enabled_impl())
    {
      objc_msgSend_frame(self, v32, v33, v34);
      v33.n128_f64[0] = v35 * 0.5;
      self->_cornerRadius = v35 * 0.5;
      self->_controlSize = 2;
    }

    objc_msgSend_setIsAccessibilityElement_(self, v32, v33, v34, 1);
    objc_msgSend_setAccessibilityIdentifier_(self, v36, v37, v38, @"CLLocationButton");
    v39 = objc_alloc_init(MEMORY[0x277D76268]);
    slotView = self->_slotView;
    self->_slotView = v39;

    objc_msgSend_setUserInteractionEnabled_(self->_slotView, v41, v42, v43, 0);
    objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->_slotView, v44, v45, v46, 0);
    objc_initWeak(buf, self);
    v47 = self->_slotView;
    v48 = objc_opt_self();
    v131 = v48;
    v52 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v49, v50, v51, &v131, 1);
    v128[0] = MEMORY[0x277D85DD0];
    v128[1] = 3221225472;
    v128[2] = sub_2371BACD0;
    v128[3] = &unk_278A27D50;
    objc_copyWeak(&v129, buf);
    v56 = objc_msgSend_registerForTraitChanges_withHandler_(v47, v53, v54, v55, v52, v128);

    objc_msgSend_addSubview_(self, v57, v58, v59, self->_slotView);
    v60 = MEMORY[0x277CCAAD0];
    v64 = objc_msgSend_centerXAnchor(self->_slotView, v61, v62, v63);
    v68 = objc_msgSend_centerXAnchor(self, v65, v66, v67);
    v72 = objc_msgSend_constraintEqualToAnchor_(v64, v69, v70, v71, v68);
    v130[0] = v72;
    v76 = objc_msgSend_centerYAnchor(self->_slotView, v73, v74, v75);
    v80 = objc_msgSend_centerYAnchor(self, v77, v78, v79);
    v84 = objc_msgSend_constraintEqualToAnchor_(v76, v81, v82, v83, v80);
    v130[1] = v84;
    v88 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v85, v86, v87, v130, 2);
    objc_msgSend_activateConstraints_(v60, v89, v90, v91, v88);

    v92.n128_u32[0] = 1144750080;
    objc_msgSend_setContentHuggingPriority_forAxis_(self, v93, v92, v94, 1);
    v95.n128_u32[0] = 1144750080;
    objc_msgSend_setContentHuggingPriority_forAxis_(self, v96, v95, v97, 0);
    v98.n128_u64[0] = *&self->_intrinsicSize.width;
    v99.n128_u64[0] = 1.0;
    v101 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(MEMORY[0x277CCAAD0], v100, v99, v98, self, 7, 1, 0, 0);
    minimumWidthConstraint = self->_minimumWidthConstraint;
    self->_minimumWidthConstraint = v101;

    v103.n128_u32[0] = 1148846080;
    objc_msgSend_setPriority_(self->_minimumWidthConstraint, v104, v103, v105);
    objc_msgSend_setActive_(self->_minimumWidthConstraint, v106, v107, v108, 1);
    v109.n128_u64[0] = *&self->_intrinsicSize.height;
    v110.n128_u64[0] = 1.0;
    v112 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(MEMORY[0x277CCAAD0], v111, v110, v109, self, 8, 1, 0, 0);
    minimumHeightConstraint = self->_minimumHeightConstraint;
    self->_minimumHeightConstraint = v112;

    v114.n128_u32[0] = 1148846080;
    objc_msgSend_setPriority_(self->_minimumHeightConstraint, v115, v114, v116);
    objc_msgSend_setActive_(self->_minimumHeightConstraint, v117, v118, v119, 1);
    objc_initWeak(&location, self);
    v125[0] = MEMORY[0x277D85DD0];
    v125[1] = 3221225472;
    v125[2] = sub_2371BAE94;
    v125[3] = &unk_278A27D78;
    objc_copyWeak(&v126, &location);
    objc_msgSend__setSlotAnyContentProvider_(self->_slotView, v120, v121, v122, v125);
    objc_destroyWeak(&v126);
    objc_destroyWeak(&location);
    objc_destroyWeak(&v129);
    objc_destroyWeak(buf);
  }

  v123 = *MEMORY[0x277D85DE8];
}

- (void)_sendActionsForEvents:(unint64_t)a3 withEvent:(id)a4
{
  v6 = a4;
  v10 = objc_msgSend_locationUIProxy(self, v7, v8, v9);
  v14 = objc_msgSend__authenticationMessage(v6, v11, v12, v13);
  objc_msgSend_onPrimaryTouchDownEvent_(v10, v15, v16, v17, v14);

  v18.receiver = self;
  v18.super_class = CLLocationButton;
  [(CLLocationButton *)&v18 _sendActionsForEvents:a3 withEvent:v6];
}

- (void)setBackgroundColor:(id)a3
{
  objc_storeStrong(&self->_backgroundColor, a3);

  objc_msgSend_markDirty(self, v4, v5, v6);
}

- (void)setTintColor:(id)a3
{
  objc_storeStrong(&self->_tintColor, a3);

  objc_msgSend_markDirty(self, v4, v5, v6);
}

- (id)_computeLocationButtonTag
{
  objc_storeStrong(&self->_resolvedBackgroundColor, self->_backgroundColor);
  objc_storeStrong(&self->_resolvedTintColor, self->_tintColor);
  v6 = objc_msgSend_traitCollection(self, v3, v4, v5);
  v10 = objc_msgSend_resolvedColorWithTraitCollection_(self->_backgroundColor, v7, v8, v9, v6);
  resolvedBackgroundColor = self->_resolvedBackgroundColor;
  self->_resolvedBackgroundColor = v10;

  v15 = objc_msgSend_resolvedColorWithTraitCollection_(self->_tintColor, v12, v13, v14, v6);
  resolvedTintColor = self->_resolvedTintColor;
  self->_resolvedTintColor = v15;

  v17 = self->_resolvedBackgroundColor;
  NSLog(&cfstr_Computelocatio.isa, v17, self->_resolvedTintColor);
  v18 = [CLLocationButtonTag alloc];
  v22 = objc_msgSend_label(self, v19, v20, v21);
  v26 = objc_msgSend_icon(self, v23, v24, v25);
  v27.n128_u64[0] = 1.0;
  v30 = objc_msgSend_colorWithAlphaComponent_(self->_resolvedBackgroundColor, v28, v27, v29);
  v31.n128_u64[0] = 1.0;
  v34 = objc_msgSend_colorWithAlphaComponent_(self->_resolvedTintColor, v32, v31, v33);
  objc_msgSend_cornerRadius(self, v35, v36, v37);
  v39 = v38.n128_u64[0];
  objc_msgSend_frame(self, v40, v38, v41);
  v43 = v42.n128_u64[0];
  v45 = v44.n128_f64[0];
  v47 = v46;
  v49 = v48;
  objc_msgSend_fontSize(self, v50, v42, v44);
  v52 = v51.n128_f64[0];
  v55 = objc_msgSend_controlSize(self, v53, v51, v54);
  v59 = objc_msgSend_convertToControlSize_(self, v56, v57, v58, v55);
  v60.n128_u64[0] = v39;
  v61.n128_u64[0] = v43;
  v63 = objc_msgSend_initWithLabel_iconType_backgroundColor_tintColor_cornerRadius_frame_fontSize_controlSize_(v18, v62, v60, v61, v22, v26, v30, v34, v59, v45, v47, v49, v52);

  v64.n128_u32[0] = 1.0;
  if ((objc_msgSend_contrastValidForBgColorAndFgTextWithCumulativeOpacity_(v63, v65, v64, v66) & 1) == 0)
  {
    self->_colorsIllegible = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2371B9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error: #locationButton failed due to illegible colors", buf, 2u);
    }
  }

  v67 = [CLLocationButtonTag alloc];
  v71 = objc_msgSend_label(self, v68, v69, v70);
  v75 = objc_msgSend_icon(self, v72, v73, v74);
  v76 = self->_resolvedBackgroundColor;
  v77 = self->_resolvedTintColor;
  objc_msgSend_cornerRadius(self, v78, v79, v80);
  v82 = v81.n128_u64[0];
  objc_msgSend_frame(self, v83, v81, v84);
  v86 = v85.n128_u64[0];
  v88 = v87.n128_f64[0];
  v90 = v89;
  v92 = v91;
  objc_msgSend_fontSize(self, v93, v85, v87);
  v95 = v94.n128_f64[0];
  v98 = objc_msgSend_controlSize(self, v96, v94, v97);
  v102 = objc_msgSend_convertToControlSize_(self, v99, v100, v101, v98);
  v103.n128_u64[0] = v82;
  v104.n128_u64[0] = v86;
  v106 = objc_msgSend_initWithLabel_iconType_backgroundColor_tintColor_cornerRadius_frame_fontSize_controlSize_(v67, v105, v103, v104, v71, v75, v76, v77, v102, v88, v90, v92, v95);
  v110 = objc_msgSend_layer(self, v107, v108, v109);
  objc_msgSend_opacity(v110, v111, v112, v113);
  LOBYTE(v75) = objc_msgSend_contrastValidForBgColorAndFgTextWithCumulativeOpacity_(v106, v114, v115, v116);

  if ((v75 & 1) == 0)
  {
    self->_alphaInsufficient = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v118 = 0;
      _os_log_error_impl(&dword_2371B9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error: #locationButton failed due to Insufficient Alpha", v118, 2u);
    }
  }

  return v106;
}

- (void)_yieldSlotViewContentForLayerContextID:(unint64_t)a3 slotStyle:(id)a4 withYieldBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13 = objc_msgSend__computeLocationButtonTag(self, v10, v11, v12);
  v14 = self->_sandboxExtension;
  v15 = [CLLocationButtonDrawing alloc];
  v19 = objc_msgSend_initWithStyle_tag_remote_(v15, v16, v17, v18, v8, v13, 0);
  v23 = objc_msgSend_localizedTitle(v19, v20, v21, v22);
  objc_msgSend_setAccessibilityLabel_(self, v24, v25, v26, v23);

  objc_msgSend_neededSize(v19, v27, v28, v29);
  v31 = v30.n128_f64[0] + 1.0;
  objc_msgSend_neededSize(v19, v32, v30, v33);
  v35.n128_f64[0] = v34.n128_f64[0] + 1.0;
  self->_intrinsicSize.width = v31;
  self->_intrinsicSize.height = v34.n128_f64[0] + 1.0;
  v36 = MEMORY[0x277D777C8];
  v38 = objc_msgSend_displayScale(v8, v37, v35, v34);
  v42 = objc_msgSend_displayRange(v8, v39, v40, v41);
  v46 = objc_msgSend_contentWithDrawing_scale_range_(v36, v43, v44, v45, v19, v38, v42);
  v9[2](v9, v46);
  objc_msgSend_frame(v13, v47, v48, v49);
  if (CGRectIsEmpty(v58))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2371B9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "#locationButton skip remote-imaging. tag has zero-size frame", buf, 2u);
    }
  }

  else
  {
    v50 = dispatch_get_global_queue(33, 0);
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = sub_2371BB674;
    v51[3] = &unk_278A27DF0;
    v51[4] = self;
    v52 = v8;
    v56 = a3;
    v53 = v13;
    v54 = v14;
    v55 = v9;
    dispatch_async(v50, v51);
  }
}

- (void)layoutSubviews
{
  objc_msgSend__updateContent(self->_slotView, a2, v2, v3);
  v5.n128_u64[0] = *&self->_intrinsicSize.width;
  objc_msgSend_setConstant_(self->_minimumWidthConstraint, v6, v5, v7);
  v8.n128_u64[0] = *&self->_intrinsicSize.height;
  objc_msgSend_setConstant_(self->_minimumHeightConstraint, v9, v8, v10);
  v11.receiver = self;
  v11.super_class = CLLocationButton;
  [(CLLocationButton *)&v11 layoutSubviews];
}

- (CGSize)intrinsicContentSize
{
  p_intrinsicSize = &self->_intrinsicSize;
  v2.n128_u64[0] = *&self->_intrinsicSize.width;
  if (v2.n128_f64[0] == 0.0)
  {
    v3.n128_u64[0] = *&self->_intrinsicSize.height;
    if (v3.n128_f64[0] == 0.0)
    {
      objc_msgSend__updateContent(self->_slotView, a2, v2, v3);
      v2.n128_u64[0] = *&p_intrinsicSize->width;
    }
  }

  height = p_intrinsicSize->height;
  result.width = v2.n128_f64[0];
  result.height = height;
  return result;
}

- (unsigned)_secureName
{
  v5 = objc_msgSend_label(self, a2, v2, v3);

  return objc_msgSend_secureNameForLabel_(CLLocationButtonTag, v4, v6, v7, v5);
}

- (int)convertToControlSize:(int)a3
{
  if (a3 >= 2)
  {
    return 2;
  }

  else
  {
    return a3;
  }
}

@end