@interface BKLibraryContextualActionSheetmetadataEditor
- (BKLibraryContextualActionSheetmetadataEditor)initWithLibraryAsset:(id)a3;
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (CGSize)coverSize;
- (CGSize)preferredContentSize;
- (id)_makeAndAddLabel:(id)a3 style:(unsigned int)a4;
- (id)_makeAndAddSystemButton:(int64_t)a3 action:(SEL)a4 text:(id)a5;
- (id)_makeAndAddTextField:(id)a3;
- (id)_trimString:(id)a3;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (id)keyCommands;
- (void)_coverButtonPressed:(id)a3;
- (void)_dismiss;
- (void)_handleCoverUpdateRequest:(id)a3;
- (void)_okButtonPressed:(id)a3;
- (void)_updateCoverView:(id)a3;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)textFieldDidEndEditing:(id)a3 reason:(int64_t)a4;
- (void)vendedLayerDidUpdate:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation BKLibraryContextualActionSheetmetadataEditor

- (BKLibraryContextualActionSheetmetadataEditor)initWithLibraryAsset:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BKLibraryContextualActionSheetmetadataEditor;
  v6 = [(BKLibraryContextualActionSheetmetadataEditor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_libraryAsset, a3);
  }

  return v7;
}

- (CGSize)preferredContentSize
{
  v2 = [(BKLibraryContextualActionSheetmetadataEditor *)self libraryAsset];
  v3 = [v2 contentType] == 3;

  v4 = dbl_10080B550[v3];
  v5 = 438.0;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  v207.receiver = self;
  v207.super_class = BKLibraryContextualActionSheetmetadataEditor;
  [(BKLibraryContextualActionSheetmetadataEditor *)&v207 viewDidLoad];
  v3 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = +[UIColor secondarySystemBackgroundColor];
  v5 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 view];
  [v5 setBackgroundColor:v4];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Book Info" value:&stru_100A30A68 table:0];
  v8 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 _makeAndAddLabel:v7 style:208];

  v9 = objc_alloc_init(UIView);
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = +[UIColor separatorColor];
  v11 = [v10 CGColor];
  v12 = [v9 layer];
  [v12 setBackgroundColor:v11];

  v13 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 view];
  [v13 addSubview:v9];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Title" value:&stru_100A30A68 table:0];
  v205 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 _makeAndAddLabel:v15 style:55];

  v16 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 libraryAsset];
  v17 = [v16 title];
  v18 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 _trimString:v17];

  if (![v18 length])
  {
    v19 = +[BKLibraryAsset unknownTitle];

    v18 = v19;
  }

  v204 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 _makeAndAddTextField:v18];
  [(BKLibraryContextualActionSheetmetadataEditor *)v2 setTitleTextField:?];
  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"Author" value:&stru_100A30A68 table:0];
  v203 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 _makeAndAddLabel:v21 style:55];

  v22 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 libraryAsset];
  v23 = [v22 displayAuthor];
  v24 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 _trimString:v23];

  v194 = v18;
  if (![v24 length])
  {
    v25 = +[BKLibraryAsset unknownAuthor];

    v24 = v25;
  }

  v193 = v24;
  v26 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 _makeAndAddTextField:v24];
  [(BKLibraryContextualActionSheetmetadataEditor *)v2 setAuthorTextField:v26];
  v27 = +[NSBundle mainBundle];
  v28 = [v27 localizedStringForKey:@"OK" value:&stru_100A30A68 table:0];
  v202 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 _makeAndAddSystemButton:1 action:"_okButtonPressed:" text:v28];

  v29 = +[NSBundle mainBundle];
  v30 = [v29 localizedStringForKey:@"Cancel" value:&stru_100A30A68 table:0];
  v201 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 _makeAndAddSystemButton:2 action:"_cancelButtonPressed:" text:v30];

  v31 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 libraryAsset];
  LODWORD(v29) = [v31 contentType];

  v32 = 0;
  v196 = 0;
  v200 = 0;
  v197 = 0;
  v198 = v8;
  v206 = v26;
  if (v29 != 3)
  {
    v33 = +[NSBundle mainBundle];
    v34 = [v33 localizedStringForKey:@"Cover" value:&stru_100A30A68 table:0];
    v35 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 _makeAndAddLabel:v34 style:55];

    v36 = objc_alloc_init(UIView);
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 view];
    [v37 addSubview:v36];

    [(BKLibraryContextualActionSheetmetadataEditor *)v2 setCoverContainer:v36];
    v38 = [v36 layer];
    [v38 setCornerRadius:6.0];

    v200 = v36;
    v39 = [v36 layer];
    [v39 setMasksToBounds:1];

    v40 = objc_alloc_init(UIView);
    [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
    v41 = +[BCCacheManager defaultCacheManager];
    v42 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 libraryAsset];
    v43 = [v42 assetID];
    v44 = [v41 metadataForIdentifier:v43];

    v45 = 35.8974359;
    v197 = v35;
    if (v44)
    {
      v46 = [v44 intrinsicAspectRatio];
      [v46 floatValue];
      v48 = v47;

      if (v48 > 0.0)
      {
        v49 = [v44 intrinsicAspectRatio];
        [v49 floatValue];
        v45 = 56.0 / v50;
      }
    }

    [(BKLibraryContextualActionSheetmetadataEditor *)v2 setCoverSize:v45, 56.0];
    v51 = +[BCCacheManager defaultCacheManager];
    v52 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 libraryAsset];
    v53 = [v52 assetID];
    [(BKLibraryContextualActionSheetmetadataEditor *)v2 coverSize];
    v54 = [v51 fetchLayerForAssetID:v53 size:0 options:?];

    [(BKLibraryContextualActionSheetmetadataEditor *)v2 coverSize];
    v56 = v55 * 0.5;
    [(BKLibraryContextualActionSheetmetadataEditor *)v2 coverSize];
    [v54 setPosition:{v56, v57 * 0.5}];
    v58 = [v40 layer];
    [v58 addSublayer:v54];

    objc_opt_class();
    v59 = BUDynamicCast();
    [v59 setVendedLayerDelegate:v2];
    v60 = objc_alloc_init(BKLibrarymetadataEditorCoverBorderView);
    [(BKLibrarymetadataEditorCoverBorderView *)v60 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BKLibrarymetadataEditorCoverBorderView *)v60 setOpaque:0];
    [v200 addSubview:v60];
    v196 = v60;
    [(BKLibraryContextualActionSheetmetadataEditor *)v2 setCoverBorderView:v60];
    [(BKLibraryContextualActionSheetmetadataEditor *)v2 _updateCoverView:v40];
    v32 = [UIButton buttonWithType:0];
    [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v32 addTarget:v2 action:"_coverButtonPressed:" forControlEvents:64];
    v61 = +[NSBundle mainBundle];
    [v61 localizedStringForKey:@"Choose Cover" value:&stru_100A30A68 table:0];
    v63 = v62 = v2;
    [v32 setAccessibilityLabel:v63];

    v2 = v62;
    v64 = +[NSBundle mainBundle];
    v65 = [v64 localizedStringForKey:@"Choose an image to use as a book cover" value:&stru_100A30A68 table:0];
    [v32 setAccessibilityHint:v65];

    v66 = [(BKLibraryContextualActionSheetmetadataEditor *)v62 view];
    [v66 addSubview:v32];

    v67 = [[UIDropInteraction alloc] initWithDelegate:v62];
    v68 = [(BKLibraryContextualActionSheetmetadataEditor *)v62 view];
    [v68 addInteraction:v67];

    v26 = v206;
    v8 = v198;
  }

  v199 = v32;
  v189 = [v8 centerXAnchor];
  v191 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 view];
  v187 = [v191 centerXAnchor];
  v185 = [v189 constraintEqualToAnchor:v187];
  v209[0] = v185;
  v181 = [v8 centerYAnchor];
  v183 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 view];
  v179 = [v183 topAnchor];
  v177 = [v181 constraintEqualToAnchor:v179 constant:28.0];
  v209[1] = v177;
  v173 = [v9 leadingAnchor];
  v175 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 view];
  v171 = [v175 leadingAnchor];
  v169 = [v173 constraintEqualToAnchor:v171 constant:20.0];
  v209[2] = v169;
  v165 = [v9 trailingAnchor];
  v167 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 view];
  v163 = [v167 trailingAnchor];
  v161 = [v165 constraintEqualToAnchor:v163 constant:-20.0];
  v209[3] = v161;
  v158 = [v9 topAnchor];
  v159 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 view];
  v156 = [v159 topAnchor];
  v154 = [v158 constraintEqualToAnchor:v156 constant:55.0];
  v209[4] = v154;
  v152 = [v9 heightAnchor];
  v150 = [v152 constraintEqualToConstant:1.0];
  v209[5] = v150;
  v148 = [v204 topAnchor];
  v195 = v9;
  v146 = [v9 bottomAnchor];
  v144 = [v148 constraintEqualToAnchor:v146 constant:20.0];
  v209[6] = v144;
  v140 = [v204 trailingAnchor];
  v142 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 view];
  v138 = [v142 trailingAnchor];
  v136 = [v140 constraintEqualToAnchor:v138 constant:-20.0];
  v209[7] = v136;
  v133 = [v204 widthAnchor];
  v131 = [v133 constraintEqualToConstant:298.0];
  v209[8] = v131;
  v129 = [v204 heightAnchor];
  v127 = [v129 constraintEqualToConstant:29.0];
  v209[9] = v127;
  v125 = [v205 firstBaselineAnchor];
  v124 = [v204 firstBaselineAnchor];
  v123 = [v125 constraintEqualToAnchor:v124];
  v209[10] = v123;
  v122 = [v205 trailingAnchor];
  v121 = [v204 leadingAnchor];
  v120 = [v122 constraintEqualToAnchor:v121 constant:-12.0];
  v209[11] = v120;
  v119 = [v26 topAnchor];
  v118 = [v204 bottomAnchor];
  v117 = [v119 constraintEqualToAnchor:v118 constant:9.0];
  v209[12] = v117;
  v115 = [v26 trailingAnchor];
  v116 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 view];
  v114 = [v116 trailingAnchor];
  v113 = [v115 constraintEqualToAnchor:v114 constant:-20.0];
  v209[13] = v113;
  v112 = [v26 widthAnchor];
  v111 = [v112 constraintEqualToConstant:298.0];
  v209[14] = v111;
  v110 = [v26 heightAnchor];
  v109 = [v110 constraintEqualToConstant:29.0];
  v209[15] = v109;
  v108 = [v203 firstBaselineAnchor];
  v107 = [v26 firstBaselineAnchor];
  v106 = [v108 constraintEqualToAnchor:v107];
  v209[16] = v106;
  v105 = [v203 trailingAnchor];
  v104 = [v26 leadingAnchor];
  v103 = [v105 constraintEqualToAnchor:v104 constant:-12.0];
  v209[17] = v103;
  v101 = [v202 bottomAnchor];
  v102 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 view];
  v100 = [v102 bottomAnchor];
  v99 = [v101 constraintEqualToAnchor:v100 constant:-20.0];
  v209[18] = v99;
  v97 = [v202 trailingAnchor];
  v98 = [(BKLibraryContextualActionSheetmetadataEditor *)v2 view];
  v96 = [v98 trailingAnchor];
  v95 = [v97 constraintEqualToAnchor:v96 constant:-20.0];
  v209[19] = v95;
  v94 = [v202 widthAnchor];
  v69 = [v94 constraintGreaterThanOrEqualToConstant:74.0];
  v209[20] = v69;
  v70 = [v201 bottomAnchor];
  v71 = [v202 bottomAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];
  v209[21] = v72;
  v73 = [v201 trailingAnchor];
  v74 = [v202 leadingAnchor];
  v75 = [v73 constraintEqualToAnchor:v74 constant:-8.0];
  v209[22] = v75;
  v76 = [v201 widthAnchor];
  v77 = [v76 constraintGreaterThanOrEqualToConstant:74.0];
  v209[23] = v77;
  v78 = [NSArray arrayWithObjects:v209 count:24];
  [NSLayoutConstraint activateConstraints:v78];

  v79 = v197;
  v80 = v200;
  v81 = v196;
  if (v200)
  {
    v82 = [v200 widthAnchor];
    v83 = [v82 constraintEqualToConstant:40.0];
    [v93 setCoverWidthConstraint:v83];

    v84 = [v200 heightAnchor];
    v85 = [v84 constraintEqualToConstant:56.0];
    [v93 setCoverHeightConstraint:v85];

    v192 = [v200 topAnchor];
    v190 = [v206 bottomAnchor];
    v188 = [v192 constraintEqualToAnchor:v190 constant:10.0];
    v208[0] = v188;
    v186 = [v200 leadingAnchor];
    v184 = [v206 leadingAnchor];
    v182 = [v186 constraintEqualToAnchor:v184];
    v208[1] = v182;
    v180 = [v93 coverHeightConstraint];
    v208[2] = v180;
    v178 = [v93 coverWidthConstraint];
    v208[3] = v178;
    v176 = [(BKLibrarymetadataEditorCoverBorderView *)v196 topAnchor];
    v174 = [v200 topAnchor];
    v172 = [v176 constraintEqualToAnchor:v174];
    v208[4] = v172;
    v170 = [(BKLibrarymetadataEditorCoverBorderView *)v196 bottomAnchor];
    v168 = [v200 bottomAnchor];
    v166 = [v170 constraintEqualToAnchor:v168];
    v208[5] = v166;
    v164 = [(BKLibrarymetadataEditorCoverBorderView *)v196 leadingAnchor];
    v162 = [v200 leadingAnchor];
    v160 = [v164 constraintEqualToAnchor:v162];
    v208[6] = v160;
    v157 = [(BKLibrarymetadataEditorCoverBorderView *)v196 trailingAnchor];
    v155 = [v200 trailingAnchor];
    v153 = [v157 constraintEqualToAnchor:v155];
    v208[7] = v153;
    v151 = [v197 topAnchor];
    v149 = [v200 topAnchor];
    v147 = [v151 constraintEqualToAnchor:v149];
    v208[8] = v147;
    v145 = [v197 heightAnchor];
    v143 = [v145 constraintEqualToConstant:29.0];
    v208[9] = v143;
    v141 = [v197 trailingAnchor];
    v139 = [v200 leadingAnchor];
    v137 = [v141 constraintEqualToAnchor:v139 constant:-12.0];
    v208[10] = v137;
    v135 = [v199 topAnchor];
    v134 = [v200 topAnchor];
    v132 = [v135 constraintEqualToAnchor:v134];
    v208[11] = v132;
    v130 = [v199 bottomAnchor];
    v128 = [v200 bottomAnchor];
    v126 = [v130 constraintEqualToAnchor:v128];
    v208[12] = v126;
    v86 = [v199 leadingAnchor];
    v87 = [v200 leadingAnchor];
    v88 = [v86 constraintEqualToAnchor:v87];
    v208[13] = v88;
    v89 = [v199 trailingAnchor];
    v90 = [v200 trailingAnchor];
    v91 = [v89 constraintEqualToAnchor:v90];
    v208[14] = v91;
    v92 = [NSArray arrayWithObjects:v208 count:15];
    [NSLayoutConstraint activateConstraints:v92];

    v80 = v200;
    v79 = v197;
    v81 = v196;
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BKLibraryContextualActionSheetmetadataEditor;
  [(BKLibraryContextualActionSheetmetadataEditor *)&v4 viewDidAppear:a3];
  [(BKLibraryContextualActionSheetmetadataEditor *)self setAppearedFirstTime:1];
}

- (id)keyCommands
{
  v2 = [NSString stringWithFormat:@"%c", 27];
  v3 = [UIKeyCommand keyCommandWithInput:v2 modifierFlags:0 action:"_escKeyPressed:"];

  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (void)textFieldDidEndEditing:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  if (!a4)
  {
    v13 = v6;
    v7 = [v6 text];
    v8 = [v7 length];

    v6 = v13;
    if (!v8)
    {
      v9 = [(BKLibraryContextualActionSheetmetadataEditor *)self titleTextField];

      if (v9 == v13)
      {
        v12 = [(BKLibraryContextualActionSheetmetadataEditor *)self libraryAsset];
        v11 = [v12 title];
      }

      else
      {
        v10 = [(BKLibraryContextualActionSheetmetadataEditor *)self authorTextField];

        v6 = v13;
        if (v10 != v13)
        {
          goto LABEL_3;
        }

        v11 = +[BKLibraryAsset unknownAuthor];
      }

      v6 = v13;
      if (v11)
      {
        [v13 setText:v11];

        v6 = v13;
      }
    }
  }

LABEL_3:
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  v5 = [a4 firstObject];
  v6 = [NSData dataWithContentsOfURL:v5];
  v7 = [UIImage imageWithData:v6];

  if (v7)
  {
    [(BKLibraryContextualActionSheetmetadataEditor *)self _handleCoverUpdateRequest:v7];
  }

  else
  {
    v8 = BKLibraryLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100791FA0(v5, v8);
    }
  }
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v4 = a4;
  v5 = [UTTypeImage identifier];
  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  v7 = [v4 hasItemsConformingToTypeIdentifiers:v6];

  return v7;
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v5 = a4;
  v6 = [UTTypeImage identifier];
  v18 = v6;
  v7 = [NSArray arrayWithObjects:&v18 count:1];
  v8 = [v5 hasItemsConformingToTypeIdentifiers:v7];

  if (v8)
  {
    v9 = [(BKLibraryContextualActionSheetmetadataEditor *)self coverContainer];
    [v5 locationInView:v9];
    v11 = v10;
    v13 = v12;

    v14 = [(BKLibraryContextualActionSheetmetadataEditor *)self coverContainer];
    [v14 bounds];
    v20.x = v11;
    v20.y = v13;
    LODWORD(v9) = CGRectContainsPoint(v21, v20);

    if (v9)
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = [[UIDropProposal alloc] initWithDropOperation:v15];

  return v16;
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v5 = [a4 items];
  v6 = [v5 firstObject];

  v7 = [v6 itemProvider];
  v8 = [UTTypeImage identifier];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10017FD9C;
  v10[3] = &unk_100A09670;
  v10[4] = self;
  v9 = [v7 loadDataRepresentationForTypeIdentifier:v8 completionHandler:v10];
}

- (void)vendedLayerDidUpdate:(id)a3
{
  v12 = a3;
  [v12 bounds];
  v5 = v4;
  v7 = v6;
  [(BKLibraryContextualActionSheetmetadataEditor *)self coverSize];
  if (v5 != v9 || v7 != v8)
  {
    [(BKLibraryContextualActionSheetmetadataEditor *)self setCoverSize:v5, v7];
    v11 = [(BKLibraryContextualActionSheetmetadataEditor *)self coverWidthConstraint];
    [v11 setConstant:v5];

    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [v12 setPosition:{v5 * 0.5, v7 * 0.5}];
    +[CATransaction commit];
  }
}

- (void)_okButtonPressed:(id)a3
{
  v4 = [(BKLibraryContextualActionSheetmetadataEditor *)self titleTextField];
  [v4 endEditing:1];

  v5 = [(BKLibraryContextualActionSheetmetadataEditor *)self authorTextField];
  [v5 endEditing:1];

  v6 = [(BKLibraryContextualActionSheetmetadataEditor *)self titleTextField];
  v7 = [v6 text];
  v8 = [(BKLibraryContextualActionSheetmetadataEditor *)self _trimString:v7];

  v9 = [(BKLibraryContextualActionSheetmetadataEditor *)self libraryAsset];
  v10 = [v9 title];
  v11 = [v8 isEqualToString:v10];

  v12 = [(BKLibraryContextualActionSheetmetadataEditor *)self authorTextField];
  v13 = [v12 text];
  v14 = [(BKLibraryContextualActionSheetmetadataEditor *)self _trimString:v13];

  v15 = +[BKLibraryAsset unknownAuthor];
  v16 = [v14 isEqualToString:v15];
  v17 = BKLibrarySortLastUnknownAuthorString;
  if (!v16)
  {
    v17 = v14;
  }

  v18 = v17;

  v19 = [(BKLibraryContextualActionSheetmetadataEditor *)self libraryAsset];
  v20 = [v19 author];
  v21 = [v18 isEqualToString:v20];

  v22 = BKLibraryLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [(BKLibraryContextualActionSheetmetadataEditor *)self libraryAsset];
    v23 = [v36 assetID];
    v24 = [(BKLibraryContextualActionSheetmetadataEditor *)self libraryAsset];
    v25 = [v24 title];
    [(BKLibraryContextualActionSheetmetadataEditor *)self libraryAsset];
    v37 = v14;
    v27 = v26 = v8;
    [v27 author];
    v35 = v21;
    v29 = v28 = v11;
    *buf = 141559298;
    v45 = 1752392040;
    v46 = 2112;
    v47 = v23;
    v48 = 2112;
    v49 = v25;
    v50 = 2112;
    v51 = v29;
    v52 = 2112;
    v53 = v26;
    v54 = 2112;
    v55 = v18;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[MetadataEditor updateTitle] BEGIN assetID:%{mask.hash}@ (OLD title:%@ author:%@) to (NEW title:%@ author:%@)", buf, 0x3Eu);

    v11 = v28;
    v21 = v35;

    v8 = v26;
    v14 = v37;
  }

  v30 = [(BKLibraryContextualActionSheetmetadataEditor *)self updatedCoverImageData];
  if (((v30 == 0) & v11) == 1)
  {
    if (v21)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v31 = [(BKLibraryContextualActionSheetmetadataEditor *)self libraryAsset];
  v32 = [v31 assetID];

  +[BKLibraryManager defaultManager];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100180354;
  v39 = v38[3] = &unk_100A096C0;
  v40 = v32;
  v41 = v8;
  v42 = v18;
  v43 = self;
  v33 = v32;
  v34 = v39;
  [v34 performBlockOnWorkerQueue:v38];

LABEL_10:
  [(BKLibraryContextualActionSheetmetadataEditor *)self _dismiss];
}

- (void)_coverButtonPressed:(id)a3
{
  v4 = [UIDocumentPickerViewController alloc];
  v7 = UTTypeImage;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  v6 = [v4 initForOpeningContentTypes:v5 asCopy:1];

  [v6 setAllowsMultipleSelection:0];
  [v6 setDelegate:self];
  [(BKLibraryContextualActionSheetmetadataEditor *)self presentViewController:v6 animated:1 completion:0];
}

- (id)_trimString:(id)a3
{
  v3 = a3;
  v4 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  return v5;
}

- (void)_dismiss
{
  [(BKLibraryContextualActionSheetmetadataEditor *)self setAppearedFirstTime:0];

  [(BKLibraryContextualActionSheetmetadataEditor *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_updateCoverView:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryContextualActionSheetmetadataEditor *)self coverView];
  [v5 removeFromSuperview];

  v6 = [(BKLibraryContextualActionSheetmetadataEditor *)self coverContainer];
  v7 = [(BKLibraryContextualActionSheetmetadataEditor *)self coverBorderView];
  [v6 insertSubview:v4 belowSubview:v7];

  [(BKLibraryContextualActionSheetmetadataEditor *)self setCoverView:v4];
  v23 = [v4 topAnchor];
  v24 = [(BKLibraryContextualActionSheetmetadataEditor *)self coverContainer];
  v22 = [v24 topAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v25[0] = v21;
  v19 = [v4 bottomAnchor];
  v20 = [(BKLibraryContextualActionSheetmetadataEditor *)self coverContainer];
  v18 = [v20 bottomAnchor];
  v8 = [v19 constraintEqualToAnchor:v18];
  v25[1] = v8;
  v9 = [v4 leadingAnchor];
  v10 = [(BKLibraryContextualActionSheetmetadataEditor *)self coverContainer];
  v11 = [v10 leadingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v25[2] = v12;
  v13 = [v4 trailingAnchor];

  v14 = [(BKLibraryContextualActionSheetmetadataEditor *)self coverContainer];
  v15 = [v14 trailingAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v25[3] = v16;
  v17 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v17];
}

- (void)_handleCoverUpdateRequest:(id)a3
{
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100180D84;
  v24[3] = &unk_100A03440;
  v4 = a3;
  v25 = v4;
  v26 = self;
  v5 = objc_retainBlock(v24);
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 BOOLForKey:@"BKMetadatEditorSkipReplaceCoverConfirmation"];

  if (v7)
  {
    (v5[2])(v5);
  }

  else
  {
    v8 = +[NSBundle mainBundle];
    v21 = [v8 localizedStringForKey:@"Are you sure you want to change this book’s cover?" value:&stru_100A30A68 table:0];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"The original cover will be permanently removed." value:&stru_100A30A68 table:0];

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"Change Cover" value:&stru_100A30A68 table:0];

    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"Cancel" value:&stru_100A30A68 table:0];

    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"Don’t show me this again." value:&stru_100A30A68 table:0];

    v17 = +[BCAppKitBundleLoader appKitBundleClass];
    v18 = [(BKLibraryContextualActionSheetmetadataEditor *)self view];
    v19 = [v18 window];
    v27[0] = v12;
    v27[1] = v14;
    v20 = [NSArray arrayWithObjects:v27 count:2];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100180E90;
    v22[3] = &unk_100A096E8;
    v23 = v5;
    [v17 showWarningSheetAlertInWindow:v19 messageText:v21 informativeText:v10 buttonTitles:v20 suppressionTitle:v16 completion:v22];
  }
}

- (id)_makeAndAddLabel:(id)a3 style:(unsigned int)a4
{
  v6 = a3;
  v7 = objc_alloc_init(UILabel);
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = +[UIColor labelColor];
  [v7 setTextColor:v8];

  [v7 setTextAlignment:4];
  [v7 setText:v6];

  UIFontForLanguage = CTFontCreateUIFontForLanguage(a4, 0.0, 0);
  [v7 setFont:UIFontForLanguage];

  v10 = [(BKLibraryContextualActionSheetmetadataEditor *)self view];
  [v10 addSubview:v7];

  return v7;
}

- (id)_makeAndAddTextField:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(UITextField);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setText:v4];

  v6 = +[UIColor labelColor];
  [v5 setTextColor:v6];

  [v5 setTextAlignment:4];
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontControlContentFontType|kCTFontSmallSystemFontType|0x20, 0.0, 0);
  [v5 setFont:UIFontForLanguage];

  [v5 setBorderStyle:3];
  [v5 setAutocapitalizationType:1];
  [v5 setClearButtonMode:1];
  [v5 setDelegate:self];
  v8 = [(BKLibraryContextualActionSheetmetadataEditor *)self view];
  [v8 addSubview:v5];

  return v5;
}

- (id)_makeAndAddSystemButton:(int64_t)a3 action:(SEL)a4 text:(id)a5
{
  v8 = a5;
  v9 = [UIButton buttonWithType:1];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setRole:a3];
  [v9 addTarget:self action:a4 forControlEvents:64];
  [v9 setTitle:v8 forState:0];

  [v9 sizeToFit];
  v10 = [(BKLibraryContextualActionSheetmetadataEditor *)self view];
  [v10 addSubview:v9];

  return v9;
}

- (CGSize)coverSize
{
  width = self->_coverSize.width;
  height = self->_coverSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end