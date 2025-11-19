@interface AnalogDialView
+ (id)richCircularLevelSubdialForDevice:(id)a3 andComplicationFamily:(int64_t)a4;
- (AnalogDialView)initWithDialDiameter:(double)a3;
- (CGSize)intrinsicContentSize;
- (void)addTicksWithCount:(unint64_t)a3 moduloGroups:(id)a4 sizes:(id)a5 roundedCorners:(id)a6;
- (void)applyTickColor:(id)a3 toGroupIndex:(unint64_t)a4;
- (void)applyTickColor:(id)a3 toModulo:(unint64_t)a4;
- (void)layoutSubviews;
@end

@implementation AnalogDialView

+ (id)richCircularLevelSubdialForDevice:(id)a3 andComplicationFamily:(int64_t)a4
{
  v48[2] = *MEMORY[0x277D85DE8];
  sub_23BD2F7BC(a1, a3);
  if (a4 == 12)
  {
    v6 = &xmmword_27E1C4BC0;
  }

  else
  {
    if (a4 != 10)
    {
      v5 = NCLogForCategory(1uLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_23BD65900(a4, v5);
      }
    }

    v6 = &xmmword_27E1C4B90;
  }

  v7 = *v6;
  v8 = *(v6 + 8);
  v46 = *(v6 + 24);
  v47 = v8;
  v9 = [AnalogDialView alloc];
  v13 = objc_msgSend_initWithDialDiameter_(v9, v10, v11, v12, v7);
  v45 = v47;
  v15 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v14, &v45, "{CGSize=dd}");
  v48[0] = v15;
  v44 = v46;
  v17 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v16, &v44, "{CGSize=dd}");
  v48[1] = v17;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v18, v48, 2);
  objc_msgSend_addTicksWithCount_moduloGroups_sizes_roundedCorners_(v13, v20, 40, &unk_284E8B0B8, v19, &unk_284E8B0D0);

  v24 = objc_msgSend_tickGroups(v13, v21, v22, v23);
  v28 = objc_msgSend_count(v24, v25, v26, v27);

  if (v28 >= 2)
  {
    v32 = 1;
    do
    {
      v33 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v29, v30, v31, 1.0, 0.600000024);
      objc_msgSend_applyTickColor_toGroupIndex_(v13, v34, v33, v32);

      ++v32;
      v38 = objc_msgSend_tickGroups(v13, v35, v36, v37);
      v42 = objc_msgSend_count(v38, v39, v40, v41);
    }

    while (v32 < v42);
  }

  return v13;
}

- (AnalogDialView)initWithDialDiameter:(double)a3
{
  v5.receiver = self;
  v5.super_class = AnalogDialView;
  result = [(AnalogDialView *)&v5 initWithFrame:0.0, 0.0, a3, a3];
  if (result)
  {
    result->_dialDiameter = a3;
  }

  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = AnalogDialView;
  [(AnalogDialView *)&v4 layoutSubviews];
  objc_msgSend_insertSubview_atIndex_(self, v3, self->_tickContainer, 0);
}

- (CGSize)intrinsicContentSize
{
  dialDiameter = self->_dialDiameter;
  v3 = dialDiameter;
  result.height = v3;
  result.width = dialDiameter;
  return result;
}

- (void)addTicksWithCount:(unint64_t)a3 moduloGroups:(id)a4 sizes:(id)a5 roundedCorners:(id)a6
{
  v193 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v185 = a5;
  v12 = a6;
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  v191 = 0u;
  v184 = self;
  v13 = self->_tickGroups;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v188, v192, 16);
  if (v15)
  {
    v19 = v15;
    v20 = *v189;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v189 != v20)
        {
          objc_enumerationMutation(v13);
        }

        objc_msgSend_removeFromSuperview(*(*(&v188 + 1) + 8 * i), v16, v17, v18);
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v188, v192, 16);
    }

    while (v19);
  }

  v22 = v184;
  objc_msgSend_removeFromSuperview(v184->_tickContainer, v23, v24, v25);
  v26 = objc_alloc(MEMORY[0x277D75D18]);
  objc_msgSend_bounds(v184, v27, v28, v29);
  v33 = objc_msgSend_initWithFrame_(v26, v30, v31, v32);
  tickContainer = v184->_tickContainer;
  v184->_tickContainer = v33;

  objc_msgSend_addSubview_(v22, v35, v22->_tickContainer, v36);
  objc_storeStrong(&v184->_moduloGroups, a4);
  v37 = objc_opt_new();
  if (objc_msgSend_count(v11, v38, v39, v40))
  {
    v43 = 0;
    do
    {
      v44 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v41, v43, v42);
      v47 = objc_msgSend_objectAtIndexedSubscript_(v11, v45, v43, v46);
      objc_msgSend_setObject_forKeyedSubscript_(v37, v48, v44, v47);

      ++v43;
    }

    while (v43 < objc_msgSend_count(v11, v49, v50, v51));
  }

  v181 = v37;
  objc_storeStrong(&v184->_moduloToGroup, v37);
  dialDiameter = v184->_dialDiameter;
  v183 = objc_opt_new();
  if (objc_msgSend_count(v11, v53, v54, v55))
  {
    v58 = 0;
    v59 = dialDiameter * 0.5;
    v61 = -(dialDiameter * 0.5);
    v182 = v12;
    do
    {
      v62 = objc_msgSend_objectAtIndexedSubscript_(v11, v56, v58, v57);
      v66 = objc_msgSend_unsignedIntegerValue(v62, v63, v64, v65);

      v69 = objc_msgSend_objectAtIndexedSubscript_(v185, v67, v58, v68);
      objc_msgSend_CGSizeValue(v69, v70, v71, v72);
      v74 = v73;
      v76 = v75;

      if (v12)
      {
        v80 = objc_msgSend_objectAtIndexedSubscript_(v12, v77, v58, v79);
        v84 = objc_msgSend_BOOLValue(v80, v81, v82, v83) ^ 1;
      }

      else
      {
        v84 = 1;
      }

      v85 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v77, v78, v79);
      objc_msgSend_setBounds_(v85, v86, v87, v88, 0.0, 0.0, v22->_dialDiameter, v22->_dialDiameter);
      v92 = objc_msgSend_currentDevice(MEMORY[0x277CBBAE8], v89, v90, v91);
      objc_msgSend_screenScale(v92, v93, v94, v95);
      objc_msgSend_setContentsScale_(v85, v96, v97, v98);

      if (a3)
      {
        v102 = 0;
        if (v74 >= v76)
        {
          v103 = v76;
        }

        else
        {
          v103 = v74;
        }

        v104 = v103 * 0.5;
        if (v84)
        {
          v105 = 0.0;
        }

        else
        {
          v105 = v104;
        }

        do
        {
          if (!(v102 % v66))
          {
            if (v58)
            {
              v106 = 0;
              while (1)
              {
                v107 = objc_msgSend_objectAtIndexedSubscript_(v11, v99, v106, v101);
                v111 = v102 % objc_msgSend_unsignedIntegerValue(v107, v108, v109, v110);

                if (!v111)
                {
                  break;
                }

                if (v58 == ++v106)
                {
                  goto LABEL_28;
                }
              }
            }

            else
            {
LABEL_28:
              v60 = 6.28318531 / a3;
              v112 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v99, v100, v101);
              objc_msgSend_setFrame_(v112, v113, v114, v115, 0.0, 0.0, v74, v76);
              objc_msgSend_setAnchorPoint_(v112, v116, v117, v118, 0.5, 0.0);
              objc_msgSend_setCornerRadius_(v112, v119, v120, v121, v105);
              v122 = __sincos_stret(v60 * v102);
              objc_msgSend_setPosition_(v112, v123, v124, v125, v59 + v59 * v122.__sinval, v59 + v61 * v122.__cosval);
              v129 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v126, v127, v128);
              v130 = v129;
              v134 = objc_msgSend_CGColor(v130, v131, v132, v133);
              objc_msgSend_setBackgroundColor_(v112, v135, v134, v136);

              CGAffineTransformMakeRotation(&v187, v60 * v102);
              v186 = v187;
              objc_msgSend_setAffineTransform_(v112, v137, &v186, v138);
              objc_msgSend_addSublayer_(v85, v139, v112, v140);
            }
          }

          ++v102;
        }

        while (v102 != a3);
      }

      objc_msgSend_bounds(v85, v99, v100, v101);
      v194.width = v141;
      v194.height = v142;
      UIGraphicsBeginImageContextWithOptions(v194, 0, 0.0);
      CurrentContext = UIGraphicsGetCurrentContext();
      objc_msgSend_renderInContext_(v85, v144, CurrentContext, v145);
      v146 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      v147 = objc_alloc(MEMORY[0x277D755E8]);
      v150 = objc_msgSend_imageWithRenderingMode_(v146, v148, 2, v149);
      v153 = objc_msgSend_initWithImage_(v147, v151, v150, v152);

      v22 = v184;
      objc_msgSend_bounds(v184, v154, v155, v156);
      objc_msgSend_setFrame_(v153, v157, v158, v159);
      v163 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v160, v161, v162, 1.0, 0.333333343, 0.0313725509, 1.0);
      objc_msgSend_setTintColor_(v153, v164, v163, v165);

      if (qword_27E1C4C08 != -1)
      {
        sub_23BD6598C();
      }

      v166 = qword_27E1C4C00;
      v170 = objc_msgSend_layer(v153, v167, v168, v169);
      objc_msgSend_setActions_(v170, v171, v166, v172);

      objc_msgSend_addObject_(v183, v173, v153, v174);
      objc_msgSend_addSubview_(v184->_tickContainer, v175, v153, v176);

      ++v58;
      v12 = v182;
    }

    while (v58 < objc_msgSend_count(v11, v177, v178, v179));
  }

  tickGroups = v22->_tickGroups;
  v22->_tickGroups = v183;
}

- (void)applyTickColor:(id)a3 toModulo:(unint64_t)a4
{
  moduloToGroup = self->_moduloToGroup;
  v7 = MEMORY[0x277CCABB0];
  v19 = a3;
  v10 = objc_msgSend_numberWithUnsignedInteger_(v7, v8, a4, v9);
  v13 = objc_msgSend_objectForKeyedSubscript_(moduloToGroup, v11, v10, v12);
  v17 = objc_msgSend_unsignedIntegerValue(v13, v14, v15, v16);

  objc_msgSend_applyTickColor_toGroupIndex_(self, v18, v19, v17);
}

- (void)applyTickColor:(id)a3 toGroupIndex:(unint64_t)a4
{
  tickGroups = self->_tickGroups;
  v6 = a3;
  v11 = objc_msgSend_objectAtIndexedSubscript_(tickGroups, v7, a4, v8);
  objc_msgSend_setTintColor_(v11, v9, v6, v10);
}

@end