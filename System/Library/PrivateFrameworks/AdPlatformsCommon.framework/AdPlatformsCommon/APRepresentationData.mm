@interface APRepresentationData
+ (id)mockRepresentationWithType:(int64_t)type contentData:(id)data;
- ($F24F406B2B787EFB06265DBA3D28CBD5)size;
- (APRepresentationData)init;
- (APRepresentationData)initWithCoder:(id)coder;
- (void)_correctNonNullableFields;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APRepresentationData

+ (id)mockRepresentationWithType:(int64_t)type contentData:(id)data
{
  v81 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v6 = objc_alloc_init(APRepresentationData);
  objc_msgSend_setPlacementType_(v6, v7, type, v8, v9, v10, v11);
  v18 = objc_msgSend_identifier(dataCopy, v12, v13, v14, v15, v16, v17);

  objc_msgSend_setContentDataIdentifier_(v6, v19, v18, v20, v21, v22, v23);
  objc_msgSend_setArticleID_(v6, v24, @"A0_OxJ7ViSeCggU0zJdY4Xw", v25, v26, v27, v28);
  objc_msgSend_setArticleTitle_(v6, v29, @"Bahamas missing plane: Debris from aircraft apparently found", v30, v31, v32, v33);
  objc_msgSend_setAdvertiserName_(v6, v34, @"Fox News", v35, v36, v37, v38);
  objc_msgSend_setCampaignData_(v6, v39, @"C15112882:L15115783:A10061684", v40, v41, v42, v43);
  objc_msgSend_setAdTag_(v6, v44, @"<html><head><meta http-equiv=Content-type content=text/html; charset=utf-8><meta name=viewport content=width=device-width, minimum-scale=1.0, maximum-scale=1.0><style>html {width:100%;height:100%;}body {top: 0;left: 0;margin: 0;padding: 0;width: 100%;height: 100%;overflow: hidden;}.ad {background-image: url(http://iad2v2-iadctest.iad.apple.com/adunits/f2/e7/68/00048f30-44e1-4f00-9eda-0022ed2dc67a/1.ad/video//asset_large-image-ipad-portrait.jpg);height: 100%;width: 100%; }.ad--iphone {background-size: cover; }.ad--ipad {background-size: contain; }.ad--landscape {background-image: url(http://iad2v2-iadctest.iad.apple.com/adunits/f2/e7/68/00048f30-44e1-4f00-9eda-0022ed2dc67a/1.ad/video//); }.ad {display: flex;align-items: center;justify-content: center;background-position: center center;background-repeat: no-repeat;}.ad--iphone.ad--htmlinterstitial {background-position: top center;}</style><script src=mraid.js></script></head><body><article onClick=mraid.open('https://apple.news/subscription') id=ad-content class=ad ad--ipad ad--large></article><script>function changeClass() {var obj = document.getElementById('ad-content');if ( Math.abs(window.orientation) === 90) {obj.classList.remove('ad--portrait');obj.classList.add('ad--landscape');} else {obj.classList.remove('ad--landscape');obj.classList.add('ad--portrait');}}if ('large' === 'htmlinterstitial' && 'ipad' === 'iphone') {window.addEventListener('orientationchange', changeClass);window.addEventListener('resize', changeClass);window.addEventListener('load', changeClass);}</script></body></html>", v45, v46, v47, v48);
  if (type == 3)
  {
    v49 = objc_alloc(MEMORY[0x1E695DFF8]);
    v55 = objc_msgSend_initWithString_(v49, v50, @"https://devstreaming-cdn.apple.com/videos/streaming/examples/bipbop_4x3/bipbop_4x3_variant.m3u8", v51, v52, v53, v54);
    objc_msgSend_setVideoURL_(v6, v56, v55, v57, v58, v59, v60);

    objc_msgSend_setBitrate_(v6, v61, v62, v63, v64, 100.0, v65);
    objc_msgSend_setSignalStrength_(v6, v66, 20, v67, v68, v69, v70);
    objc_msgSend_setConnectionType_(v6, v71, 1, v72, v73, v74, v75);
  }

  v76 = APLogForCategory();
  if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
  {
    v79 = 138412290;
    v80 = v6;
    _os_log_impl(&dword_1BAFC4000, v76, OS_LOG_TYPE_INFO, "Returning mocked rep data %@", &v79, 0xCu);
  }

  v77 = *MEMORY[0x1E69E9840];

  return v6;
}

- (APRepresentationData)init
{
  v11.receiver = self;
  v11.super_class = APRepresentationData;
  v2 = [(APRepresentationData *)&v11 init];
  v9 = v2;
  if (v2)
  {
    objc_msgSend__correctNonNullableFields(v2, v3, v4, v5, v6, v7, v8);
  }

  return v9;
}

- (void)_correctNonNullableFields
{
  v36 = *MEMORY[0x1E69E9840];
  if (!self->_identifier)
  {
    v8 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, v2, v3, v4, v5, v6);
    identifier = self->_identifier;
    self->_identifier = v8;
  }

  if (!self->_adamID)
  {
    self->_adamID = &stru_1F390F850;
  }

  if (!self->_iAdID)
  {
    v34 = 0;
    v35 = 0;
    v10 = objc_alloc(MEMORY[0x1E696AFB0]);
    v16 = objc_msgSend_initWithUUIDBytes_(v10, v11, &v34, v12, v13, v14, v15);
    iAdID = self->_iAdID;
    self->_iAdID = v16;
  }

  if (!self->_clientRequestID)
  {
    v34 = 0;
    v35 = 0;
    v18 = objc_alloc(MEMORY[0x1E696AFB0]);
    v24 = objc_msgSend_initWithUUIDBytes_(v18, v19, &v34, v20, v21, v22, v23);
    v31 = objc_msgSend_UUIDString(v24, v25, v26, v27, v28, v29, v30);
    clientRequestID = self->_clientRequestID;
    self->_clientRequestID = v31;
  }

  if (!self->_storeFront)
  {
    self->_storeFront = &stru_1F390F850;
  }

  if (!self->_storeFrontLocale)
  {
    self->_storeFrontLocale = &stru_1F390F850;
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (APRepresentationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v372.receiver = self;
  v372.super_class = APRepresentationData;
  v5 = [(APRepresentationData *)&v372 init];
  if (v5)
  {
    context = objc_autoreleasePoolPush();
    v6 = objc_opt_class();
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"frequencyCapData", v8, v9, v10);
    frequencyCapData = v5->_frequencyCapData;
    v5->_frequencyCapData = v11;

    v13 = objc_opt_class();
    v18 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v14, v13, @"policyData", v15, v16, v17);
    policyData = v5->_policyData;
    v5->_policyData = v18;

    v20 = objc_opt_class();
    v25 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v21, v20, @"targetingDimensionsKey", v22, v23, v24);
    targetingDimensions = v5->_targetingDimensions;
    v5->_targetingDimensions = v25;

    v27 = objc_opt_class();
    v32 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v28, v27, @"tapAction", v29, v30, v31);
    tapAction = v5->_tapAction;
    v5->_tapAction = v32;

    v5->_privacyMarkerPosition = objc_msgSend_decodeIntForKey_(coderCopy, v34, @"privacyMarkerPositionKey", v35, v36, v37, v38);
    v5->_privacyMarkerType = objc_msgSend_decodeIntForKey_(coderCopy, v39, @"privacyMarkerTypeKey", v40, v41, v42, v43);
    v5->_placementType = objc_msgSend_decodeIntForKey_(coderCopy, v44, @"placementType", v45, v46, v47, v48);
    v49 = objc_opt_class();
    v54 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v50, v49, @"rawAdType", v51, v52, v53);
    rawAdType = v5->_rawAdType;
    v5->_rawAdType = v54;

    v56 = objc_opt_class();
    v61 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v57, v56, @"rawAdFormatType", v58, v59, v60);
    rawAdFormatType = v5->_rawAdFormatType;
    v5->_rawAdFormatType = v61;

    v5->_desiredPosition = objc_msgSend_decodeIntForKey_(coderCopy, v63, @"desiredPosition", v64, v65, v66, v67);
    v73 = objc_msgSend_decodeIntForKey_(coderCopy, v68, @"width", v69, v70, v71, v72);
    v5->_size.width = v73;
    v78 = objc_msgSend_decodeIntForKey_(coderCopy, v74, @"height", v75, v76, v73, v77);
    v5->_size.height = v78;
    if (objc_msgSend_containsValueForKey_(coderCopy, v79, @"adTag", v80, v81, v78, v82))
    {
      v83 = objc_opt_class();
      v88 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v84, v83, @"adTag", v85, v86, v87);
      adTag = v5->_adTag;
      v5->_adTag = v88;
    }

    v90 = objc_opt_class();
    v95 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v91, v90, @"videoURL", v92, v93, v94);
    videoURL = v5->_videoURL;
    v5->_videoURL = v95;

    objc_msgSend_decodeDoubleForKey_(coderCopy, v97, @"duration", v98, v99, v100, v101);
    v5->_duration = v102;
    objc_msgSend_decodeDoubleForKey_(coderCopy, v103, @"skipThreshold", v104, v105, v102, v106);
    v5->_skipThreshold = v107;
    v5->_skipEnabled = objc_msgSend_decodeBoolForKey_(coderCopy, v108, @"skipEnabled", v109, v110, v107, v111);
    v5->_unbranded = objc_msgSend_decodeBoolForKey_(coderCopy, v112, @"unbranded", v113, v114, v115, v116);
    objc_msgSend_decodeDoubleForKey_(coderCopy, v117, @"bitrate", v118, v119, v120, v121);
    v5->_bitrate = v122;
    v5->_signalStrength = objc_msgSend_decodeIntegerForKey_(coderCopy, v123, @"signalStrengthKey", v124, v125, v122, v126);
    v5->_connectionType = objc_msgSend_decodeIntegerForKey_(coderCopy, v127, @"connectionTypeKey", v128, v129, v130, v131);
    v132 = objc_opt_class();
    v137 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v133, v132, @"articleID", v134, v135, v136);
    articleID = v5->_articleID;
    v5->_articleID = v137;

    v139 = objc_opt_class();
    v144 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v140, v139, @"articleTitle", v141, v142, v143);
    articleTitle = v5->_articleTitle;
    v5->_articleTitle = v144;

    v146 = objc_opt_class();
    v151 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v147, v146, @"advertiserName", v148, v149, v150);
    advertiserName = v5->_advertiserName;
    v5->_advertiserName = v151;

    v153 = objc_opt_class();
    v158 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v154, v153, @"campaignData", v155, v156, v157);
    campaignData = v5->_campaignData;
    v5->_campaignData = v158;

    v160 = objc_opt_class();
    v165 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v161, v160, @"contentDataIdentifier", v162, v163, v164);
    contentDataIdentifier = v5->_contentDataIdentifier;
    v5->_contentDataIdentifier = v165;

    v167 = objc_opt_class();
    v172 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v168, v167, @"identifier", v169, v170, v171);
    identifier = v5->_identifier;
    v5->_identifier = v172;

    v174 = objc_opt_class();
    v179 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v175, v174, @"adamID", v176, v177, v178);
    adamID = v5->_adamID;
    v5->_adamID = v179;

    v181 = objc_opt_class();
    v186 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v182, v181, @"metadata", v183, v184, v185);
    metadata = v5->_metadata;
    v5->_metadata = v186;

    v188 = objc_opt_class();
    v193 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v189, v188, @"journeyRelayAdGroupId", v190, v191, v192);
    journeyRelayAdGroupId = v5->_journeyRelayAdGroupId;
    v5->_journeyRelayAdGroupId = v193;

    v195 = objc_opt_class();
    v200 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v196, v195, @"journeyRelayCampaignId", v197, v198, v199);
    journeyRelayCampaignId = v5->_journeyRelayCampaignId;
    v5->_journeyRelayCampaignId = v200;

    v202 = objc_opt_class();
    v207 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v203, v202, @"journeyRelayLineId", v204, v205, v206);
    journeyRelayLineId = v5->_journeyRelayLineId;
    v5->_journeyRelayLineId = v207;

    v5->_parentAppCheckEnabled = objc_msgSend_decodeBoolForKey_(coderCopy, v209, @"parentAppCheckEnabled", v210, v211, v212, v213);
    v220 = objc_msgSend_classes(MEMORY[0x1E69861B8], v214, v215, v216, v217, v218, v219);
    v225 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v221, v220, @"installAttribution", v222, v223, v224);
    installAttribution = v5->_installAttribution;
    v5->_installAttribution = v225;

    v5->_rank = objc_msgSend_decodeIntegerForKey_(coderCopy, v227, @"rank", v228, v229, v230, v231);
    v5->_timeToDisplay = objc_msgSend_decodeIntegerForKey_(coderCopy, v232, @"timeToDisplay", v233, v234, v235, v236);
    v237 = objc_opt_class();
    v242 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v238, v237, @"iAdID", v239, v240, v241);
    iAdID = v5->_iAdID;
    v5->_iAdID = v242;

    v244 = objc_opt_class();
    v249 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v245, v244, @"storefront", v246, v247, v248);
    storeFront = v5->_storeFront;
    v5->_storeFront = v249;

    v251 = objc_opt_class();
    v256 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v252, v251, @"storefrontLocale", v253, v254, v255);
    storeFrontLocale = v5->_storeFrontLocale;
    v5->_storeFrontLocale = v256;

    v258 = objc_opt_class();
    v263 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v259, v258, @"clientRequestID", v260, v261, v262);
    clientRequestID = v5->_clientRequestID;
    v5->_clientRequestID = v263;

    v265 = MEMORY[0x1E695DFD8];
    v266 = objc_opt_class();
    v272 = objc_msgSend_setWithObjects_(v265, v267, v266, v268, v269, v270, v271, 0);
    v273 = MEMORY[0x1E695DFD8];
    v274 = objc_opt_class();
    v275 = objc_opt_class();
    v281 = objc_msgSend_setWithObjects_(v273, v276, v274, v277, v278, v279, v280, v275, 0);
    v285 = objc_msgSend_decodeDictionaryWithKeysOfClasses_objectsOfClasses_forKey_(coderCopy, v282, v272, v281, @"positionInformation", v283, v284);
    positionInformation = v5->_positionInformation;
    v5->_positionInformation = v285;

    v5->_slotNumber = objc_msgSend_decodeIntegerForKey_(coderCopy, v287, @"slotNumber", v288, v289, v290, v291);
    v292 = objc_opt_class();
    v297 = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(coderCopy, v293, v292, @"cppIds", v294, v295, v296);
    cppIds = v5->_cppIds;
    v5->_cppIds = v297;

    v299 = MEMORY[0x1E695DFD8];
    v300 = objc_opt_class();
    v301 = objc_opt_class();
    v302 = objc_opt_class();
    v303 = objc_opt_class();
    v309 = objc_msgSend_setWithObjects_(v299, v304, v300, v305, v306, v307, v308, v301, v302, v303, 0);
    v314 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v310, v309, @"appMetadata", v311, v312, v313);
    appMetadata = v5->_appMetadata;
    v5->_appMetadata = v314;

    v5->_odmlSuccess = objc_msgSend_decodeBoolForKey_(coderCopy, v316, @"odmlSuccess", v317, v318, v319, v320);
    v321 = objc_opt_class();
    v326 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v322, v321, @"treatmentId", v323, v324, v325);
    treatmentId = v5->_treatmentId;
    v5->_treatmentId = v326;

    v328 = objc_opt_class();
    v333 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v329, v328, @"deploymentId", v330, v331, v332);
    deploymentId = v5->_deploymentId;
    v5->_deploymentId = v333;

    v335 = objc_opt_class();
    v340 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v336, v335, @"experimentId", v337, v338, v339);
    experimentId = v5->_experimentId;
    v5->_experimentId = v340;

    v342 = MEMORY[0x1E695DFD8];
    v343 = objc_opt_class();
    v344 = objc_opt_class();
    v345 = objc_opt_class();
    v351 = objc_msgSend_setWithObjects_(v342, v346, v343, v347, v348, v349, v350, v344, v345, 0);
    v356 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v352, v351, @"triggers", v353, v354, v355);
    triggers = v5->_triggers;
    v5->_triggers = v356;

    v362 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v358, v309, @"creativeDetails", v359, v360, v361);
    creativeDetails = v5->_creativeDetails;
    v5->_creativeDetails = v362;

    objc_msgSend__correctNonNullableFields(v5, v364, v365, v366, v367, v368, v369);
    objc_autoreleasePoolPop(context);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v11 = objc_msgSend_frequencyCapData(self, v5, v6, v7, v8, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"frequencyCapData", v13, v14, v15);

  v22 = objc_msgSend_policyData(self, v16, v17, v18, v19, v20, v21);
  objc_msgSend_encodeObject_forKey_(coderCopy, v23, v22, @"policyData", v24, v25, v26);

  v33 = objc_msgSend_targetingDimensions(self, v27, v28, v29, v30, v31, v32);
  objc_msgSend_encodeObject_forKey_(coderCopy, v34, v33, @"targetingDimensionsKey", v35, v36, v37);

  v44 = objc_msgSend_tapAction(self, v38, v39, v40, v41, v42, v43);
  objc_msgSend_encodeObject_forKey_(coderCopy, v45, v44, @"tapAction", v46, v47, v48);

  v55 = objc_msgSend_privacyMarkerPosition(self, v49, v50, v51, v52, v53, v54);
  objc_msgSend_encodeInt_forKey_(coderCopy, v56, v55, @"privacyMarkerPositionKey", v57, v58, v59);
  v66 = objc_msgSend_privacyMarkerType(self, v60, v61, v62, v63, v64, v65);
  objc_msgSend_encodeInt_forKey_(coderCopy, v67, v66, @"privacyMarkerTypeKey", v68, v69, v70);
  v77 = objc_msgSend_placementType(self, v71, v72, v73, v74, v75, v76);
  objc_msgSend_encodeInt_forKey_(coderCopy, v78, v77, @"placementType", v79, v80, v81);
  v88 = objc_msgSend_rawAdType(self, v82, v83, v84, v85, v86, v87);
  objc_msgSend_encodeObject_forKey_(coderCopy, v89, v88, @"rawAdType", v90, v91, v92);

  v99 = objc_msgSend_rawAdFormatType(self, v93, v94, v95, v96, v97, v98);
  objc_msgSend_encodeObject_forKey_(coderCopy, v100, v99, @"rawAdFormatType", v101, v102, v103);

  v110 = objc_msgSend_desiredPosition(self, v104, v105, v106, v107, v108, v109);
  objc_msgSend_encodeInt_forKey_(coderCopy, v111, v110, @"desiredPosition", v112, v113, v114);
  objc_msgSend_size(self, v115, v116, v117, v118, v119, v120);
  objc_msgSend_encodeInt_forKey_(coderCopy, v122, v121, @"width", v123, v121, v124);
  objc_msgSend_size(self, v125, v126, v127, v128, v129, v130);
  objc_msgSend_encodeInt_forKey_(coderCopy, v132, v131, @"height", v133, v134, v131);
  v141 = objc_msgSend_adTag(self, v135, v136, v137, v138, v139, v140);
  objc_msgSend_encodeObject_forKey_(coderCopy, v142, v141, @"adTag", v143, v144, v145);

  v152 = objc_msgSend_videoURL(self, v146, v147, v148, v149, v150, v151);
  objc_msgSend_encodeObject_forKey_(coderCopy, v153, v152, @"videoURL", v154, v155, v156);

  objc_msgSend_duration(self, v157, v158, v159, v160, v161, v162);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v163, @"duration", v164, v165, v166, v167);
  objc_msgSend_skipThreshold(self, v168, v169, v170, v171, v172, v173);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v174, @"skipThreshold", v175, v176, v177, v178);
  v185 = objc_msgSend_skipEnabled(self, v179, v180, v181, v182, v183, v184);
  objc_msgSend_encodeBool_forKey_(coderCopy, v186, v185, @"skipEnabled", v187, v188, v189);
  v196 = objc_msgSend_unbranded(self, v190, v191, v192, v193, v194, v195);
  objc_msgSend_encodeBool_forKey_(coderCopy, v197, v196, @"unbranded", v198, v199, v200);
  objc_msgSend_bitrate(self, v201, v202, v203, v204, v205, v206);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v207, @"bitrate", v208, v209, v210, v211);
  v218 = objc_msgSend_signalStrength(self, v212, v213, v214, v215, v216, v217);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v219, v218, @"signalStrengthKey", v220, v221, v222);
  v229 = objc_msgSend_connectionType(self, v223, v224, v225, v226, v227, v228);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v230, v229, @"connectionTypeKey", v231, v232, v233);
  v240 = objc_msgSend_articleID(self, v234, v235, v236, v237, v238, v239);
  objc_msgSend_encodeObject_forKey_(coderCopy, v241, v240, @"articleID", v242, v243, v244);

  v251 = objc_msgSend_articleTitle(self, v245, v246, v247, v248, v249, v250);
  objc_msgSend_encodeObject_forKey_(coderCopy, v252, v251, @"articleTitle", v253, v254, v255);

  v262 = objc_msgSend_advertiserName(self, v256, v257, v258, v259, v260, v261);
  objc_msgSend_encodeObject_forKey_(coderCopy, v263, v262, @"advertiserName", v264, v265, v266);

  v273 = objc_msgSend_campaignData(self, v267, v268, v269, v270, v271, v272);
  objc_msgSend_encodeObject_forKey_(coderCopy, v274, v273, @"campaignData", v275, v276, v277);

  v284 = objc_msgSend_contentDataIdentifier(self, v278, v279, v280, v281, v282, v283);
  objc_msgSend_encodeObject_forKey_(coderCopy, v285, v284, @"contentDataIdentifier", v286, v287, v288);

  v295 = objc_msgSend_identifier(self, v289, v290, v291, v292, v293, v294);
  objc_msgSend_encodeObject_forKey_(coderCopy, v296, v295, @"identifier", v297, v298, v299);

  v306 = objc_msgSend_adamID(self, v300, v301, v302, v303, v304, v305);
  objc_msgSend_encodeObject_forKey_(coderCopy, v307, v306, @"adamID", v308, v309, v310);

  v317 = objc_msgSend_metadata(self, v311, v312, v313, v314, v315, v316);
  objc_msgSend_encodeObject_forKey_(coderCopy, v318, v317, @"metadata", v319, v320, v321);

  v328 = objc_msgSend_journeyRelayAdGroupId(self, v322, v323, v324, v325, v326, v327);
  objc_msgSend_encodeObject_forKey_(coderCopy, v329, v328, @"journeyRelayAdGroupId", v330, v331, v332);

  v339 = objc_msgSend_journeyRelayCampaignId(self, v333, v334, v335, v336, v337, v338);
  objc_msgSend_encodeObject_forKey_(coderCopy, v340, v339, @"journeyRelayCampaignId", v341, v342, v343);

  v350 = objc_msgSend_journeyRelayLineId(self, v344, v345, v346, v347, v348, v349);
  objc_msgSend_encodeObject_forKey_(coderCopy, v351, v350, @"journeyRelayLineId", v352, v353, v354);

  v361 = objc_msgSend_parentAppCheckEnabled(self, v355, v356, v357, v358, v359, v360);
  objc_msgSend_encodeBool_forKey_(coderCopy, v362, v361, @"parentAppCheckEnabled", v363, v364, v365);
  v372 = objc_msgSend_installAttribution(self, v366, v367, v368, v369, v370, v371);
  objc_msgSend_encodeObject_forKey_(coderCopy, v373, v372, @"installAttribution", v374, v375, v376);

  v383 = objc_msgSend_rank(self, v377, v378, v379, v380, v381, v382);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v384, v383, @"rank", v385, v386, v387);
  v394 = objc_msgSend_timeToDisplay(self, v388, v389, v390, v391, v392, v393);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v395, v394, @"timeToDisplay", v396, v397, v398);
  v405 = objc_msgSend_iAdID(self, v399, v400, v401, v402, v403, v404);
  objc_msgSend_encodeObject_forKey_(coderCopy, v406, v405, @"iAdID", v407, v408, v409);

  v416 = objc_msgSend_storeFront(self, v410, v411, v412, v413, v414, v415);
  objc_msgSend_encodeObject_forKey_(coderCopy, v417, v416, @"storefront", v418, v419, v420);

  v427 = objc_msgSend_storeFrontLocale(self, v421, v422, v423, v424, v425, v426);
  objc_msgSend_encodeObject_forKey_(coderCopy, v428, v427, @"storefrontLocale", v429, v430, v431);

  v438 = objc_msgSend_clientRequestID(self, v432, v433, v434, v435, v436, v437);
  objc_msgSend_encodeObject_forKey_(coderCopy, v439, v438, @"clientRequestID", v440, v441, v442);

  v449 = objc_msgSend_positionInformation(self, v443, v444, v445, v446, v447, v448);
  objc_msgSend_encodeObject_forKey_(coderCopy, v450, v449, @"positionInformation", v451, v452, v453);

  v460 = objc_msgSend_slotNumber(self, v454, v455, v456, v457, v458, v459);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v461, v460, @"slotNumber", v462, v463, v464);
  v471 = objc_msgSend_cppIds(self, v465, v466, v467, v468, v469, v470);
  objc_msgSend_encodeObject_forKey_(coderCopy, v472, v471, @"cppIds", v473, v474, v475);

  v482 = objc_msgSend_appMetadata(self, v476, v477, v478, v479, v480, v481);
  objc_msgSend_encodeObject_forKey_(coderCopy, v483, v482, @"appMetadata", v484, v485, v486);

  v493 = objc_msgSend_odmlSuccess(self, v487, v488, v489, v490, v491, v492);
  objc_msgSend_encodeBool_forKey_(coderCopy, v494, v493, @"odmlSuccess", v495, v496, v497);
  v504 = objc_msgSend_treatmentId(self, v498, v499, v500, v501, v502, v503);
  objc_msgSend_encodeObject_forKey_(coderCopy, v505, v504, @"treatmentId", v506, v507, v508);

  v515 = objc_msgSend_deploymentId(self, v509, v510, v511, v512, v513, v514);
  objc_msgSend_encodeObject_forKey_(coderCopy, v516, v515, @"deploymentId", v517, v518, v519);

  v526 = objc_msgSend_experimentId(self, v520, v521, v522, v523, v524, v525);
  objc_msgSend_encodeObject_forKey_(coderCopy, v527, v526, @"experimentId", v528, v529, v530);

  v537 = objc_msgSend_triggers(self, v531, v532, v533, v534, v535, v536);
  objc_msgSend_encodeObject_forKey_(coderCopy, v538, v537, @"triggers", v539, v540, v541);

  v552 = objc_msgSend_creativeDetails(self, v542, v543, v544, v545, v546, v547);
  objc_msgSend_encodeObject_forKey_(coderCopy, v548, v552, @"creativeDetails", v549, v550, v551);
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)size
{
  objc_copyStruct(v4, &self->_size, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

@end