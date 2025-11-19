@interface NTKFoghornFaceBundle
+ (id)_faceWithBezelStyle:(int64_t)a3 layoutStyle:(unint64_t)a4 nightMode:(unint64_t)a5 complications:(id)a6 forDevice:(id)a7;
+ (id)_galleryFacesForDevice:(id)a3;
+ (id)defaultFaceForDevice:(id)a3;
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryEditOptionsForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryPigmentsForDevice:(id)a3;
- (id)galleryRowPrioritiesForDevice:(id)a3;
- (id)heroFacesForDevice:(id)a3;
@end

@implementation NTKFoghornFaceBundle

+ (id)defaultFaceForDevice:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_identifier(a1, v5, v6, v7);
  v12 = objc_msgSend_analyticsIdentifier(a1, v9, v10, v11);
  v14 = objc_msgSend_bundledFaceWithIdentifier_analyticsIdentifier_forDevice_initCustomization_(NTKFoghornFace, v13, v8, v12, v4, 0);

  return v14;
}

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v7 = objc_msgSend_defaultFaceForDevice_(v4, v5, v3, v6);

  return v7;
}

- (id)heroFacesForDevice:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_msgSend_supportsPDRCapability_(v4, v5, 3669496134, v6))
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v10 = objc_msgSend_defaultFaceForDevice_(self, v7, v4, v8);
    v11 = objc_alloc(MEMORY[0x277D2C018]);
    v13 = objc_msgSend_initWithFace_priority_(v11, v12, v10, 600);
    v16[0] = v13;
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v16, 1);
  }

  return v9;
}

+ (id)_faceWithBezelStyle:(int64_t)a3 layoutStyle:(unint64_t)a4 nightMode:(unint64_t)a5 complications:(id)a6 forDevice:(id)a7
{
  v12 = a6;
  v13 = a7;
  v16 = objc_msgSend_defaultFaceForDevice_(a1, v14, v13, v15);
  v18 = objc_msgSend_optionWithBezelStyle_forDevice_(NTKFoghornFaceBezelStyleEditOption, v17, a3, v13);
  objc_msgSend_selectOption_forCustomEditMode_slot_(v16, v19, v18, 12, 0);
  v21 = objc_msgSend_optionWithLayoutStyle_forDevice_(NTKFoghornFaceLayoutStyleEditOption, v20, a4, v13);
  objc_msgSend_selectOption_forCustomEditMode_slot_(v16, v22, v21, 15, 0);
  v24 = objc_msgSend_optionWithFoghornNightMode_forDevice_(NTKFoghornNightModeEditOption, v23, a5, v13);
  objc_msgSend_selectOption_forCustomEditMode_slot_(v16, v25, v24, 18, 0);
  v28 = objc_msgSend_pigmentNamed_(MEMORY[0x277D2C0B0], v26, *MEMORY[0x277D2C6C8], v27);
  objc_msgSend_selectOption_forCustomEditMode_slot_(v16, v29, v28, 10, 0);
  if (v12)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_23BE71AB4;
    v34[3] = &unk_278B9CA40;
    v35 = v16;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v12, v31, v34, v32);
  }

  else
  {
    objc_msgSend__applyInitialDefaultComplicationsForBezelStyle_toFace_forDevice_(NTKFoghornFace, v30, a3, v16, v13);
  }

  return v16;
}

+ (id)_galleryFacesForDevice:(id)a3
{
  v363[7] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_msgSend_supportsPDRCapability_(v4, v5, 3669496134, v6))
  {
    v298 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v7, 12, v9);
    v10 = objc_alloc(MEMORY[0x277CBBBD0]);
    v278 = objc_msgSend_initWithExtensionBundleIdentifier_containerBundleIdentifier_kind_intent_(v10, v11, @"com.apple.NanoWorldClock.WorldClockWidgetExtension", @"com.apple.NanoWorldClock", @"SunriseSunsetWidget", 0);
    v12 = objc_alloc(MEMORY[0x277CBBBD0]);
    v277 = objc_msgSend_initWithExtensionBundleIdentifier_containerBundleIdentifier_kind_intent_(v12, v13, @"com.apple.HeartRate.HeartRateWidgetExtension", @"com.apple.HeartRate", @"HeartRateWidgetExtension", 0);
    v14 = objc_alloc(MEMORY[0x277CBBBD0]);
    v276 = objc_msgSend_initWithExtensionBundleIdentifier_containerBundleIdentifier_kind_intent_(v14, v15, @"com.apple.weather.watchapp.widgets", @"com.apple.weather.watchapp", @"com.apple.weather.widget.humidity", 0);
    v16 = objc_alloc(MEMORY[0x277CBBBD0]);
    v275 = objc_msgSend_initWithExtensionBundleIdentifier_containerBundleIdentifier_kind_intent_(v16, v17, @"com.apple.weather.watchapp.widgets", @"com.apple.weather.watchapp", @"com.apple.weather.widget.airquality", 0);
    v18 = objc_alloc(MEMORY[0x277CBBBD0]);
    v274 = objc_msgSend_initWithExtensionBundleIdentifier_containerBundleIdentifier_kind_intent_(v18, v19, @"com.apple.boardwalk.watchapp.widgets", @"com.apple.boardwalk.watchapp", @"Swell", 0);
    v20 = objc_alloc(MEMORY[0x277CBBBD0]);
    v273 = objc_msgSend_initWithExtensionBundleIdentifier_containerBundleIdentifier_kind_intent_(v20, v21, @"com.apple.boardwalk.watchapp.widgets", @"com.apple.boardwalk.watchapp", @"Tides", 0);
    v22 = objc_alloc(MEMORY[0x277CBBBD0]);
    v272 = objc_msgSend_initWithExtensionBundleIdentifier_containerBundleIdentifier_kind_intent_(v22, v23, @"com.apple.NanoHealthBalance.NanoHealthBalanceWidgetExtension", @"com.apple.NanoHealthBalance", @"BalanceOneDayWidgetKind", 0);
    v24 = objc_alloc(MEMORY[0x277CBBBD0]);
    v271 = objc_msgSend_initWithExtensionBundleIdentifier_containerBundleIdentifier_kind_intent_(v24, v25, @"com.apple.weather.watchapp.widgets", @"com.apple.weather.watchapp", @"com.apple.weather.widget.rain", 0);
    v26 = objc_alloc(MEMORY[0x277CBBBD0]);
    v270 = objc_msgSend_initWithExtensionBundleIdentifier_containerBundleIdentifier_kind_intent_(v26, v27, @"com.apple.Mind.MindComplication", @"com.apple.Mind", @"MentalHealthLauncherComplication", 0);
    v28 = objc_alloc(MEMORY[0x277CBBBD0]);
    v269 = objc_msgSend_initWithExtensionBundleIdentifier_containerBundleIdentifier_kind_intent_(v28, v29, @"com.apple.nanomusicrecognition.NanoMusicRecognitionWidget", @"com.apple.nanomusicrecognition", @"com.apple.nanomusicrecognition.NanoMusicRecognitionWidget", 0);
    v30 = objc_alloc(MEMORY[0x277CBBBD0]);
    v268 = objc_msgSend_initWithExtensionBundleIdentifier_containerBundleIdentifier_kind_intent_(v30, v31, @"com.apple.NanoAlarm.NanoAlarmWidgetExtension", @"com.apple.NanoAlarm", @"NanoAlarmComplication", 0);
    v32 = objc_alloc(MEMORY[0x277CBBBD0]);
    v267 = objc_msgSend_initWithExtensionBundleIdentifier_containerBundleIdentifier_kind_intent_(v32, v33, @"com.apple.NanoOxygenSaturation.watchkitapp.NanoOxygenSaturationWidgetExtension", @"com.apple.NanoOxygenSaturation.watchkitapp", @"NanoOxygenSaturationWidgetExtension", 0);
    v34 = objc_alloc(MEMORY[0x277CBBBD0]);
    v266 = objc_msgSend_initWithExtensionBundleIdentifier_containerBundleIdentifier_kind_intent_(v34, v35, @"com.apple.NanoTranslate.Widget", @"com.apple.NanoTranslate", @"NanoTranslateStaticWidget", 0);
    v36 = objc_alloc(MEMORY[0x277CD3A70]);
    v38 = objc_msgSend_initWithAppBundleIdentifier_appIntentIdentifier_serializedParameters_(v36, v37, @"com.apple.ActivityMonitorApp.ActivityComplication", @"WorkoutDistanceConfigurationIntent", &unk_284EA1770);
    v39 = objc_alloc(MEMORY[0x277CBBBD0]);
    v251 = v38;
    v265 = objc_msgSend_initWithExtensionBundleIdentifier_containerBundleIdentifier_kind_intent_(v39, v40, @"com.apple.ActivityMonitorApp.ActivityComplication", @"com.apple.ActivityMonitorApp", @"WorkoutDistanceComplication", v38);
    v43 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v41, 10, v42);
    v291 = _complicationOrDie(v43);

    v46 = objc_msgSend_complicationWithDescriptor_(MEMORY[0x277D2C140], v44, v278, v45);
    v293 = _complicationOrDie(v46);

    v49 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v47, 7, v48);
    v295 = _complicationOrDie(v49);

    v52 = objc_msgSend_complicationWithDescriptor_(MEMORY[0x277D2C140], v50, v277, v51);
    v292 = _complicationOrDie(v52);

    v55 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v53, 18, v54);
    v285 = _complicationOrDie(v55);

    if (objc_msgSend_supportsUrsa(v4, v56, v57, v58))
    {
      v60 = objc_msgSend_bundledComplicationWithBundleIdentifier_appBundleIdentifier_complicationDescriptor_(MEMORY[0x277D2BF68], v59, *MEMORY[0x277D2BEA8], *MEMORY[0x277D2BE70], 0);
      v296 = _complicationOrDie(v60);
    }

    else
    {
      v296 = _complicationOrDie(0);
    }

    v83 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v61, 17, v62);
    v284 = _complicationOrDie(v83);

    if (objc_msgSend_supportsUrsa(v4, v84, v85, v86))
    {
      v88 = objc_msgSend_bundledComplicationWithBundleIdentifier_appBundleIdentifier_complicationDescriptor_(MEMORY[0x277D2BF68], v87, *MEMORY[0x277D2BE88], *MEMORY[0x277D2BE70], 0);
      v283 = _complicationOrDie(v88);
    }

    else
    {
      v283 = _complicationOrDie(0);
    }

    if (objc_msgSend_supportsUrsa(v4, v89, v90, v91))
    {
      v93 = objc_msgSend_bundledComplicationWithBundleIdentifier_appBundleIdentifier_complicationDescriptor_(MEMORY[0x277D2BF68], v92, *MEMORY[0x277D2BE80], *MEMORY[0x277D2BE70], 0);
      v290 = _complicationOrDie(v93);
    }

    else
    {
      v290 = _complicationOrDie(0);
    }

    if (objc_msgSend_supportsUrsa(v4, v94, v95, v96))
    {
      v98 = objc_msgSend_bundledComplicationWithBundleIdentifier_appBundleIdentifier_complicationDescriptor_(MEMORY[0x277D2BF68], v97, *MEMORY[0x277D2BE78], *MEMORY[0x277D2BE70], 0);
      v264 = _complicationOrDie(v98);
    }

    else
    {
      v264 = _complicationOrDie(0);
    }

    v101 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v99, 43, v100);
    v294 = _complicationOrDie(v101);

    v104 = objc_msgSend_complicationWithDescriptor_(MEMORY[0x277D2C140], v102, v276, v103);
    v282 = _complicationOrDie(v104);

    v107 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v105, 44, v106);
    v289 = _complicationOrDie(v107);

    v110 = objc_msgSend_complicationWithDescriptor_(MEMORY[0x277D2C140], v108, v275, v109);
    v280 = _complicationOrDie(v110);

    v113 = objc_msgSend_complicationWithDescriptor_(MEMORY[0x277D2C140], v111, v274, v112);
    v281 = _complicationOrDie(v113);

    v116 = objc_msgSend_complicationWithDescriptor_(MEMORY[0x277D2C140], v114, v273, v115);
    v262 = _complicationOrDie(v116);

    if (objc_msgSend_supportsUrsa(v4, v117, v118, v119))
    {
      v121 = objc_msgSend_bundledComplicationWithBundleIdentifier_appBundleIdentifier_complicationDescriptor_(MEMORY[0x277D2BF68], v120, @"com.apple.NanoCompass.complications.altitude", *MEMORY[0x277D2BE70], 0);
      v288 = _complicationOrDie(v121);
    }

    else
    {
      v288 = _complicationOrDie(0);
    }

    v124 = objc_msgSend_complicationWithDescriptor_(MEMORY[0x277D2C140], v122, v272, v123);
    v263 = _complicationOrDie(v124);

    v127 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v125, 1, v126);
    v279 = _complicationOrDie(v127);

    v129 = objc_msgSend_bundledComplicationWithBundleIdentifier_appBundleIdentifier_complicationDescriptor_(MEMORY[0x277D2BF68], v128, @"com.apple.Depth.depth", @"com.apple.Depth", 0);
    v287 = _complicationOrDie(v129);

    v132 = objc_msgSend_complicationWithDescriptor_(MEMORY[0x277D2C140], v130, v271, v131);
    v261 = _complicationOrDie(v132);

    v135 = objc_msgSend_complicationWithDescriptor_(MEMORY[0x277D2C140], v133, v270, v134);
    v259 = _complicationOrDie(v135);

    v138 = objc_msgSend_complicationWithDescriptor_(MEMORY[0x277D2C140], v136, v269, v137);
    v257 = _complicationOrDie(v138);

    v141 = objc_msgSend_complicationWithDescriptor_(MEMORY[0x277D2C140], v139, v268, v140);
    v256 = _complicationOrDie(v141);

    v144 = objc_msgSend_complicationWithDescriptor_(MEMORY[0x277D2C140], v142, v267, v143);
    v255 = _complicationOrDie(v144);

    v146 = objc_msgSend_bundledComplicationWithBundleIdentifier_appBundleIdentifier_complicationDescriptor_(MEMORY[0x277D2BF68], v145, @"com.apple.NoiseComplications", @"com.apple.Noise", 0);
    v254 = _complicationOrDie(v146);

    v149 = objc_msgSend_complicationWithDescriptor_(MEMORY[0x277D2C140], v147, v266, v148);
    v253 = _complicationOrDie(v149);

    v152 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v150, 14, v151);
    v252 = _complicationOrDie(v152);

    v154 = objc_msgSend_bundledComplicationWithBundleIdentifier_appBundleIdentifier_complicationDescriptor_(MEMORY[0x277D2BF68], v153, @"com.apple.Depth.temperature", @"com.apple.Depth", 0);
    v286 = _complicationOrDie(v154);

    v157 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v155, 46, v156);
    v260 = _complicationOrDie(v157);

    v160 = objc_msgSend_complicationWithDescriptor_(MEMORY[0x277D2C140], v158, v265, v159);
    v258 = _complicationOrDie(v160);

    v163 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v161, 12, v162);
    v164 = *MEMORY[0x277D2BF00];
    v357[0] = *MEMORY[0x277D2BF08];
    v297 = v357[0];
    v357[1] = v164;
    v363[0] = v291;
    v363[1] = v293;
    v166 = *MEMORY[0x277D2BEF0];
    v358 = *MEMORY[0x277D2BF10];
    v165 = v358;
    v359 = v166;
    v363[2] = v295;
    v363[3] = v292;
    v168 = *MEMORY[0x277D2BED8];
    v360 = *MEMORY[0x277D2BEE0];
    v167 = v360;
    v361 = v168;
    v363[4] = v285;
    v363[5] = v296;
    v362 = *MEMORY[0x277D2BEE8];
    v169 = v362;
    v363[6] = v284;
    v171 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v170, v363, v357, 7);
    objc_msgSend_addObject_(v163, v172, v171, v173);

    v355[0] = v297;
    v355[1] = v164;
    v356[0] = v291;
    v356[1] = v283;
    v355[2] = v165;
    v355[3] = v166;
    v356[2] = v296;
    v356[3] = v264;
    v355[4] = v167;
    v355[5] = v168;
    v356[4] = v295;
    v356[5] = v293;
    v355[6] = v169;
    v356[6] = v294;
    v175 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v174, v356, v355, 7);
    objc_msgSend_addObject_(v163, v176, v175, v177);

    v353[0] = v297;
    v353[1] = v164;
    v354[0] = v281;
    v354[1] = v282;
    v353[2] = v165;
    v353[3] = v166;
    v354[2] = v290;
    v354[3] = v287;
    v353[4] = v167;
    v353[5] = v168;
    v354[4] = v296;
    v354[5] = v286;
    v353[6] = v169;
    v354[6] = v289;
    v179 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v178, v354, v353, 7);
    objc_msgSend_addObject_(v163, v180, v179, v181);

    v351[0] = v297;
    v351[1] = v164;
    v352[0] = v260;
    v352[1] = v288;
    v351[2] = v165;
    v351[3] = v166;
    v352[2] = v295;
    v352[3] = v294;
    v351[4] = v167;
    v351[5] = v168;
    v352[4] = v290;
    v352[5] = v292;
    v351[6] = v169;
    v352[6] = v296;
    v183 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v182, v352, v351, 7);
    objc_msgSend_addObject_(v163, v184, v183, v185);

    v349[0] = v297;
    v349[1] = v164;
    v350[0] = v295;
    v350[1] = v279;
    v349[2] = v165;
    v349[3] = v166;
    v350[2] = v263;
    v350[3] = v258;
    v349[4] = v167;
    v349[5] = v168;
    v350[4] = v280;
    v350[5] = v296;
    v349[6] = v169;
    v350[6] = v292;
    v187 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v186, v350, v349, 7);
    objc_msgSend_addObject_(v163, v188, v187, v189);

    v347[0] = v297;
    v347[1] = v164;
    v348[0] = v294;
    v348[1] = v288;
    v347[2] = v165;
    v347[3] = v166;
    v348[2] = v295;
    v348[3] = v296;
    v347[4] = v167;
    v347[5] = v168;
    v348[4] = v285;
    v348[5] = v290;
    v347[6] = v169;
    v348[6] = v293;
    v191 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v190, v348, v347, 7);
    objc_msgSend_addObject_(v163, v192, v191, v193);

    v345[0] = v297;
    v345[1] = v164;
    v346[0] = v261;
    v346[1] = v296;
    v345[2] = v165;
    v345[3] = v166;
    v346[2] = v294;
    v346[3] = v262;
    v345[4] = v167;
    v345[5] = v168;
    v346[4] = v286;
    v346[5] = v289;
    v345[6] = v169;
    v346[6] = v287;
    v195 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v194, v346, v345, 7);
    objc_msgSend_addObject_(v163, v196, v195, v197);

    v343[0] = v297;
    v343[1] = v164;
    v344[0] = v259;
    v344[1] = v254;
    v343[2] = v165;
    v343[3] = v167;
    v344[2] = v257;
    v344[3] = v255;
    v343[4] = v168;
    v343[5] = v169;
    v344[4] = v284;
    v344[5] = v256;
    v199 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v198, v344, v343, 6);
    objc_msgSend_addObject_(v163, v200, v199, v201);

    v341[0] = v297;
    v341[1] = v164;
    v342[0] = v253;
    v342[1] = v291;
    v341[2] = v165;
    v341[3] = v167;
    v342[2] = v279;
    v342[3] = v252;
    v341[4] = v168;
    v341[5] = v169;
    v342[4] = v293;
    v342[5] = v295;
    v203 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v202, v342, v341, 6);
    objc_msgSend_addObject_(v163, v204, v203, v205);

    v339[0] = v297;
    v339[1] = v164;
    v340[0] = v296;
    v340[1] = v288;
    v339[2] = v165;
    v339[3] = v167;
    v340[2] = v290;
    v340[3] = v280;
    v339[4] = v168;
    v339[5] = v169;
    v340[4] = v292;
    v340[5] = v294;
    v207 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v206, v340, v339, 6);
    objc_msgSend_addObject_(v163, v208, v207, v209);

    v337[0] = v297;
    v337[1] = v164;
    v338[0] = v281;
    v338[1] = v282;
    v337[2] = v165;
    v337[3] = v167;
    v338[2] = v294;
    v338[3] = v286;
    v337[4] = v168;
    v337[5] = v169;
    v338[4] = v289;
    v338[5] = v287;
    v211 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v210, v338, v337, 6);
    objc_msgSend_addObject_(v163, v212, v211, v213);

    v335[0] = v297;
    v335[1] = v164;
    v336[0] = v291;
    v336[1] = v283;
    v335[2] = v165;
    v335[3] = v167;
    v336[2] = v296;
    v336[3] = v295;
    v335[4] = v168;
    v335[5] = v169;
    v336[4] = v293;
    v336[5] = v294;
    v215 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v214, v336, v335, 6);
    objc_msgSend_addObject_(v163, v216, v215, v217);

    v299 = xmmword_23BE805B0;
    v300 = 2;
    v301 = objc_msgSend_objectAtIndexedSubscript_(v163, v218, 0, v219);
    v302 = xmmword_23BE805C0;
    v303 = 2;
    v304 = objc_msgSend_objectAtIndexedSubscript_(v163, v220, 1, v221);
    v305 = xmmword_23BE805D0;
    v306 = 2;
    v307 = objc_msgSend_objectAtIndexedSubscript_(v163, v222, 2, v223);
    v308 = xmmword_23BE805E0;
    v309 = 2;
    v310 = objc_msgSend_objectAtIndexedSubscript_(v163, v224, 3, v225);
    v311 = xmmword_23BE805B0;
    v312 = 2;
    v313 = objc_msgSend_objectAtIndexedSubscript_(v163, v226, 4, v227);
    v314 = xmmword_23BE805C0;
    v315 = 2;
    v316 = objc_msgSend_objectAtIndexedSubscript_(v163, v228, 5, v229);
    v317 = xmmword_23BE805D0;
    v318 = 2;
    v319 = objc_msgSend_objectAtIndexedSubscript_(v163, v230, 6, v231);
    v320 = xmmword_23BE805F0;
    v321 = 2;
    v322 = objc_msgSend_objectAtIndexedSubscript_(v163, v232, 7, v233);
    v323 = xmmword_23BE80600;
    v324 = 2;
    v325 = objc_msgSend_objectAtIndexedSubscript_(v163, v234, 8, v235);
    v326 = vdupq_n_s64(3uLL);
    v327 = 2;
    v328 = objc_msgSend_objectAtIndexedSubscript_(v163, v236, 9, v237);
    v329 = xmmword_23BE80610;
    v330 = 2;
    v331 = objc_msgSend_objectAtIndexedSubscript_(v163, v238, 10, v239);
    v332 = v326;
    v333 = 1;
    objc_msgSend_objectAtIndexedSubscript_(v163, v240, 11, v241);
    v334 = v242 = 0;
    do
    {
      v244 = objc_msgSend__faceWithBezelStyle_layoutStyle_nightMode_complications_forDevice_(a1, v243, *(&v299 + v242), *(&v299 + v242 + 8), *(&v299 + v242 + 16), *(&v301 + v242), v4);
      objc_msgSend_addObject_(v298, v245, v244, v246);

      v242 += 32;
    }

    while (v242 != 384);
    v82 = objc_msgSend_copy(v298, v243, v247, v248);
    for (i = 376; i != -8; i -= 32)
    {
    }
  }

  else
  {
    v66 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8, v9);
    for (j = 0; j != 3; ++j)
    {
      if (objc_msgSend_count(&unk_284EA14B8, v63, v64, v65))
      {
        v68 = 0;
        v69 = qword_23BE80620[j];
        do
        {
          v70 = objc_msgSend_objectAtIndexedSubscript_(&unk_284EA14B8, v63, v68, v65);
          v74 = objc_msgSend_integerValue(v70, v71, v72, v73);
          v76 = objc_msgSend__faceWithBezelStyle_layoutStyle_nightMode_complications_forDevice_(a1, v75, v74, v69, 2, 0, v4);
          objc_msgSend_addObject_(v66, v77, v76, v78);

          ++v68;
        }

        while (v68 < objc_msgSend_count(&unk_284EA14B8, v79, v80, v81));
      }
    }

    v82 = objc_msgSend_copy(v66, v63, v64, v65);
  }

  return v82;
}

- (id)galleryRowPrioritiesForDevice:(id)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = &unk_284EA10C8;
  v6[0] = &unk_284EA10E0;
  v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v6, &v5, 1);

  return v3;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isRunningNapiliGMOrLater(v4, v5, v6, v7))
  {
    v17.receiver = self;
    v17.super_class = NTKFoghornFaceBundle;
    v8 = [(NTKFaceBundle *)&v17 galleryFacesForDevice:v4];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_23BE73104;
    v15[3] = &unk_278B9CA68;
    v15[4] = self;
    v16 = v4;
    objc_msgSend_enumerateObjectsUsingBlock_(v8, v9, v15, v10);
  }

  else
  {
    v11 = objc_opt_class();
    v8 = objc_msgSend__galleryFacesForDevice_(v11, v12, v4, v13);
  }

  return v8;
}

- (id)galleryEditOptionsForDevice:(id)a3
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isRunningNapiliGMOrLater(a3, a2, a3, v3))
  {
    v7[0] = &unk_284EA10F8;
    v7[1] = &unk_284EA1170;
    v8[0] = &unk_284EA14D0;
    v8[1] = &unk_284EA14E8;
    v7[2] = &unk_284EA11A0;
    v8[2] = &unk_284EA1500;
    v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, v8, v7, 3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)galleryPigmentsForDevice:(id)a3
{
  v7[6] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isRunningNapiliGMOrLater(a3, a2, a3, v3))
  {
    v7[0] = *MEMORY[0x277D2C6C8];
    v7[1] = v7[0];
    v7[2] = v7[0];
    v7[3] = v7[0];
    v7[4] = v7[0];
    v7[5] = v7[0];
    v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v7, 6);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end