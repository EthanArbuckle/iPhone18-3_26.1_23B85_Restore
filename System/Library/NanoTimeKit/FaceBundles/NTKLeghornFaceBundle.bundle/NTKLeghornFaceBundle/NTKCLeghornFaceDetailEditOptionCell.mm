@interface NTKCLeghornFaceDetailEditOptionCell
- (BOOL)isChecked;
- (NTKCLeghornFaceDetailEditOptionCell)initWithSection:(id)section category:(unint64_t)category name:(id)name all:(BOOL)all filter:(id)filter;
- (double)_reservedSizeForImage;
- (id)_checkmarkImage;
- (void)_setupSubviews;
- (void)setFilter:(id)filter;
- (void)setupDetails;
@end

@implementation NTKCLeghornFaceDetailEditOptionCell

- (NTKCLeghornFaceDetailEditOptionCell)initWithSection:(id)section category:(unint64_t)category name:(id)name all:(BOOL)all filter:(id)filter
{
  allCopy = all;
  sectionCopy = section;
  nameCopy = name;
  filterCopy = filter;
  v16 = objc_opt_class();
  v19 = objc_msgSend_reuseIdentifier(v16, v17, v18);
  v45.receiver = self;
  v45.super_class = NTKCLeghornFaceDetailEditOptionCell;
  v20 = [(NTKCDetailTableViewCell *)&v45 initWithStyle:0 reuseIdentifier:v19];

  if (v20)
  {
    objc_storeStrong(&v20->_section, section);
    v20->_category = category;
    objc_storeStrong(&v20->_name, name);
    v20->_all = allCopy;
    objc_storeStrong(&v20->_filter, filter);
    v21 = objc_opt_new();
    leadingAccessoryView = v20->_leadingAccessoryView;
    v20->_leadingAccessoryView = v21;

    v23 = objc_opt_new();
    titleLabel = v20->_titleLabel;
    v20->_titleLabel = v23;

    v25 = objc_opt_new();
    valueLabel = v20->_valueLabel;
    v20->_valueLabel = v25;

    v27 = objc_alloc(MEMORY[0x277D75A68]);
    v29 = objc_msgSend_initWithFrame_(v27, v28, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24));
    alignmentView = v20->_alignmentView;
    v20->_alignmentView = v29;

    objc_msgSend_setSelectionStyle_(v20, v31, v32, 3);
    objc_msgSend__setupSubviews(v20, v33, v34);
    objc_msgSend_setupDetails(v20, v35, v36);
    objc_msgSend_setFilter_(v20, v37, v38, filterCopy);
    if (v20->_category || allCopy)
    {
      v41 = objc_msgSend_secondarySystemGroupedBackgroundColor(MEMORY[0x277D75348], v39, v40);
      objc_msgSend_setBackgroundColor_(v20, v42, v43, v41);
    }
  }

  return v20;
}

- (void)setupDetails
{
  v3 = self->_name;
  v23 = v3;
  if (v3)
  {
    objc_msgSend_setText_(self->_titleLabel, v3, v5, v3);
  }

  else
  {
    section = self->_section;
    if (self->_all)
    {
      v7 = objc_msgSend_showAllString(section, v4, v5);
      objc_msgSend_setText_(self->_titleLabel, v8, v9, v7);
    }

    else
    {
      v10 = objc_msgSend_name(section, v4, v5);
      objc_msgSend_setText_(self->_titleLabel, v11, v12, v10);

      v15 = objc_msgSend_action(self->_section, v13, v14);
      objc_msgSend_setText_(self->_valueLabel, v16, v17, v15);

      v20 = objc_msgSend_detailsCount(self->_section, v18, v19) != 0;
      objc_msgSend_setAccessoryType_(self, v21, v22, v20);
    }
  }
}

- (BOOL)isChecked
{
  v4 = self->_name;
  if (v4)
  {
    v6 = objc_msgSend_includesCategory_named_(self->_filter, v3, v5, self->_category, v4);
  }

  else
  {
    all = self->_all;
    v8 = objc_msgSend_selectionForFilter_(self->_section, v3, v5, self->_filter);
    if (all)
    {
      v6 = v8 == 2;
    }

    else
    {
      v6 = v8 != 0;
    }
  }

  return v6;
}

- (void)setFilter:(id)filter
{
  filterCopy = filter;
  objc_storeStrong(&self->_filter, filter);
  if (objc_msgSend_isChecked(self, v5, v6))
  {
    v9 = objc_msgSend__checkmarkImage(self, v7, v8);
    objc_msgSend_setImage_(self->_leadingAccessoryView, v10, v11, v9);
  }

  else
  {
    objc_msgSend_setImage_(self->_leadingAccessoryView, v7, v8, 0);
  }
}

- (id)_checkmarkImage
{
  v3 = objc_msgSend_configurationWithWeight_(MEMORY[0x277D755D0], a2, v2, 6);
  v6 = objc_msgSend_configurationWithTextStyle_(MEMORY[0x277D755D0], v4, v5, *MEMORY[0x277D76918]);
  v9 = objc_msgSend_configurationByApplyingConfiguration_(v3, v7, v8, v6);
  v12 = objc_msgSend_systemImageNamed_withConfiguration_(MEMORY[0x277D755B8], v10, v11, @"checkmark", v9);

  return v12;
}

- (double)_reservedSizeForImage
{
  v3 = objc_msgSend_preferredFontForTextStyle_(MEMORY[0x277D74300], a2, v2, *MEMORY[0x277D76918]);
  objc_msgSend_pointSize(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (void)_setupSubviews
{
  v114[4] = *MEMORY[0x277D85DE8];
  v113 = objc_opt_new();
  objc_msgSend_addArrangedSubview_(self->_alignmentView, v3, v4, self->_leadingAccessoryView);
  objc_msgSend_addArrangedSubview_(self->_alignmentView, v5, v6, self->_titleLabel);
  objc_msgSend_addArrangedSubview_(self->_alignmentView, v7, v8, v113);
  objc_msgSend_addArrangedSubview_(self->_alignmentView, v9, v10, self->_valueLabel);
  v13 = objc_msgSend_contentView(self, v11, v12);
  objc_msgSend_addSubview_(v13, v14, v15, self->_alignmentView);

  LODWORD(v16) = 1132068864;
  objc_msgSend_setContentCompressionResistancePriority_forAxis_(self->_valueLabel, v17, v16, 0);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->_alignmentView, v18, v19, 0);
  objc_msgSend_setPreservesSuperviewLayoutMargins_(self->_alignmentView, v20, v21, 1);
  v24 = objc_msgSend_contentView(self, v22, v23);
  v27 = objc_msgSend_layoutMarginsGuide(v24, v25, v26);

  v106 = MEMORY[0x277CCAAD0];
  v111 = objc_msgSend_leadingAnchor(self->_alignmentView, v28, v29);
  v110 = objc_msgSend_leadingAnchor(v27, v30, v31);
  v109 = objc_msgSend_constraintEqualToAnchor_(v111, v32, v33, v110);
  v114[0] = v109;
  v108 = objc_msgSend_trailingAnchor(self->_alignmentView, v34, v35);
  v107 = objc_msgSend_trailingAnchor(v27, v36, v37);
  v40 = objc_msgSend_constraintEqualToAnchor_(v108, v38, v39, v107);
  v114[1] = v40;
  v43 = objc_msgSend_topAnchor(self->_alignmentView, v41, v42);
  v112 = v27;
  v46 = objc_msgSend_topAnchor(v27, v44, v45);
  v49 = objc_msgSend_constraintEqualToAnchor_(v43, v47, v48, v46);
  v114[2] = v49;
  v52 = objc_msgSend_bottomAnchor(self->_alignmentView, v50, v51);
  v55 = objc_msgSend_bottomAnchor(v27, v53, v54);
  v58 = objc_msgSend_constraintEqualToAnchor_(v52, v56, v57, v55);
  v114[3] = v58;
  v61 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v59, v60, v114, 4);
  objc_msgSend_activateConstraints_(v106, v62, v63, v61);

  objc_msgSend_setAxis_(self->_alignmentView, v64, v65, 0);
  objc_msgSend_setAlignment_(self->_alignmentView, v66, v67, 3);
  objc_msgSend_setSpacing_(self->_alignmentView, v68, 8.0);
  v71 = objc_msgSend_widthAnchor(self->_leadingAccessoryView, v69, v70);
  objc_msgSend__reservedSizeForImage(self, v72, v73);
  v76 = objc_msgSend_constraintEqualToConstant_(v71, v74, v75);
  objc_msgSend_setActive_(v76, v77, v78, 1);

  titleLabel = self->_titleLabel;
  v80 = *MEMORY[0x277D76918];
  v83 = objc_msgSend_preferredFontForTextStyle_(MEMORY[0x277D74300], v81, v82, *MEMORY[0x277D76918]);
  objc_msgSend_setFont_(titleLabel, v84, v85, v83);

  v86 = self->_titleLabel;
  v89 = objc_msgSend_labelColor(MEMORY[0x277D75348], v87, v88);
  objc_msgSend_setTextColor_(v86, v90, v91, v89);

  valueLabel = self->_valueLabel;
  v95 = objc_msgSend_preferredFontForTextStyle_(MEMORY[0x277D74300], v93, v94, v80);
  objc_msgSend_setFont_(valueLabel, v96, v97, v95);

  v98 = self->_valueLabel;
  v101 = objc_msgSend_tintColor(MEMORY[0x277D75348], v99, v100);
  objc_msgSend_setTextColor_(v98, v102, v103, v101);

  objc_msgSend_setShowsSeparator_(self, v104, v105, 1);
}

@end