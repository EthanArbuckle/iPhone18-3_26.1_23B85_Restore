@interface COSAppearanceController
+ (void)setupAppearanceOverrides;
@end

@implementation COSAppearanceController

+ (void)setupAppearanceOverrides
{
  v2 = +[PSListController appearance];
  [v2 setExtendedLayoutIncludesOpaqueBars:1];

  v3 = +[PSListController appearance];
  [v3 setUsesDarkTheme:1];

  v4 = +[PSListController appearance];
  v5 = BPSBackgroundColor();
  [v4 setBackgroundColor:v5];

  v6 = +[PSListController appearance];
  v7 = BPSForegroundColor();
  [v6 setForegroundColor:v7];

  v8 = +[PSListController appearance];
  v9 = BPSTextColor();
  [v8 setTextColor:v9];

  v10 = +[PSListController appearance];
  v11 = BPSDetailTextColor();
  [v10 setAltTextColor:v11];

  v12 = +[PSListController appearance];
  v13 = BPSSeparatorColor();
  [v12 setSeparatorColor:v13];

  v14 = +[PSListController appearance];
  v15 = BPSEditablePlaceholderColor();
  [v14 setEditablePlaceholderTextColor:v15];

  v16 = +[PSListController appearance];
  v17 = BPSTextColor();
  [v16 setEditableTextColor:v17];

  v18 = +[PSListController appearance];
  v19 = BPSBridgeTintColor();
  [v18 setEditableInsertionPointColor:v19];

  v20 = +[PSListController appearance];
  v21 = BPSBridgeTintColor();
  [v20 setEditableSelectionBarColor:v21];

  v22 = +[PSListController appearance];
  v23 = BPSBridgeTintColor();
  v24 = [v23 colorWithAlphaComponent:0.2];
  [v22 setEditableSelectionHighlightColor:v24];

  v25 = +[PSListController appearance];
  v26 = BPSAccessoryColor();
  [v25 setCellAccessoryColor:v26];

  v27 = +[PSListController appearance];
  v28 = BPSCellHightlightColor();
  [v27 setCellHighlightColor:v28];

  v29 = +[PSListController appearance];
  v30 = BPSBridgeTintColor();
  [v29 setButtonTextColor:v30];

  v31 = +[PSListController appearance];
  v32 = BPSBridgeTintColor();
  [v31 setFooterHyperlinkColor:v32];

  v170 = objc_opt_class();
  v33 = [NSArray arrayWithObjects:&v170 count:1];
  v34 = [UIButton appearanceWhenContainedInInstancesOfClasses:v33];
  v35 = BPSBridgeTintColor();
  [v34 setTintColor:v35];

  v169[0] = objc_opt_class();
  v169[1] = objc_opt_class();
  v36 = [NSArray arrayWithObjects:v169 count:2];
  v37 = [UILabel appearanceWhenContainedInInstancesOfClasses:v36];
  v38 = BPSDetailTextColor();
  [v37 setTextColor:v38];

  v39 = +[COSPairedDeviceListViewController appearance];
  v40 = BPSDevicePickerCellHighlightColor();
  [v39 setCellHighlightColor:v40];

  v168 = objc_opt_class();
  v41 = [NSArray arrayWithObjects:&v168 count:1];
  v42 = [UISwitch appearanceWhenContainedInInstancesOfClasses:v41];
  v43 = BPSOffSwitchBorderColor();
  [v42 setTintColor:v43];

  v44 = +[PSListController appearance];
  v45 = BPSProgressBarTrackTintColor();
  v46 = [v45 colorWithAlphaComponent:1.0];
  [v44 setSegmentedSliderTrackColor:v46];

  v167 = objc_opt_class();
  v47 = [NSArray arrayWithObjects:&v167 count:1];
  v48 = [UISlider appearanceWhenContainedInInstancesOfClasses:v47];
  v49 = BPSBridgeTintColor();
  [v48 setMinimumTrackTintColor:v49];

  v166 = objc_opt_class();
  v50 = [NSArray arrayWithObjects:&v166 count:1];
  v51 = [UISlider appearanceWhenContainedInInstancesOfClasses:v50];
  v52 = BPSAccessoryColor();
  [v51 setMaximumTrackTintColor:v52];

  v165 = objc_opt_class();
  v53 = [NSArray arrayWithObjects:&v165 count:1];
  v54 = [UITableViewCell appearanceWhenContainedInInstancesOfClasses:v53];
  v55 = BPSForegroundColor();
  [v54 setBackgroundColor:v55];

  v164 = objc_opt_class();
  v56 = [NSArray arrayWithObjects:&v164 count:1];
  v57 = [UITableView appearanceWhenContainedInInstancesOfClasses:v56];
  v58 = BPSBackgroundColor();
  [v57 setBackgroundColor:v58];

  v163 = objc_opt_class();
  v59 = [NSArray arrayWithObjects:&v163 count:1];
  v60 = [UITableView appearanceWhenContainedInInstancesOfClasses:v59];
  v61 = BPSSeparatorColor();
  [v60 setSeparatorColor:v61];

  v162 = objc_opt_class();
  v62 = [NSArray arrayWithObjects:&v162 count:1];
  v63 = [UITableView appearanceWhenContainedInInstancesOfClasses:v62];
  v64 = BPSTextColor();
  [v63 setSectionIndexColor:v64];

  v161 = objc_opt_class();
  v65 = [NSArray arrayWithObjects:&v161 count:1];
  v66 = [UITableView appearanceWhenContainedInInstancesOfClasses:v65];
  v67 = BPSForegroundColor();
  [v66 setSectionIndexBackgroundColor:v67];

  v160 = objc_opt_class();
  v68 = [NSArray arrayWithObjects:&v160 count:1];
  v69 = [UICollectionViewCell appearanceWhenContainedInInstancesOfClasses:v68];
  v70 = BPSCollectionViewCellBackgroundConfiguration();
  [v69 setBackgroundConfiguration:v70];

  v159 = objc_opt_class();
  v71 = [NSArray arrayWithObjects:&v159 count:1];
  v72 = [UICollectionView appearanceWhenContainedInInstancesOfClasses:v71];
  v73 = BPSBackgroundColor();
  [v72 setBackgroundColor:v73];

  v158 = objc_opt_class();
  v74 = [NSArray arrayWithObjects:&v158 count:1];
  v75 = [UITableViewCell appearanceWhenContainedInInstancesOfClasses:v74];
  v76 = BPSForegroundColor();
  [v75 setBackgroundColor:v76];

  v157 = objc_opt_class();
  v77 = [NSArray arrayWithObjects:&v157 count:1];
  v78 = [UITableView appearanceWhenContainedInInstancesOfClasses:v77];
  v79 = BPSBackgroundColor();
  [v78 setBackgroundColor:v79];

  v156 = objc_opt_class();
  v80 = [NSArray arrayWithObjects:&v156 count:1];
  v81 = [UITableView appearanceWhenContainedInInstancesOfClasses:v80];
  v82 = BPSSeparatorColor();
  [v81 setSeparatorColor:v82];

  v155 = objc_opt_class();
  v83 = [NSArray arrayWithObjects:&v155 count:1];
  v84 = [UITableView appearanceWhenContainedInInstancesOfClasses:v83];
  v85 = BPSTextColor();
  [v84 setSectionIndexColor:v85];

  v154 = objc_opt_class();
  v86 = [NSArray arrayWithObjects:&v154 count:1];
  v87 = [UITableView appearanceWhenContainedInInstancesOfClasses:v86];
  v88 = BPSForegroundColor();
  [v87 setSectionIndexBackgroundColor:v88];

  v89 = [BPSMultipleWatchMigrationViewCell appearanceWhenContainedInInstancesOfClasses:&__NSArray0__struct];
  v90 = BPSForegroundColor();
  [v89 setBackgroundColor:v90];

  v91 = [BPSMultipleWatchMigrationPickerTableView appearanceWhenContainedInInstancesOfClasses:&__NSArray0__struct];
  v92 = BPSBackgroundColor();
  [v91 setBackgroundColor:v92];

  v93 = [BPSMultipleWatchMigrationPickerTableView appearanceWhenContainedInInstancesOfClasses:&__NSArray0__struct];
  v94 = BPSSeparatorColor();
  [v93 setSeparatorColor:v94];

  v95 = [BPSMultipleWatchMigrationPickerTableView appearanceWhenContainedInInstancesOfClasses:&__NSArray0__struct];
  v96 = BPSTextColor();
  [v95 setSectionIndexColor:v96];

  v97 = [BPSMultipleWatchMigrationPickerTableView appearanceWhenContainedInInstancesOfClasses:&__NSArray0__struct];
  v98 = BPSForegroundColor();
  [v97 setSectionIndexBackgroundColor:v98];

  v153 = objc_opt_class();
  v99 = [NSArray arrayWithObjects:&v153 count:1];
  v100 = [UITableViewCell appearanceWhenContainedInInstancesOfClasses:v99];
  v101 = BPSForegroundColor();
  [v100 setBackgroundColor:v101];

  v152 = objc_opt_class();
  v102 = [NSArray arrayWithObjects:&v152 count:1];
  v103 = [UITableView appearanceWhenContainedInInstancesOfClasses:v102];
  v104 = BPSBackgroundColor();
  [v103 setBackgroundColor:v104];

  v151 = objc_opt_class();
  v105 = [NSArray arrayWithObjects:&v151 count:1];
  v106 = [UITableView appearanceWhenContainedInInstancesOfClasses:v105];
  v107 = BPSSeparatorColor();
  [v106 setSeparatorColor:v107];

  v150 = objc_opt_class();
  v108 = [NSArray arrayWithObjects:&v150 count:1];
  v109 = [UITableView appearanceWhenContainedInInstancesOfClasses:v108];
  v110 = BPSTextColor();
  [v109 setSectionIndexColor:v110];

  v149 = objc_opt_class();
  v111 = [NSArray arrayWithObjects:&v149 count:1];
  v112 = [UITableView appearanceWhenContainedInInstancesOfClasses:v111];
  v113 = BPSForegroundColor();
  [v112 setSectionIndexBackgroundColor:v113];

  v148 = objc_opt_class();
  v114 = [NSArray arrayWithObjects:&v148 count:1];
  v115 = [UITextField appearanceWhenContainedInInstancesOfClasses:v114];
  [v115 setKeyboardAppearance:1];

  v147 = objc_opt_class();
  v116 = [NSArray arrayWithObjects:&v147 count:1];
  v117 = [UITextField appearanceWhenContainedInInstancesOfClasses:v116];
  [v117 setKeyboardAppearance:1];

  v146 = objc_opt_class();
  v118 = [NSArray arrayWithObjects:&v146 count:1];
  v119 = [UITextField appearanceWhenContainedInInstancesOfClasses:v118];
  [v119 setKeyboardAppearance:1];

  v145 = objc_opt_class();
  v120 = [NSArray arrayWithObjects:&v145 count:1];
  v121 = [UITextField appearanceWhenContainedInInstancesOfClasses:v120];
  [v121 setKeyboardAppearance:1];

  v144 = objc_opt_class();
  v122 = [NSArray arrayWithObjects:&v144 count:1];
  v123 = [UIProgressView appearanceWhenContainedInInstancesOfClasses:v122];
  v124 = BPSProgressBarTintColor();
  [v123 setTintColor:v124];

  v143 = objc_opt_class();
  v125 = [NSArray arrayWithObjects:&v143 count:1];
  v126 = [UIProgressView appearanceWhenContainedInInstancesOfClasses:v125];
  v127 = BPSProgressBarTintColor();
  [v126 setProgressTintColor:v127];

  v142 = objc_opt_class();
  v128 = [NSArray arrayWithObjects:&v142 count:1];
  v129 = [UIProgressView appearanceWhenContainedInInstancesOfClasses:v128];
  v130 = BPSProgressBarTrackTintColor();
  [v129 setTrackTintColor:v130];

  v141 = objc_opt_class();
  v131 = [NSArray arrayWithObjects:&v141 count:1];
  v132 = [UIButton appearanceWhenContainedInInstancesOfClasses:v131];
  v133 = BPSSetupTintColor();
  [v132 setTintColor:v133];

  v140 = objc_opt_class();
  v134 = [NSArray arrayWithObjects:&v140 count:1];
  v135 = [UISearchBar appearanceWhenContainedInInstancesOfClasses:v134];
  v136 = BPSBridgeTintColor();
  [v135 setTintColor:v136];

  v139[0] = objc_opt_class();
  v139[1] = objc_opt_class();
  v137 = [NSArray arrayWithObjects:v139 count:2];
  v138 = [UITextField appearanceWhenContainedInInstancesOfClasses:v137, v139[0]];
  [v138 setKeyboardAppearance:1];
}

@end