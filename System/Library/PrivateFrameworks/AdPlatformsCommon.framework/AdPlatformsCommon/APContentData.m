@interface APContentData
+ (id)createForServerUnfilledReason:(int64_t)a3 placementType:(int64_t)a4 contextIdentifier:(id)a5 size:(id)a6;
+ (id)mockDataFromContext:(id)a3 types:(id)a4;
- (APContentData)init;
- (APContentData)initWithCoder:(id)a3;
- (BOOL)hasValidRepresentation;
- (id)representationWithIdentifier:(id)a3;
- (void)_correctNonNullableFields;
- (void)addRepresentation:(id)a3;
- (void)addRepresentations:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)removeRepresentation:(id)a3;
@end

@implementation APContentData

+ (id)createForServerUnfilledReason:(int64_t)a3 placementType:(int64_t)a4 contextIdentifier:(id)a5 size:(id)a6
{
  var1 = a6.var1;
  var0 = a6.var0;
  v10 = a5;
  v11 = objc_alloc_init(APContentData);
  objc_msgSend_setServerUnfilledReason_(v11, v12, a3, v13, v14, v15, v16);
  objc_msgSend_setContextIdentifier_(v11, v17, v10, v18, v19, v20, v21);

  v22 = objc_alloc_init(APRepresentationData);
  objc_msgSend_setPlacementType_(v22, v23, a4, v24, v25, v26, v27);
  objc_msgSend_setSize_(v22, v28, v29, v30, v31, var0, var1);
  v38 = objc_msgSend_identifier(v11, v32, v33, v34, v35, v36, v37);
  objc_msgSend_setContentDataIdentifier_(v22, v39, v38, v40, v41, v42, v43);

  v50 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v44, v45, v46, v47, v48, v49);
  objc_msgSend_setIAdID_(v22, v51, v50, v52, v53, v54, v55);

  objc_msgSend_addRepresentation_(v11, v56, v22, v57, v58, v59, v60);

  return v11;
}

- (BOOL)hasValidRepresentation
{
  v12 = objc_msgSend_error(self, a2, v2, v3, v4, v5, v6);
  if (v12 || objc_msgSend_serverUnfilledReason(self, v8, v9, v10, v11, v13, v14))
  {
    v21 = 0;
  }

  else
  {
    v23 = objc_msgSend_representations(self, v15, v16, v17, v18, v19, v20);
    v21 = objc_msgSend_count(v23, v24, v25, v26, v27, v28, v29) != 0;
  }

  return v21;
}

+ (id)mockDataFromContext:(id)a3 types:(id)a4
{
  v143 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(APContentData);
  v135 = v5;
  v14 = objc_msgSend_identifier(v5, v8, v9, v10, v11, v12, v13);
  objc_msgSend_setContextIdentifier_(v7, v15, v14, v16, v17, v18, v19);

  v26 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v20, v21, v22, v23, v24, v25);
  v33 = objc_msgSend_UUIDString(v26, v27, v28, v29, v30, v31, v32);
  objc_msgSend_setJourneyIdentifier_(v7, v34, v33, v35, v36, v37, v38);

  objc_msgSend_setMetadata_(v7, v39, MEMORY[0x1E695E0F8], v40, v41, v42, v43);
  objc_msgSend_setDisclosureRendererPayload_(v7, v44, @"CAISBWVuX1VTOAFwAg", v45, v46, v47, v48);
  v54 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v49, @"https://iad2v1-iadsdk.iad.apple.com/adserver/2.6/segment/privacyrender/1.0/ad", v50, v51, v52, v53);
  objc_msgSend_setDisclosureURL_(v7, v55, v54, v56, v57, v58, v59);

  objc_msgSend_setMinimumTimeBetweenPresentation_(v7, v60, 2, v61, v62, v63, v64);
  objc_msgSend_setBrandName_(v7, v65, @"Brand name", v66, v67, v68, v69);
  objc_msgSend_setCampaignText_(v7, v70, @"Campaign text", v71, v72, v73, v74);
  v80 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], v75, v76, v77, v78, 3600.0, v79);
  objc_msgSend_setExpirationDate_(v7, v81, v80, v82, v83, v84, v85);

  v92 = objc_msgSend_array(MEMORY[0x1E695DF70], v86, v87, v88, v89, v90, v91);
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v93 = v6;
  v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v94, &v136, v142, 16, v95, v96);
  if (v97)
  {
    v104 = v97;
    v105 = *v137;
    do
    {
      for (i = 0; i != v104; ++i)
      {
        if (*v137 != v105)
        {
          objc_enumerationMutation(v93);
        }

        v107 = objc_msgSend_unsignedIntegerValue(*(*(&v136 + 1) + 8 * i), v98, v99, v100, v101, v102, v103);
        v108 = APLogForCategory();
        v109 = os_log_type_enabled(v108, OS_LOG_TYPE_INFO);
        if (v107 <= 2)
        {
          if (v107)
          {
            if (v107 == 1)
            {
              if (v109)
              {
                *buf = 0;
                _os_log_impl(&dword_1BAFC4000, v108, OS_LOG_TYPE_INFO, "Creating representation with APPlacementTypeInterstitial", buf, 2u);
              }

              v110 = 1;
            }

            else
            {
              if (v107 != 2)
              {
                goto LABEL_26;
              }

              if (v109)
              {
                *buf = 0;
                _os_log_impl(&dword_1BAFC4000, v108, OS_LOG_TYPE_INFO, "Creating representation with APPlacementTypeAudio", buf, 2u);
              }

              v110 = 2;
            }
          }

          else
          {
            if (v109)
            {
              *buf = 0;
              _os_log_impl(&dword_1BAFC4000, v108, OS_LOG_TYPE_INFO, "Creating representation with APPlacementTypeAnyBanner", buf, 2u);
            }

            v110 = 0;
          }
        }

        else
        {
          if (v107 <= 4)
          {
            if (v107 == 3)
            {
              if (v109)
              {
                *buf = 0;
                _os_log_impl(&dword_1BAFC4000, v108, OS_LOG_TYPE_INFO, "Creating representation with APPlacementTypeVideo", buf, 2u);
              }

              v110 = 3;
            }

            else
            {
              if (v109)
              {
                *buf = 0;
                _os_log_impl(&dword_1BAFC4000, v108, OS_LOG_TYPE_INFO, "Creating representation with APPlacementTypeNative", buf, 2u);
              }

              v110 = 4;
            }

            goto LABEL_38;
          }

          if (v107 != 5)
          {
            if (v107 == 7)
            {
              if (v109)
              {
                *buf = 0;
                _os_log_impl(&dword_1BAFC4000, v108, OS_LOG_TYPE_INFO, "Creating representation with APPlacementTypeSponsorship", buf, 2u);
              }

              v110 = 7;
              goto LABEL_38;
            }

LABEL_26:
            if (v109)
            {
              *buf = 0;
              _os_log_impl(&dword_1BAFC4000, v108, OS_LOG_TYPE_INFO, "Creating representation with APPlacementTypeUndefined", buf, 2u);
            }

            v110 = -1;
            goto LABEL_38;
          }

          if (v109)
          {
            *buf = 0;
            _os_log_impl(&dword_1BAFC4000, v108, OS_LOG_TYPE_INFO, "Creating representation with APPlacementTypeApp", buf, 2u);
          }

          v110 = 5;
        }

LABEL_38:

        v115 = objc_msgSend_mockRepresentationWithType_contentData_(APRepresentationData, v111, v110, v7, v112, v113, v114);
        objc_msgSend_addObject_(v92, v116, v115, v117, v118, v119, v120);
      }

      v104 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v98, &v136, v142, 16, v102, v103);
    }

    while (v104);
  }

  v121 = APLogForCategory();
  if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v141 = v92;
    _os_log_impl(&dword_1BAFC4000, v121, OS_LOG_TYPE_INFO, "Creating representations set with %{public}@", buf, 0xCu);
  }

  v127 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v122, v92, v123, v124, v125, v126);
  objc_msgSend_setRepresentations_(v7, v128, v127, v129, v130, v131, v132);

  v133 = *MEMORY[0x1E69E9840];

  return v7;
}

- (APContentData)init
{
  v11.receiver = self;
  v11.super_class = APContentData;
  v2 = [(APContentData *)&v11 init];
  v9 = v2;
  if (v2)
  {
    objc_msgSend__correctNonNullableFields(v2, v3, v4, v5, v6, v7, v8);
    v9->_diagnosticCode = -1;
  }

  return v9;
}

- (void)_correctNonNullableFields
{
  v39[2] = *MEMORY[0x1E69E9840];
  if (!self->_identifier)
  {
    v8 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, v2, v3, v4, v5, v6);
    v15 = objc_msgSend_UUIDString(v8, v9, v10, v11, v12, v13, v14);
    identifier = self->_identifier;
    self->_identifier = v15;
  }

  if (!self->_contextIdentifier)
  {
    v39[0] = 0;
    v39[1] = 0;
    v17 = objc_alloc(MEMORY[0x1E696AFB0]);
    v23 = objc_msgSend_initWithUUIDBytes_(v17, v18, v39, v19, v20, v21, v22);
    contextIdentifier = self->_contextIdentifier;
    self->_contextIdentifier = v23;
  }

  if (!self->_journeyIdentifier)
  {
    v25 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, v2, v3, v4, v5, v6);
    v32 = objc_msgSend_UUIDString(v25, v26, v27, v28, v29, v30, v31);
    journeyIdentifier = self->_journeyIdentifier;
    self->_journeyIdentifier = v32;
  }

  if (!self->_uniqueIdentifier)
  {
    self->_uniqueIdentifier = @"UniqueIdentifierPlaceholder";
  }

  if (!self->_representations)
  {
    v34 = objc_msgSend_set(MEMORY[0x1E695DFA8], a2, v2, v3, v4, v5, v6);
    representations = self->_representations;
    self->_representations = v34;
  }

  if (!self->_expirationDate)
  {
    v36 = objc_msgSend_distantFuture(MEMORY[0x1E695DF00], a2, v2, v3, v4, v5, v6);
    expirationDate = self->_expirationDate;
    self->_expirationDate = v36;
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (APContentData)initWithCoder:(id)a3
{
  v4 = a3;
  v212.receiver = self;
  v212.super_class = APContentData;
  v5 = [(APContentData *)&v212 init];
  if (v5)
  {
    context = objc_autoreleasePoolPush();
    v6 = objc_opt_class();
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"identifier", v8, v9, v10);
    identifier = v5->_identifier;
    v5->_identifier = v11;

    v13 = objc_opt_class();
    v18 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v14, v13, @"contextIdentifier", v15, v16, v17);
    contextIdentifier = v5->_contextIdentifier;
    v5->_contextIdentifier = v18;

    v20 = objc_opt_class();
    v25 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v21, v20, @"journeyIdentifier", v22, v23, v24);
    journeyIdentifier = v5->_journeyIdentifier;
    v5->_journeyIdentifier = v25;

    v27 = objc_opt_class();
    v32 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v28, v27, @"impressionId", v29, v30, v31);
    impressionId = v5->_impressionId;
    v5->_impressionId = v32;

    v34 = MEMORY[0x1E695DFD8];
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v42 = objc_msgSend_setWithObjects_(v34, v37, v35, v38, v39, v40, v41, v36, 0);
    v47 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v43, v42, @"metadata", v44, v45, v46);
    metadata = v5->_metadata;
    v5->_metadata = v47;

    v49 = objc_opt_class();
    v54 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v50, v49, @"disclosureURL", v51, v52, v53);
    disclosureURL = v5->_disclosureURL;
    v5->_disclosureURL = v54;

    if (objc_msgSend_containsValueForKey_(v4, v56, @"disclosureRendererPayload", v57, v58, v59, v60))
    {
      v66 = objc_opt_class();
      v71 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v67, v66, @"disclosureRendererPayload", v68, v69, v70);
      disclosureRendererPayload = v5->_disclosureRendererPayload;
      v5->_disclosureRendererPayload = v71;
    }

    v5->_minimumTimeBetweenPresentation = objc_msgSend_decodeIntForKey_(v4, v61, @"minimumTimeBetweenPresentation", v62, v63, v64, v65);
    v73 = objc_opt_class();
    v78 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v74, v73, @"brandName", v75, v76, v77);
    brandName = v5->_brandName;
    v5->_brandName = v78;

    v80 = objc_opt_class();
    v85 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v81, v80, @"campaignText", v82, v83, v84);
    campaignText = v5->_campaignText;
    v5->_campaignText = v85;

    v87 = objc_opt_class();
    v92 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v88, v87, @"targetingExpressionId", v89, v90, v91);
    targetingExpressionId = v5->_targetingExpressionId;
    v5->_targetingExpressionId = v92;

    v94 = objc_opt_class();
    v99 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v95, v94, @"startDate", v96, v97, v98);
    startDate = v5->_startDate;
    v5->_startDate = v99;

    v101 = objc_opt_class();
    v106 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v102, v101, @"expirationDate", v103, v104, v105);
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v106;

    objc_msgSend_decodeDoubleForKey_(v4, v108, @"impressionThreshold", v109, v110, v111, v112);
    v5->_impressionThreshold = v113;
    objc_msgSend_decodeDoubleForKey_(v4, v114, @"impressionVisiblityThreshold", v115, v116, v113, v117);
    v5->_impressionVisibilityThreshold = v118;
    v5->_serverUnfilledReason = objc_msgSend_decodeIntForKey_(v4, v119, @"serverUnfilledReason", v120, v121, v118, v122);
    v123 = objc_opt_class();
    v128 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v124, v123, @"error", v125, v126, v127);
    error = v5->_error;
    v5->_error = v128;

    v130 = objc_opt_class();
    v135 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v131, v130, @"installAttribution", v132, v133, v134);
    installAttribution = v5->_installAttribution;
    v5->_installAttribution = v135;

    v137 = MEMORY[0x1E695DFD8];
    v138 = objc_opt_class();
    v139 = objc_opt_class();
    v140 = objc_opt_class();
    v141 = objc_opt_class();
    v147 = objc_msgSend_setWithObjects_(v137, v142, v138, v143, v144, v145, v146, v139, v140, v141, 0);
    v152 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v148, v147, @"representationsKey", v149, v150, v151);
    v159 = objc_msgSend_mutableCopy(v152, v153, v154, v155, v156, v157, v158);
    representations = v5->_representations;
    v5->_representations = v159;

    objc_msgSend_decodeDoubleForKey_(v4, v161, @"serverResponseReceivedTimestamp", v162, v163, v164, v165);
    v5->_serverResponseReceivedTimestamp = v166;
    v167 = objc_opt_class();
    v172 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v168, v167, @"receivedReferenceTime", v169, v170, v171);
    receivedReferenceTime = v5->_receivedReferenceTime;
    v5->_receivedReferenceTime = v172;

    v5->_isPAAvailableForAd = objc_msgSend_decodeBoolForKey_(v4, v174, @"personalizedAdsEnabledKey", v175, v176, v177, v178);
    v5->_isLocationAvailableForAd = objc_msgSend_decodeBoolForKey_(v4, v179, @"locationEnabledKey", v180, v181, v182, v183);
    v184 = MEMORY[0x1E695DFD8];
    v185 = objc_opt_class();
    v186 = objc_opt_class();
    v192 = objc_msgSend_setWithObjects_(v184, v187, v185, v188, v189, v190, v191, v186, 0);
    v197 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v193, v192, @"adServerEnvironment", v194, v195, v196);
    adServerEnvironment = v5->_adServerEnvironment;
    v5->_adServerEnvironment = v197;

    v5->_diagnosticCode = objc_msgSend_decodeIntForKey_(v4, v199, @"diagnosticCode", v200, v201, v202, v203);
    objc_msgSend__correctNonNullableFields(v5, v204, v205, v206, v207, v208, v209);

    objc_autoreleasePoolPop(context);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v292 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = objc_msgSend_identifier(self, v5, v6, v7, v8, v9, v10);
  objc_msgSend_encodeObject_forKey_(v4, v12, v11, @"identifier", v13, v14, v15);

  v22 = objc_msgSend_contextIdentifier(self, v16, v17, v18, v19, v20, v21);
  objc_msgSend_encodeObject_forKey_(v4, v23, v22, @"contextIdentifier", v24, v25, v26);

  v33 = objc_msgSend_journeyIdentifier(self, v27, v28, v29, v30, v31, v32);
  objc_msgSend_encodeObject_forKey_(v4, v34, v33, @"journeyIdentifier", v35, v36, v37);

  v44 = objc_msgSend_impressionId(self, v38, v39, v40, v41, v42, v43);
  objc_msgSend_encodeObject_forKey_(v4, v45, v44, @"impressionId", v46, v47, v48);

  v55 = objc_msgSend_metadata(self, v49, v50, v51, v52, v53, v54);
  objc_msgSend_encodeObject_forKey_(v4, v56, v55, @"metadata", v57, v58, v59);

  v66 = objc_msgSend_disclosureURL(self, v60, v61, v62, v63, v64, v65);
  objc_msgSend_encodeObject_forKey_(v4, v67, v66, @"disclosureURL", v68, v69, v70);

  v77 = objc_msgSend_disclosureRendererPayload(self, v71, v72, v73, v74, v75, v76);
  objc_msgSend_encodeObject_forKey_(v4, v78, v77, @"disclosureRendererPayload", v79, v80, v81);

  v88 = objc_msgSend_minimumTimeBetweenPresentation(self, v82, v83, v84, v85, v86, v87);
  objc_msgSend_encodeInt_forKey_(v4, v89, v88, @"minimumTimeBetweenPresentation", v90, v91, v92);
  v99 = objc_msgSend_brandName(self, v93, v94, v95, v96, v97, v98);
  objc_msgSend_encodeObject_forKey_(v4, v100, v99, @"brandName", v101, v102, v103);

  v110 = objc_msgSend_campaignText(self, v104, v105, v106, v107, v108, v109);
  objc_msgSend_encodeObject_forKey_(v4, v111, v110, @"campaignText", v112, v113, v114);

  v121 = objc_msgSend_targetingExpressionId(self, v115, v116, v117, v118, v119, v120);
  objc_msgSend_encodeObject_forKey_(v4, v122, v121, @"targetingExpressionId", v123, v124, v125);

  v132 = objc_msgSend_startDate(self, v126, v127, v128, v129, v130, v131);
  objc_msgSend_encodeObject_forKey_(v4, v133, v132, @"startDate", v134, v135, v136);

  v143 = objc_msgSend_expirationDate(self, v137, v138, v139, v140, v141, v142);
  objc_msgSend_encodeObject_forKey_(v4, v144, v143, @"expirationDate", v145, v146, v147);

  objc_msgSend_impressionThreshold(self, v148, v149, v150, v151, v152, v153);
  objc_msgSend_encodeDouble_forKey_(v4, v154, @"impressionThreshold", v155, v156, v157, v158);
  objc_msgSend_impressionVisibilityThreshold(self, v159, v160, v161, v162, v163, v164);
  objc_msgSend_encodeDouble_forKey_(v4, v165, @"impressionVisiblityThreshold", v166, v167, v168, v169);
  v176 = objc_msgSend_serverUnfilledReason(self, v170, v171, v172, v173, v174, v175);
  objc_msgSend_encodeInt_forKey_(v4, v177, v176, @"serverUnfilledReason", v178, v179, v180);
  v187 = objc_msgSend_error(self, v181, v182, v183, v184, v185, v186);
  objc_msgSend_encodeObject_forKey_(v4, v188, v187, @"error", v189, v190, v191);

  v198 = objc_msgSend_installAttribution(self, v192, v193, v194, v195, v196, v197);
  objc_msgSend_encodeObject_forKey_(v4, v199, v198, @"installAttribution", v200, v201, v202);

  objc_msgSend_serverResponseReceivedTimestamp(self, v203, v204, v205, v206, v207, v208);
  objc_msgSend_encodeDouble_forKey_(v4, v209, @"serverResponseReceivedTimestamp", v210, v211, v212, v213);
  v220 = objc_msgSend_receivedReferenceTime(self, v214, v215, v216, v217, v218, v219);
  objc_msgSend_encodeObject_forKey_(v4, v221, v220, @"receivedReferenceTime", v222, v223, v224);

  isPAAvailableForAd = objc_msgSend_isPAAvailableForAd(self, v225, v226, v227, v228, v229, v230);
  objc_msgSend_encodeBool_forKey_(v4, v232, isPAAvailableForAd, @"personalizedAdsEnabledKey", v233, v234, v235);
  isLocationAvailableForAd = objc_msgSend_isLocationAvailableForAd(self, v236, v237, v238, v239, v240, v241);
  objc_msgSend_encodeBool_forKey_(v4, v243, isLocationAvailableForAd, @"locationEnabledKey", v244, v245, v246);
  v247 = APLogForCategory();
  if (os_log_type_enabled(v247, OS_LOG_TYPE_INFO))
  {
    v254 = objc_msgSend_representations(self, v248, v249, v250, v251, v252, v253);
    v290 = 138412290;
    v291 = objc_opt_class();
    v255 = v291;
    _os_log_impl(&dword_1BAFC4000, v247, OS_LOG_TYPE_INFO, "Encoding apcontentdata with representations: %@", &v290, 0xCu);
  }

  v262 = objc_msgSend_representations(self, v256, v257, v258, v259, v260, v261);
  objc_msgSend_encodeObject_forKey_(v4, v263, v262, @"representationsKey", v264, v265, v266);

  v273 = objc_msgSend_adServerEnvironment(self, v267, v268, v269, v270, v271, v272);
  objc_msgSend_encodeObject_forKey_(v4, v274, v273, @"adServerEnvironment", v275, v276, v277);

  v284 = objc_msgSend_diagnosticCode(self, v278, v279, v280, v281, v282, v283);
  objc_msgSend_encodeInt_forKey_(v4, v285, v284, @"diagnosticCode", v286, v287, v288);

  v289 = *MEMORY[0x1E69E9840];
}

- (void)addRepresentation:(id)a3
{
  representations = self->_representations;
  v5 = a3;
  objc_msgSend_addObject_(representations, v6, v5, v7, v8, v9, v10);
  v22 = objc_msgSend_identifier(self, v11, v12, v13, v14, v15, v16);
  objc_msgSend_setContentDataIdentifier_(v5, v17, v22, v18, v19, v20, v21);
}

- (void)addRepresentations:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v17, v21, 16, 0.0, v6);
  if (v7)
  {
    v13 = v7;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend_addRepresentation_(self, v8, *(*(&v17 + 1) + 8 * v15++), v9, v10, v11, v12);
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v8, &v17, v21, 16, v11, v12);
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)removeRepresentation:(id)a3
{
  representations = self->_representations;
  v14 = a3;
  objc_msgSend_removeObject_(representations, v4, v14, v5, v6, v7, v8);
  objc_msgSend_setContentDataIdentifier_(v14, v9, 0, v10, v11, v12, v13);
}

- (id)representationWithIdentifier:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1BAFCE738;
  v21 = sub_1BAFCE748;
  v22 = 0;
  representations = self->_representations;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1BAFCE750;
  v14[3] = &unk_1E7F20DB0;
  v6 = v4;
  v15 = v6;
  v16 = &v17;
  objc_msgSend_enumerateObjectsUsingBlock_(representations, v7, v14, v8, v9, v10, v11);
  v12 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v12;
}

@end