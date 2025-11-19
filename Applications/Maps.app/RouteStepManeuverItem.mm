@interface RouteStepManeuverItem
- (BOOL)_shouldResetOnUserInfo:(id)a3 changedTo:(id)a4;
- (GuidanceManeuverArtwork)maneuverArtwork;
- (MNGuidanceSignInfo)guidanceSignInfo;
- (NSAttributedString)primaryText;
- (NSAttributedString)secondaryText;
- (NSAttributedString)tertiaryText;
- (RouteStepManeuverItem)initWithRouteStep:(id)a3 cellClass:(Class)a4 state:(unint64_t)a5 metrics:(id)a6 context:(int64_t)a7 route:(id)a8 scale:(double)a9 isMissedStep:(BOOL)a10;
- (UIColor)backgroundColor;
- (UIImage)exitSignImage;
- (UIImage)shieldImage;
- (id)_combinedTertiaryTextForStepWithChargingStation:(id)a3 font:(id)a4 color:(id)a5;
- (id)_evaluatedStringForInstructionString:(id)a3;
- (id)_instructionVariables;
- (id)_listInstructionForStep:(id)a3;
- (id)_listInstructionStringForStep:(id)a3;
- (id)_signInstructionForStep:(id)a3;
- (id)_signInstructionStringForStep:(id)a3;
- (id)description;
- (id)distanceToManeuver;
- (id)laneGuidanceInfo;
- (void)_computeContent;
- (void)reset;
- (void)setUserInfo:(id)a3;
@end

@implementation RouteStepManeuverItem

- (NSAttributedString)secondaryText
{
  if (!self->_computedContent)
  {
    [(RouteStepManeuverItem *)self _computeContent];
  }

  secondaryText = self->_secondaryText;

  return secondaryText;
}

- (UIImage)exitSignImage
{
  if (!self->_computedContent)
  {
    [(RouteStepManeuverItem *)self _computeContent];
  }

  exitSignImage = self->_exitSignImage;

  return exitSignImage;
}

- (void)reset
{
  self->_computedContent = 0;
  cachedHeight = self->_cachedHeight;
  self->_cachedHeight = 0;

  cachedWidth = self->_cachedWidth;
  self->_cachedWidth = 0;
}

- (NSAttributedString)primaryText
{
  if (!self->_computedContent)
  {
    [(RouteStepManeuverItem *)self _computeContent];
  }

  primaryText = self->_primaryText;

  return primaryText;
}

- (void)_computeContent
{
  self->_computedContent = 1;
  primaryText = self->_primaryText;
  p_primaryText = &self->_primaryText;
  self->_primaryText = 0;

  secondaryText = self->_secondaryText;
  p_secondaryText = &self->_secondaryText;
  self->_secondaryText = 0;

  v270 = self;
  v5 = [(RouteStepManeuverItem *)self step];
  v262 = [v5 geoStep];
  v255 = [v262 roadDescriptions];
  v257 = [v5 chargingStationInfo];
  v6 = [(RouteStepItem *)self state]== 0;
  v7 = [(RouteStepItem *)self metrics];
  v8 = v7;
  if (v6)
  {
    [v7 primaryTextDisabledTextColor];
  }

  else
  {
    [v7 primaryTextActiveTextColor];
  }
  v264 = ;

  v9 = [(RouteStepItem *)v270 metrics];
  v10 = [v9 primaryTextFontIsFixedSize];

  v11 = [(RouteStepItem *)v270 metrics];
  v12 = v11;
  if (v10)
  {
    [v11 primaryTextFontSize];
    v14 = v13;
    v15 = [(RouteStepItem *)v270 metrics];
    [v15 primaryTextFontWeight];
    v263 = [UIFont systemFontOfSize:v14 weight:v16];
  }

  else
  {
    v15 = [v11 primaryTextFontStyle];
    v17 = [(RouteStepItem *)v270 metrics];
    [v17 primaryTextFontWeight];
    v19 = v18;
    v20 = [(RouteStepItem *)v270 traitCollection];
    v263 = [UIFont _maps_fontWithTextStyle:v15 weight:v20 compatibleWithTraitCollection:v19];
  }

  v21 = [(RouteStepItem *)v270 state]== 0;
  v22 = [(RouteStepItem *)v270 metrics];
  v23 = v22;
  if (v21)
  {
    [v22 secondaryTextDisabledTextColor];
  }

  else
  {
    [v22 secondaryTextActiveTextColor];
  }
  v259 = ;

  v24 = [(RouteStepItem *)v270 metrics];
  v25 = [v24 secondaryTextFontIsFixedSize];

  v26 = [(RouteStepItem *)v270 metrics];
  v27 = v26;
  if (v25)
  {
    [v26 secondaryTextFontSize];
    v29 = v28;
    v30 = [(RouteStepItem *)v270 metrics];
    [v30 secondaryTextFontWeight];
    v258 = [UIFont systemFontOfSize:v29 weight:v31];
  }

  else
  {
    v30 = [v26 secondaryTextFontStyle];
    v32 = [(RouteStepItem *)v270 metrics];
    [v32 secondaryTextFontWeight];
    v34 = v33;
    v35 = [(RouteStepItem *)v270 traitCollection];
    v258 = [UIFont _maps_fontWithTextStyle:v30 weight:v35 compatibleWithTraitCollection:v34];
  }

  v269 = [(RouteStepManeuverItem *)v270 guidanceSignInfo];
  v267 = [(RouteStepManeuverItem *)v270 laneGuidanceInfo];
  v254 = [(RouteStepManeuverItem *)v270 distanceToManeuver];
  if ([v5 isStartOrResumeStep])
  {
    v36 = 1;
  }

  else
  {
    v37 = [v269 primarySign];
    v36 = [v37 isStaticText];
  }

  v38 = [(RouteStepItem *)v270 metrics];
  v39 = [v38 shouldFlipPrimaryAndSecondaryText];

  v288[0] = _NSConcreteStackBlock;
  v288[1] = 3221225472;
  v288[2] = sub_100C164FC;
  v288[3] = &unk_10164DCF0;
  v266 = v5;
  v289 = v266;
  v290 = v270;
  v291 = v36;
  v256 = objc_retainBlock(v288);
  if (v267)
  {
    v40 = [v267 primaryStrings];
    v41 = [v40 count] == 0;

    if (v41)
    {
      v54 = [MKServerFormattedStringParameters alloc];
      v55 = [v267 distanceDetailLevel];
      v56 = [v267 variableOverrides];
      v43 = [v54 initWithInstructionsDistanceDetailLevel:v55 variableOverrides:v56];

      v57 = [v267 titles];
      v44 = [v57 firstObject];

      v45 = [[MKServerFormattedString alloc] initWithGeoServerString:v44 parameters:v43];
    }

    else
    {
      v42 = [MKServerFormattedString alloc];
      v43 = [v267 primaryStrings];
      v44 = [v43 firstObject];
      v45 = [v42 initWithComposedString:v44];
    }

    v58 = v45;

    v307[0] = NSForegroundColorAttributeName;
    v307[1] = NSFontAttributeName;
    v308[0] = v264;
    v308[1] = v263;
    v307[2] = MKServerFormattedStringArtworkSizeAttributeKey;
    v308[2] = &off_1016E9470;
    v59 = [NSDictionary dictionaryWithObjects:v308 forKeys:v307 count:3];
    v60 = [v58 multiPartAttributedStringWithAttributes:v59];
    v61 = [v60 attributedString];
    v62 = *p_primaryText;
    *p_primaryText = v61;

    if ([*p_primaryText length])
    {
      v260 = 0;
    }

    else
    {
      v260 = (v256[2])(v256, 0);
    }
  }

  else if (v269)
  {
    v46 = [v269 primarySign];
    v47 = v46;
    if (v36)
    {
      v48 = [v46 secondaryStrings];
      v49 = [v48 count] == 0;

      if (v49)
      {
        v84 = [MKServerFormattedStringParameters alloc];
        v85 = [v47 distanceDetailLevel];
        v86 = [v47 variableOverrides];
        v51 = [v84 initWithInstructionsDistanceDetailLevel:v85 variableOverrides:v86];

        v87 = [v47 details];
        v52 = [v87 firstObject];

        v53 = [[MKServerFormattedString alloc] initWithGeoServerString:v52 parameters:v51];
      }

      else
      {
        v50 = [MKServerFormattedString alloc];
        v51 = [v47 secondaryStrings];
        v52 = [v51 firstObject];
        v53 = [v50 initWithComposedString:v52];
      }

      v88 = v53;

      v305[0] = NSForegroundColorAttributeName;
      v305[1] = NSFontAttributeName;
      v306[0] = v264;
      v306[1] = v263;
      v305[2] = MKServerFormattedStringArtworkSizeAttributeKey;
      v306[2] = &off_1016E9470;
      v89 = [NSDictionary dictionaryWithObjects:v306 forKeys:v305 count:3];
      v90 = [v88 multiPartAttributedStringWithAttributes:v89];
      v91 = [v90 attributedString];
      v92 = *p_primaryText;
      *p_primaryText = v91;

      if ([*p_primaryText length])
      {
        v260 = 0;
        goto LABEL_84;
      }
    }

    else
    {
      v76 = [v46 primaryStrings];
      v77 = [v76 count] == 0;

      if (v77)
      {
        v93 = [MKServerFormattedStringParameters alloc];
        v94 = [v47 distanceDetailLevel];
        v95 = [v47 variableOverrides];
        v79 = [v93 initWithInstructionsDistanceDetailLevel:v94 variableOverrides:v95];

        v96 = [v47 titles];
        v80 = [v96 firstObject];

        v81 = [[MKServerFormattedString alloc] initWithGeoServerString:v80 parameters:v79];
      }

      else
      {
        v78 = [MKServerFormattedString alloc];
        v79 = [v47 primaryStrings];
        v80 = [v79 firstObject];
        v81 = [v78 initWithComposedString:v80];
      }

      v97 = v81;

      v303[0] = NSForegroundColorAttributeName;
      v303[1] = NSFontAttributeName;
      v304[0] = v264;
      v304[1] = v263;
      v303[2] = MKServerFormattedStringArtworkSizeAttributeKey;
      v304[2] = &off_1016E9470;
      v98 = [NSDictionary dictionaryWithObjects:v304 forKeys:v303 count:3];
      v99 = [v97 multiPartAttributedStringWithAttributes:v98];
      v100 = [v99 attributedString];
      v101 = *p_primaryText;
      *p_primaryText = v100;

      if ([*p_primaryText length])
      {
        v260 = 0;
        v73 = v269;
        goto LABEL_56;
      }
    }

    v260 = (v256[2])(v256, 0);
  }

  else
  {
    v260 = (v256[2])();
  }

  if (v260)
  {
    v63 = [NSAttributedString alloc];
    v64 = v263;
    if (v39)
    {
      v64 = v258;
    }

    v301[0] = NSFontAttributeName;
    v301[1] = NSForegroundColorAttributeName;
    v65 = v264;
    if (v39)
    {
      v65 = v259;
    }

    v302[0] = v64;
    v302[1] = v65;
    v66 = [NSDictionary dictionaryWithObjects:v302 forKeys:v301 count:2];
    v67 = [v63 initWithString:v260 attributes:v66];

    if (v39)
    {
      v68 = p_secondaryText;
    }

    else
    {
      v68 = p_primaryText;
    }

    objc_storeStrong(v68, v67);
  }

  if ((v36 & 1) == 0)
  {
    if (v267)
    {
      v69 = [v267 secondaryStrings];
      v70 = [v69 count] == 0;

      if (!v70)
      {
        v71 = [v267 secondaryStrings];
        v72 = [v71 firstObject];

LABEL_58:
        v83 = 0;
        v74 = 0;
        goto LABEL_62;
      }

      v82 = [v267 instructions];
      v74 = [v82 firstObject];

      v75 = [v267 variableOverrides];
      goto LABEL_49;
    }

    v73 = v269;
    if (!v269)
    {
      if ([(RouteStepItem *)v270 context]== 1)
      {
        v72 = [(RouteStepManeuverItem *)v270 _signInstructionStringForStep:v266];
        if (!v72)
        {
          v74 = [(RouteStepManeuverItem *)v270 _signInstructionForStep:v266];
          v75 = [(RouteStepManeuverItem *)v270 _instructionVariables];
LABEL_49:
          v83 = v75;
          goto LABEL_61;
        }

LABEL_70:
        v83 = 0;
        goto LABEL_71;
      }

      v113 = [(RouteStepItem *)v270 context]== 2;
      v114 = [(RouteStepManeuverItem *)v270 _listInstructionStringForStep:v266];
      v72 = v114;
      if (v113)
      {
        if (v114)
        {
          goto LABEL_70;
        }
      }

      else if (v114)
      {
        goto LABEL_70;
      }

      v74 = [(RouteStepManeuverItem *)v270 _listInstructionForStep:v266];
      v75 = [(RouteStepManeuverItem *)v270 _instructionVariables];
      goto LABEL_49;
    }

LABEL_56:
    v102 = [v73 primarySign];
    v103 = [v102 secondaryStrings];
    v104 = [v103 count] == 0;

    v105 = [v269 primarySign];
    v106 = v105;
    if (!v104)
    {
      v107 = [v105 secondaryStrings];
      v72 = [v107 firstObject];

      goto LABEL_58;
    }

    v108 = [v105 details];
    v74 = [v108 firstObject];

    v109 = [v269 primarySign];
    v83 = [v109 variableOverrides];

LABEL_61:
    v72 = 0;
LABEL_62:
    if (!(v74 | v72))
    {
      v74 = 0;
LABEL_83:

      goto LABEL_84;
    }

    if (v74)
    {
      v110 = [MKServerFormattedStringParameters alloc];
      MKFormattedStringOptionsMakeDefault();
      v111 = [v110 initWithOptions:&v274 variableOverrides:v83];
      v112 = [[MKServerFormattedString alloc] initWithGeoServerString:v74 parameters:v111];

      goto LABEL_72;
    }

LABEL_71:
    v112 = [[MKServerFormattedString alloc] initWithComposedString:v72];
    v74 = 0;
LABEL_72:
    v115 = v270;
    if (v270->_cachedShouldFlipPrimaryAndSecondaryText != v39 || (v116 = [(MKServerFormattedString *)v270->_cachedSecondaryServerFormattedString isEqualToServerFormattedString:v112], v115 = v270, !v116))
    {
      v115->_cachedShouldFlipPrimaryAndSecondaryText = v39;
      objc_storeStrong(&v115->_cachedSecondaryServerFormattedString, v112);
      v117 = v263;
      if (!v39)
      {
        v117 = v258;
      }

      v299[0] = NSFontAttributeName;
      v299[1] = NSForegroundColorAttributeName;
      v118 = v264;
      if (!v39)
      {
        v118 = v259;
      }

      v300[0] = v117;
      v300[1] = v118;
      v299[2] = MKServerFormattedStringArtworkSizeAttributeKey;
      v119 = [(RouteStepItem *)v270 metrics];
      v120 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v119 shieldArtworkSize]);
      v300[2] = v120;
      v121 = [NSDictionary dictionaryWithObjects:v300 forKeys:v299 count:3];
      v122 = [v112 multiPartAttributedStringWithAttributes:v121];
      v123 = [v122 attributedString];
      cachedSecondaryText = v270->_cachedSecondaryText;
      v270->_cachedSecondaryText = v123;

      v115 = v270;
    }

    if (v115->_cachedShouldFlipPrimaryAndSecondaryText)
    {
      v125 = p_primaryText;
    }

    else
    {
      v125 = p_secondaryText;
    }

    objc_storeStrong(v125, v115->_cachedSecondaryText);

    goto LABEL_83;
  }

LABEL_84:
  tertiaryText = v270->_tertiaryText;
  v270->_tertiaryText = 0;

  v127 = [(RouteStepItem *)v270 metrics];
  v128 = [v127 tertiaryTextFontIsFixedSize];

  v129 = [(RouteStepItem *)v270 metrics];
  v130 = v129;
  if (v128)
  {
    [v129 tertiaryTextFontSize];
    v132 = v131;
    v133 = [(RouteStepItem *)v270 metrics];
    [v133 tertiaryTextFontWeight];
    v261 = [UIFont systemFontOfSize:v132 weight:v134];
  }

  else
  {
    v133 = [v129 tertiaryTextFontStyle];
    v135 = [(RouteStepItem *)v270 metrics];
    [v135 tertiaryTextFontWeight];
    v137 = v136;
    v138 = [(RouteStepItem *)v270 traitCollection];
    v261 = [UIFont _maps_fontWithTextStyle:v133 weight:v138 compatibleWithTraitCollection:v137];
  }

  v139 = [(RouteStepItem *)v270 state]== 0;
  v140 = [(RouteStepItem *)v270 metrics];
  v141 = v140;
  if (v139)
  {
    [v140 tertiaryTextDisabledTextColor];
  }

  else
  {
    [v140 tertiaryTextActiveTextColor];
  }
  v272 = ;

  if (v270->_isMissedStep)
  {
    v142 = objc_alloc_init(NSTextAttachment);
    v143 = [(RouteStepItem *)v270 traitCollection];
    v144 = [UIImage systemImageNamed:@"exclamationmark.circle.fill" compatibleWithTraitCollection:v143];
    v145 = +[UIColor systemYellowColor];
    v146 = [v144 imageWithTintColor:v145];

    [v261 capHeight];
    v148 = v147;
    [v146 size];
    v150 = v149;
    [v146 size];
    v152 = v151;
    [v146 size];
    [(NSAttributedString *)v142 setBounds:0.0, (v148 - v150) * 0.5, v152, v153];
    [(NSAttributedString *)v142 setImage:v146];
    v154 = [NSAttributedString attributedStringWithAttachment:v142];
    v155 = [[NSMutableAttributedString alloc] initWithAttributedString:v154];
    v156 = [NSAttributedString alloc];
    v157 = +[NSBundle mainBundle];
    v158 = [v157 localizedStringForKey:@"[Directions] unbreakable space" value:@"localized string not found" table:0];
    v141 = [v156 initWithString:v158];

    [v155 appendAttributedString:v141];
    v159 = +[NSBundle mainBundle];
    v160 = [v159 localizedStringForKey:@"[Directions] missed step description" value:@"localized string not found" table:0];

    v161 = [NSAttributedString alloc];
    v297[0] = NSFontAttributeName;
    v297[1] = NSForegroundColorAttributeName;
    v298[0] = v261;
    v298[1] = v272;
    v162 = [NSDictionary dictionaryWithObjects:v298 forKeys:v297 count:2];
    v163 = [v161 initWithString:v160 attributes:v162];

    [v155 appendAttributedString:v163];
    v164 = [v155 copy];
    v165 = v270->_tertiaryText;
    v270->_tertiaryText = v164;
  }

  else if (v257)
  {
    v166 = [(RouteStepManeuverItem *)v270 _combinedTertiaryTextForStepWithChargingStation:v266 font:v261 color:v272];
    v142 = v270->_tertiaryText;
    v270->_tertiaryText = v166;
  }

  else
  {
    if (![v255 count])
    {
      goto LABEL_110;
    }

    if (qword_10195EBB0 != -1)
    {
      dispatch_once(&qword_10195EBB0, &stru_10164DD10);
    }

    v142 = [[NSMutableAttributedString alloc] initWithString:&stru_1016631F0 attributes:0];
    v286 = 0u;
    v287 = 0u;
    v284 = 0u;
    v285 = 0u;
    obj = v255;
    v167 = [obj countByEnumeratingWithState:&v284 objects:v296 count:16];
    if (v167)
    {
      v168 = *v285;
      do
      {
        for (i = 0; i != v167; i = i + 1)
        {
          if (*v285 != v168)
          {
            objc_enumerationMutation(obj);
          }

          v170 = *(*(&v284 + 1) + 8 * i);
          if ([(NSAttributedString *)v142 length])
          {
            [(NSAttributedString *)v142 appendAttributedString:qword_10195EBB8];
          }

          v171 = [MKServerFormattedString alloc];
          v172 = [GEOComposedString alloc];
          v173 = [v170 formattedDescription];
          v174 = [v172 initWithGeoFormattedString:v173];
          v175 = [v171 initWithComposedString:v174];

          v294 = NSForegroundColorAttributeName;
          v176 = [v170 accentColor];
          v177 = v176;
          v178 = v272;
          if (v176)
          {
            v178 = v176;
          }

          v295 = v178;
          v179 = [NSDictionary dictionaryWithObjects:&v295 forKeys:&v294 count:1];
          v180 = [v175 multiPartAttributedStringWithAttributes:v179];
          v181 = [v180 attributedString];
          [(NSAttributedString *)v142 appendAttributedString:v181];
        }

        v167 = [obj countByEnumeratingWithState:&v284 objects:v296 count:16];
      }

      while (v167);
    }

    v292 = NSFontAttributeName;
    v293 = v261;
    v141 = [NSDictionary dictionaryWithObjects:&v293 forKeys:&v292 count:1];
    [(NSAttributedString *)v142 addAttributes:v141 range:0, [(NSAttributedString *)v142 length]];

    objc_storeStrong(&v270->_tertiaryText, v142);
  }

LABEL_110:
  shieldImage = v270->_shieldImage;
  v270->_shieldImage = 0;

  if ([v266 isEVChargerStep])
  {
    v141 = +[GEOFeatureStyleAttributes evChargerStyleAttributes];
    v183 = [(RouteStepItem *)v270 metrics];
    v184 = [v183 iconSize];
    [(RouteStepItem *)v270 scale];
    v185 = [MKIconManager imageForStyle:v141 size:v184 forScale:0 format:?];
    v186 = v270->_shieldImage;
    v270->_shieldImage = v185;
  }

  else if (-[RouteStepItem context](v270, "context") != 1 && ([v262 maneuverType] == 12 || objc_msgSend(v262, "maneuverIsHighwayExit")))
  {
    v280 = 0;
    v281 = &v280;
    v282 = 0x2020000000;
    v283 = 0;
    v274 = 0;
    v275 = &v274;
    v276 = 0x3032000000;
    v277 = sub_100C165A4;
    v278 = sub_100C165B4;
    v279 = 0;
    v273[0] = _NSConcreteStackBlock;
    v273[1] = 3221225472;
    v273[2] = sub_100C165BC;
    v273[3] = &unk_101660090;
    v273[4] = &v280;
    v273[5] = &v274;
    [v262 shieldInfo:v273];
    if (*(v281 + 6))
    {
      v141 = objc_opt_new();
      [v141 setNewInterfaceEnabled:_UISolariumEnabled()];
      [v141 setText:v275[5]];
      v187 = +[VKIconManager sharedManager];
      v188 = *(v281 + 6);
      v189 = v275[5];
      [(RouteStepItem *)v270 scale];
      v191 = v190;
      v192 = [(RouteStepItem *)v270 metrics];
      v193 = [v192 shieldArtworkSize];
      *&v194 = v191;
      v195 = [v187 imageForDataID:v188 text:v189 contentScale:v193 sizeGroup:v141 modifiers:v194];

      v196 = [v195 image];
      [v195 contentScale];
      v198 = [UIImage imageWithCGImage:v196 scale:0 orientation:v197];
      v199 = v270->_shieldImage;
      v270->_shieldImage = v198;
    }

    _Block_object_dispose(&v274, 8);

    _Block_object_dispose(&v280, 8);
  }

  maneuverArtwork = v270->_maneuverArtwork;
  v270->_maneuverArtwork = 0;

  if (v269)
  {
    v141 = [v269 primarySign];
    v201 = [v141 junction];
    v202 = [v201 drivingSide];
    if ([v201 numElements])
    {
      v203 = [[MKJunction alloc] initWithJunction:v201];
    }

    else
    {
      v203 = 0;
    }

    v204 = [GuidanceManeuverArtwork alloc];
    v205 = [v201 maneuverType];
    v206 = [v141 artworkOverride];
    v207 = [(GuidanceManeuverArtwork *)v204 initWithManeuver:v205 junction:v203 drivingSide:v202 artworkDataSource:v206];
    v208 = v270->_maneuverArtwork;
    v270->_maneuverArtwork = v207;
  }

  v209 = v270;
  if (!v270->_shieldImage && !v270->_maneuverArtwork)
  {
    v210 = [v266 junction];
    if (v210)
    {
      v211 = [MKJunction alloc];
      v212 = [v266 junction];
      v141 = [v211 initWithJunction:v212];
    }

    else
    {
      v141 = 0;
    }

    v213 = [v266 drivingSide];
    v214 = [GuidanceManeuverArtwork alloc];
    v215 = [v266 maneuverType];
    v216 = [v266 artworkOverride];
    v217 = [(GuidanceManeuverArtwork *)v214 initWithManeuver:v215 junction:v141 drivingSide:v213 artworkDataSource:v216];
    v218 = v270->_maneuverArtwork;
    v270->_maneuverArtwork = v217;

    v209 = v270;
  }

  if (v209->_isMissedStep)
  {
    v141 = +[UIColor systemYellowColor];
    v219 = [v141 colorWithAlphaComponent:0.150000006];
    backgroundColor = v270->_backgroundColor;
    v270->_backgroundColor = v219;
LABEL_135:

    goto LABEL_136;
  }

  v221 = [(RouteStepItem *)v209 state];
  if (v221 == 2)
  {
    v141 = [(RouteStepItem *)v270 metrics];
    backgroundColor = [v141 highlightColor];
  }

  else
  {
    backgroundColor = 0;
  }

  objc_storeStrong(&v270->_backgroundColor, backgroundColor);
  if (v221 == 2)
  {
    goto LABEL_135;
  }

LABEL_136:
  [(RouteStepItem *)v270 scale];
  v223 = v222;
  v224 = [(RouteStepItem *)v270 metrics];
  v225 = [v224 exitSignSize];

  if (!v269)
  {
    v231 = [v266 representativeSignGuidanceEvent];
    v226 = [v231 signGuidance];

    if (v226)
    {
      v228 = [v226 shieldName];
      if ([v228 hasShield] && objc_msgSend(v228, "hasShieldType"))
      {
        v229 = [v228 shield];
        v232 = [RouteStepShieldDescriptor alloc];
        v233 = [v228 shieldType];
        *&v234 = v223;
        v235 = [(RouteStepShieldDescriptor *)v232 initWithDataId:v233 text:v229 contentScale:v225 sizeGroup:v229 vkIconModifierText:v229 accessibilityLabel:v234];
LABEL_146:
        v230 = v235;
        goto LABEL_150;
      }
    }

LABEL_156:
    exitSignImage = v270->_exitSignImage;
    v270->_exitSignImage = 0;

    v230 = 0;
    goto LABEL_157;
  }

  v226 = [v269 primarySign];
  v227 = [v226 shieldID];
  v228 = [v226 shieldStringID];
  v229 = [v226 shieldText];
  if (!v227 && !v228)
  {
    v230 = 0;
    goto LABEL_150;
  }

  v236 = [RouteStepShieldDescriptor alloc];
  v238 = v236;
  if (v227)
  {
    *&v237 = v223;
    v235 = [(RouteStepShieldDescriptor *)v236 initWithDataId:v227 text:v229 contentScale:v225 sizeGroup:v229 vkIconModifierText:v229 accessibilityLabel:v237];
    goto LABEL_146;
  }

  v239 = +[NSBundle mainBundle];
  v240 = [v239 localizedStringForKey:@"[Directions] Exit AX" value:@"localized string not found" table:0];
  *&v241 = v223;
  v230 = [(RouteStepShieldDescriptor *)v238 initWithName:v228 contentScale:v225 sizeGroup:v229 vkIconModifierText:v240 accessibilityLabel:v241];

LABEL_150:
  if (!v230)
  {
    goto LABEL_156;
  }

  if (!v270->_cachedExitShieldDescriptor || ![(RouteStepShieldDescriptor *)v230 isEqualToShieldDescriptor:?])
  {
    v242 = [(RouteStepShieldDescriptor *)v230 vkImage];
    v243 = v242;
    if (v242)
    {
      v244 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", [v242 image], 0, v223);
      v245 = v270->_exitSignImage;
      v270->_exitSignImage = v244;

      v246 = [(RouteStepShieldDescriptor *)v230 accessibilityLabel];
      [(UIImage *)v270->_exitSignImage setAccessibilityLabel:v246];
    }
  }

LABEL_157:
  objc_storeStrong(&v270->_cachedExitShieldDescriptor, v230);
  v248 = [*p_primaryText _maps_attributedStringWithExcessiveHeightCharacterSupport:1.2];
  v249 = *p_primaryText;
  *p_primaryText = v248;

  v250 = [(NSAttributedString *)*p_secondaryText _maps_attributedStringWithExcessiveHeightCharacterSupport:1.2];
  v251 = *p_secondaryText;
  *p_secondaryText = v250;

  v252 = [(NSAttributedString *)v270->_tertiaryText _maps_attributedStringWithExcessiveHeightCharacterSupport:1.2];
  v253 = v270->_tertiaryText;
  v270->_tertiaryText = v252;
}

- (MNGuidanceSignInfo)guidanceSignInfo
{
  v3 = [(RouteStepItem *)self userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(RouteStepItem *)self userInfo];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)laneGuidanceInfo
{
  v3 = [(RouteStepItem *)self userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(RouteStepItem *)self userInfo];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)distanceToManeuver
{
  v3 = [(RouteStepItem *)self userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(RouteStepItem *)self userInfo];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (GuidanceManeuverArtwork)maneuverArtwork
{
  if (!self->_computedContent)
  {
    [(RouteStepManeuverItem *)self _computeContent];
  }

  maneuverArtwork = self->_maneuverArtwork;

  return maneuverArtwork;
}

- (UIImage)shieldImage
{
  if (!self->_computedContent)
  {
    [(RouteStepManeuverItem *)self _computeContent];
  }

  shieldImage = self->_shieldImage;

  return shieldImage;
}

- (UIColor)backgroundColor
{
  if (!self->_computedContent)
  {
    [(RouteStepManeuverItem *)self _computeContent];
  }

  backgroundColor = self->_backgroundColor;

  return backgroundColor;
}

- (NSAttributedString)tertiaryText
{
  if (!self->_computedContent)
  {
    [(RouteStepManeuverItem *)self _computeContent];
  }

  tertiaryText = self->_tertiaryText;

  return tertiaryText;
}

- (id)description
{
  if (self->_computedContent)
  {
    v3 = objc_opt_class();
    v4 = [(RouteStepManeuverItem *)self primaryText];
    v5 = [v4 string];
    v6 = [(RouteStepManeuverItem *)self secondaryText];
    v7 = [v6 string];
    v8 = [(RouteStepManeuverItem *)self tertiaryText];
    v9 = [v8 string];
    v10 = [NSString stringWithFormat:@"<%@: %p primaryText = %@; secondaryText = %@; tertiaryText = %@>", v3, self, v5, v7, v9];;
  }

  else
  {
    v11 = [(RouteStepManeuverItem *)self step];
    v4 = [v11 contentsForContext:{-[RouteStepItem context](self, "context")}];

    v12 = objc_opt_class();
    v5 = [v4 stringForDistance:-1.0];
    v6 = [v4 instruction];
    v10 = [NSString stringWithFormat:@"<%@: %p primaryText = %@; secondaryText = %@; tertiaryText = (unknown)>", v12, self, v5, v6];;
  }

  return v10;
}

- (id)_evaluatedStringForInstructionString:(id)a3
{
  v4 = a3;
  v5 = [(RouteStepItem *)self route];
  v6 = [(RouteStepManeuverItem *)self step];
  v7 = [v5 legIndexForStepIndex:{objc_msgSend(v6, "stepIndex")}];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = sub_100035E6C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(RouteStepManeuverItem *)self step];
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to get leg index for step: %@", buf, 0xCu);
    }

    v10 = v4;
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100C15820;
    v13[3] = &unk_10164DD38;
    v13[4] = self;
    v13[5] = v7;
    v11 = [v4 optionsWithArgumentHandler:v13];
    v10 = [v4 composedStringWithOptions:v11];
  }

  return v10;
}

- (id)_instructionVariables
{
  v3 = objc_opt_new();
  v4 = [(RouteStepItem *)self route];
  v5 = [(RouteStepManeuverItem *)self step];
  v6 = [v4 legIndexForStepIndex:{objc_msgSend(v5, "stepIndex")}];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = sub_100035E6C();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v8 = [(RouteStepManeuverItem *)self step];
    v17 = 138412290;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to get leg index for step: %@", &v17, 0xCu);
  }

  else
  {
    v9 = [(RouteStepItem *)self route];
    v10 = [v9 legs];
    v7 = [v10 objectAtIndexedSubscript:v6];

    v11 = [v7 destination];
    v12 = [v11 navDisplayAddress];
    [v3 setObject:v12 forKeyedSubscript:@"{Address}"];

    v13 = [v7 destination];
    v14 = [v13 navDisplayNameWithSpecialContacts:0];
    [v3 setObject:v14 forKeyedSubscript:@"{Name}"];

    v8 = [(RouteStepManeuverItem *)self step];
    v15 = [v8 maneuverRoadOrExitName];
    [v3 setObject:v15 forKeyedSubscript:@"{Road}"];
  }

LABEL_6:

  return v3;
}

- (id)_signInstructionStringForStep:(id)a3
{
  v4 = a3;
  v5 = [v4 representativeSignGuidanceEvent];
  v6 = [v5 signGuidance];

  v7 = [v6 signDetails];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [GEOComposedString alloc];
    v10 = [v6 signDetails];
    v11 = [v10 firstObject];
    v12 = [v9 initWithGeoFormattedString:v11];

    v13 = [(RouteStepManeuverItem *)self _evaluatedStringForInstructionString:v12];
  }

  else
  {
    v14 = sub_100035E6C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Missing sign guidance for step: %@", &v16, 0xCu);
    }

    v13 = [(RouteStepManeuverItem *)self _listInstructionStringForStep:v4];
  }

  return v13;
}

- (id)_signInstructionForStep:(id)a3
{
  v4 = a3;
  v5 = [v4 representativeSignGuidanceEvent];
  v6 = [v5 signGuidance];

  v7 = [v6 signDetails];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [v6 signDetails];
    v10 = [v9 firstObject];
  }

  else
  {
    v11 = sub_100035E6C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Missing sign guidance for step: %@", &v13, 0xCu);
    }

    v10 = [(RouteStepManeuverItem *)self _listInstructionForStep:v4];
  }

  return v10;
}

- (id)_listInstructionStringForStep:(id)a3
{
  v4 = [a3 instructionStringsForListView];
  v5 = [v4 firstObject];
  v6 = [(RouteStepManeuverItem *)self _evaluatedStringForInstructionString:v5];

  return v6;
}

- (id)_listInstructionForStep:(id)a3
{
  v3 = [a3 geoStep];
  v4 = [v3 instructionsForListView];
  v5 = [v4 firstObject];

  return v5;
}

- (id)_combinedTertiaryTextForStepWithChargingStation:(id)a3 font:(id)a4 color:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 chargingStationInfo];
  if (!v10)
  {
    v45 = sub_10006D178();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v54 = "[RouteStepManeuverItem _combinedTertiaryTextForStepWithChargingStation:font:color:]";
      v55 = 2080;
      v56 = "RouteStepManeuverItem.m";
      v57 = 1024;
      v58 = 764;
      v59 = 2080;
      v60 = "chargingStationInfo";
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v46 = sub_10006D178();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v54 = v47;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v50 = [v7 attributedChargeStringForWaypointType:1 font:v8 textColor:v9 includeDaysAgo:0];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"Directions_Driving_EV_charge_to" value:@"localized string not found" table:0];
  [v10 batteryPercentageAfterCharging];
  v48 = [NSString stringWithFormat:v12, v13];

  v14 = objc_opt_new();
  v15 = [UIImage systemImageNamed:@"exclamationmark.circle.fill"];
  [v8 pointSize];
  v16 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:0 scale:?];
  v17 = [v15 imageWithConfiguration:v16];

  v18 = [v17 imageWithRenderingMode:2];
  v19 = [v18 _flatImageWithColor:v9];
  v20 = [v19 imageWithRenderingMode:1];

  [v14 setImage:v20];
  [v8 capHeight];
  v22 = v21;
  [v20 size];
  v24 = (v22 - v23) * 0.5;
  [v20 size];
  v26 = v25;
  [v20 size];
  [v14 setBounds:{0.0, v24, v26, v27}];
  v49 = v7;
  v28 = [NSAttributedString attributedStringWithAttachment:v14];
  v29 = [v28 mutableCopy];

  v30 = [[NSAttributedString alloc] initWithString:@" "];
  [v29 appendAttributedString:v30];

  v31 = [[NSAttributedString alloc] initWithString:v48];
  [v29 appendAttributedString:v31];

  v32 = +[NSBundle mainBundle];
  v33 = [v32 localizedStringForKey:@"[Directions] road descriptions separator" value:@"localized string not found" table:0];

  v34 = [[NSAttributedString alloc] initWithString:v33];
  [v29 appendAttributedString:v34];

  [v10 chargingTime];
  v36 = [NSString _navigation_stringWithSeconds:v35 abbreviated:1];
  v37 = [[NSAttributedString alloc] initWithString:v36];
  [v29 appendAttributedString:v37];

  v38 = [v29 string];
  v39 = [v38 length];

  v51[0] = NSFontAttributeName;
  v51[1] = NSForegroundColorAttributeName;
  v52[0] = v8;
  v52[1] = v9;
  v40 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];
  [v29 addAttributes:v40 range:{0, v39}];

  v41 = [[NSMutableAttributedString alloc] initWithAttributedString:v50];
  v42 = [[NSAttributedString alloc] initWithString:@"\n"];
  [v41 appendAttributedString:v42];

  [v41 appendAttributedString:v29];
  v43 = [v41 copy];

  return v43;
}

- (BOOL)_shouldResetOnUserInfo:(id)a3 changedTo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((v6 == 0) != (v7 != 0))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();
    objc_opt_class();
    v10 = objc_opt_isKindOfClass();
    v11 = v10;
    if (isKindOfClass & 1) != 0 || (v9 & 1) != 0 || (v10)
    {
      objc_opt_class();
      if (((isKindOfClass ^ objc_opt_isKindOfClass()) & 1) == 0)
      {
        objc_opt_class();
        if (((v9 ^ objc_opt_isKindOfClass()) & 1) == 0)
        {
          objc_opt_class();
          if (((v11 ^ objc_opt_isKindOfClass()) & 1) == 0)
          {
            if (isKindOfClass)
            {
              v14 = [(RouteStepManeuverItem *)self step];
              [v14 transportType];

              v15 = sub_100C168BC(v6, v7);
            }

            else
            {
              if ((v9 & 1) == 0)
              {
                if (v11)
                {
                  v16 = [v6 primarySign];
                  v17 = [v7 primarySign];
                  v12 = [v16 isEquivalentToSignDescription:v17] ^ 1;

                  goto LABEL_9;
                }

                goto LABEL_8;
              }

              v15 = [v6 isEquivalentToLaneInfo:v7];
            }

            LOBYTE(v12) = v15 ^ 1;
            goto LABEL_9;
          }
        }
      }
    }
  }

LABEL_8:
  LOBYTE(v12) = 1;
LABEL_9:

  return v12;
}

- (void)setUserInfo:(id)a3
{
  v5 = a3;
  v6 = self->super._userInfo;
  v8 = v5;
  if (v8 | v6)
  {
    v7 = [v6 isEqual:v8];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->super._userInfo, a3);
      if ([(RouteStepManeuverItem *)self _shouldResetOnUserInfo:v6 changedTo:v8])
      {
        [(RouteStepManeuverItem *)self reset];
      }
    }
  }
}

- (RouteStepManeuverItem)initWithRouteStep:(id)a3 cellClass:(Class)a4 state:(unint64_t)a5 metrics:(id)a6 context:(int64_t)a7 route:(id)a8 scale:(double)a9 isMissedStep:(BOOL)a10
{
  v18 = a3;
  v19 = a6;
  v23.receiver = self;
  v23.super_class = RouteStepManeuverItem;
  v20 = [(RouteStepItem *)&v23 initWithCellClass:a4 state:a5 metrics:v19 context:a7 route:a8 scale:a9];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_step, a3);
    v21->_isMissedStep = a10;
    [v19 imageAreaWidth];
    [(RouteStepItem *)v21 setHairlineLeadingInset:?];
    [v19 textTrailingMargin];
    [(RouteStepItem *)v21 setHairlineTrailingInset:?];
  }

  return v21;
}

@end