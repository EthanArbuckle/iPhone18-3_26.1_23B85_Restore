@interface ManeuverBannerView
- (BOOL)_isEligibleToShowWalkingButton;
- (CGSize)sizeThatFits:(CGSize)fits;
- (ManeuverBannerView)initWithTarget:(id)target item:(id)item aperturePresentation:(BOOL)presentation;
- (id)_buttonWithAction:(id)action;
- (id)majorText;
- (id)minorText;
- (void)_updateConstraints;
- (void)setExpanded:(BOOL)expanded;
- (void)setIsVisible:(BOOL)visible;
- (void)setShowsControls:(BOOL)controls;
- (void)updateFromBannerItem;
- (void)updateLayout;
@end

@implementation ManeuverBannerView

- (void)_updateConstraints
{
  [(MapsBannerView *)self bannerAccessoryViewLeadingInset];
  v4 = v3;
  leadingManeuverView = [(ManeuverBannerView *)self leadingManeuverView];
  [leadingManeuverView preferredLeadingPadding];
  [(NSLayoutConstraint *)self->_leadingViewLeadingConstraint setConstant:v6 + v4];

  if ([(ManeuverBannerView *)self expanded])
  {
    maneuverItem = [(ManeuverBannerView *)self maneuverItem];
    laneGuidanceInfo = [maneuverItem laneGuidanceInfo];
    v9 = laneGuidanceInfo != 0;
  }

  else
  {
    v9 = 0;
  }

  if ([(ManeuverBannerView *)self expanded])
  {
    maneuverItem2 = [(ManeuverBannerView *)self maneuverItem];
    laneGuidanceInfo2 = [maneuverItem2 laneGuidanceInfo];
    v12 = laneGuidanceInfo2 == 0;
  }

  else
  {
    v12 = 0;
  }

  [(NSLayoutConstraint *)self->_laneGuidanceTopConstraint setActive:v9];
  distanceLabelTopConstraint = self->_distanceLabelTopConstraint;

  [(NSLayoutConstraint *)distanceLabelTopConstraint setActive:v12];
}

- (void)updateLayout
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10007B340;
  v2[3] = &unk_101661B18;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
}

- (id)minorText
{
  maneuverItem = [(ManeuverBannerView *)self maneuverItem];
  maneuverGuidanceInfo = [maneuverItem maneuverGuidanceInfo];
  majorText = [maneuverGuidanceInfo majorText];
  if (majorText)
  {
    maneuverItem2 = [(ManeuverBannerView *)self maneuverItem];
    maneuverGuidanceInfo2 = [maneuverItem2 maneuverGuidanceInfo];
    minorText = [maneuverGuidanceInfo2 minorText];
  }

  else
  {
    minorText = 0;
  }

  return minorText;
}

- (void)updateFromBannerItem
{
  lastManeuverItem = self->_lastManeuverItem;
  maneuverItem = [(ManeuverBannerView *)self maneuverItem];
  v5 = lastManeuverItem;
  v6 = maneuverItem;
  if (v5 | v6)
  {
    v7 = v6;
    v8 = [v5 isEqual:v6];

    if ((v8 & 1) == 0)
    {
      if ([(ManeuverBannerView *)self isVisible])
      {
        maneuverItem2 = [(ManeuverBannerView *)self maneuverItem];
        v10 = [maneuverItem2 copy];
        v11 = self->_lastManeuverItem;
        self->_lastManeuverItem = v10;

        maneuverItem3 = [(ManeuverBannerView *)self maneuverItem];
        guidanceState = [maneuverItem3 guidanceState];
        LODWORD(v14) = [guidanceState isInArrivalState];

        maneuverItem4 = [(ManeuverBannerView *)self maneuverItem];
        guidanceState2 = [maneuverItem4 guidanceState];
        isInParkingState = [guidanceState2 isInParkingState];

        maneuverItem5 = [(ManeuverBannerView *)self maneuverItem];
        guidanceState3 = [maneuverItem5 guidanceState];
        isRerouting = [guidanceState3 isRerouting];

        maneuverItem6 = [(ManeuverBannerView *)self maneuverItem];
        maneuverGuidanceInfo = [maneuverItem6 maneuverGuidanceInfo];

        v22 = +[UIColor labelColor];
        v23 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
        v24 = [v22 resolvedColorWithTraitCollection:v23];

        v25 = +[UIColor secondaryLabelColor];
        v26 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
        v27 = [v25 resolvedColorWithTraitCollection:v26];

        v209 = isRerouting;
        v210 = isInParkingState;
        v206 = v27;
        v207 = v24;
        if (isRerouting)
        {
          v28 = [NSAttributedString alloc];
          v29 = +[NSBundle mainBundle];
          v30 = [v29 localizedStringForKey:@"Rerouting" value:@"localized string not found" table:0];
          v244[0] = v24;
          v243[0] = NSForegroundColorAttributeName;
          v243[1] = NSFontAttributeName;
          _distanceFont = [(ManeuverBannerView *)self _distanceFont];
          v244[1] = _distanceFont;
          v32 = [NSDictionary dictionaryWithObjects:v244 forKeys:v243 count:2];
          v33 = [v28 initWithString:v30 attributes:v32];
          [(UILabel *)self->_distanceLabel setAttributedText:v33];

          [(UILabel *)self->_descriptionLabel setAttributedText:0];
          [(GuidanceManeuverView *)self->_maneuverImageView setManeuverArtwork:0];
          [(NavSignLaneGuidanceView *)self->_laneGuidanceView setLanes:0];
          v34 = maneuverGuidanceInfo;
        }

        else if ((v14 | isInParkingState))
        {
          item = [(MapsBannerView *)self item];
          guidanceState4 = [item guidanceState];
          arrivalInfo = [guidanceState4 arrivalInfo];

          v38 = +[MNNavigationService sharedService];
          route = [v38 route];

          v201 = arrivalInfo;
          destination = [arrivalInfo destination];
          v39 = +[MNNavigationService sharedService];
          arrivalChargingStationInfo = [v39 arrivalChargingStationInfo];

          [(GuidanceManeuverView *)self->_maneuverImageView setManeuverArtwork:0];
          [(NavSignLaneGuidanceView *)self->_laneGuidanceView setLanes:0];
          v41 = +[MNNavigationService sharedService];
          LODWORD(guidanceState4) = [v41 isArrivedAtEVCharger];

          v34 = maneuverGuidanceInfo;
          v202 = v14;
          v198 = arrivalChargingStationInfo;
          if (guidanceState4)
          {
            v42 = +[MNNavigationService sharedService];
            activeNavTrayGuidanceEvent = [v42 activeNavTrayGuidanceEvent];

            v196 = activeNavTrayGuidanceEvent;
            if (activeNavTrayGuidanceEvent)
            {
              v44 = [NSAttributedString alloc];
              title = [activeNavTrayGuidanceEvent title];
              stringWithDefaultOptions = [title stringWithDefaultOptions];
              v47 = stringWithDefaultOptions;
              if (stringWithDefaultOptions)
              {
                v48 = stringWithDefaultOptions;
              }

              else
              {
                v48 = &stru_1016631F0;
              }

              v242[0] = v27;
              v241[0] = NSForegroundColorAttributeName;
              v241[1] = NSFontAttributeName;
              _descriptionFont = [(ManeuverBannerView *)self _descriptionFont];
              v242[1] = _descriptionFont;
              v50 = [NSDictionary dictionaryWithObjects:v242 forKeys:v241 count:2];
              v51 = [v44 initWithString:v48 attributes:v50];
              [(UILabel *)self->_distanceLabel setAttributedText:v51];

              v52 = [NSAttributedString alloc];
              detail = [activeNavTrayGuidanceEvent detail];
              stringWithDefaultOptions2 = [detail stringWithDefaultOptions];
              _distanceFont4 = stringWithDefaultOptions2;
              v239[1] = NSFontAttributeName;
              v240[0] = v207;
              if (stringWithDefaultOptions2)
              {
                v55 = stringWithDefaultOptions2;
              }

              else
              {
                v55 = &stru_1016631F0;
              }

              v239[0] = NSForegroundColorAttributeName;
              _distanceFont2 = [(ManeuverBannerView *)self _distanceFont];
              v240[1] = _distanceFont2;
              stopAfterCharging = [NSDictionary dictionaryWithObjects:v240 forKeys:v239 count:2];
              navDisplayName = [v52 initWithString:v55 attributes:stopAfterCharging];
              [(UILabel *)self->_descriptionLabel setAttributedText:navDisplayName];
            }

            else
            {
              [arrivalChargingStationInfo chargingTime];
              v105 = v104;
              v106 = [NSAttributedString alloc];
              v107 = +[NSBundle mainBundle];
              v108 = v107;
              if (v105 <= 0.0)
              {
                v121 = [v107 localizedStringForKey:@"Charged [Nav Banner Title]" value:@"localized string not found" table:0];
                v122 = [NSString stringWithFormat:v121];
                v234[0] = v206;
                v233[0] = NSForegroundColorAttributeName;
                v233[1] = NSFontAttributeName;
                _descriptionFont2 = [(ManeuverBannerView *)self _descriptionFont];
                v234[1] = _descriptionFont2;
                v124 = [NSDictionary dictionaryWithObjects:v234 forKeys:v233 count:2];
                v125 = [v106 initWithString:v122 attributes:v124];
                [(UILabel *)self->_distanceLabel setAttributedText:v125];

                v126 = [NSAttributedString alloc];
                detail = +[NSBundle mainBundle];
                _distanceFont4 = [detail localizedStringForKey:@"Charged [Nav Banner Subtitle]" value:@"localized string not found" table:0];
                _distanceFont2 = +[MNNavigationService sharedService];
                stopAfterCharging = [_distanceFont2 stopAfterCharging];
                navDisplayName = [stopAfterCharging navDisplayName];
                v127 = [NSString stringWithFormat:_distanceFont4, navDisplayName];
                v232[0] = v207;
                v231[0] = NSForegroundColorAttributeName;
                v231[1] = NSFontAttributeName;
                _distanceFont3 = [(ManeuverBannerView *)self _distanceFont];
                v232[1] = _distanceFont3;
                v128 = [NSDictionary dictionaryWithObjects:v232 forKeys:v231 count:2];
                v129 = [v126 initWithString:v127 attributes:v128];
                [(UILabel *)self->_descriptionLabel setAttributedText:v129];
              }

              else
              {
                v109 = [v107 localizedStringForKey:@"Charging [Nav Banner Title]" value:@"localized string not found" table:0];
                [arrivalChargingStationInfo batteryPercentageAfterCharging];
                v110 = [NSString stringWithFormat:v109, v110];
                v238[0] = v206;
                v237[0] = NSForegroundColorAttributeName;
                v237[1] = NSFontAttributeName;
                [(ManeuverBannerView *)self _descriptionFont];
                v113 = v112 = arrivalChargingStationInfo;
                v238[1] = v113;
                v114 = [NSDictionary dictionaryWithObjects:v238 forKeys:v237 count:2];
                v115 = [v106 initWithString:v110 attributes:v114];
                [(UILabel *)self->_distanceLabel setAttributedText:v115];

                v116 = [NSAttributedString alloc];
                detail = +[NSBundle mainBundle];
                _distanceFont4 = [detail localizedStringForKey:@"Charging [Nav Banner Subtitle]" value:@"localized string not found" table:0];
                [v112 chargingTime];
                _distanceFont2 = [NSString _navigation_stringWithSeconds:v117 abbreviated:1];
                stopAfterCharging = [NSString stringWithFormat:_distanceFont4, _distanceFont2];
                v236[0] = v207;
                v235[0] = NSForegroundColorAttributeName;
                v235[1] = NSFontAttributeName;
                navDisplayName = [(ManeuverBannerView *)self _distanceFont];
                v236[1] = navDisplayName;
                v118 = [NSDictionary dictionaryWithObjects:v236 forKeys:v235 count:2];
                v119 = [v116 initWithString:stopAfterCharging attributes:v118];
                [(UILabel *)self->_descriptionLabel setAttributedText:v119];
              }
            }

            LOBYTE(v14) = v202;
            v120 = v198;
            v77 = destination;
            v86 = v196;
          }

          else
          {
            maneuverItem7 = [(ManeuverBannerView *)self maneuverItem];
            guidanceState5 = [maneuverItem7 guidanceState];
            isInParkingState2 = [guidanceState5 isInParkingState];

            if (isInParkingState2)
            {
              v76 = [NSAttributedString alloc];
              v77 = destination;
              parkingDisplayName = [destination parkingDisplayName];
              v230[0] = v27;
              v229[0] = NSForegroundColorAttributeName;
              v229[1] = NSFontAttributeName;
              _descriptionFont3 = [(ManeuverBannerView *)self _descriptionFont];
              v230[1] = _descriptionFont3;
              v80 = [NSDictionary dictionaryWithObjects:v230 forKeys:v229 count:2];
              v81 = [v76 initWithString:parkingDisplayName attributes:v80];
              [(UILabel *)self->_descriptionLabel setAttributedText:v81];

              maneuverItem8 = [(ManeuverBannerView *)self maneuverItem];
              guidanceState6 = [maneuverItem8 guidanceState];
              LODWORD(_descriptionFont3) = [guidanceState6 isParked];

              v84 = [NSAttributedString alloc];
              v85 = +[NSBundle mainBundle];
              v86 = v85;
              if (_descriptionFont3)
              {
                v14 = [v85 localizedStringForKey:@"Parked" value:@"localized string not found" table:0];
                v227[1] = NSFontAttributeName;
                v228[0] = v24;
                v227[0] = NSForegroundColorAttributeName;
                _distanceFont4 = [(ManeuverBannerView *)self _distanceFont];
                v228[1] = _distanceFont4;
                v87 = v228;
                v88 = v227;
              }

              else
              {
                v14 = [v85 localizedStringForKey:@"Parking" value:@"localized string not found" table:0];
                v225[1] = NSFontAttributeName;
                v226[0] = v24;
                v225[0] = NSForegroundColorAttributeName;
                _distanceFont4 = [(ManeuverBannerView *)self _distanceFont];
                v226[1] = _distanceFont4;
                v87 = v226;
                v88 = v225;
              }

              _distanceFont2 = [NSDictionary dictionaryWithObjects:v87 forKeys:v88 count:2];
              detail = v14;
              stopAfterCharging = [v84 initWithString:v14 attributes:_distanceFont2];
              [(UILabel *)self->_distanceLabel setAttributedText:stopAfterCharging];
              LOBYTE(v14) = v202;
              v120 = v198;
            }

            else
            {
              v89 = [route arrivalInstructionStringForLegIndex:{objc_msgSend(v201, "legIndex")}];
              v90 = v89;
              v91 = &stru_1016631F0;
              if (v89)
              {
                v91 = v89;
              }

              v92 = v91;

              v93 = [NSAttributedString alloc];
              v224[0] = v27;
              v223[0] = NSForegroundColorAttributeName;
              v223[1] = NSFontAttributeName;
              _descriptionFont4 = [(ManeuverBannerView *)self _descriptionFont];
              v224[1] = _descriptionFont4;
              v95 = [NSDictionary dictionaryWithObjects:v224 forKeys:v223 count:2];
              v96 = [v93 initWithString:v92 attributes:v95];

              [(UILabel *)self->_descriptionLabel setAttributedText:v96];
              maneuverItem9 = [(ManeuverBannerView *)self maneuverItem];
              guidanceState7 = [maneuverItem9 guidanceState];
              LODWORD(_descriptionFont4) = [guidanceState7 isArrived];

              v99 = [NSAttributedString alloc];
              v100 = +[NSBundle mainBundle];
              v86 = v100;
              if (_descriptionFont4)
              {
                v101 = [v100 localizedStringForKey:@"Arrived" value:@"localized string not found" table:0];
                v221[1] = NSFontAttributeName;
                v222[0] = v24;
                v221[0] = NSForegroundColorAttributeName;
                _distanceFont4 = [(ManeuverBannerView *)self _distanceFont];
                v222[1] = _distanceFont4;
                v102 = v222;
                v103 = v221;
              }

              else
              {
                v101 = [v100 localizedStringForKey:@"Arriving" value:@"localized string not found" table:0];
                v219[1] = NSFontAttributeName;
                v220[0] = v24;
                v219[0] = NSForegroundColorAttributeName;
                _distanceFont4 = [(ManeuverBannerView *)self _distanceFont];
                v220[1] = _distanceFont4;
                v102 = v220;
                v103 = v219;
              }

              _distanceFont2 = [NSDictionary dictionaryWithObjects:v102 forKeys:v103 count:2];
              detail = v101;
              stopAfterCharging = [v99 initWithString:v101 attributes:_distanceFont2];
              LOBYTE(v14) = v202;
              v120 = v198;
              [(UILabel *)self->_distanceLabel setAttributedText:stopAfterCharging];
              v77 = destination;
            }
          }
        }

        else
        {
          majorText = [(ManeuverBannerView *)self majorText];
          minorText = [(ManeuverBannerView *)self minorText];
          v34 = maneuverGuidanceInfo;
          if (!majorText)
          {

LABEL_65:
            return;
          }

          v204 = minorText;
          maneuverArtwork = [maneuverGuidanceInfo maneuverArtwork];
          [(GuidanceManeuverView *)self->_maneuverImageView setManeuverArtwork:maneuverArtwork];

          maneuverItem10 = [(ManeuverBannerView *)self maneuverItem];
          laneGuidanceInfo = [maneuverItem10 laneGuidanceInfo];
          [laneGuidanceInfo lanes];
          v64 = v203 = v14;
          [(NavSignLaneGuidanceView *)self->_laneGuidanceView setLanes:v64];

          v218[0] = v24;
          v217[0] = NSForegroundColorAttributeName;
          v217[1] = NSFontAttributeName;
          _distanceFont5 = [(ManeuverBannerView *)self _distanceFont];
          v66 = MKServerFormattedStringArtworkSizeAttributeKey;
          v217[2] = MKServerFormattedStringArtworkSizeAttributeKey;
          v218[1] = _distanceFont5;
          v218[2] = &off_1016E6710;
          v67 = [NSDictionary dictionaryWithObjects:v218 forKeys:v217 count:3];
          v68 = [majorText multiPartAttributedStringWithAttributes:v67];
          attributedString = [v68 attributedString];
          [(UILabel *)self->_distanceLabel setAttributedText:attributedString];

          v216[0] = v27;
          v215[0] = NSForegroundColorAttributeName;
          v215[1] = NSFontAttributeName;
          _descriptionFont5 = [(ManeuverBannerView *)self _descriptionFont];
          v215[2] = v66;
          v216[1] = _descriptionFont5;
          v216[2] = &off_1016E6710;
          v71 = [NSDictionary dictionaryWithObjects:v216 forKeys:v215 count:3];
          v14 = [v204 multiPartAttributedStringWithAttributes:v71];
          attributedString2 = [v14 attributedString];
          [(UILabel *)self->_descriptionLabel setAttributedText:attributedString2];

          LOBYTE(v14) = v203;
          v34 = maneuverGuidanceInfo;
        }

        maneuverItem11 = [(ManeuverBannerView *)self maneuverItem];
        maneuverGuidanceInfo2 = [maneuverItem11 maneuverGuidanceInfo];
        shieldInfo = [maneuverGuidanceInfo2 shieldInfo];

        v133 = v209;
        if (!shieldInfo)
        {
          v133 = 1;
        }

        v134 = v14;
        if ((v133 | (v210 | v14)))
        {
          exitShield = self->_exitShield;
          v136 = *&CGAffineTransformIdentity.c;
          v211 = *&CGAffineTransformIdentity.a;
          v212 = v136;
          v213 = *&CGAffineTransformIdentity.tx;
          [(UIImageView *)exitShield setTransform:&v211];
          [(UIImageView *)self->_exitShield setImage:0];
          cachedShieldInfo = self->_cachedShieldInfo;
          self->_cachedShieldInfo = 0;
        }

        else
        {
          if ([shieldInfo isEqual:self->_cachedShieldInfo])
          {
LABEL_45:
            maneuverArtwork2 = [v34 maneuverArtwork];
            leadingManeuverView = [(ManeuverBannerView *)self leadingManeuverView];
            [leadingManeuverView setManeuverArtwork:maneuverArtwork2];

            maneuverArtwork3 = [v34 maneuverArtwork];
            minimalManeuverView = [(ManeuverBannerView *)self minimalManeuverView];
            [minimalManeuverView setManeuverArtwork:maneuverArtwork3];

            maneuverArtwork4 = [v34 maneuverArtwork];
            detachedMinimalManeuverView = [(ManeuverBannerView *)self detachedMinimalManeuverView];
            [detachedMinimalManeuverView setManeuverArtwork:maneuverArtwork4];

            leadingManeuverView2 = [(ManeuverBannerView *)self leadingManeuverView];
            [leadingManeuverView2 setIsRerouting:v209];

            minimalManeuverView2 = [(ManeuverBannerView *)self minimalManeuverView];
            [minimalManeuverView2 setIsRerouting:v209];

            detachedMinimalManeuverView2 = [(ManeuverBannerView *)self detachedMinimalManeuverView];
            [detachedMinimalManeuverView2 setIsRerouting:v209];

            item2 = [(MapsBannerView *)self item];
            guidanceState8 = [item2 guidanceState];
            transportType = [guidanceState8 transportType];
            minimalManeuverView3 = [(ManeuverBannerView *)self minimalManeuverView];
            [minimalManeuverView3 setTransportType:transportType];

            item3 = [(MapsBannerView *)self item];
            guidanceState9 = [item3 guidanceState];
            transportType2 = [guidanceState9 transportType];
            detachedMinimalManeuverView3 = [(ManeuverBannerView *)self detachedMinimalManeuverView];
            [detachedMinimalManeuverView3 setTransportType:transportType2];

            item4 = [(MapsBannerView *)self item];
            guidanceState10 = [item4 guidanceState];
            transportType3 = [guidanceState10 transportType];
            leadingManeuverView3 = [(ManeuverBannerView *)self leadingManeuverView];
            [leadingManeuverView3 setTransportType:transportType3];

            if (v209)
            {
              apertureDistanceLabel = [(ManeuverBannerView *)self apertureDistanceLabel];
              [apertureDistanceLabel setDisplayState:3];

              activityView = [(ManeuverBannerView *)self activityView];
              [activityView setHidden:0];

              activityView2 = [(ManeuverBannerView *)self activityView];
              [activityView2 startAnimating];
              v170 = &UIMenuFind_ptr;
            }

            else
            {
              item5 = [(MapsBannerView *)self item];
              guidanceState11 = [item5 guidanceState];
              distance = [guidanceState11 distance];
              [distance doubleValue];
              v175 = v174;
              apertureDistanceLabel2 = [(ManeuverBannerView *)self apertureDistanceLabel];
              [apertureDistanceLabel2 setDistanceToNextManeuver:v175];

              v177 = +[MNNavigationService sharedService];
              LODWORD(guidanceState11) = [v177 navigationState];

              v178 = v34;
              if (guidanceState11 == 2)
              {
                maneuverItem12 = [(ManeuverBannerView *)self maneuverItem];
                guidanceState12 = [maneuverItem12 guidanceState];
                if ([guidanceState12 isInArrivalState])
                {
                  v181 = 1;
                }

                else
                {
                  maneuverItem13 = [(ManeuverBannerView *)self maneuverItem];
                  guidanceState13 = [maneuverItem13 guidanceState];
                  if ([guidanceState13 isInParkingState])
                  {
                    v181 = 1;
                  }

                  else
                  {
                    v181 = 2;
                  }
                }

                v170 = &UIMenuFind_ptr;
              }

              else
              {
                v181 = 1;
                v170 = &UIMenuFind_ptr;
              }

              apertureDistanceLabel3 = [(ManeuverBannerView *)self apertureDistanceLabel];
              [apertureDistanceLabel3 setDisplayState:v181];

              activityView3 = [(ManeuverBannerView *)self activityView];
              [activityView3 setHidden:1];

              activityView2 = [(ManeuverBannerView *)self activityView];
              [activityView2 stopAnimating];
              v34 = v178;
            }

            sharedService = [(UIMenuIdentifier *)v170[281] sharedService];
            alternateWalkingRouteDisplayETAInfo = [sharedService alternateWalkingRouteDisplayETAInfo];

            if (alternateWalkingRouteDisplayETAInfo)
            {
              [alternateWalkingRouteDisplayETAInfo remainingMinutesToEndOfRoute];
              v188 = GEOStringForDuration();
              [(UIButton *)self->_walkingButton setTitle:v188 forState:0];
            }

            contentView = [(MapsBannerView *)self contentView];
            centerBodyContent = [contentView centerBodyContent];

            v191 = v134 | v210;
            distanceLabel = self->_distanceLabel;
            if ((v134 | v210))
            {
              [(UILabel *)distanceLabel setTextAlignment:1];
              [(UILabel *)self->_descriptionLabel setTextAlignment:1];
              [(GuidanceManeuverView *)self->_maneuverImageView setManeuverArtwork:0];
            }

            else
            {
              [(UILabel *)distanceLabel setTextAlignment:4];
              [(UILabel *)self->_descriptionLabel setTextAlignment:4];
            }

            v27 = v206;
            v24 = v207;
            [(UIImageView *)self->_exitShield setHidden:v191 & 1];
            contentView2 = [(MapsBannerView *)self contentView];
            [contentView2 setCenterBodyContent:v191 & 1];

            contentView3 = [(MapsBannerView *)self contentView];
            centerBodyContent2 = [contentView3 centerBodyContent];

            if (centerBodyContent != centerBodyContent2)
            {
              self->_cachedHeight = -1.0;
            }

            [(ManeuverBannerView *)self updateLayout];

            goto LABEL_65;
          }

          v138 = +[UIScreen mainScreen];
          [v138 scale];
          v140 = v139;

          cachedShieldInfo = [shieldInfo shieldImageWithSize:5 scale:0 idiom:v140];
          v141 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", [cachedShieldInfo image], 0, v140);
          [v141 size];
          if (v142 <= 27.0)
          {
            v143 = self->_exitShield;
            v145 = *&CGAffineTransformIdentity.c;
            v211 = *&CGAffineTransformIdentity.a;
            v212 = v145;
            v144 = *&CGAffineTransformIdentity.tx;
          }

          else
          {
            CGAffineTransformMakeScale(&v214, 27.0 / v142, 27.0 / v142);
            v143 = self->_exitShield;
            v211 = *&v214.a;
            v212 = *&v214.c;
            v144 = *&v214.tx;
          }

          v213 = v144;
          [(UIImageView *)v143 setTransform:&v211];
          [(UIImageView *)self->_exitShield setImage:v141];
          objc_storeStrong(&self->_cachedShieldInfo, shieldInfo);
        }

        goto LABEL_45;
      }
    }
  }
}

- (id)majorText
{
  maneuverItem = [(ManeuverBannerView *)self maneuverItem];
  maneuverGuidanceInfo = [maneuverItem maneuverGuidanceInfo];
  majorText = [maneuverGuidanceInfo majorText];
  v6 = majorText;
  if (majorText)
  {
    minorText = majorText;
  }

  else
  {
    maneuverItem2 = [(ManeuverBannerView *)self maneuverItem];
    maneuverGuidanceInfo2 = [maneuverItem2 maneuverGuidanceInfo];
    minorText = [maneuverGuidanceInfo2 minorText];
  }

  return minorText;
}

- (void)setExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  expanded = self->_expanded;
  self->_expanded = expanded;
  leadingView = [(ManeuverBannerView *)self leadingView];
  v7 = leadingView;
  if (expandedCopy)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  if (expandedCopy)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  if (expandedCopy)
  {
    v10 = &OBJC_IVAR___ManeuverBannerView__expandedConstraints;
  }

  else
  {
    v10 = &OBJC_IVAR___ManeuverBannerView__collapsedConstraints;
  }

  if (expandedCopy)
  {
    v11 = &OBJC_IVAR___ManeuverBannerView__collapsedConstraints;
  }

  else
  {
    v11 = &OBJC_IVAR___ManeuverBannerView__expandedConstraints;
  }

  [leadingView setAlpha:v8];

  trailingView = [(ManeuverBannerView *)self trailingView];
  [trailingView setAlpha:v8];

  minimalView = [(ManeuverBannerView *)self minimalView];
  [minimalView setAlpha:v8];

  detachedMinimalView = [(ManeuverBannerView *)self detachedMinimalView];
  [detachedMinimalView setAlpha:v8];

  contentView = [(MapsBannerView *)self contentView];
  [contentView setAlpha:v9];

  [NSLayoutConstraint activateConstraints:*(&self->super.super.super.super.isa + *v10)];
  [NSLayoutConstraint deactivateConstraints:*(&self->super.super.super.super.isa + *v11)];
  [(ManeuverBannerView *)self _updateConstraints];
  if (expanded != expandedCopy)
  {
    [(AxisAdjustingStackView *)self->_controlsView invalidateStackViewAxis];
    controlsView = self->_controlsView;

    [(AxisAdjustingStackView *)controlsView updateStackViewAxisIfNeeded];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  cachedHeight = self->_cachedHeight;
  if (cachedHeight == -1.0 || self->_calculatedWidth != fits.width)
  {
    if ([(MapsBannerView *)self aperturePresentation])
    {
      sBUISA_systemApertureObstructedAreaLayoutGuide = [(ManeuverBannerView *)self SBUISA_systemApertureObstructedAreaLayoutGuide];
      [sBUISA_systemApertureObstructedAreaLayoutGuide layoutFrame];
      MaxY = CGRectGetMaxY(v25);
      contentView = [(MapsBannerView *)self contentView];
      [contentView _maps_compressedSizeForWidth:0 withBlock:width];
      v11 = v10 + 17.0 + MaxY;
    }

    else
    {
      [(ManeuverBannerView *)self _maps_compressedSizeForWidth:0 withBlock:width];
      v11 = v12;
    }

    if (v11 <= height)
    {
      self->_cachedHeight = v11;
      self->_calculatedWidth = width;
      cachedHeight = self->_cachedHeight;
    }

    else
    {
      v13 = sub_100032C3C();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        item = [(MapsBannerView *)self item];
        v23.width = width;
        v23.height = height;
        v15 = NSStringFromCGSize(v23);
        v17 = 138412802;
        v18 = item;
        v19 = 2112;
        v20 = v15;
        v21 = 2048;
        v22 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Banner: %@ wasn't able to draw correctly in the provided space: %@ desired height: %f", &v17, 0x20u);
      }

      cachedHeight = height;
    }
  }

  v16 = width;
  result.height = cachedHeight;
  result.width = v16;
  return result;
}

- (void)setIsVisible:(BOOL)visible
{
  if (self->_isVisible != visible)
  {
    self->_isVisible = visible;
    [(ManeuverBannerView *)self updateFromBannerItem];
  }
}

- (BOOL)_isEligibleToShowWalkingButton
{
  v2 = +[MNNavigationService sharedService];
  destination = [v2 destination];
  [destination findMyHandleID];

  return GEOConfigGetBOOL();
}

- (void)setShowsControls:(BOOL)controls
{
  v4 = [(MapsBannerView *)self aperturePresentation]&& controls;
  if (self->_showsControls != v4)
  {
    self->_showsControls = v4;

    [(ManeuverBannerView *)self updateLayout];
  }
}

- (id)_buttonWithAction:(id)action
{
  actionCopy = action;
  v4 = +[UIButtonConfiguration sbui_systemApertureTextButtonConfiguration];
  if (([actionCopy attributes] & 2) != 0)
  {
    v6 = +[UIColor systemRedColor];
    [v4 setBaseBackgroundColor:v6];

    +[UIColor systemRedColor];
  }

  else
  {
    v5 = +[UIColor systemBlueColor];
    [v4 setBaseBackgroundColor:v5];

    +[UIColor systemBlueColor];
  }
  v7 = ;
  [v4 setBaseForegroundColor:v7];

  [v4 setTitleLineBreakMode:4];
  v8 = [SBUISystemApertureButton buttonWithConfiguration:v4 primaryAction:actionCopy];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v9) = 1148846080;
  [v8 setContentCompressionResistancePriority:1 forAxis:v9];
  heightAnchor = [v8 heightAnchor];
  v11 = [heightAnchor constraintEqualToConstant:42.0];
  [v11 setActive:1];

  return v8;
}

- (ManeuverBannerView)initWithTarget:(id)target item:(id)item aperturePresentation:(BOOL)presentation
{
  v192.receiver = self;
  v192.super_class = ManeuverBannerView;
  v5 = [(MapsBannerView *)&v192 initWithTarget:target item:item aperturePresentation:presentation];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(ManeuverBannerView *)v5 setAccessibilityIdentifier:v7];

    v8 = [GuidanceManeuverView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    height = [(GuidanceManeuverView *)v8 initWithFrame:0 textureProvider:CGRectZero.origin.x, y, width, height];
    maneuverImageView = v5->_maneuverImageView;
    v5->_maneuverImageView = height;

    [(GuidanceManeuverView *)v5->_maneuverImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v14) = 1148846080;
    [(GuidanceManeuverView *)v5->_maneuverImageView _maps_setAllContentHuggingAndCompressionResistancePriorities:v14];
    [(GuidanceManeuverView *)v5->_maneuverImageView setContentMode:1];
    widthAnchor = [(GuidanceManeuverView *)v5->_maneuverImageView widthAnchor];
    LODWORD(v16) = 1132068864;
    v17 = [widthAnchor constraintEqualToConstant:46.0 priority:v16];
    [v17 setActive:1];

    widthAnchor2 = [(GuidanceManeuverView *)v5->_maneuverImageView widthAnchor];
    v19 = [widthAnchor2 constraintGreaterThanOrEqualToConstant:46.0];
    [v19 setActive:1];

    heightAnchor = [(GuidanceManeuverView *)v5->_maneuverImageView heightAnchor];
    v21 = [heightAnchor constraintEqualToConstant:46.0];
    [v21 setActive:1];

    theme = [(ManeuverBannerView *)v5 theme];
    navSignGuidanceManeuverColor = [theme navSignGuidanceManeuverColor];
    [(GuidanceManeuverView *)v5->_maneuverImageView setArrowColor:navSignGuidanceManeuverColor];

    v24 = +[UIColor bannerJunctionColor];
    [(GuidanceManeuverView *)v5->_maneuverImageView setAccentColor:v24];

    [(GuidanceManeuverView *)v5->_maneuverImageView setFraming:1];
    v25 = &OBJC_IVAR___TransitPayFeatureDiscoverySource__queue;
    if ([(MapsBannerView *)v5 aperturePresentation])
    {
      v26 = [[ManeuverAccessoryView alloc] initForDetached:0];
      leadingManeuverView = v5->_leadingManeuverView;
      v5->_leadingManeuverView = v26;

      [(ManeuverAccessoryView *)v5->_leadingManeuverView setUsesArrowMetricsReferenceSize:0];
      [(ManeuverAccessoryView *)v5->_leadingManeuverView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(ManeuverBannerView *)v5 addSubview:v5->_leadingManeuverView];
      v28 = [[ManeuverAccessoryView alloc] initForDetached:0];
      minimalManeuverView = v5->_minimalManeuverView;
      v5->_minimalManeuverView = v28;

      [(ManeuverAccessoryView *)v5->_minimalManeuverView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(ManeuverBannerView *)v5 addSubview:v5->_minimalManeuverView];
      v30 = [[ManeuverAccessoryView alloc] initForDetached:1];
      detachedMinimalManeuverView = v5->_detachedMinimalManeuverView;
      v5->_detachedMinimalManeuverView = v30;

      [(ManeuverAccessoryView *)v5->_detachedMinimalManeuverView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(ManeuverBannerView *)v5 addSubview:v5->_detachedMinimalManeuverView];
      height2 = [[DistanceAccessoryView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
      apertureDistanceLabel = v5->_apertureDistanceLabel;
      v5->_apertureDistanceLabel = height2;

      [(DistanceAccessoryView *)v5->_apertureDistanceLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      [(ManeuverBannerView *)v5 addSubview:v5->_apertureDistanceLabel];
      if (GEOConfigGetBOOL())
      {
        v34 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
        leadingConcentricContent = v5->_leadingConcentricContent;
        v5->_leadingConcentricContent = v34;

        v36 = +[UIColor systemDarkGrayColor];
        [(UIView *)v5->_leadingConcentricContent setBackgroundColor:v36];

        [(UIView *)v5->_leadingConcentricContent setTranslatesAutoresizingMaskIntoConstraints:0];
        [(ManeuverAccessoryView *)v5->_leadingManeuverView insertSubview:v5->_leadingConcentricContent atIndex:0];
        v37 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
        obstructedArea = v5->_obstructedArea;
        v5->_obstructedArea = v37;

        v39 = +[UIColor systemDarkGrayColor];
        [(UIView *)v5->_obstructedArea setBackgroundColor:v39];

        [(UIView *)v5->_obstructedArea setTranslatesAutoresizingMaskIntoConstraints:0];
        [(ManeuverAccessoryView *)v5->_leadingManeuverView insertSubview:v5->_obstructedArea atIndex:1];
        v40 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
        trailingConcentricContent = v5->_trailingConcentricContent;
        v5->_trailingConcentricContent = v40;

        v42 = +[UIColor systemDarkGrayColor];
        [(UIView *)v5->_trailingConcentricContent setBackgroundColor:v42];

        [(UIView *)v5->_trailingConcentricContent setTranslatesAutoresizingMaskIntoConstraints:0];
        [(DistanceAccessoryView *)v5->_apertureDistanceLabel insertSubview:v5->_trailingConcentricContent atIndex:0];
      }

      if (GEOConfigGetBOOL())
      {
        v43 = +[MapsTheme apertureKeyColor];
        cGColor = [v43 CGColor];
        layer = [(ManeuverAccessoryView *)v5->_leadingManeuverView layer];
        [layer setBorderColor:cGColor];

        layer2 = [(ManeuverAccessoryView *)v5->_leadingManeuverView layer];
        [layer2 setBorderWidth:1.0];

        v47 = +[MapsTheme apertureKeyColor];
        cGColor2 = [v47 CGColor];
        layer3 = [(DistanceAccessoryView *)v5->_apertureDistanceLabel layer];
        [layer3 setBorderColor:cGColor2];

        layer4 = [(DistanceAccessoryView *)v5->_apertureDistanceLabel layer];
        [layer4 setBorderWidth:1.0];

        v51 = +[MapsTheme apertureKeyColor];
        cGColor3 = [v51 CGColor];
        layer5 = [(ManeuverAccessoryView *)v5->_minimalManeuverView layer];
        [layer5 setBorderColor:cGColor3];

        layer6 = [(ManeuverAccessoryView *)v5->_minimalManeuverView layer];
        [layer6 setBorderWidth:1.0];

        v25 = &OBJC_IVAR___TransitPayFeatureDiscoverySource__queue;
        v55 = +[MapsTheme apertureKeyColor];
        cGColor4 = [v55 CGColor];
        layer7 = [(ManeuverAccessoryView *)v5->_detachedMinimalManeuverView layer];
        [layer7 setBorderColor:cGColor4];

        layer8 = [(ManeuverAccessoryView *)v5->_detachedMinimalManeuverView layer];
        [layer8 setBorderWidth:1.0];
      }

      v59 = [[UIActivityIndicatorView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      v60 = v25[665];
      v61 = *(&v5->super.super.super.super.isa + v60);
      *(&v5->super.super.super.super.isa + v60) = v59;

      [*(&v5->super.super.super.super.isa + v60) setAccessibilityIdentifier:@"ActivityView"];
      [*(&v5->super.super.super.super.isa + v60) setActivityIndicatorViewStyle:101];
      [*(&v5->super.super.super.super.isa + v60) setTranslatesAutoresizingMaskIntoConstraints:0];
      [*(&v5->super.super.super.super.isa + v60) setHidden:0];
      [(ManeuverBannerView *)v5 addSubview:*(&v5->super.super.super.super.isa + v60)];
    }

    v62 = [[NavSignLaneGuidanceView alloc] initWithLaneStyle:0];
    laneGuidanceView = v5->_laneGuidanceView;
    v5->_laneGuidanceView = v62;

    [(NavSignLaneGuidanceView *)v5->_laneGuidanceView setTranslatesAutoresizingMaskIntoConstraints:0];
    v64 = +[UIColor bannerJunctionColor];
    [(NavSignLaneGuidanceView *)v5->_laneGuidanceView setInvalidArrowColor:v64];

    heightAnchor2 = [(NavSignLaneGuidanceView *)v5->_laneGuidanceView heightAnchor];
    v66 = [heightAnchor2 constraintLessThanOrEqualToConstant:46.0];
    [v66 setActive:1];

    v67 = objc_opt_new();
    distanceLabel = v5->_distanceLabel;
    v5->_distanceLabel = v67;

    [(UILabel *)v5->_distanceLabel setAccessibilityIdentifier:@"DistanceLabel"];
    [(UILabel *)v5->_distanceLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v69) = 1132068864;
    [(UILabel *)v5->_distanceLabel setContentHuggingPriority:0 forAxis:v69];
    LODWORD(v70) = 1148846080;
    [(UILabel *)v5->_distanceLabel setContentHuggingPriority:1 forAxis:v70];
    LODWORD(v71) = 1148846080;
    [(UILabel *)v5->_distanceLabel setContentCompressionResistancePriority:0 forAxis:v71];
    LODWORD(v72) = 1148846080;
    [(UILabel *)v5->_distanceLabel setContentCompressionResistancePriority:1 forAxis:v72];
    [(UILabel *)v5->_distanceLabel setNumberOfLines:2];
    _distanceFont = [(ManeuverBannerView *)v5 _distanceFont];
    [(UILabel *)v5->_distanceLabel setFont:_distanceFont];

    v74 = objc_opt_new();
    descriptionLabel = v5->_descriptionLabel;
    v5->_descriptionLabel = v74;

    [(UILabel *)v5->_descriptionLabel setAccessibilityIdentifier:@"DescriptionLabel"];
    [(UILabel *)v5->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v76) = 1148846080;
    [(UILabel *)v5->_descriptionLabel _maps_setAllContentHuggingAndCompressionResistancePriorities:v76];
    [(UILabel *)v5->_descriptionLabel setNumberOfLines:3];
    _descriptionFont = [(ManeuverBannerView *)v5 _descriptionFont];
    [(UILabel *)v5->_descriptionLabel setFont:_descriptionFont];

    v78 = objc_opt_new();
    exitShield = v5->_exitShield;
    v5->_exitShield = v78;

    [(UIImageView *)v5->_exitShield setAccessibilityIdentifier:@"ExitShield"];
    [(UIImageView *)v5->_exitShield setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v5->_exitShield setContentMode:1];
    LODWORD(v80) = 1148846080;
    [(UIImageView *)v5->_exitShield setContentHuggingPriority:0 forAxis:v80];
    LODWORD(v81) = 1148846080;
    [(UIImageView *)v5->_exitShield setContentHuggingPriority:1 forAxis:v81];
    LODWORD(v82) = 1144750080;
    [(UIImageView *)v5->_exitShield setContentCompressionResistancePriority:0 forAxis:v82];
    LODWORD(v83) = 1144750080;
    [(UIImageView *)v5->_exitShield setContentCompressionResistancePriority:1 forAxis:v83];
    v84 = 0;
    if ([(MapsBannerView *)v5 aperturePresentation])
    {
      v85 = +[NSBundle mainBundle];
      v86 = [v85 localizedStringForKey:@"[Nav Banner] End Route" value:@"localized string not found" table:0];
      v185 = [UIAction actionWithTitle:v86 image:0 identifier:0 handler:&stru_101626098];

      [v185 setAttributes:{objc_msgSend(v185, "attributes") | 2}];
      v87 = [(ManeuverBannerView *)v5 _buttonWithAction:v185];
      endButton = v5->_endButton;
      v5->_endButton = v87;

      [(UIButton *)v5->_endButton setAccessibilityIdentifier:@"EndButton"];
      [(UIButton *)v5->_endButton setHidden:1];
      v89 = +[NSBundle mainBundle];
      v90 = [v89 localizedStringForKey:@"[Nav Banner] Pause Route" value:@"localized string not found" table:0];
      v184 = [UIAction actionWithTitle:v90 image:0 identifier:0 handler:&stru_1016260B8];

      [v184 setAttributes:{objc_msgSend(v184, "attributes") | 2}];
      v91 = [(ManeuverBannerView *)v5 _buttonWithAction:v184];
      pauseButton = v5->_pauseButton;
      v5->_pauseButton = v91;

      [(UIButton *)v5->_pauseButton setAccessibilityIdentifier:@"PauseButton"];
      [(UIButton *)v5->_pauseButton setHidden:1];
      v93 = +[NSBundle mainBundle];
      v94 = [v93 localizedStringForKey:@"[Nav Banner] Next Stop" value:@"localized string not found" table:0];
      v183 = [UIAction actionWithTitle:v94 image:0 identifier:0 handler:&stru_1016260D8];

      v95 = [(ManeuverBannerView *)v5 _buttonWithAction:v183];
      nextButton = v5->_nextButton;
      v5->_nextButton = v95;

      [(UIButton *)v5->_nextButton setAccessibilityIdentifier:@"NextButton"];
      [(UIButton *)v5->_nextButton setHidden:1];
      v97 = +[MNNavigationService sharedService];
      alternateWalkingRouteDisplayETAInfo = [v97 alternateWalkingRouteDisplayETAInfo];

      [alternateWalkingRouteDisplayETAInfo remainingMinutesToEndOfRoute];
      v181 = GEOStringForDuration();
      v98 = [UIImage _systemImageNamed:@"figure.walk"];
      v180 = [UIAction actionWithTitle:v181 image:v98 identifier:0 handler:&stru_1016260F8];

      v99 = [(ManeuverBannerView *)v5 _buttonWithAction:v180];
      walkingButton = v5->_walkingButton;
      v5->_walkingButton = v99;

      [(UIButton *)v5->_walkingButton setAccessibilityIdentifier:@"WalkingButton"];
      [(UIButton *)v5->_walkingButton setHidden:1];
      v101 = +[NSBundle mainBundle];
      v102 = [v101 localizedStringForKey:@"[Nav Banner] Find My" value:@"localized string not found" table:0];
      v103 = [UIImage _systemImageNamed:@"findmy"];
      v179 = [UIAction actionWithTitle:v102 image:v103 identifier:0 handler:&stru_101626118];

      v104 = [(ManeuverBannerView *)v5 _buttonWithAction:v179];
      findMyButton = v5->_findMyButton;
      v5->_findMyButton = v104;

      [(UIButton *)v5->_findMyButton setAccessibilityIdentifier:@"FindMyButton"];
      [(UIButton *)v5->_findMyButton setHidden:1];
      v106 = +[NSBundle mainBundle];
      v107 = [v106 localizedStringForKey:@"[Nav Banner] EV Stations" value:@"localized string not found" table:0];
      v108 = [UIImage _systemImageNamed:@"magnifyingglass"];
      v190[0] = _NSConcreteStackBlock;
      v190[1] = 3221225472;
      v190[2] = sub_1006A7518;
      v190[3] = &unk_101658910;
      v109 = v5;
      v191 = v109;
      v110 = [UIAction actionWithTitle:v107 image:v108 identifier:0 handler:v190];

      v111 = [v109 _buttonWithAction:v110];
      v112 = v109[19];
      v109[19] = v111;

      [v109[19] setAccessibilityIdentifier:@"EVStationsButton"];
      [v109[19] setHidden:1];
      height3 = [[AxisAdjustingStackView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
      [(AxisAdjustingStackView *)height3 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(AxisAdjustingStackView *)height3 setDistribution:1];
      [(AxisAdjustingStackView *)height3 setAlignment:0];
      [(AxisAdjustingStackView *)height3 setAccessibilityIdentifier:@"ActionButtonStackView"];
      [(AxisAdjustingStackView *)height3 setSpacing:10.0];
      [(AxisAdjustingStackView *)height3 setDelegate:v109];
      [(AxisAdjustingStackView *)height3 _maps_addArrangedExpandingSubview:v109[19]];
      [(AxisAdjustingStackView *)height3 _maps_addArrangedExpandingSubview:v5->_nextButton];
      [(AxisAdjustingStackView *)height3 _maps_addArrangedExpandingSubview:v5->_findMyButton];
      [(AxisAdjustingStackView *)height3 _maps_addArrangedExpandingSubview:v5->_walkingButton];
      [(AxisAdjustingStackView *)height3 _maps_addArrangedExpandingSubview:v5->_pauseButton];
      [(AxisAdjustingStackView *)height3 _maps_addArrangedExpandingSubview:v5->_endButton];
      [(AxisAdjustingStackView *)height3 addTruncatableView:v109[19]];
      [(AxisAdjustingStackView *)height3 addTruncatableView:v5->_nextButton];
      v25 = &OBJC_IVAR___TransitPayFeatureDiscoverySource__queue;
      [(AxisAdjustingStackView *)height3 addTruncatableView:v5->_findMyButton];
      [(AxisAdjustingStackView *)height3 addTruncatableView:v5->_walkingButton];
      [(AxisAdjustingStackView *)height3 addTruncatableView:v5->_pauseButton];
      [(AxisAdjustingStackView *)height3 addTruncatableView:v5->_endButton];
      v114 = v109[13];
      v109[13] = height3;
      v115 = height3;

      [v109[13] setHidden:1];
      v84 = v109[13];
    }

    v116 = [[MapsBannerContent alloc] initWithHeaderView:v5->_laneGuidanceView iconView:v5->_maneuverImageView leadingTopView:v5->_distanceLabel trailingTopView:v5->_exitShield bottomView:v5->_descriptionLabel footerView:v84];
    contentView = [(MapsBannerView *)v5 contentView];
    [contentView setContent:v116];

    if ([(MapsBannerView *)v5 aperturePresentation])
    {
      v189 = v84;
      _tightBoundingBoxLayoutGuide = [(UILabel *)v5->_distanceLabel _tightBoundingBoxLayoutGuide];
      topAnchor = [_tightBoundingBoxLayoutGuide topAnchor];
      sBUISA_systemApertureObstructedAreaLayoutGuide = [(ManeuverBannerView *)v5 SBUISA_systemApertureObstructedAreaLayoutGuide];
      bottomAnchor = [sBUISA_systemApertureObstructedAreaLayoutGuide bottomAnchor];
      v122 = [topAnchor constraintEqualToAnchor:bottomAnchor];
      distanceLabelTopConstraint = v5->_distanceLabelTopConstraint;
      v5->_distanceLabelTopConstraint = v122;

      LODWORD(v124) = 1144750080;
      [(NSLayoutConstraint *)v5->_distanceLabelTopConstraint setPriority:v124];
      topAnchor2 = [(NavSignLaneGuidanceView *)v5->_laneGuidanceView topAnchor];
      sBUISA_systemApertureObstructedAreaLayoutGuide2 = [(ManeuverBannerView *)v5 SBUISA_systemApertureObstructedAreaLayoutGuide];
      bottomAnchor2 = [sBUISA_systemApertureObstructedAreaLayoutGuide2 bottomAnchor];
      v128 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2];
      laneGuidanceTopConstraint = v5->_laneGuidanceTopConstraint;
      v5->_laneGuidanceTopConstraint = v128;

      LODWORD(v130) = 1144750080;
      [(NSLayoutConstraint *)v5->_laneGuidanceTopConstraint setPriority:v130];
      leadingAnchor = [(ManeuverAccessoryView *)v5->_leadingManeuverView leadingAnchor];
      sBUISA_systemApertureLeadingConcentricContentLayoutGuide = [(ManeuverBannerView *)v5 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];
      leadingAnchor2 = [sBUISA_systemApertureLeadingConcentricContentLayoutGuide leadingAnchor];
      [(MapsBannerView *)v5 bannerAccessoryViewLeadingInset];
      v134 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
      leadingViewLeadingConstraint = v5->_leadingViewLeadingConstraint;
      v5->_leadingViewLeadingConstraint = v134;

      LODWORD(v136) = 1144750080;
      [(NSLayoutConstraint *)v5->_leadingViewLeadingConstraint setPriority:v136];
      sBUISA_systemApertureTrailingConcentricContentLayoutGuide = [(ManeuverBannerView *)v5 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];
      trailingAnchor = [sBUISA_systemApertureTrailingConcentricContentLayoutGuide trailingAnchor];
      trailingAnchor2 = [(DistanceAccessoryView *)v5->_apertureDistanceLabel trailingAnchor];
      [(MapsBannerView *)v5 bannerAccessoryViewTrailingInset];
      v140 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:?];

      LODWORD(v141) = 1144750080;
      [v140 setPriority:v141];
      v194[0] = v5->_leadingViewLeadingConstraint;
      v194[1] = v140;
      v188 = v140;
      v142 = [NSArray arrayWithObjects:v194 count:2];
      collapsedConstraints = v5->_collapsedConstraints;
      v5->_collapsedConstraints = v142;

      if (GEOConfigGetBOOL())
      {
        v144 = v5->_leadingConcentricContent;
        sBUISA_systemApertureLeadingConcentricContentLayoutGuide2 = [(ManeuverBannerView *)v5 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];
        LODWORD(v146) = 1144750080;
        v147 = [(UIView *)v144 _maps_constraintsEqualToEdgesOfLayoutGuide:sBUISA_systemApertureLeadingConcentricContentLayoutGuide2 priority:v146];

        v148 = v5->_obstructedArea;
        sBUISA_systemApertureObstructedAreaLayoutGuide3 = [(ManeuverBannerView *)v5 SBUISA_systemApertureObstructedAreaLayoutGuide];
        LODWORD(v150) = 1144750080;
        v151 = [(UIView *)v148 _maps_constraintsEqualToEdgesOfLayoutGuide:sBUISA_systemApertureObstructedAreaLayoutGuide3 priority:v150];

        v152 = v5->_trailingConcentricContent;
        sBUISA_systemApertureTrailingConcentricContentLayoutGuide2 = [(ManeuverBannerView *)v5 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];
        LODWORD(v154) = 1144750080;
        v155 = [(UIView *)v152 _maps_constraintsEqualToEdgesOfLayoutGuide:sBUISA_systemApertureTrailingConcentricContentLayoutGuide2 priority:v154];

        v156 = objc_alloc_init(NSMutableArray);
        allConstraints = [v147 allConstraints];
        [v156 addObjectsFromArray:allConstraints];

        allConstraints2 = [v151 allConstraints];
        [v156 addObjectsFromArray:allConstraints2];

        allConstraints3 = [v155 allConstraints];
        [v156 addObjectsFromArray:allConstraints3];

        v160 = [(NSArray *)v5->_collapsedConstraints arrayByAddingObjectsFromArray:v156];
        v161 = v5->_collapsedConstraints;
        v5->_collapsedConstraints = v160;
      }

      v162 = v25[665];
      heightAnchor3 = [*(&v5->super.super.super.super.isa + v162) heightAnchor];
      v186 = [heightAnchor3 constraintEqualToConstant:30.0];
      v193[0] = v186;
      widthAnchor3 = [*(&v5->super.super.super.super.isa + v162) widthAnchor];
      v164 = [widthAnchor3 constraintEqualToConstant:30.0];
      v193[1] = v164;
      trailingAnchor3 = [*(&v5->super.super.super.super.isa + v162) trailingAnchor];
      contentView2 = [(MapsBannerView *)v5 contentView];
      trailingAnchor4 = [contentView2 trailingAnchor];
      v168 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v193[2] = v168;
      centerYAnchor = [*(&v5->super.super.super.super.isa + v162) centerYAnchor];
      centerYAnchor2 = [(UILabel *)v5->_distanceLabel centerYAnchor];
      v171 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v193[3] = v171;
      v172 = [NSArray arrayWithObjects:v193 count:4];
      expandedConstraints = v5->_expandedConstraints;
      v5->_expandedConstraints = v172;

      v84 = v189;
    }

    widthAnchor4 = [(UIImageView *)v5->_exitShield widthAnchor];
    contentView3 = [(MapsBannerView *)v5 contentView];
    widthAnchor5 = [contentView3 widthAnchor];
    v177 = [widthAnchor4 constraintLessThanOrEqualToAnchor:widthAnchor5 multiplier:0.349999994];
    [v177 setActive:1];

    [(ManeuverBannerView *)v5 updateFromBannerItem];
    v5->_cachedHeight = -1.0;
    v5->_calculatedWidth = -1.0;
  }

  return v5;
}

@end