@interface RouteStepManeuverItem
- (BOOL)_shouldResetOnUserInfo:(id)info changedTo:(id)to;
- (GuidanceManeuverArtwork)maneuverArtwork;
- (MNGuidanceSignInfo)guidanceSignInfo;
- (NSAttributedString)primaryText;
- (NSAttributedString)secondaryText;
- (NSAttributedString)tertiaryText;
- (RouteStepManeuverItem)initWithRouteStep:(id)step cellClass:(Class)class state:(unint64_t)state metrics:(id)metrics context:(int64_t)context route:(id)route scale:(double)scale isMissedStep:(BOOL)self0;
- (UIColor)backgroundColor;
- (UIImage)exitSignImage;
- (UIImage)shieldImage;
- (id)_combinedTertiaryTextForStepWithChargingStation:(id)station font:(id)font color:(id)color;
- (id)_evaluatedStringForInstructionString:(id)string;
- (id)_instructionVariables;
- (id)_listInstructionForStep:(id)step;
- (id)_listInstructionStringForStep:(id)step;
- (id)_signInstructionForStep:(id)step;
- (id)_signInstructionStringForStep:(id)step;
- (id)description;
- (id)distanceToManeuver;
- (id)laneGuidanceInfo;
- (void)_computeContent;
- (void)reset;
- (void)setUserInfo:(id)info;
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

  selfCopy = self;
  step = [(RouteStepManeuverItem *)self step];
  geoStep = [step geoStep];
  roadDescriptions = [geoStep roadDescriptions];
  chargingStationInfo = [step chargingStationInfo];
  v6 = [(RouteStepItem *)self state]== 0;
  metrics = [(RouteStepItem *)self metrics];
  v8 = metrics;
  if (v6)
  {
    [metrics primaryTextDisabledTextColor];
  }

  else
  {
    [metrics primaryTextActiveTextColor];
  }
  v264 = ;

  metrics2 = [(RouteStepItem *)selfCopy metrics];
  primaryTextFontIsFixedSize = [metrics2 primaryTextFontIsFixedSize];

  metrics3 = [(RouteStepItem *)selfCopy metrics];
  v12 = metrics3;
  if (primaryTextFontIsFixedSize)
  {
    [metrics3 primaryTextFontSize];
    v14 = v13;
    metrics4 = [(RouteStepItem *)selfCopy metrics];
    [metrics4 primaryTextFontWeight];
    v263 = [UIFont systemFontOfSize:v14 weight:v16];
  }

  else
  {
    metrics4 = [metrics3 primaryTextFontStyle];
    metrics5 = [(RouteStepItem *)selfCopy metrics];
    [metrics5 primaryTextFontWeight];
    v19 = v18;
    traitCollection = [(RouteStepItem *)selfCopy traitCollection];
    v263 = [UIFont _maps_fontWithTextStyle:metrics4 weight:traitCollection compatibleWithTraitCollection:v19];
  }

  v21 = [(RouteStepItem *)selfCopy state]== 0;
  metrics6 = [(RouteStepItem *)selfCopy metrics];
  v23 = metrics6;
  if (v21)
  {
    [metrics6 secondaryTextDisabledTextColor];
  }

  else
  {
    [metrics6 secondaryTextActiveTextColor];
  }
  v259 = ;

  metrics7 = [(RouteStepItem *)selfCopy metrics];
  secondaryTextFontIsFixedSize = [metrics7 secondaryTextFontIsFixedSize];

  metrics8 = [(RouteStepItem *)selfCopy metrics];
  v27 = metrics8;
  if (secondaryTextFontIsFixedSize)
  {
    [metrics8 secondaryTextFontSize];
    v29 = v28;
    metrics9 = [(RouteStepItem *)selfCopy metrics];
    [metrics9 secondaryTextFontWeight];
    v258 = [UIFont systemFontOfSize:v29 weight:v31];
  }

  else
  {
    metrics9 = [metrics8 secondaryTextFontStyle];
    metrics10 = [(RouteStepItem *)selfCopy metrics];
    [metrics10 secondaryTextFontWeight];
    v34 = v33;
    traitCollection2 = [(RouteStepItem *)selfCopy traitCollection];
    v258 = [UIFont _maps_fontWithTextStyle:metrics9 weight:traitCollection2 compatibleWithTraitCollection:v34];
  }

  guidanceSignInfo = [(RouteStepManeuverItem *)selfCopy guidanceSignInfo];
  laneGuidanceInfo = [(RouteStepManeuverItem *)selfCopy laneGuidanceInfo];
  distanceToManeuver = [(RouteStepManeuverItem *)selfCopy distanceToManeuver];
  if ([step isStartOrResumeStep])
  {
    isStaticText = 1;
  }

  else
  {
    primarySign = [guidanceSignInfo primarySign];
    isStaticText = [primarySign isStaticText];
  }

  metrics11 = [(RouteStepItem *)selfCopy metrics];
  shouldFlipPrimaryAndSecondaryText = [metrics11 shouldFlipPrimaryAndSecondaryText];

  v288[0] = _NSConcreteStackBlock;
  v288[1] = 3221225472;
  v288[2] = sub_100C164FC;
  v288[3] = &unk_10164DCF0;
  v266 = step;
  v289 = v266;
  v290 = selfCopy;
  v291 = isStaticText;
  v256 = objc_retainBlock(v288);
  if (laneGuidanceInfo)
  {
    primaryStrings = [laneGuidanceInfo primaryStrings];
    v41 = [primaryStrings count] == 0;

    if (v41)
    {
      v54 = [MKServerFormattedStringParameters alloc];
      distanceDetailLevel = [laneGuidanceInfo distanceDetailLevel];
      variableOverrides = [laneGuidanceInfo variableOverrides];
      primaryStrings2 = [v54 initWithInstructionsDistanceDetailLevel:distanceDetailLevel variableOverrides:variableOverrides];

      titles = [laneGuidanceInfo titles];
      firstObject = [titles firstObject];

      v45 = [[MKServerFormattedString alloc] initWithGeoServerString:firstObject parameters:primaryStrings2];
    }

    else
    {
      v42 = [MKServerFormattedString alloc];
      primaryStrings2 = [laneGuidanceInfo primaryStrings];
      firstObject = [primaryStrings2 firstObject];
      v45 = [v42 initWithComposedString:firstObject];
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
    attributedString = [v60 attributedString];
    v62 = *p_primaryText;
    *p_primaryText = attributedString;

    if ([*p_primaryText length])
    {
      v260 = 0;
    }

    else
    {
      v260 = (v256[2])(v256, 0);
    }
  }

  else if (guidanceSignInfo)
  {
    primarySign2 = [guidanceSignInfo primarySign];
    v47 = primarySign2;
    if (isStaticText)
    {
      secondaryStrings = [primarySign2 secondaryStrings];
      v49 = [secondaryStrings count] == 0;

      if (v49)
      {
        v84 = [MKServerFormattedStringParameters alloc];
        distanceDetailLevel2 = [v47 distanceDetailLevel];
        variableOverrides2 = [v47 variableOverrides];
        secondaryStrings2 = [v84 initWithInstructionsDistanceDetailLevel:distanceDetailLevel2 variableOverrides:variableOverrides2];

        details = [v47 details];
        firstObject2 = [details firstObject];

        v53 = [[MKServerFormattedString alloc] initWithGeoServerString:firstObject2 parameters:secondaryStrings2];
      }

      else
      {
        v50 = [MKServerFormattedString alloc];
        secondaryStrings2 = [v47 secondaryStrings];
        firstObject2 = [secondaryStrings2 firstObject];
        v53 = [v50 initWithComposedString:firstObject2];
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
      attributedString2 = [v90 attributedString];
      v92 = *p_primaryText;
      *p_primaryText = attributedString2;

      if ([*p_primaryText length])
      {
        v260 = 0;
        goto LABEL_84;
      }
    }

    else
    {
      primaryStrings3 = [primarySign2 primaryStrings];
      v77 = [primaryStrings3 count] == 0;

      if (v77)
      {
        v93 = [MKServerFormattedStringParameters alloc];
        distanceDetailLevel3 = [v47 distanceDetailLevel];
        variableOverrides3 = [v47 variableOverrides];
        primaryStrings4 = [v93 initWithInstructionsDistanceDetailLevel:distanceDetailLevel3 variableOverrides:variableOverrides3];

        titles2 = [v47 titles];
        firstObject3 = [titles2 firstObject];

        v81 = [[MKServerFormattedString alloc] initWithGeoServerString:firstObject3 parameters:primaryStrings4];
      }

      else
      {
        v78 = [MKServerFormattedString alloc];
        primaryStrings4 = [v47 primaryStrings];
        firstObject3 = [primaryStrings4 firstObject];
        v81 = [v78 initWithComposedString:firstObject3];
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
      attributedString3 = [v99 attributedString];
      v101 = *p_primaryText;
      *p_primaryText = attributedString3;

      if ([*p_primaryText length])
      {
        v260 = 0;
        v73 = guidanceSignInfo;
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
    if (shouldFlipPrimaryAndSecondaryText)
    {
      v64 = v258;
    }

    v301[0] = NSFontAttributeName;
    v301[1] = NSForegroundColorAttributeName;
    v65 = v264;
    if (shouldFlipPrimaryAndSecondaryText)
    {
      v65 = v259;
    }

    v302[0] = v64;
    v302[1] = v65;
    v66 = [NSDictionary dictionaryWithObjects:v302 forKeys:v301 count:2];
    v67 = [v63 initWithString:v260 attributes:v66];

    if (shouldFlipPrimaryAndSecondaryText)
    {
      v68 = p_secondaryText;
    }

    else
    {
      v68 = p_primaryText;
    }

    objc_storeStrong(v68, v67);
  }

  if ((isStaticText & 1) == 0)
  {
    if (laneGuidanceInfo)
    {
      secondaryStrings3 = [laneGuidanceInfo secondaryStrings];
      v70 = [secondaryStrings3 count] == 0;

      if (!v70)
      {
        secondaryStrings4 = [laneGuidanceInfo secondaryStrings];
        firstObject4 = [secondaryStrings4 firstObject];

LABEL_58:
        variableOverrides5 = 0;
        firstObject5 = 0;
        goto LABEL_62;
      }

      instructions = [laneGuidanceInfo instructions];
      firstObject5 = [instructions firstObject];

      variableOverrides4 = [laneGuidanceInfo variableOverrides];
      goto LABEL_49;
    }

    v73 = guidanceSignInfo;
    if (!guidanceSignInfo)
    {
      if ([(RouteStepItem *)selfCopy context]== 1)
      {
        firstObject4 = [(RouteStepManeuverItem *)selfCopy _signInstructionStringForStep:v266];
        if (!firstObject4)
        {
          firstObject5 = [(RouteStepManeuverItem *)selfCopy _signInstructionForStep:v266];
          variableOverrides4 = [(RouteStepManeuverItem *)selfCopy _instructionVariables];
LABEL_49:
          variableOverrides5 = variableOverrides4;
          goto LABEL_61;
        }

LABEL_70:
        variableOverrides5 = 0;
        goto LABEL_71;
      }

      v113 = [(RouteStepItem *)selfCopy context]== 2;
      v114 = [(RouteStepManeuverItem *)selfCopy _listInstructionStringForStep:v266];
      firstObject4 = v114;
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

      firstObject5 = [(RouteStepManeuverItem *)selfCopy _listInstructionForStep:v266];
      variableOverrides4 = [(RouteStepManeuverItem *)selfCopy _instructionVariables];
      goto LABEL_49;
    }

LABEL_56:
    primarySign3 = [v73 primarySign];
    secondaryStrings5 = [primarySign3 secondaryStrings];
    v104 = [secondaryStrings5 count] == 0;

    primarySign4 = [guidanceSignInfo primarySign];
    v106 = primarySign4;
    if (!v104)
    {
      secondaryStrings6 = [primarySign4 secondaryStrings];
      firstObject4 = [secondaryStrings6 firstObject];

      goto LABEL_58;
    }

    details2 = [primarySign4 details];
    firstObject5 = [details2 firstObject];

    primarySign5 = [guidanceSignInfo primarySign];
    variableOverrides5 = [primarySign5 variableOverrides];

LABEL_61:
    firstObject4 = 0;
LABEL_62:
    if (!(firstObject5 | firstObject4))
    {
      firstObject5 = 0;
LABEL_83:

      goto LABEL_84;
    }

    if (firstObject5)
    {
      v110 = [MKServerFormattedStringParameters alloc];
      MKFormattedStringOptionsMakeDefault();
      v111 = [v110 initWithOptions:&v274 variableOverrides:variableOverrides5];
      v112 = [[MKServerFormattedString alloc] initWithGeoServerString:firstObject5 parameters:v111];

      goto LABEL_72;
    }

LABEL_71:
    v112 = [[MKServerFormattedString alloc] initWithComposedString:firstObject4];
    firstObject5 = 0;
LABEL_72:
    v115 = selfCopy;
    if (selfCopy->_cachedShouldFlipPrimaryAndSecondaryText != shouldFlipPrimaryAndSecondaryText || (v116 = [(MKServerFormattedString *)selfCopy->_cachedSecondaryServerFormattedString isEqualToServerFormattedString:v112], v115 = selfCopy, !v116))
    {
      v115->_cachedShouldFlipPrimaryAndSecondaryText = shouldFlipPrimaryAndSecondaryText;
      objc_storeStrong(&v115->_cachedSecondaryServerFormattedString, v112);
      v117 = v263;
      if (!shouldFlipPrimaryAndSecondaryText)
      {
        v117 = v258;
      }

      v299[0] = NSFontAttributeName;
      v299[1] = NSForegroundColorAttributeName;
      v118 = v264;
      if (!shouldFlipPrimaryAndSecondaryText)
      {
        v118 = v259;
      }

      v300[0] = v117;
      v300[1] = v118;
      v299[2] = MKServerFormattedStringArtworkSizeAttributeKey;
      metrics12 = [(RouteStepItem *)selfCopy metrics];
      v120 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [metrics12 shieldArtworkSize]);
      v300[2] = v120;
      v121 = [NSDictionary dictionaryWithObjects:v300 forKeys:v299 count:3];
      v122 = [v112 multiPartAttributedStringWithAttributes:v121];
      attributedString4 = [v122 attributedString];
      cachedSecondaryText = selfCopy->_cachedSecondaryText;
      selfCopy->_cachedSecondaryText = attributedString4;

      v115 = selfCopy;
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
  tertiaryText = selfCopy->_tertiaryText;
  selfCopy->_tertiaryText = 0;

  metrics13 = [(RouteStepItem *)selfCopy metrics];
  tertiaryTextFontIsFixedSize = [metrics13 tertiaryTextFontIsFixedSize];

  metrics14 = [(RouteStepItem *)selfCopy metrics];
  v130 = metrics14;
  if (tertiaryTextFontIsFixedSize)
  {
    [metrics14 tertiaryTextFontSize];
    v132 = v131;
    metrics15 = [(RouteStepItem *)selfCopy metrics];
    [metrics15 tertiaryTextFontWeight];
    v261 = [UIFont systemFontOfSize:v132 weight:v134];
  }

  else
  {
    metrics15 = [metrics14 tertiaryTextFontStyle];
    metrics16 = [(RouteStepItem *)selfCopy metrics];
    [metrics16 tertiaryTextFontWeight];
    v137 = v136;
    traitCollection3 = [(RouteStepItem *)selfCopy traitCollection];
    v261 = [UIFont _maps_fontWithTextStyle:metrics15 weight:traitCollection3 compatibleWithTraitCollection:v137];
  }

  v139 = [(RouteStepItem *)selfCopy state]== 0;
  metrics17 = [(RouteStepItem *)selfCopy metrics];
  primarySign6 = metrics17;
  if (v139)
  {
    [metrics17 tertiaryTextDisabledTextColor];
  }

  else
  {
    [metrics17 tertiaryTextActiveTextColor];
  }
  v272 = ;

  if (selfCopy->_isMissedStep)
  {
    v142 = objc_alloc_init(NSTextAttachment);
    traitCollection4 = [(RouteStepItem *)selfCopy traitCollection];
    v144 = [UIImage systemImageNamed:@"exclamationmark.circle.fill" compatibleWithTraitCollection:traitCollection4];
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
    primarySign6 = [v156 initWithString:v158];

    [v155 appendAttributedString:primarySign6];
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
    v165 = selfCopy->_tertiaryText;
    selfCopy->_tertiaryText = v164;
  }

  else if (chargingStationInfo)
  {
    v166 = [(RouteStepManeuverItem *)selfCopy _combinedTertiaryTextForStepWithChargingStation:v266 font:v261 color:v272];
    v142 = selfCopy->_tertiaryText;
    selfCopy->_tertiaryText = v166;
  }

  else
  {
    if (![roadDescriptions count])
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
    obj = roadDescriptions;
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
          formattedDescription = [v170 formattedDescription];
          v174 = [v172 initWithGeoFormattedString:formattedDescription];
          v175 = [v171 initWithComposedString:v174];

          v294 = NSForegroundColorAttributeName;
          accentColor = [v170 accentColor];
          v177 = accentColor;
          v178 = v272;
          if (accentColor)
          {
            v178 = accentColor;
          }

          v295 = v178;
          v179 = [NSDictionary dictionaryWithObjects:&v295 forKeys:&v294 count:1];
          v180 = [v175 multiPartAttributedStringWithAttributes:v179];
          attributedString5 = [v180 attributedString];
          [(NSAttributedString *)v142 appendAttributedString:attributedString5];
        }

        v167 = [obj countByEnumeratingWithState:&v284 objects:v296 count:16];
      }

      while (v167);
    }

    v292 = NSFontAttributeName;
    v293 = v261;
    primarySign6 = [NSDictionary dictionaryWithObjects:&v293 forKeys:&v292 count:1];
    [(NSAttributedString *)v142 addAttributes:primarySign6 range:0, [(NSAttributedString *)v142 length]];

    objc_storeStrong(&selfCopy->_tertiaryText, v142);
  }

LABEL_110:
  shieldImage = selfCopy->_shieldImage;
  selfCopy->_shieldImage = 0;

  if ([v266 isEVChargerStep])
  {
    primarySign6 = +[GEOFeatureStyleAttributes evChargerStyleAttributes];
    metrics18 = [(RouteStepItem *)selfCopy metrics];
    iconSize = [metrics18 iconSize];
    [(RouteStepItem *)selfCopy scale];
    v185 = [MKIconManager imageForStyle:primarySign6 size:iconSize forScale:0 format:?];
    v186 = selfCopy->_shieldImage;
    selfCopy->_shieldImage = v185;
  }

  else if (-[RouteStepItem context](selfCopy, "context") != 1 && ([geoStep maneuverType] == 12 || objc_msgSend(geoStep, "maneuverIsHighwayExit")))
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
    [geoStep shieldInfo:v273];
    if (*(v281 + 6))
    {
      primarySign6 = objc_opt_new();
      [primarySign6 setNewInterfaceEnabled:_UISolariumEnabled()];
      [primarySign6 setText:v275[5]];
      v187 = +[VKIconManager sharedManager];
      v188 = *(v281 + 6);
      v189 = v275[5];
      [(RouteStepItem *)selfCopy scale];
      v191 = v190;
      metrics19 = [(RouteStepItem *)selfCopy metrics];
      shieldArtworkSize = [metrics19 shieldArtworkSize];
      *&v194 = v191;
      v195 = [v187 imageForDataID:v188 text:v189 contentScale:shieldArtworkSize sizeGroup:primarySign6 modifiers:v194];

      image = [v195 image];
      [v195 contentScale];
      v198 = [UIImage imageWithCGImage:image scale:0 orientation:v197];
      v199 = selfCopy->_shieldImage;
      selfCopy->_shieldImage = v198;
    }

    _Block_object_dispose(&v274, 8);

    _Block_object_dispose(&v280, 8);
  }

  maneuverArtwork = selfCopy->_maneuverArtwork;
  selfCopy->_maneuverArtwork = 0;

  if (guidanceSignInfo)
  {
    primarySign6 = [guidanceSignInfo primarySign];
    junction = [primarySign6 junction];
    drivingSide = [junction drivingSide];
    if ([junction numElements])
    {
      v203 = [[MKJunction alloc] initWithJunction:junction];
    }

    else
    {
      v203 = 0;
    }

    v204 = [GuidanceManeuverArtwork alloc];
    maneuverType = [junction maneuverType];
    artworkOverride = [primarySign6 artworkOverride];
    v207 = [(GuidanceManeuverArtwork *)v204 initWithManeuver:maneuverType junction:v203 drivingSide:drivingSide artworkDataSource:artworkOverride];
    v208 = selfCopy->_maneuverArtwork;
    selfCopy->_maneuverArtwork = v207;
  }

  v209 = selfCopy;
  if (!selfCopy->_shieldImage && !selfCopy->_maneuverArtwork)
  {
    junction2 = [v266 junction];
    if (junction2)
    {
      v211 = [MKJunction alloc];
      junction3 = [v266 junction];
      primarySign6 = [v211 initWithJunction:junction3];
    }

    else
    {
      primarySign6 = 0;
    }

    drivingSide2 = [v266 drivingSide];
    v214 = [GuidanceManeuverArtwork alloc];
    maneuverType2 = [v266 maneuverType];
    artworkOverride2 = [v266 artworkOverride];
    v217 = [(GuidanceManeuverArtwork *)v214 initWithManeuver:maneuverType2 junction:primarySign6 drivingSide:drivingSide2 artworkDataSource:artworkOverride2];
    v218 = selfCopy->_maneuverArtwork;
    selfCopy->_maneuverArtwork = v217;

    v209 = selfCopy;
  }

  if (v209->_isMissedStep)
  {
    primarySign6 = +[UIColor systemYellowColor];
    v219 = [primarySign6 colorWithAlphaComponent:0.150000006];
    backgroundColor = selfCopy->_backgroundColor;
    selfCopy->_backgroundColor = v219;
LABEL_135:

    goto LABEL_136;
  }

  state = [(RouteStepItem *)v209 state];
  if (state == 2)
  {
    primarySign6 = [(RouteStepItem *)selfCopy metrics];
    backgroundColor = [primarySign6 highlightColor];
  }

  else
  {
    backgroundColor = 0;
  }

  objc_storeStrong(&selfCopy->_backgroundColor, backgroundColor);
  if (state == 2)
  {
    goto LABEL_135;
  }

LABEL_136:
  [(RouteStepItem *)selfCopy scale];
  v223 = v222;
  metrics20 = [(RouteStepItem *)selfCopy metrics];
  exitSignSize = [metrics20 exitSignSize];

  if (!guidanceSignInfo)
  {
    representativeSignGuidanceEvent = [v266 representativeSignGuidanceEvent];
    signGuidance = [representativeSignGuidanceEvent signGuidance];

    if (signGuidance)
    {
      shieldName = [signGuidance shieldName];
      if ([shieldName hasShield] && objc_msgSend(shieldName, "hasShieldType"))
      {
        shield = [shieldName shield];
        v232 = [RouteStepShieldDescriptor alloc];
        shieldType = [shieldName shieldType];
        *&v234 = v223;
        v235 = [(RouteStepShieldDescriptor *)v232 initWithDataId:shieldType text:shield contentScale:exitSignSize sizeGroup:shield vkIconModifierText:shield accessibilityLabel:v234];
LABEL_146:
        v230 = v235;
        goto LABEL_150;
      }
    }

LABEL_156:
    exitSignImage = selfCopy->_exitSignImage;
    selfCopy->_exitSignImage = 0;

    v230 = 0;
    goto LABEL_157;
  }

  signGuidance = [guidanceSignInfo primarySign];
  shieldID = [signGuidance shieldID];
  shieldName = [signGuidance shieldStringID];
  shield = [signGuidance shieldText];
  if (!shieldID && !shieldName)
  {
    v230 = 0;
    goto LABEL_150;
  }

  v236 = [RouteStepShieldDescriptor alloc];
  v238 = v236;
  if (shieldID)
  {
    *&v237 = v223;
    v235 = [(RouteStepShieldDescriptor *)v236 initWithDataId:shieldID text:shield contentScale:exitSignSize sizeGroup:shield vkIconModifierText:shield accessibilityLabel:v237];
    goto LABEL_146;
  }

  v239 = +[NSBundle mainBundle];
  v240 = [v239 localizedStringForKey:@"[Directions] Exit AX" value:@"localized string not found" table:0];
  *&v241 = v223;
  v230 = [(RouteStepShieldDescriptor *)v238 initWithName:shieldName contentScale:exitSignSize sizeGroup:shield vkIconModifierText:v240 accessibilityLabel:v241];

LABEL_150:
  if (!v230)
  {
    goto LABEL_156;
  }

  if (!selfCopy->_cachedExitShieldDescriptor || ![(RouteStepShieldDescriptor *)v230 isEqualToShieldDescriptor:?])
  {
    vkImage = [(RouteStepShieldDescriptor *)v230 vkImage];
    v243 = vkImage;
    if (vkImage)
    {
      v244 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", [vkImage image], 0, v223);
      v245 = selfCopy->_exitSignImage;
      selfCopy->_exitSignImage = v244;

      accessibilityLabel = [(RouteStepShieldDescriptor *)v230 accessibilityLabel];
      [(UIImage *)selfCopy->_exitSignImage setAccessibilityLabel:accessibilityLabel];
    }
  }

LABEL_157:
  objc_storeStrong(&selfCopy->_cachedExitShieldDescriptor, v230);
  v248 = [*p_primaryText _maps_attributedStringWithExcessiveHeightCharacterSupport:1.2];
  v249 = *p_primaryText;
  *p_primaryText = v248;

  v250 = [(NSAttributedString *)*p_secondaryText _maps_attributedStringWithExcessiveHeightCharacterSupport:1.2];
  v251 = *p_secondaryText;
  *p_secondaryText = v250;

  v252 = [(NSAttributedString *)selfCopy->_tertiaryText _maps_attributedStringWithExcessiveHeightCharacterSupport:1.2];
  v253 = selfCopy->_tertiaryText;
  selfCopy->_tertiaryText = v252;
}

- (MNGuidanceSignInfo)guidanceSignInfo
{
  userInfo = [(RouteStepItem *)self userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userInfo2 = [(RouteStepItem *)self userInfo];
  }

  else
  {
    userInfo2 = 0;
  }

  return userInfo2;
}

- (id)laneGuidanceInfo
{
  userInfo = [(RouteStepItem *)self userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userInfo2 = [(RouteStepItem *)self userInfo];
  }

  else
  {
    userInfo2 = 0;
  }

  return userInfo2;
}

- (id)distanceToManeuver
{
  userInfo = [(RouteStepItem *)self userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userInfo2 = [(RouteStepItem *)self userInfo];
  }

  else
  {
    userInfo2 = 0;
  }

  return userInfo2;
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
    primaryText = [(RouteStepManeuverItem *)self primaryText];
    string = [primaryText string];
    secondaryText = [(RouteStepManeuverItem *)self secondaryText];
    string2 = [secondaryText string];
    tertiaryText = [(RouteStepManeuverItem *)self tertiaryText];
    string3 = [tertiaryText string];
    v10 = [NSString stringWithFormat:@"<%@: %p primaryText = %@; secondaryText = %@; tertiaryText = %@>", v3, self, string, string2, string3];;
  }

  else
  {
    step = [(RouteStepManeuverItem *)self step];
    primaryText = [step contentsForContext:{-[RouteStepItem context](self, "context")}];

    v12 = objc_opt_class();
    string = [primaryText stringForDistance:-1.0];
    secondaryText = [primaryText instruction];
    v10 = [NSString stringWithFormat:@"<%@: %p primaryText = %@; secondaryText = %@; tertiaryText = (unknown)>", v12, self, string, secondaryText];;
  }

  return v10;
}

- (id)_evaluatedStringForInstructionString:(id)string
{
  stringCopy = string;
  route = [(RouteStepItem *)self route];
  step = [(RouteStepManeuverItem *)self step];
  v7 = [route legIndexForStepIndex:{objc_msgSend(step, "stepIndex")}];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = sub_100035E6C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      step2 = [(RouteStepManeuverItem *)self step];
      *buf = 138412290;
      v15 = step2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to get leg index for step: %@", buf, 0xCu);
    }

    v10 = stringCopy;
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100C15820;
    v13[3] = &unk_10164DD38;
    v13[4] = self;
    v13[5] = v7;
    v11 = [stringCopy optionsWithArgumentHandler:v13];
    v10 = [stringCopy composedStringWithOptions:v11];
  }

  return v10;
}

- (id)_instructionVariables
{
  v3 = objc_opt_new();
  route = [(RouteStepItem *)self route];
  step = [(RouteStepManeuverItem *)self step];
  v6 = [route legIndexForStepIndex:{objc_msgSend(step, "stepIndex")}];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = sub_100035E6C();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    step2 = [(RouteStepManeuverItem *)self step];
    v17 = 138412290;
    v18 = step2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to get leg index for step: %@", &v17, 0xCu);
  }

  else
  {
    route2 = [(RouteStepItem *)self route];
    legs = [route2 legs];
    v7 = [legs objectAtIndexedSubscript:v6];

    destination = [v7 destination];
    navDisplayAddress = [destination navDisplayAddress];
    [v3 setObject:navDisplayAddress forKeyedSubscript:@"{Address}"];

    destination2 = [v7 destination];
    v14 = [destination2 navDisplayNameWithSpecialContacts:0];
    [v3 setObject:v14 forKeyedSubscript:@"{Name}"];

    step2 = [(RouteStepManeuverItem *)self step];
    maneuverRoadOrExitName = [step2 maneuverRoadOrExitName];
    [v3 setObject:maneuverRoadOrExitName forKeyedSubscript:@"{Road}"];
  }

LABEL_6:

  return v3;
}

- (id)_signInstructionStringForStep:(id)step
{
  stepCopy = step;
  representativeSignGuidanceEvent = [stepCopy representativeSignGuidanceEvent];
  signGuidance = [representativeSignGuidanceEvent signGuidance];

  signDetails = [signGuidance signDetails];
  v8 = [signDetails count];

  if (v8)
  {
    v9 = [GEOComposedString alloc];
    signDetails2 = [signGuidance signDetails];
    firstObject = [signDetails2 firstObject];
    v12 = [v9 initWithGeoFormattedString:firstObject];

    v13 = [(RouteStepManeuverItem *)self _evaluatedStringForInstructionString:v12];
  }

  else
  {
    v14 = sub_100035E6C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = stepCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Missing sign guidance for step: %@", &v16, 0xCu);
    }

    v13 = [(RouteStepManeuverItem *)self _listInstructionStringForStep:stepCopy];
  }

  return v13;
}

- (id)_signInstructionForStep:(id)step
{
  stepCopy = step;
  representativeSignGuidanceEvent = [stepCopy representativeSignGuidanceEvent];
  signGuidance = [representativeSignGuidanceEvent signGuidance];

  signDetails = [signGuidance signDetails];
  v8 = [signDetails count];

  if (v8)
  {
    signDetails2 = [signGuidance signDetails];
    firstObject = [signDetails2 firstObject];
  }

  else
  {
    v11 = sub_100035E6C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = stepCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Missing sign guidance for step: %@", &v13, 0xCu);
    }

    firstObject = [(RouteStepManeuverItem *)self _listInstructionForStep:stepCopy];
  }

  return firstObject;
}

- (id)_listInstructionStringForStep:(id)step
{
  instructionStringsForListView = [step instructionStringsForListView];
  firstObject = [instructionStringsForListView firstObject];
  v6 = [(RouteStepManeuverItem *)self _evaluatedStringForInstructionString:firstObject];

  return v6;
}

- (id)_listInstructionForStep:(id)step
{
  geoStep = [step geoStep];
  instructionsForListView = [geoStep instructionsForListView];
  firstObject = [instructionsForListView firstObject];

  return firstObject;
}

- (id)_combinedTertiaryTextForStepWithChargingStation:(id)station font:(id)font color:(id)color
{
  stationCopy = station;
  fontCopy = font;
  colorCopy = color;
  chargingStationInfo = [stationCopy chargingStationInfo];
  if (!chargingStationInfo)
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

  v50 = [stationCopy attributedChargeStringForWaypointType:1 font:fontCopy textColor:colorCopy includeDaysAgo:0];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"Directions_Driving_EV_charge_to" value:@"localized string not found" table:0];
  [chargingStationInfo batteryPercentageAfterCharging];
  v48 = [NSString stringWithFormat:v12, v13];

  v14 = objc_opt_new();
  v15 = [UIImage systemImageNamed:@"exclamationmark.circle.fill"];
  [fontCopy pointSize];
  v16 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:0 scale:?];
  v17 = [v15 imageWithConfiguration:v16];

  v18 = [v17 imageWithRenderingMode:2];
  v19 = [v18 _flatImageWithColor:colorCopy];
  v20 = [v19 imageWithRenderingMode:1];

  [v14 setImage:v20];
  [fontCopy capHeight];
  v22 = v21;
  [v20 size];
  v24 = (v22 - v23) * 0.5;
  [v20 size];
  v26 = v25;
  [v20 size];
  [v14 setBounds:{0.0, v24, v26, v27}];
  v49 = stationCopy;
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

  [chargingStationInfo chargingTime];
  v36 = [NSString _navigation_stringWithSeconds:v35 abbreviated:1];
  v37 = [[NSAttributedString alloc] initWithString:v36];
  [v29 appendAttributedString:v37];

  string = [v29 string];
  v39 = [string length];

  v51[0] = NSFontAttributeName;
  v51[1] = NSForegroundColorAttributeName;
  v52[0] = fontCopy;
  v52[1] = colorCopy;
  v40 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];
  [v29 addAttributes:v40 range:{0, v39}];

  v41 = [[NSMutableAttributedString alloc] initWithAttributedString:v50];
  v42 = [[NSAttributedString alloc] initWithString:@"\n"];
  [v41 appendAttributedString:v42];

  [v41 appendAttributedString:v29];
  v43 = [v41 copy];

  return v43;
}

- (BOOL)_shouldResetOnUserInfo:(id)info changedTo:(id)to
{
  infoCopy = info;
  toCopy = to;
  if ((infoCopy == 0) != (toCopy != 0))
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
              step = [(RouteStepManeuverItem *)self step];
              [step transportType];

              v15 = sub_100C168BC(infoCopy, toCopy);
            }

            else
            {
              if ((v9 & 1) == 0)
              {
                if (v11)
                {
                  primarySign = [infoCopy primarySign];
                  primarySign2 = [toCopy primarySign];
                  v12 = [primarySign isEquivalentToSignDescription:primarySign2] ^ 1;

                  goto LABEL_9;
                }

                goto LABEL_8;
              }

              v15 = [infoCopy isEquivalentToLaneInfo:toCopy];
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

- (void)setUserInfo:(id)info
{
  infoCopy = info;
  v6 = self->super._userInfo;
  v8 = infoCopy;
  if (v8 | v6)
  {
    v7 = [v6 isEqual:v8];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->super._userInfo, info);
      if ([(RouteStepManeuverItem *)self _shouldResetOnUserInfo:v6 changedTo:v8])
      {
        [(RouteStepManeuverItem *)self reset];
      }
    }
  }
}

- (RouteStepManeuverItem)initWithRouteStep:(id)step cellClass:(Class)class state:(unint64_t)state metrics:(id)metrics context:(int64_t)context route:(id)route scale:(double)scale isMissedStep:(BOOL)self0
{
  stepCopy = step;
  metricsCopy = metrics;
  v23.receiver = self;
  v23.super_class = RouteStepManeuverItem;
  v20 = [(RouteStepItem *)&v23 initWithCellClass:class state:state metrics:metricsCopy context:context route:route scale:scale];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_step, step);
    v21->_isMissedStep = missedStep;
    [metricsCopy imageAreaWidth];
    [(RouteStepItem *)v21 setHairlineLeadingInset:?];
    [metricsCopy textTrailingMargin];
    [(RouteStepItem *)v21 setHairlineTrailingInset:?];
  }

  return v21;
}

@end