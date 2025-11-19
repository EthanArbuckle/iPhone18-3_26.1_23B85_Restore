@interface BCInvalidCertificatView
- (id)initWithHost:(id *)a1;
@end

@implementation BCInvalidCertificatView

- (id)initWithHost:(id *)a1
{
  v121[6] = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a1)
  {
    v117.receiver = a1;
    v117.super_class = BCInvalidCertificatView;
    v5 = objc_msgSendSuper2(&v117, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 51, a2);
      v111 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v116 = v4;
      v101 = [MEMORY[0x277D755B8] imageNamed:@"InsecureIcon" inBundle:v111 compatibleWithTraitCollection:0];
      v6 = [MEMORY[0x277D75348] colorNamed:@"InsecureTitleColor" inBundle:v111 compatibleWithTraitCollection:0];
      v97 = [MEMORY[0x277D75348] colorNamed:@"InsecureMessageColor" inBundle:v111 compatibleWithTraitCollection:0];
      v106 = [MEMORY[0x277D75348] colorNamed:@"InvalidCertificatColor" inBundle:v111 compatibleWithTraitCollection:0];
      v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
      v8 = [v7 fontDescriptor];

      v118[0] = *MEMORY[0x277D74380];
      v120[0] = *MEMORY[0x277D74430];
      v9 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74410]];
      v119[0] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v119 forKeys:v120 count:1];
      v121[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v118 count:1];
      v12 = [v8 fontDescriptorByAddingAttributes:v11];

      [a1 setBackgroundColor:v106];
      v13 = objc_opt_new();
      objc_storeStrong(a1 + 55, v13);

      v14 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v101];
      objc_storeStrong(a1 + 52, v14);

      v15 = objc_opt_new();
      objc_storeStrong(a1 + 53, v15);

      v16 = MEMORY[0x277D74300];
      [v12 pointSize];
      v17 = [v16 fontWithDescriptor:v12 size:?];
      [a1[53] setFont:v17];

      [a1[53] setTextColor:v6];
      v18 = +[BCShared classBundle];
      v19 = [v18 localizedStringForKey:@"CONNECTION_NOT_PRIVATE_TITLE" value:&stru_2849DDCD8 table:0];
      [a1[53] setText:v19];

      [a1[53] setTextAlignment:1];
      [a1[53] setNumberOfLines:0];
      v20 = objc_opt_new();
      objc_storeStrong(a1 + 54, v20);

      v21 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
      [a1[54] setFont:v21];

      [a1[54] setTextColor:v97];
      v22 = MEMORY[0x277CCACA8];
      v23 = +[BCShared classBundle];
      v24 = [v23 localizedStringForKey:@"CONNECTION_NOT_PRIVATE_MESSAGE" value:&stru_2849DDCD8 table:0];
      v25 = a1[51];
      v26 = [v22 stringWithFormat:v24, v25];
      [a1[54] setText:v26];

      [a1[54] setTextAlignment:1];
      [a1[54] setNumberOfLines:0];
      v27 = a1[52];
      v28 = a1[55];
      [v28 addSubview:v27];

      v29 = a1[53];
      v30 = a1[55];
      [v30 addSubview:v29];

      v31 = a1[54];
      v32 = a1[55];
      [v32 addSubview:v31];

      [a1 addSubview:a1[55]];
      [a1[55] setTranslatesAutoresizingMaskIntoConstraints:0];
      [a1[52] setTranslatesAutoresizingMaskIntoConstraints:0];
      [a1[53] setTranslatesAutoresizingMaskIntoConstraints:0];
      [a1[54] setTranslatesAutoresizingMaskIntoConstraints:0];
      v83 = MEMORY[0x277CCAAD0];
      v112 = a1[55];
      v107 = [v112 topAnchor];
      v102 = [a1 topAnchor];
      v98 = [v107 constraintGreaterThanOrEqualToAnchor:v102 constant:20.0];
      v121[0] = v98;
      v94 = a1[55];
      v91 = [v94 leftAnchor];
      v88 = [a1 leftAnchor];
      v85 = [v91 constraintGreaterThanOrEqualToAnchor:v88 constant:20.0];
      v121[1] = v85;
      v81 = a1[55];
      v79 = [v81 rightAnchor];
      v77 = [a1 rightAnchor];
      v75 = [v79 constraintLessThanOrEqualToAnchor:v77 constant:-20.0];
      v121[2] = v75;
      v74 = a1[55];
      v73 = [v74 bottomAnchor];
      v72 = [a1 bottomAnchor];
      v71 = [v73 constraintLessThanOrEqualToAnchor:v72 constant:-20.0];
      v121[3] = v71;
      v33 = a1[55];
      v34 = [v33 centerXAnchor];
      v35 = [a1 centerXAnchor];
      v36 = [v34 constraintEqualToAnchor:v35];
      v121[4] = v36;
      v37 = a1[55];
      v38 = [v37 centerYAnchor];
      v39 = [a1 centerYAnchor];
      v40 = [v38 constraintEqualToAnchor:v39];
      v121[5] = v40;
      v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v121 count:6];
      [v83 activateConstraints:v41];

      v103 = MEMORY[0x277CCAAD0];
      v113 = a1[52];
      v108 = [v113 topAnchor];
      v42 = a1[55];
      v43 = [v42 topAnchor];
      v44 = [v108 constraintEqualToAnchor:v43];
      v120[0] = v44;
      v45 = a1[52];
      v46 = [v45 centerXAnchor];
      v47 = a1[55];
      v48 = [v47 centerXAnchor];
      v49 = [v46 constraintEqualToAnchor:v48];
      v120[1] = v49;
      v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v120 count:2];
      [v103 activateConstraints:v50];

      v92 = MEMORY[0x277CCAAD0];
      v114 = a1[53];
      v109 = [v114 firstBaselineAnchor];
      v104 = a1[52];
      v99 = [v104 lastBaselineAnchor];
      v95 = [v109 constraintEqualToAnchor:v99 constant:40.0];
      v119[0] = v95;
      v89 = a1[53];
      v86 = [v89 leadingAnchor];
      v51 = a1[55];
      v52 = [v51 leadingAnchor];
      v53 = [v86 constraintEqualToAnchor:v52];
      v119[1] = v53;
      v54 = a1[53];
      v55 = [v54 trailingAnchor];
      v56 = a1[55];
      v57 = [v56 trailingAnchor];
      v58 = [v55 constraintEqualToAnchor:v57];
      v119[2] = v58;
      v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v119 count:3];
      [v92 activateConstraints:v59];

      v87 = MEMORY[0x277CCAAD0];
      v115 = a1[54];
      v110 = [v115 firstBaselineAnchor];
      v105 = a1[53];
      v100 = [v105 lastBaselineAnchor];
      v96 = [v110 constraintEqualToAnchor:v100 constant:38.0];
      v118[0] = v96;
      v93 = a1[54];
      v90 = [v93 leadingAnchor];
      v84 = a1[55];
      v82 = [v84 leadingAnchor];
      v80 = [v90 constraintEqualToAnchor:v82];
      v118[1] = v80;
      v78 = a1[54];
      v76 = [v78 trailingAnchor];
      v60 = a1[55];
      v61 = [v60 trailingAnchor];
      v62 = [v76 constraintEqualToAnchor:v61];
      v118[2] = v62;
      v63 = a1[54];
      v64 = [v63 bottomAnchor];
      v65 = a1[55];
      v66 = [v65 bottomAnchor];
      v67 = [v64 constraintEqualToAnchor:v66];
      v118[3] = v67;
      v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:4];
      [v87 activateConstraints:v68];

      v4 = v116;
    }
  }

  v69 = *MEMORY[0x277D85DE8];
  return a1;
}

@end