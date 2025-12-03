@interface CKMessagesComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
+ (id)localizedAppName;
- (CKMessagesComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)currentSwitcherTemplate;
- (id)fullColorImageProviderForUnreadCount:(unint64_t)count family:(int64_t)family template:(id)template;
- (id)imageProviderForUnreadCount:(unint64_t)count family:(int64_t)family template:(id)template;
- (id)lockedTemplate;
- (id)privacyTemplate;
- (id)templateForFamily:(int64_t)family unreadCount:(unint64_t)count locked:(BOOL)locked privacy:(BOOL)privacy;
- (id)textProviderForUnreadCount:(unint64_t)count locked:(BOOL)locked privacy:(BOOL)privacy shortText:(BOOL)text tintColor:(id)color;
- (void)_updateCommunicationPolicies;
- (void)dealloc;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler;
- (void)setDefaultBackgroundForTemplate:(id)template;
- (void)setInitialUnreadCount:(unint64_t)count;
- (void)unreadCountDidChange:(unint64_t)change;
@end

@implementation CKMessagesComplicationDataSource

+ (id)localizedAppName
{
  v2 = MEMORY[0x277CCACA8];
  v3 = MEMORY[0x277CCA8D8];
  v4 = objc_opt_class();
  v10 = objc_msgSend_bundleForClass_(v3, v5, v6, v7, v8, v9, v4);
  v16 = objc_msgSend_localizedStringForKey_value_table_(v10, v11, v12, v13, v14, v15, @"MESSAGES_TITLE", &stru_284E7EA48, @"MessagesComplication");
  v22 = objc_msgSend_localizedStringWithFormat_(v2, v17, v18, v19, v20, v21, v16);

  return v22;
}

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  if (family < 8 && ((0xDDu >> family) & 1) != 0)
  {
    return 1;
  }

  return *MEMORY[0x277CBB668] == family || family == 12 || (family - 8) < 3;
}

- (CKMessagesComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  v21.receiver = self;
  v21.super_class = CKMessagesComplicationDataSource;
  v9 = [(CLKCComplicationDataSource *)&v21 initWithComplication:complication family:family forDevice:deviceCopy];
  if (v9)
  {
    v10 = os_log_create("com.apple.Messages", "CKMessagesComplicationDataSource");
    log = v9->_log;
    v9->_log = v10;

    v12 = [CKMessagesComplicationSpecs alloc];
    v18 = objc_msgSend_initWithDevice_(v12, v13, v14, v15, v16, v17, deviceCopy);
    specs = v9->_specs;
    v9->_specs = v18;
  }

  return v9;
}

- (void)_updateCommunicationPolicies
{
  v3 = objc_initWeak(&location, self);
  v9 = objc_msgSend_communicationPolicyMonitor(self, v4, v5, v6, v7, v8);
  v27 = 0;
  v15 = objc_msgSend_requestPoliciesByBundleIdentifierWithError_(v9, v10, v11, v12, v13, v14, &v27);
  v16 = v27;

  if (v16)
  {
    v17 = objc_loadWeakRetained(&location);
    v23 = objc_msgSend_log(v17, v18, v19, v20, v21, v22);

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_23BD20DE4();
    }
  }

  else
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_23BD1E250;
    v24[3] = &unk_278B931C8;
    objc_copyWeak(&v26, &location);
    v25 = v15;
    dispatch_async(MEMORY[0x277D85CD0], v24);

    objc_destroyWeak(&v26);
  }

  objc_destroyWeak(&location);
}

- (void)dealloc
{
  v7 = objc_msgSend_log(self, a2, v2, v3, v4, v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD20E58();
  }

  v8.receiver = self;
  v8.super_class = CKMessagesComplicationDataSource;
  [(CKMessagesComplicationDataSource *)&v8 dealloc];
}

- (void)unreadCountDidChange:(unint64_t)change
{
  v51 = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_log(self, a2, v3, v4, v5, v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v47 = 134349312;
    v48 = objc_msgSend_unreadCount(self, v10, v11, v12, v13, v14);
    v49 = 2050;
    changeCopy = change;
    _os_log_impl(&dword_23BD1C000, v9, OS_LOG_TYPE_DEFAULT, "unread count did change from: %{public}lu to: %{public}lu", &v47, 0x16u);
  }

  if (objc_msgSend_unreadCount(self, v15, v16, v17, v18, v19) != change)
  {
    objc_msgSend_setUnreadCount_(self, v20, v21, v22, v23, v24, change);
    v30 = objc_msgSend_delegate(self, v25, v26, v27, v28, v29);
    objc_msgSend_invalidateEntries(v30, v31, v32, v33, v34, v35);

    v41 = objc_msgSend_delegate(self, v36, v37, v38, v39, v40);
    objc_msgSend_invalidateSwitcherTemplate(v41, v42, v43, v44, v45, v46);
  }
}

- (void)setInitialUnreadCount:(unint64_t)count
{
  v9 = objc_msgSend_log(self, a2, v3, v4, v5, v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD20EC8();
  }

  objc_msgSend_setUnreadCount_(self, v10, v11, v12, v13, v14, count);
}

- (id)privacyTemplate
{
  v7 = objc_msgSend_log(self, a2, v2, v3, v4, v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD20F38();
  }

  v13 = objc_msgSend_unreadCount(self, v8, v9, v10, v11, v12);
  if (v13)
  {
    v19 = objc_msgSend_family(self, v14, v15, v16, v17, v18);
    v13 = objc_msgSend_templateForFamily_unreadCount_locked_privacy_(self, v20, v21, v22, v23, v24, v19, 0, 0, 1);
  }

  return v13;
}

- (id)lockedTemplate
{
  v7 = objc_msgSend_log(self, a2, v2, v3, v4, v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD20F74();
  }

  v13 = objc_msgSend_family(self, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_templateForFamily_unreadCount_locked_privacy_(self, v14, v15, v16, v17, v18, v13, 0, 1, 0);

  return v19;
}

- (id)currentSwitcherTemplate
{
  v8 = objc_msgSend_family(self, a2, v2, v3, v4, v5);

  return objc_msgSend_templateForFamily_unreadCount_locked_privacy_(self, v7, v9, v10, v11, v12, v8, 0, 1, 0);
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    v10 = objc_msgSend_log(self, v5, v6, v7, v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD20FB0();
    }

    v16 = objc_msgSend_family(self, v11, v12, v13, v14, v15);
    v22 = objc_msgSend_unreadCount(self, v17, v18, v19, v20, v21);
    v28 = objc_msgSend_templateForFamily_unreadCount_locked_privacy_(self, v23, v24, v25, v26, v27, v16, v22, 0, 0);
    v29 = MEMORY[0x277CBBAC8];
    v35 = objc_msgSend_date(MEMORY[0x277CBEAA8], v30, v31, v32, v33, v34);
    v41 = objc_msgSend_entryWithDate_complicationTemplate_(v29, v36, v37, v38, v39, v40, v35, v28);

    handlerCopy[2](handlerCopy, v41);
  }
}

- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler
{
  handlerCopy = handler;
  v12 = objc_msgSend_log(self, v7, v8, v9, v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_23BD1C000, v12, OS_LOG_TYPE_DEFAULT, "complication tapped", v19, 2u);
  }

  v18 = objc_msgSend_log(self, v13, v14, v15, v16, v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD20FEC();
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (id)templateForFamily:(int64_t)family unreadCount:(unint64_t)count locked:(BOOL)locked privacy:(BOOL)privacy
{
  privacyCopy = privacy;
  v334 = *MEMORY[0x277D85DE8];
  v15 = objc_msgSend_communicationPolicies(self, a2, v6, v7, v8, v9);

  if (v15)
  {
    v21 = objc_msgSend_communicationPolicies(self, v16, v17, v18, v19, v20);
    v27 = objc_msgSend_objectForKeyedSubscript_(v21, v22, v23, v24, v25, v26, @"com.apple.MobileSMS");
    v33 = objc_msgSend_intValue(v27, v28, v29, v30, v31, v32) == 2;
  }

  else
  {
    v33 = 0;
  }

  if (locked || privacyCopy || v33)
  {
    countCopy = 0;
  }

  else
  {
    countCopy = count;
  }

  v35 = objc_msgSend_log(self, v16, v17, v18, v19, v20);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD21064(family, countCopy, v35, v36, v37, v38, v39);
  }

  v40 = 0;
  if (family <= 6)
  {
    if (family > 2)
    {
      if (family != 3)
      {
        if (family != 4)
        {
          if (family != 6)
          {
            goto LABEL_60;
          }

          v40 = objc_alloc_init(MEMORY[0x277CBBA90]);
          v46 = objc_msgSend_log(self, v41, v42, v43, v44, v45);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23BD1C000, v46, OS_LOG_TYPE_DEFAULT, "creating UtilitarianSmallFlat template", buf, 2u);
          }

          v52 = objc_msgSend_imageProviderForUnreadCount_family_template_(self, v47, v48, v49, v50, v51, countCopy, 6, v40);
          objc_msgSend_setImageProvider_(v40, v53, v54, v55, v56, v57, v52);

          v63 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v58, v59, v60, v61, v62, &stru_284E7EA48);
          objc_msgSend_setTextProvider_(v40, v64, v65, v66, v67, v68, v63);
          goto LABEL_55;
        }

        v40 = objc_alloc_init(MEMORY[0x277CBB790]);
        v221 = objc_msgSend_log(self, v216, v217, v218, v219, v220);
        if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23BD1C000, v221, OS_LOG_TYPE_DEFAULT, "creating CircularSmallSimpleImage template", buf, 2u);
        }

        objc_msgSend_imageProviderForUnreadCount_family_template_(self, v222, v223, v224, v225, v226, countCopy, 4, v40);
        goto LABEL_53;
      }

      v40 = objc_alloc_init(MEMORY[0x277CBBA80]);
      v152 = objc_msgSend_log(self, v147, v148, v149, v150, v151);
      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23BD1C000, v152, OS_LOG_TYPE_DEFAULT, "creating UtilitarianLargeFlat template", buf, 2u);
      }

      v158 = objc_msgSend_imageProviderForUnreadCount_family_template_(self, v153, v154, v155, v156, v157, 0, 3, v40);
      objc_msgSend_setImageProvider_(v40, v159, v160, v161, v162, v163, v158);

      if (locked || privacyCopy || v33)
      {
        if (privacyCopy || !locked || v33)
        {
          if (!privacyCopy && !v33)
          {
            goto LABEL_70;
          }

          v169 = MEMORY[0x277CCACA8];
          v170 = MEMORY[0x277CCA8D8];
          v171 = objc_opt_class();
          v177 = objc_msgSend_bundleForClass_(v170, v172, v173, v174, v175, v176, v171);
          objc_msgSend_localizedStringForKey_value_table_(v177, v178, v179, v180, v181, v182, @"MESSAGES_TITLE", &stru_284E7EA48, @"MessagesComplication");
        }

        else
        {
          v169 = MEMORY[0x277CCACA8];
          v291 = MEMORY[0x277CCA8D8];
          v292 = objc_opt_class();
          v177 = objc_msgSend_bundleForClass_(v291, v293, v294, v295, v296, v297, v292);
          objc_msgSend_localizedStringForKey_value_table_(v177, v298, v299, v300, v301, v302, @"UTILITY_UNLOCK_TO_VIEW", &stru_284E7EA48, @"MessagesComplication");
        }
        v285 = ;
        objc_msgSend_localizedStringWithFormat_(v169, v303, v304, v305, v306, v307, v285);
      }

      else
      {
        v272 = MEMORY[0x277CCACA8];
        v273 = MEMORY[0x277CCA8D8];
        v274 = objc_opt_class();
        v177 = objc_msgSend_bundleForClass_(v273, v275, v276, v277, v278, v279, v274);
        v285 = objc_msgSend_localizedStringForKey_value_table_(v177, v280, v281, v282, v283, v284, @"NEW_MESSAGES_FORMAT", &stru_284E7EA48, @"MessagesComplication");
        objc_msgSend_localizedStringWithFormat_(v272, v286, v287, v288, v289, v290, v285, count);
      }
      v308 = ;

      v314 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v309, v310, v311, v312, v313, v308);
      objc_msgSend_setTextProvider_(v40, v315, v316, v317, v318, v319, v314);

LABEL_70:
      v63 = objc_msgSend_log(self, v164, v165, v166, v167, v168);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v325 = objc_msgSend_textProvider(v40, v320, v321, v322, v323, v324);
        v331 = objc_msgSend_text(v325, v326, v327, v328, v329, v330);
        *buf = 138543362;
        v333 = v331;
        _os_log_impl(&dword_23BD1C000, v63, OS_LOG_TYPE_DEFAULT, "added text: %{public}@", buf, 0xCu);
      }

      goto LABEL_55;
    }

    if (family)
    {
      if (family != 2)
      {
        goto LABEL_60;
      }

      v40 = objc_alloc_init(MEMORY[0x277CBBAC0]);
      v85 = objc_msgSend_log(self, v80, v81, v82, v83, v84);
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23BD1C000, v85, OS_LOG_TYPE_DEFAULT, "creating UtilitarianSmallSquare template", buf, 2u);
      }

      objc_msgSend_imageProviderForUnreadCount_family_template_(self, v86, v87, v88, v89, v90, countCopy, 2, v40);
    }

    else
    {
      v40 = objc_alloc_init(MEMORY[0x277CBBA50]);
      v130 = objc_msgSend_log(self, v125, v126, v127, v128, v129);
      if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23BD1C000, v130, OS_LOG_TYPE_DEFAULT, "creating ModularSmallSimpleImage template", buf, 2u);
      }

      objc_msgSend_imageProviderForUnreadCount_family_template_(self, v131, v132, v133, v134, v135, countCopy, 0, v40);
    }

    v227 = LABEL_53:;
LABEL_54:
    v63 = v227;
    objc_msgSend_setImageProvider_(v40, v228, v229, v230, v231, v232, v227);
LABEL_55:

    goto LABEL_60;
  }

  if (family <= 8)
  {
    if (family == 7)
    {
      v40 = objc_alloc_init(MEMORY[0x277CBB7F0]);
      v141 = objc_msgSend_log(self, v136, v137, v138, v139, v140);
      if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23BD1C000, v141, OS_LOG_TYPE_DEFAULT, "creating ExtraLargeSimpleImage template", buf, 2u);
      }

      objc_msgSend_imageProviderForUnreadCount_family_template_(self, v142, v143, v144, v145, v146, countCopy, 7, v40);
      goto LABEL_53;
    }

    if (!countCopy || locked)
    {
      v40 = objc_alloc_init(MEMORY[0x277CBB8B8]);
      v261 = objc_msgSend_log(self, v256, v257, v258, v259, v260);
      if (os_log_type_enabled(v261, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23BD1C000, v261, OS_LOG_TYPE_DEFAULT, "creating GraphicCorner template without unread count", buf, 2u);
      }

      objc_msgSend_setDefaultBackgroundForTemplate_(self, v262, v263, v264, v265, v266, v40);
      v227 = objc_msgSend_fullColorImageProviderForUnreadCount_family_template_(self, v267, v268, v269, v270, v271, countCopy, 8, v40);
      goto LABEL_54;
    }

    v40 = objc_alloc_init(MEMORY[0x277CBB908]);
    v96 = objc_msgSend_log(self, v91, v92, v93, v94, v95);
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v333 = countCopy;
      _os_log_impl(&dword_23BD1C000, v96, OS_LOG_TYPE_DEFAULT, "creating GraphicCorner template with unread count %{public}lu", buf, 0xCu);
    }

    v102 = objc_msgSend_fullColorImageProviderForUnreadCount_family_template_(self, v97, v98, v99, v100, v101, 0, 8, v40);
    objc_msgSend_setImageProvider_(v40, v103, v104, v105, v106, v107, v102);

    v113 = objc_msgSend_bubbleTintColor(CKMessagesComplicationSpecs, v108, v109, v110, v111, v112);
    v119 = objc_msgSend_textProviderForUnreadCount_locked_privacy_shortText_tintColor_(self, v114, v115, v116, v117, v118, countCopy, 0, privacyCopy, 1, v113);
    objc_msgSend_setTextProvider_(v40, v120, v121, v122, v123, v124, v119);
  }

  else if (family == 9)
  {
    v40 = objc_alloc_init(MEMORY[0x277CBB810]);
    v183 = objc_alloc_init(MEMORY[0x277CBB850]);
    v189 = objc_msgSend_log(self, v184, v185, v186, v187, v188);
    if (os_log_type_enabled(v189, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BD1C000, v189, OS_LOG_TYPE_DEFAULT, "creating GraphicBezel template", buf, 2u);
    }

    v195 = objc_msgSend_fullColorImageProviderForUnreadCount_family_template_(self, v190, v191, v192, v193, v194, countCopy, 10, 0);
    objc_msgSend_setImageProvider_(v183, v196, v197, v198, v199, v200, v195);

    objc_msgSend_setDefaultBackgroundForTemplate_(self, v201, v202, v203, v204, v205, v183);
    objc_msgSend_setCircularTemplate_(v40, v206, v207, v208, v209, v210, v183);
    objc_msgSend_setTextProvider_(v40, v211, v212, v213, v214, v215, 0);
  }

  else
  {
    if (family == 12)
    {
      v40 = objc_alloc_init(MEMORY[0x277CBB938]);
      v238 = objc_msgSend_log(self, v233, v234, v235, v236, v237);
      if (os_log_type_enabled(v238, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23BD1C000, v238, OS_LOG_TYPE_DEFAULT, "creating GraphicExtraLarge template", buf, 2u);
      }

      objc_msgSend_fullColorImageProviderForUnreadCount_family_template_(self, v239, v240, v241, v242, v243, countCopy, 12, 0);
    }

    else
    {
      if (family != 10)
      {
        goto LABEL_60;
      }

      v40 = objc_alloc_init(MEMORY[0x277CBB850]);
      v74 = objc_msgSend_log(self, v69, v70, v71, v72, v73);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23BD1C000, v74, OS_LOG_TYPE_DEFAULT, "creating GraphicCircular template", buf, 2u);
      }

      objc_msgSend_fullColorImageProviderForUnreadCount_family_template_(self, v75, v76, v77, v78, v79, countCopy, 10, 0);
    }
    v244 = ;
    objc_msgSend_setImageProvider_(v40, v245, v246, v247, v248, v249, v244);

    objc_msgSend_setDefaultBackgroundForTemplate_(self, v250, v251, v252, v253, v254, v40);
  }

LABEL_60:

  return v40;
}

- (id)imageProviderForUnreadCount:(unint64_t)count family:(int64_t)family template:(id)template
{
  templateCopy = template;
  v14 = objc_msgSend_sharedInstance(CKMessagesComplicationImageProvider, v9, v10, v11, v12, v13);
  v20 = objc_msgSend_specs(self, v15, v16, v17, v18, v19);
  v26 = objc_msgSend_imageForUnreadCount_family_complicationTemplate_specs_(v14, v21, v22, v23, v24, v25, count, family, templateCopy, v20);

  v33 = objc_msgSend_imageProviderWithOnePieceImage_(MEMORY[0x277CBBB40], v27, v28, v29, v30, v31, v26);
  if (family == 6)
  {
    objc_msgSend_systemWhiteColor(MEMORY[0x277D75348], v32, v34, v35, v36, v37);
  }

  else
  {
    objc_msgSend_bubbleTintColor(CKMessagesComplicationSpecs, v32, v34, v35, v36, v37);
  }
  v38 = ;
  objc_msgSend_setTintColor_(v33, v39, v40, v41, v42, v43, v38);

  return v33;
}

- (id)fullColorImageProviderForUnreadCount:(unint64_t)count family:(int64_t)family template:(id)template
{
  templateCopy = template;
  v14 = objc_msgSend_sharedInstance(CKMessagesComplicationImageProvider, v9, v10, v11, v12, v13);
  v20 = objc_msgSend_specs(self, v15, v16, v17, v18, v19);
  v26 = objc_msgSend_imageForUnreadCount_family_complicationTemplate_specs_(v14, v21, v22, v23, v24, v25, count, family, templateCopy, v20);

  v32 = objc_msgSend_providerWithFullColorImage_monochromeFilterType_(MEMORY[0x277CBBB10], v27, v28, v29, v30, v31, v26, 1);

  return v32;
}

- (id)textProviderForUnreadCount:(unint64_t)count locked:(BOOL)locked privacy:(BOOL)privacy shortText:(BOOL)text tintColor:(id)color
{
  textCopy = text;
  privacyCopy = privacy;
  lockedCopy = locked;
  colorCopy = color;
  if (lockedCopy || privacyCopy)
  {
    if (!lockedCopy || privacyCopy)
    {
      if (!privacyCopy)
      {
        goto LABEL_13;
      }

      v45 = MEMORY[0x277CCACA8];
      v59 = MEMORY[0x277CCA8D8];
      v60 = objc_opt_class();
      v53 = objc_msgSend_bundleForClass_(v59, v61, v62, v63, v64, v65, v60);
      objc_msgSend_localizedStringForKey_value_table_(v53, v66, v67, v68, v69, v70, @"MESSAGES_TITLE", &stru_284E7EA48, @"MessagesComplication");
    }

    else
    {
      v45 = MEMORY[0x277CCACA8];
      v46 = MEMORY[0x277CCA8D8];
      v47 = objc_opt_class();
      v53 = objc_msgSend_bundleForClass_(v46, v48, v49, v50, v51, v52, v47);
      objc_msgSend_localizedStringForKey_value_table_(v53, v54, v55, v56, v57, v58, @"UTILITY_UNLOCK_TO_VIEW", &stru_284E7EA48, @"MessagesComplication");
    }
    v71 = ;
    v32 = objc_msgSend_localizedStringWithFormat_(v45, v72, v73, v74, v75, v76, v71);

    v44 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v77, v78, v79, v80, v81, v32);
LABEL_12:

    goto LABEL_14;
  }

  if (textCopy)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = MEMORY[0x277CCA8D8];
    v14 = objc_opt_class();
    v20 = objc_msgSend_bundleForClass_(v13, v15, v16, v17, v18, v19, v14);
    v26 = objc_msgSend_localizedStringForKey_value_table_(v20, v21, v22, v23, v24, v25, @"UNREAD_MESSAGES_FORMAT", &stru_284E7EA48, @"MessagesComplication");
    v32 = objc_msgSend_localizedStringWithFormat_(v12, v27, v28, v29, v30, v31, v26, count);

    v38 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v33, v34, v35, v36, v37, v32);
    v44 = v38;
    if (colorCopy)
    {
      objc_msgSend_setTintColor_(v38, v39, v40, v41, v42, v43, colorCopy);
    }

    goto LABEL_12;
  }

LABEL_13:
  v44 = 0;
LABEL_14:

  return v44;
}

- (void)setDefaultBackgroundForTemplate:(id)template
{
  v23[1] = *MEMORY[0x277D85DE8];
  templateCopy = template;
  v10 = objc_msgSend_log(self, v5, v6, v7, v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD2111C();
  }

  v22 = *MEMORY[0x277CBB6E8];
  v23[0] = MEMORY[0x277CBEC38];
  v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v12, v13, v14, v15, v23, &v22, 1);
  objc_msgSend_setMetadata_(templateCopy, v17, v18, v19, v20, v21, v16);
}

@end