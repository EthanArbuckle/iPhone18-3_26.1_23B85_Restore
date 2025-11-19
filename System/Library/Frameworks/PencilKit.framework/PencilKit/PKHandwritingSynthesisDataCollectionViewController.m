@interface PKHandwritingSynthesisDataCollectionViewController
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)initWithDrawings:(id *)a1;
- (id)makeDrawingForOriginalStrokes:(void *)a3 refinedStrokes:(void *)a4 contextStrokes:(double)a5 bounds:(double)a6;
- (id)makeDrawingForStrokes:(id *)a1;
- (id)makeImageForDrawing:(uint64_t)a1;
- (id)saveDrawing:(void *)a1 toBaseURL:(void *)a2 withName:(void *)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (uint64_t)updateTableViewHeight;
- (void)submitFeedback;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PKHandwritingSynthesisDataCollectionViewController

- (id)initWithDrawings:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = PKHandwritingSynthesisDataCollectionViewController;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 124, a2);
    }
  }

  return a1;
}

- (void)viewDidLoad
{
  v240[3] = *MEMORY[0x1E69E9840];
  v232.receiver = self;
  v232.super_class = PKHandwritingSynthesisDataCollectionViewController;
  [(PKHandwritingSynthesisDataCollectionViewController *)&v232 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  v4 = [(PKHandwritingSynthesisDataCollectionViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = objc_alloc(MEMORY[0x1E69DCEF8]);
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [v5 initWithFrame:{*MEMORY[0x1E695F058], v7, v8, v9}];
  v11 = v10;
  if (self)
  {
    objc_storeStrong(&self->_scrollView, v10);

    v12 = self->_scrollView;
    [(UIScrollView *)v12 setAlwaysBounceVertical:1];

    scrollView = self->_scrollView;
  }

  else
  {

    [0 setAlwaysBounceVertical:1];
    scrollView = 0;
  }

  v14 = scrollView;
  [(UIScrollView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [(PKHandwritingSynthesisDataCollectionViewController *)self view];
  v16 = v15;
  if (self)
  {
    v17 = self->_scrollView;
    [v16 addSubview:v17];

    v18 = self->_scrollView;
  }

  else
  {
    [v15 addSubview:0];

    v18 = 0;
  }

  v19 = v18;
  v20 = [(UIScrollView *)v19 frameLayoutGuide];
  v21 = [v20 topAnchor];
  v22 = [(PKHandwritingSynthesisDataCollectionViewController *)self view];
  v23 = [v22 safeAreaLayoutGuide];
  v24 = [v23 topAnchor];
  v25 = [v21 constraintEqualToAnchor:v24];
  [v25 setActive:1];

  if (self)
  {
    v26 = self->_scrollView;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;
  v28 = [(UIScrollView *)v27 frameLayoutGuide];
  v29 = [v28 leftAnchor];
  v30 = [(PKHandwritingSynthesisDataCollectionViewController *)self view];
  v31 = [v30 safeAreaLayoutGuide];
  v32 = [v31 leftAnchor];
  v33 = [v29 constraintEqualToAnchor:v32];
  [v33 setActive:1];

  if (self)
  {
    v34 = self->_scrollView;
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  v36 = [(UIScrollView *)v35 frameLayoutGuide];
  v37 = [v36 rightAnchor];
  v38 = [(PKHandwritingSynthesisDataCollectionViewController *)self view];
  v39 = [v38 safeAreaLayoutGuide];
  v40 = [v39 rightAnchor];
  v41 = [v37 constraintEqualToAnchor:v40];
  [v41 setActive:1];

  if (self)
  {
    v42 = self->_scrollView;
  }

  else
  {
    v42 = 0;
  }

  v43 = v42;
  v44 = [(UIScrollView *)v43 frameLayoutGuide];
  v45 = [v44 bottomAnchor];
  v46 = [(PKHandwritingSynthesisDataCollectionViewController *)self view];
  v47 = [v46 safeAreaLayoutGuide];
  v48 = [v47 bottomAnchor];
  v49 = [v45 constraintEqualToAnchor:v48];
  [v49 setActive:1];

  if (self)
  {
    v50 = self->_scrollView;
  }

  else
  {
    v50 = 0;
  }

  v51 = v50;
  v52 = [(UIScrollView *)v51 frameLayoutGuide];
  v53 = [v52 widthAnchor];
  if (self)
  {
    v54 = self->_scrollView;
  }

  else
  {
    v54 = 0;
  }

  v55 = v54;
  v56 = [(UIScrollView *)v55 contentLayoutGuide];
  v57 = [v56 widthAnchor];
  v58 = [v53 constraintEqualToAnchor:v57];
  [v58 setActive:1];

  v59 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
  v60 = v59;
  if (self)
  {
    objc_storeStrong(&self->_descriptionLabel, v59);

    descriptionLabel = self->_descriptionLabel;
  }

  else
  {

    descriptionLabel = 0;
  }

  v62 = descriptionLabel;
  [(UILabel *)v62 setNumberOfLines:0];

  v63 = +[PKHandwritingSynthesisLogger sharedHandwritingSynthesisLogger];
  v64 = [(PKHandwritingSynthesisLogger *)v63 entries];

  v65 = [v64 count];
  v66 = _PencilKitBundle();
  v67 = v66;
  v221 = v64;
  if (v65)
  {
    v68 = @"Please select all handwriting synthesis you want to submit. If you make no selection and click submit, all entries will be sent to Apple.";
  }

  else
  {
    v68 = @"No handwriting synthesis entries available.";
  }

  v69 = [v66 localizedStringForKey:v68 value:v68 table:@"Localizable"];
  if (self)
  {
    v70 = self->_descriptionLabel;
  }

  else
  {
    v70 = 0;
  }

  v71 = v70;
  [(UILabel *)v71 setText:v69];

  v72 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  if (self)
  {
    v73 = self->_descriptionLabel;
    [(UILabel *)v73 setFont:v72];

    v74 = self->_descriptionLabel;
  }

  else
  {
    [0 setFont:v72];

    v74 = 0;
  }

  v75 = v74;
  [(UILabel *)v75 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (self)
  {
    v76 = self->_scrollView;
    v77 = self->_descriptionLabel;
  }

  else
  {
    v76 = 0;
    v77 = 0;
  }

  v78 = v77;
  [(UIScrollView *)v76 addSubview:v78];

  if (self)
  {
    v79 = self->_descriptionLabel;
  }

  else
  {
    v79 = 0;
  }

  v207 = MEMORY[0x1E696ACD8];
  v218 = v79;
  v80 = [(UILabel *)v218 topAnchor];
  if (self)
  {
    v81 = self->_scrollView;
  }

  else
  {
    v81 = 0;
  }

  v213 = v81;
  v211 = [(UIScrollView *)v213 topAnchor];
  v209 = [v80 constraintEqualToAnchor:20.0 constant:?];
  v240[0] = v209;
  if (self)
  {
    v82 = self->_descriptionLabel;
  }

  else
  {
    v82 = 0;
  }

  v205 = v82;
  v83 = [(UILabel *)v205 leadingAnchor];
  if (self)
  {
    v84 = self->_scrollView;
  }

  else
  {
    v84 = 0;
  }

  v85 = v84;
  v86 = [(UIScrollView *)v85 leadingAnchor];
  v203 = v83;
  v87 = [v83 constraintEqualToAnchor:v86 constant:20.0];
  v240[1] = v87;
  obj = v80;
  if (self)
  {
    v88 = self->_descriptionLabel;
  }

  else
  {
    v88 = 0;
  }

  v89 = v88;
  v90 = [(UILabel *)v89 trailingAnchor];
  if (self)
  {
    v91 = self->_scrollView;
  }

  else
  {
    v91 = 0;
  }

  v92 = self;
  v93 = v91;
  v94 = [(UIScrollView *)v93 trailingAnchor];
  v95 = [v90 constraintEqualToAnchor:v94 constant:-20.0];
  v240[2] = v95;
  v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:v240 count:3];
  [v207 activateConstraints:v96];

  v97 = objc_alloc_init(MEMORY[0x1E69DD020]);
  v98 = v97;
  v99 = v92;
  if (v92)
  {
    objc_storeStrong(&v92->_tableView, v97);

    v100 = v92->_tableView;
    [(UITableView *)v100 setTranslatesAutoresizingMaskIntoConstraints:0];

    tableView = v92->_tableView;
  }

  else
  {

    [0 setTranslatesAutoresizingMaskIntoConstraints:0];
    tableView = 0;
  }

  v102 = tableView;
  [(UITableView *)v102 setDelegate:v92];

  if (v92)
  {
    v103 = v92->_tableView;
    [(UITableView *)v103 setDataSource:v92];

    v104 = v92->_tableView;
  }

  else
  {
    [0 setDataSource:0];
    v104 = 0;
  }

  v105 = v104;
  [(UITableView *)v105 setSeparatorStyle:0];

  if (v92)
  {
    v106 = v92->_tableView;
    [(UITableView *)v106 setAllowsMultipleSelection:1];

    v107 = v92->_tableView;
  }

  else
  {
    [0 setAllowsMultipleSelection:1];
    v107 = 0;
  }

  v108 = v107;
  [(UITableView *)v108 registerClass:objc_opt_class() forCellReuseIdentifier:@"ImageCell"];

  if (v92)
  {
    v109 = v92->_scrollView;
    v110 = v92->_tableView;
  }

  else
  {
    v109 = 0;
    v110 = 0;
  }

  v111 = v110;
  [(UIScrollView *)v109 addSubview:v111];

  if (v92)
  {
    v112 = v92->_tableView;
  }

  else
  {
    v112 = 0;
  }

  v206 = MEMORY[0x1E696ACD8];
  v219 = v112;
  v113 = [(UITableView *)v219 topAnchor];
  if (v92)
  {
    v114 = v92->_descriptionLabel;
  }

  else
  {
    v114 = 0;
  }

  v214 = v114;
  v212 = [(UILabel *)v214 bottomAnchor];
  v210 = [v113 constraintEqualToAnchor:20.0 constant:?];
  v239[0] = v210;
  if (v92)
  {
    v115 = v92->_tableView;
  }

  else
  {
    v115 = 0;
  }

  v208 = v115;
  v116 = [(UITableView *)v208 leadingAnchor];
  if (v92)
  {
    v117 = v92->_scrollView;
  }

  else
  {
    v117 = 0;
  }

  v204 = v117;
  v202 = [(UIScrollView *)v204 leadingAnchor];
  v201 = [v116 constraintEqualToAnchor:20.0 constant:?];
  v239[1] = v201;
  if (v92)
  {
    v118 = v92->_tableView;
  }

  else
  {
    v118 = 0;
  }

  v200 = v118;
  v119 = [(UITableView *)v200 trailingAnchor];
  if (v99)
  {
    v120 = v99->_scrollView;
  }

  else
  {
    v120 = 0;
  }

  v121 = v120;
  v122 = [(UIScrollView *)v121 trailingAnchor];
  v123 = [v119 constraintEqualToAnchor:v122 constant:-20.0];
  v239[2] = v123;
  obja = v113;
  if (v99)
  {
    v124 = v99->_tableView;
  }

  else
  {
    v124 = 0;
  }

  v199 = v119;
  v125 = v124;
  v126 = [(UITableView *)v125 bottomAnchor];
  p_isa = &v99->super.super.super.isa;
  v127 = v116;
  if (v99)
  {
    v128 = v99->_scrollView;
  }

  else
  {
    v128 = 0;
  }

  v129 = v128;
  v130 = [(UIScrollView *)v129 bottomAnchor];
  v131 = [v126 constraintEqualToAnchor:v130 constant:-20.0];
  v239[3] = v131;
  v132 = [MEMORY[0x1E695DEC8] arrayWithObjects:v239 count:4];
  [v206 activateConstraints:v132];

  v133 = p_isa;
  if (p_isa)
  {
    v134 = p_isa[128];
    v135 = [v134 heightAnchor];
    v136 = [v135 constraintEqualToConstant:0.0];
    objc_storeStrong(p_isa + 129, v136);

    v137 = p_isa[129];
  }

  else
  {
    v198 = [0 heightAnchor];
    [v198 constraintEqualToConstant:0.0];

    v137 = 0;
  }

  v138 = v137;
  [v138 setActive:1];

  v139 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v221, "count")}];
  if (p_isa)
  {
    objc_storeStrong(p_isa + 125, v139);
  }

  v230 = 0u;
  v231 = 0u;
  v228 = 0u;
  v229 = 0u;
  objb = v221;
  v222 = [objb countByEnumeratingWithState:&v228 objects:v238 count:16];
  if (v222)
  {
    v220 = *v229;
    do
    {
      v140 = 0;
      do
      {
        if (*v229 != v220)
        {
          objc_enumerationMutation(objb);
        }

        v141 = *(*(&v228 + 1) + 8 * v140);
        v142 = [MEMORY[0x1E695DF70] array];
        v143 = [v141 originalStrokes];
        [v142 addObjectsFromArray:v143];

        v144 = [v141 synthesizedStrokes];
        [v142 addObjectsFromArray:v144];

        v145 = [v141 contextStrokes];
        [v142 addObjectsFromArray:v145];

        v226 = 0u;
        v227 = 0u;
        v224 = 0u;
        v225 = 0u;
        v146 = v142;
        v147 = [v146 countByEnumeratingWithState:&v224 objects:v237 count:16];
        v148 = v9;
        v149 = v8;
        v150 = v7;
        v151 = v6;
        if (v147)
        {
          v152 = v147;
          v153 = *v225;
          v148 = v9;
          v149 = v8;
          v150 = v7;
          v151 = v6;
          do
          {
            for (i = 0; i != v152; ++i)
            {
              if (*v225 != v153)
              {
                objc_enumerationMutation(v146);
              }

              v155 = *(*(&v224 + 1) + 8 * i);
              v242.origin.x = v151;
              v242.origin.y = v150;
              v242.size.width = v149;
              v242.size.height = v148;
              v245.origin.x = v6;
              v245.origin.y = v7;
              v245.size.width = v8;
              v245.size.height = v9;
              v156 = CGRectEqualToRect(v242, v245);
              [v155 renderBounds];
              v161 = v157;
              v162 = v158;
              v163 = v159;
              v164 = v160;
              if (!v156)
              {
                v243.origin.x = v151;
                v243.origin.y = v150;
                v243.size.width = v149;
                v243.size.height = v148;
                *&v157 = CGRectUnion(v243, *&v161);
              }

              v151 = v157;
              v150 = v158;
              v149 = v159;
              v148 = v160;
            }

            v152 = [v146 countByEnumeratingWithState:&v224 objects:v237 count:16];
          }

          while (v152);
        }

        v165 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
        {
          v194 = [v141 synthesizedStrokes];
          v195 = [v194 count];
          v244.origin.x = v151;
          v244.origin.y = v150;
          v244.size.width = v149;
          v244.size.height = v148;
          MaxY = CGRectGetMaxY(v244);
          *buf = 134218240;
          v234 = v195;
          v235 = 2048;
          v236 = MaxY;
          _os_log_error_impl(&dword_1C7CCA000, v165, OS_LOG_TYPE_ERROR, "Generation with strokes = %ld, union Bounds.minY = %.2f", buf, 0x16u);
        }

        v166 = objc_opt_new();
        v167 = [v141 originalStrokes];
        v168 = [v167 count];

        if (v168)
        {
          v169 = [v141 originalStrokes];
          v170 = [v141 contextStrokes];
          v171 = [(PKHandwritingSynthesisDataCollectionViewController *)p_isa makeDrawingForOriginalStrokes:v169 refinedStrokes:0 contextStrokes:v170 bounds:v151, v150];

          v172 = [(PKHandwritingSynthesisDataCollectionViewController *)p_isa makeImageForDrawing:v171];
        }

        else
        {
          v171 = 0;
          v172 = 0;
        }

        v173 = [v141 synthesizedStrokes];
        v174 = [v173 count];
        v175 = [v141 contextStrokes];
        v176 = [v175 count];

        if (v174 + v176)
        {
          v179 = [v141 synthesizedStrokes];
          v180 = [v141 contextStrokes];
          v177 = [(PKHandwritingSynthesisDataCollectionViewController *)p_isa makeDrawingForOriginalStrokes:v179 refinedStrokes:v180 contextStrokes:v151 bounds:v150];

          v178 = [(PKHandwritingSynthesisDataCollectionViewController *)p_isa makeImageForDrawing:v177];
        }

        else
        {
          v177 = 0;
          v178 = 0;
        }

        [v172 size];
        v182 = v181;
        [v178 size];
        if (v182 < v183)
        {
          v182 = v183;
        }

        [v172 size];
        v185 = v184;
        [v178 size];
        v241.height = v185 + v186;
        v241.width = v182;
        UIGraphicsBeginImageContextWithOptions(v241, 0, 0.0);
        if (v172)
        {
          [v172 size];
          [v172 drawInRect:{0.0, 0.0, v182, v187}];
        }

        if (v178)
        {
          [v172 size];
          v189 = v188;
          [v178 size];
          [v178 drawInRect:{0.0, v189, v182, v190}];
        }

        v191 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        if (v166)
        {
          objc_storeStrong(v166 + 4, v141);
          objc_storeStrong(v166 + 3, v191);
          objc_storeStrong(v166 + 2, v171);
          objc_storeStrong(v166 + 1, v177);
        }

        v133 = p_isa;
        if (p_isa)
        {
          v192 = p_isa[125];
        }

        else
        {
          v192 = 0;
        }

        v193 = v192;
        [v193 addObject:v166];

        ++v140;
      }

      while (v140 != v222);
      v197 = [objb countByEnumeratingWithState:&v228 objects:v238 count:16];
      v222 = v197;
    }

    while (v197);
  }

  [(PKHandwritingSynthesisDataCollectionViewController *)v133 updateTableViewHeight];
}

- (id)makeDrawingForOriginalStrokes:(void *)a3 refinedStrokes:(void *)a4 contextStrokes:(double)a5 bounds:(double)a6
{
  v68 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  if (a1)
  {
    if ([a1[124] count])
    {
      v38 = [a1[124] objectAtIndexedSubscript:0];
      a1 = objc_alloc_init(objc_opt_class());
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v40 = v11;
      v14 = v11;
      v15 = [v14 countByEnumeratingWithState:&v61 objects:v67 count:16];
      v16 = -a5;
      v17 = -a6;
      v18 = MEMORY[0x1E695EFD0];
      if (v15)
      {
        v19 = v15;
        v20 = *v62;
        v45 = *(MEMORY[0x1E695EFD0] + 16);
        v48 = *MEMORY[0x1E695EFD0];
        v42 = *(MEMORY[0x1E695EFD0] + 32);
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v62 != v20)
            {
              objc_enumerationMutation(v14);
            }

            v22 = [*(*(&v61 + 1) + 8 * i) copyForMutation];
            *&v59.a = v48;
            *&v59.c = v45;
            *&v59.tx = v42;
            CGAffineTransformTranslate(&v60, &v59, v16, v17);
            [v22 _applyTransform:&v60];
            [a1 addNewStroke:v22];
          }

          v19 = [v14 countByEnumeratingWithState:&v61 objects:v67 count:16];
        }

        while (v19);
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v23 = v12;
      v24 = [v23 countByEnumeratingWithState:&v55 objects:v66 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v56;
        v46 = v18[1];
        v49 = *v18;
        v43 = v18[2];
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v56 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = [*(*(&v55 + 1) + 8 * j) copyForMutation];
            *&v59.a = v49;
            *&v59.c = v46;
            *&v59.tx = v43;
            CGAffineTransformTranslate(&v60, &v59, v16, v17);
            [v28 _applyTransform:&v60];
            [a1 addNewStroke:v28];
          }

          v25 = [v23 countByEnumeratingWithState:&v55 objects:v66 count:16];
        }

        while (v25);
      }

      v39 = v12;

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      obj = v13;
      v29 = [obj countByEnumeratingWithState:&v51 objects:v65 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v52;
        v47 = v18[1];
        v50 = *v18;
        v44 = v18[2];
        do
        {
          for (k = 0; k != v30; ++k)
          {
            if (*v52 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v33 = [*(*(&v51 + 1) + 8 * k) copyForMutation];
            *&v59.a = v50;
            *&v59.c = v47;
            *&v59.tx = v44;
            CGAffineTransformTranslate(&v60, &v59, v16, v17);
            [v33 _applyTransform:&v60];
            v34 = [v33 ink];
            v35 = [MEMORY[0x1E69DC888] lightGrayColor];
            v36 = [PKInk inkFromInk:v34 color:v35];
            [v33 setInk:v36];

            [a1 addNewStroke:v33];
          }

          v30 = [obj countByEnumeratingWithState:&v51 objects:v65 count:16];
        }

        while (v30);
      }

      v12 = v39;
      v11 = v40;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (id)makeImageForDrawing:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = dispatch_semaphore_create(0);
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__35;
    v30 = __Block_byref_object_dispose__35;
    v31 = 0;
    [v3 _canvasBounds];
    v7 = v6;
    MaxY = v5;
    if (v6 == *MEMORY[0x1E695F060] && v5 == *(MEMORY[0x1E695F060] + 8))
    {
      [v3 bounds];
      MaxY = CGRectGetMaxY(v33);
      v7 = 768.0;
    }

    v10 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v10 bounds];
    v12 = v11;

    if (v12 < v7)
    {
      v7 = v12;
    }

    v13 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v13 bounds];
    v15 = v14;

    if (v15 < MaxY)
    {
      MaxY = v15;
    }

    v16 = [PKImageRenderer alloc];
    v17 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v17 scale];
    v19 = [(PKImageRenderer *)v16 initWithSize:v7 scale:MaxY, v18];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __74__PKHandwritingSynthesisDataCollectionViewController_makeImageForDrawing___block_invoke;
    v23[3] = &unk_1E82D82B8;
    v25 = &v26;
    v20 = v4;
    v24 = v20;
    [(PKImageRenderer *)v19 renderDrawing:v3 completion:v23];
    dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
    v21 = v27[5];

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (uint64_t)updateTableViewHeight
{
  v17 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = *(result + 1000);
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v13;
      v6 = 0.0;
      do
      {
        v7 = 0;
        do
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v12 + 1) + 8 * v7);
          if (v8)
          {
            v9 = *(v8 + 24);
          }

          else
          {
            v9 = 0;
          }

          [v9 size];
          v6 = v6 + v10 + 40.0 + 20.0;
          ++v7;
        }

        while (v4 != v7);
        v11 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
        v4 = v11;
      }

      while (v11);
    }

    else
    {
      v6 = 0.0;
    }

    return [*(v1 + 1032) setConstant:v6];
  }

  return result;
}

- (id)makeDrawingForStrokes:(id *)a1
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = [v3 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    v11 = v7;
    v12 = v6;
    v13 = v5;
    v14 = v4;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v3);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v35.origin.x = v14;
        v35.origin.y = v13;
        v35.size.width = v12;
        v35.size.height = v11;
        v37.origin.x = v4;
        v37.origin.y = v5;
        v37.size.width = v6;
        v37.size.height = v7;
        v17 = CGRectEqualToRect(v35, v37);
        [v16 renderBounds];
        v22 = v18;
        v23 = v19;
        v24 = v20;
        v25 = v21;
        if (!v17)
        {
          v36.origin.x = v14;
          v36.origin.y = v13;
          v36.size.width = v12;
          v36.size.height = v11;
          *&v18 = CGRectUnion(v36, *&v22);
        }

        v14 = v18;
        v13 = v19;
        v12 = v20;
        v11 = v21;
      }

      v9 = [v3 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v9);
  }

  else
  {
    v13 = v5;
    v14 = v4;
  }

  v26 = [(PKHandwritingSynthesisDataCollectionViewController *)a1 makeDrawingForOriginalStrokes:v3 refinedStrokes:0 contextStrokes:0 bounds:v14, v13];

  return v26;
}

void __74__PKHandwritingSynthesisDataCollectionViewController_makeImageForDrawing___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)saveDrawing:(void *)a1 toBaseURL:(void *)a2 withName:(void *)a3
{
  v5 = a3;
  v6 = a2;
  v7 = [a1 serializeWithVersion:2];
  v8 = [v6 URLByAppendingPathComponent:v5];

  [v7 writeToURL:v8 atomically:1];

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (self)
  {
    self = self->_tableDataEntries;
  }

  return [(PKHandwritingSynthesisDataCollectionViewController *)self count:a3];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"ImageCell" forIndexPath:v6];
  v8 = [v7 contentView];
  v9 = [v8 subviews];
  [v9 makeObjectsPerformSelector:sel_removeFromSuperview];

  v10 = objc_alloc(MEMORY[0x1E69DD250]);
  v11 = [v7 contentView];
  [v11 bounds];
  v12 = [v10 initWithFrame:?];

  [v12 setAutoresizingMask:18];
  v13 = [v12 layer];
  [v13 setCornerRadius:15.0];

  v14 = [v12 layer];
  [v14 setMasksToBounds:1];

  v15 = [v12 layer];
  [v15 setBorderWidth:0.8];

  v16 = [MEMORY[0x1E69DC888] grayColor];
  v17 = [v16 CGColor];
  v18 = [v12 layer];
  [v18 setBorderColor:v17];

  if (self)
  {
    tableDataEntries = self->_tableDataEntries;
  }

  else
  {
    tableDataEntries = 0;
  }

  v20 = tableDataEntries;
  v21 = [v6 row];

  v22 = [(NSMutableArray *)v20 objectAtIndexedSubscript:v21];
  v23 = v22;
  if (v22)
  {
    v24 = *(v22 + 24);
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  [v25 size];
  v27 = v26;
  v28 = [v7 contentView];
  [v28 bounds];
  v30 = v29 + -40.0;

  v31 = [v7 contentView];
  [v31 bounds];
  v33 = (v32 - v30) * 0.5;

  v34 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v25];
  [v34 setContentMode:1];
  [v34 setFrame:{v33, 20.0, v30, v27}];
  [v12 addSubview:v34];
  v35 = [v7 contentView];
  [v35 addSubview:v12];

  v36 = [MEMORY[0x1E69DC888] clearColor];
  [v7 setBackgroundColor:v36];

  v37 = objc_alloc(MEMORY[0x1E69DD250]);
  [v7 bounds];
  v38 = [v37 initWithFrame:?];
  v39 = [MEMORY[0x1E69DC888] systemGrayColor];
  v40 = [v39 colorWithAlphaComponent:0.4];
  [v38 setBackgroundColor:v40];

  v41 = [v38 layer];
  [v41 setCornerRadius:15.0];

  v42 = [v38 layer];
  [v42 setMasksToBounds:1];

  [v7 setSelectedBackgroundView:v38];

  return v7;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  if (self)
  {
    tableDataEntries = self->_tableDataEntries;
  }

  else
  {
    tableDataEntries = 0;
  }

  v6 = tableDataEntries;
  v7 = -[NSMutableArray objectAtIndexedSubscript:](v6, "objectAtIndexedSubscript:", [a4 row]);
  v8 = v7;
  if (v7)
  {
    v9 = *(v7 + 24);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  [v10 size];
  v12 = v11;

  return v12 + 40.0 + 20.0;
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKHandwritingSynthesisDataCollectionViewController;
  [(PKHandwritingSynthesisDataCollectionViewController *)&v3 viewDidLayoutSubviews];
  [(PKHandwritingSynthesisDataCollectionViewController *)self updateTableViewHeight];
}

- (void)submitFeedback
{
  v123 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];

  v5 = MEMORY[0x1E695DFF8];
  v6 = NSTemporaryDirectory();
  v7 = [v5 fileURLWithPath:v6];
  v8 = [v7 URLByAppendingPathComponent:v4];

  v9 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v114 = 0;
  LOBYTE(v7) = [v9 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v114];
  v10 = v114;
  v11 = v10;
  if (v7)
  {
    v100 = v9;
    v113 = v8;
    v101 = v8;
    v102 = v4;
    v99 = v11;
    if (self)
    {
      v112 = [MEMORY[0x1E695DF70] array];
      v12 = [(UITableView *)self->_tableView indexPathsForSelectedRows];
      if ([v12 count])
      {
        v13 = objc_opt_new();
        v118 = 0u;
        v119 = 0u;
        v120 = 0u;
        v121 = 0u;
        v14 = v12;
        v15 = [v14 countByEnumeratingWithState:&v118 objects:v122 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v119;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v119 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v118 + 1) + 8 * i);
              v20 = self->_tableDataEntries;
              v21 = -[NSMutableArray objectAtIndexedSubscript:](v20, "objectAtIndexedSubscript:", [v19 row]);

              [(NSMutableArray *)v13 addObject:v21];
            }

            v16 = [v14 countByEnumeratingWithState:&v118 objects:v122 count:16];
          }

          while (v16);
        }
      }

      else
      {
        v13 = self->_tableDataEntries;
      }

      v118 = 0u;
      v119 = 0u;
      v120 = 0u;
      v121 = 0u;
      v108 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v118 objects:v122 count:16];
      if (!v108)
      {
        v23 = 0;
        goto LABEL_91;
      }

      v22 = 0;
      v23 = 0;
      v107 = *v119;
      v103 = self;
      v104 = v13;
      while (1)
      {
        v24 = 0;
        do
        {
          if (*v119 != v107)
          {
            objc_enumerationMutation(v13);
          }

          v25 = *(*(&v118 + 1) + 8 * v24);
          if (v25)
          {
            v26 = *(v25 + 32);
          }

          else
          {
            v26 = 0;
          }

          v27 = v26;
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            if (v25)
            {
              v29 = *(v25 + 32);
            }

            else
            {
              v29 = 0;
            }

            v30 = v29;
            v31 = [v30 isAutoRefined];
            v32 = @"Handwriting Refine Feedback: ";
            if (v31)
            {
              v32 = @"Handwriting AutoRefine Feedback: ";
            }

            v33 = v32;
            v34 = v33;
            if (!v23)
            {
              v23 = v33;
            }

            v110 = v34;
            v111 = v24;
            if (([(__CFString *)v23 isEqualToString:v34]& 1) != 0)
            {
              v106 = v23;
            }

            else
            {

              v106 = @"Handwriting Synthesis Feedback: ";
            }

            v54 = [v30 originalStrokes];
            v44 = [(PKHandwritingSynthesisDataCollectionViewController *)&self->super.super.super.isa makeDrawingForStrokes:v54];

            v55 = [v30 refinedStrokes];
            v46 = [(PKHandwritingSynthesisDataCollectionViewController *)&self->super.super.super.isa makeDrawingForStrokes:v55];

            v56 = [v30 unchangedStrokes];
            v57 = [(PKHandwritingSynthesisDataCollectionViewController *)&self->super.super.super.isa makeDrawingForStrokes:v56];

            v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/drawing_%ld_original.drawing", v22];
            v109 = v44;
            v59 = [PKHandwritingSynthesisDataCollectionViewController saveDrawing:v44 toBaseURL:v113 withName:v58];
            [v112 addObject:v59];

            if ([v30 isAutoRefined])
            {
              v60 = @"/drawing_%ld_autorefined.drawing";
            }

            else
            {
              v60 = @"/drawing_%ld_refined.drawing";
            }

            v61 = [MEMORY[0x1E696AEC0] stringWithFormat:v60, v22];
            v62 = [PKHandwritingSynthesisDataCollectionViewController saveDrawing:v46 toBaseURL:v113 withName:v61];
            [v112 addObject:v62];

            v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/drawing_%ld_context.drawing", v22];
            v105 = v57;
            v64 = [PKHandwritingSynthesisDataCollectionViewController saveDrawing:v57 toBaseURL:v113 withName:v63];
            [v112 addObject:v64];

            if (v25)
            {
              v65 = *(v25 + 24);
            }

            else
            {
              v65 = 0;
            }

            v50 = UIImagePNGRepresentation(v65);
            v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/image_%ld.png", v22];
            v53 = [v113 URLByAppendingPathComponent:v66];

            [v50 writeToURL:v53 atomically:1];
            [v112 addObject:v53];
            v67 = [v30 description];

            self = v103;
            if (!v67)
            {
              v51 = v105;
              v23 = v106;
              goto LABEL_72;
            }

            v68 = MEMORY[0x1E696ACB0];
            v69 = [v30 description];
            v117 = 0;
            v70 = [v68 dataWithJSONObject:v69 options:0 error:&v117];
            v71 = v117;

            if (!v70)
            {
              NSLog(&cfstr_ErrorSavingDeb.isa, v71);
            }

            v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"debug_info_%ld.json", v22];
            v73 = [v113 URLByAppendingPathComponent:v72];

            [v70 writeToURL:v73 atomically:1];
            [v112 addObject:v73];

            self = v103;
            v51 = v105;
            v23 = v106;
            goto LABEL_55;
          }

          if (v25)
          {
            v35 = *(v25 + 32);
          }

          else
          {
            v35 = 0;
          }

          v36 = v35;
          objc_opt_class();
          v37 = objc_opt_isKindOfClass();

          if (v37)
          {
            if (!v23)
            {
              v23 = @"Handwriting Generation Feedback: ";
            }

            if (([(__CFString *)v23 isEqualToString:?]& 1) == 0)
            {

              v23 = @"Handwriting Synthesis Feedback: ";
            }

            v111 = v24;
            if (v25)
            {
              v38 = *(v25 + 32);
            }

            else
            {
              v38 = 0;
            }

            v30 = v38;
            v39 = [v30 synthesizedStrokes];
            v40 = [(PKHandwritingSynthesisDataCollectionViewController *)&self->super.super.super.isa makeDrawingForStrokes:v39];

            v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/drawing_%ld_generated.drawing", v22];
            v42 = [PKHandwritingSynthesisDataCollectionViewController saveDrawing:v40 toBaseURL:v113 withName:v41];
            [v112 addObject:v42];

            if (v25)
            {
              v43 = *(v25 + 24);
            }

            else
            {
              v43 = 0;
            }

            v44 = UIImagePNGRepresentation(v43);
            v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/image_%ld.png", v22];
            v46 = [v113 URLByAppendingPathComponent:v45];

            [v44 writeToURL:v46 atomically:1];
            [v112 addObject:v46];
            v47 = [v30 description];

            if (v47)
            {
              v110 = v40;
              v48 = MEMORY[0x1E696ACB0];
              v49 = [v30 description];
              v116 = 0;
              v50 = [v48 dataWithJSONObject:v49 options:0 error:&v116];
              v51 = v116;

              if (!v50)
              {
                NSLog(&cfstr_ErrorSavingDeb.isa, v51);
              }

              v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"debug_info_%ld.json", v22];
              v53 = [v113 URLByAppendingPathComponent:v52];

              [v50 writeToURL:v53 atomically:1];
              [v112 addObject:v53];
LABEL_72:

              v13 = v104;
LABEL_73:

              v40 = v110;
            }

            else
            {
              v13 = v104;
            }

            v24 = v111;
            goto LABEL_75;
          }

          if (v25)
          {
            v74 = *(v25 + 32);
          }

          else
          {
            v74 = 0;
          }

          v75 = v74;
          objc_opt_class();
          v76 = objc_opt_isKindOfClass();

          if (v76)
          {
            if (!v23)
            {
              v23 = @"Handwriting Proofreading Feedback: ";
            }

            if (([(__CFString *)v23 isEqualToString:?]& 1) == 0)
            {

              v23 = @"Handwriting Synthesis Feedback: ";
            }

            v111 = v24;
            if (v25)
            {
              v77 = *(v25 + 32);
            }

            else
            {
              v77 = 0;
            }

            v30 = v77;
            v78 = [v30 originalStrokes];
            v79 = [(PKHandwritingSynthesisDataCollectionViewController *)&self->super.super.super.isa makeDrawingForStrokes:v78];

            v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/drawing_%ld_proofreading_original.drawing", v22];
            v110 = v79;
            v81 = [PKHandwritingSynthesisDataCollectionViewController saveDrawing:v79 toBaseURL:v113 withName:v80];
            [v112 addObject:v81];

            v82 = [v30 synthesizedStrokes];
            v83 = self;
            v84 = [(PKHandwritingSynthesisDataCollectionViewController *)&self->super.super.super.isa makeDrawingForStrokes:v82];

            v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/drawing_%ld_proofreading_replacement.drawing", v22];
            v109 = v84;
            v86 = [PKHandwritingSynthesisDataCollectionViewController saveDrawing:v84 toBaseURL:v113 withName:v85];
            [v112 addObject:v86];

            if (v25)
            {
              v87 = *(v25 + 24);
            }

            else
            {
              v87 = 0;
            }

            v46 = UIImagePNGRepresentation(v87);
            v88 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/image_%ld.png", v22];
            v51 = [v113 URLByAppendingPathComponent:v88];

            [v46 writeToURL:v51 atomically:1];
            [v112 addObject:v51];
            v89 = [v30 description];

            self = v83;
            if (!v89)
            {
              v44 = v109;
              goto LABEL_73;
            }

            v90 = v23;
            v91 = MEMORY[0x1E696ACB0];
            v92 = [v30 description];
            v115 = 0;
            v53 = [v91 dataWithJSONObject:v92 options:0 error:&v115];
            v50 = v115;

            if (!v53)
            {
              NSLog(&cfstr_ErrorSavingDeb.isa, v50);
            }

            v93 = [MEMORY[0x1E696AEC0] stringWithFormat:@"debug_info_%ld.json", v22];
            v94 = [v113 URLByAppendingPathComponent:v93];

            [v53 writeToURL:v94 atomically:1];
            [v112 addObject:v94];

            v23 = v90;
LABEL_55:
            v44 = v109;
            goto LABEL_72;
          }

LABEL_75:
          ++v22;
          ++v24;
        }

        while (v108 != v24);
        v95 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v118 objects:v122 count:16];
        v108 = v95;
        if (!v95)
        {
LABEL_91:
          v96 = v23;
          v97 = [MEMORY[0x1E695DEC8] arrayWithArray:v112];

          goto LABEL_92;
        }
      }
    }

    v23 = 0;
    v97 = 0;
LABEL_92:

    v98 = v23;
    [PKHandwritingDebugUtility submitFeedbackWithAttachments:v97 title:v98];

    v8 = v101;
    v4 = v102;
    v11 = v99;
    v9 = v100;
  }

  else
  {
    NSLog(&cfstr_Error.isa, v10);
  }
}

@end