@interface ManeuverBannerView
- (BOOL)_isEligibleToShowWalkingButton;
- (CGSize)sizeThatFits:(CGSize)a3;
- (ManeuverBannerView)initWithTarget:(id)a3 item:(id)a4 aperturePresentation:(BOOL)a5;
- (id)_buttonWithAction:(id)a3;
- (id)majorText;
- (id)minorText;
- (void)_updateConstraints;
- (void)setExpanded:(BOOL)a3;
- (void)setIsVisible:(BOOL)a3;
- (void)setShowsControls:(BOOL)a3;
- (void)updateFromBannerItem;
- (void)updateLayout;
@end

@implementation ManeuverBannerView

- (void)_updateConstraints
{
  [(MapsBannerView *)self bannerAccessoryViewLeadingInset];
  v4 = v3;
  v5 = [(ManeuverBannerView *)self leadingManeuverView];
  [v5 preferredLeadingPadding];
  [(NSLayoutConstraint *)self->_leadingViewLeadingConstraint setConstant:v6 + v4];

  if ([(ManeuverBannerView *)self expanded])
  {
    v7 = [(ManeuverBannerView *)self maneuverItem];
    v8 = [v7 laneGuidanceInfo];
    v9 = v8 != 0;
  }

  else
  {
    v9 = 0;
  }

  if ([(ManeuverBannerView *)self expanded])
  {
    v10 = [(ManeuverBannerView *)self maneuverItem];
    v11 = [v10 laneGuidanceInfo];
    v12 = v11 == 0;
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
  v3 = [(ManeuverBannerView *)self maneuverItem];
  v4 = [v3 maneuverGuidanceInfo];
  v5 = [v4 majorText];
  if (v5)
  {
    v6 = [(ManeuverBannerView *)self maneuverItem];
    v7 = [v6 maneuverGuidanceInfo];
    v8 = [v7 minorText];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateFromBannerItem
{
  lastManeuverItem = self->_lastManeuverItem;
  v4 = [(ManeuverBannerView *)self maneuverItem];
  v5 = lastManeuverItem;
  v6 = v4;
  if (v5 | v6)
  {
    v7 = v6;
    v8 = [v5 isEqual:v6];

    if ((v8 & 1) == 0)
    {
      if ([(ManeuverBannerView *)self isVisible])
      {
        v9 = [(ManeuverBannerView *)self maneuverItem];
        v10 = [v9 copy];
        v11 = self->_lastManeuverItem;
        self->_lastManeuverItem = v10;

        v12 = [(ManeuverBannerView *)self maneuverItem];
        v13 = [v12 guidanceState];
        LODWORD(v14) = [v13 isInArrivalState];

        v15 = [(ManeuverBannerView *)self maneuverItem];
        v16 = [v15 guidanceState];
        v17 = [v16 isInParkingState];

        v18 = [(ManeuverBannerView *)self maneuverItem];
        v19 = [v18 guidanceState];
        v20 = [v19 isRerouting];

        v21 = [(ManeuverBannerView *)self maneuverItem];
        v208 = [v21 maneuverGuidanceInfo];

        v22 = +[UIColor labelColor];
        v23 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
        v24 = [v22 resolvedColorWithTraitCollection:v23];

        v25 = +[UIColor secondaryLabelColor];
        v26 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
        v27 = [v25 resolvedColorWithTraitCollection:v26];

        v209 = v20;
        v210 = v17;
        v206 = v27;
        v207 = v24;
        if (v20)
        {
          v28 = [NSAttributedString alloc];
          v29 = +[NSBundle mainBundle];
          v30 = [v29 localizedStringForKey:@"Rerouting" value:@"localized string not found" table:0];
          v244[0] = v24;
          v243[0] = NSForegroundColorAttributeName;
          v243[1] = NSFontAttributeName;
          v31 = [(ManeuverBannerView *)self _distanceFont];
          v244[1] = v31;
          v32 = [NSDictionary dictionaryWithObjects:v244 forKeys:v243 count:2];
          v33 = [v28 initWithString:v30 attributes:v32];
          [(UILabel *)self->_distanceLabel setAttributedText:v33];

          [(UILabel *)self->_descriptionLabel setAttributedText:0];
          [(GuidanceManeuverView *)self->_maneuverImageView setManeuverArtwork:0];
          [(NavSignLaneGuidanceView *)self->_laneGuidanceView setLanes:0];
          v34 = v208;
        }

        else if ((v14 | v17))
        {
          v35 = [(MapsBannerView *)self item];
          v36 = [v35 guidanceState];
          v37 = [v36 arrivalInfo];

          v38 = +[MNNavigationService sharedService];
          v200 = [v38 route];

          v201 = v37;
          v199 = [v37 destination];
          v39 = +[MNNavigationService sharedService];
          v40 = [v39 arrivalChargingStationInfo];

          [(GuidanceManeuverView *)self->_maneuverImageView setManeuverArtwork:0];
          [(NavSignLaneGuidanceView *)self->_laneGuidanceView setLanes:0];
          v41 = +[MNNavigationService sharedService];
          LODWORD(v36) = [v41 isArrivedAtEVCharger];

          v34 = v208;
          v202 = v14;
          v198 = v40;
          if (v36)
          {
            v42 = +[MNNavigationService sharedService];
            v43 = [v42 activeNavTrayGuidanceEvent];

            v196 = v43;
            if (v43)
            {
              v44 = [NSAttributedString alloc];
              v45 = [v43 title];
              v46 = [v45 stringWithDefaultOptions];
              v47 = v46;
              if (v46)
              {
                v48 = v46;
              }

              else
              {
                v48 = &stru_1016631F0;
              }

              v242[0] = v27;
              v241[0] = NSForegroundColorAttributeName;
              v241[1] = NSFontAttributeName;
              v49 = [(ManeuverBannerView *)self _descriptionFont];
              v242[1] = v49;
              v50 = [NSDictionary dictionaryWithObjects:v242 forKeys:v241 count:2];
              v51 = [v44 initWithString:v48 attributes:v50];
              [(UILabel *)self->_distanceLabel setAttributedText:v51];

              v52 = [NSAttributedString alloc];
              v197 = [v43 detail];
              v53 = [v197 stringWithDefaultOptions];
              v54 = v53;
              v239[1] = NSFontAttributeName;
              v240[0] = v207;
              if (v53)
              {
                v55 = v53;
              }

              else
              {
                v55 = &stru_1016631F0;
              }

              v239[0] = NSForegroundColorAttributeName;
              v56 = [(ManeuverBannerView *)self _distanceFont];
              v240[1] = v56;
              v57 = [NSDictionary dictionaryWithObjects:v240 forKeys:v239 count:2];
              v58 = [v52 initWithString:v55 attributes:v57];
              [(UILabel *)self->_descriptionLabel setAttributedText:v58];
            }

            else
            {
              [v40 chargingTime];
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
                v123 = [(ManeuverBannerView *)self _descriptionFont];
                v234[1] = v123;
                v124 = [NSDictionary dictionaryWithObjects:v234 forKeys:v233 count:2];
                v125 = [v106 initWithString:v122 attributes:v124];
                [(UILabel *)self->_distanceLabel setAttributedText:v125];

                v126 = [NSAttributedString alloc];
                v197 = +[NSBundle mainBundle];
                v54 = [v197 localizedStringForKey:@"Charged [Nav Banner Subtitle]" value:@"localized string not found" table:0];
                v56 = +[MNNavigationService sharedService];
                v57 = [v56 stopAfterCharging];
                v58 = [v57 navDisplayName];
                v127 = [NSString stringWithFormat:v54, v58];
                v232[0] = v207;
                v231[0] = NSForegroundColorAttributeName;
                v231[1] = NSFontAttributeName;
                v205 = [(ManeuverBannerView *)self _distanceFont];
                v232[1] = v205;
                v128 = [NSDictionary dictionaryWithObjects:v232 forKeys:v231 count:2];
                v129 = [v126 initWithString:v127 attributes:v128];
                [(UILabel *)self->_descriptionLabel setAttributedText:v129];
              }

              else
              {
                v109 = [v107 localizedStringForKey:@"Charging [Nav Banner Title]" value:@"localized string not found" table:0];
                [v40 batteryPercentageAfterCharging];
                v111 = [NSString stringWithFormat:v109, v110];
                v238[0] = v206;
                v237[0] = NSForegroundColorAttributeName;
                v237[1] = NSFontAttributeName;
                [(ManeuverBannerView *)self _descriptionFont];
                v113 = v112 = v40;
                v238[1] = v113;
                v114 = [NSDictionary dictionaryWithObjects:v238 forKeys:v237 count:2];
                v115 = [v106 initWithString:v111 attributes:v114];
                [(UILabel *)self->_distanceLabel setAttributedText:v115];

                v116 = [NSAttributedString alloc];
                v197 = +[NSBundle mainBundle];
                v54 = [v197 localizedStringForKey:@"Charging [Nav Banner Subtitle]" value:@"localized string not found" table:0];
                [v112 chargingTime];
                v56 = [NSString _navigation_stringWithSeconds:v117 abbreviated:1];
                v57 = [NSString stringWithFormat:v54, v56];
                v236[0] = v207;
                v235[0] = NSForegroundColorAttributeName;
                v235[1] = NSFontAttributeName;
                v58 = [(ManeuverBannerView *)self _distanceFont];
                v236[1] = v58;
                v118 = [NSDictionary dictionaryWithObjects:v236 forKeys:v235 count:2];
                v119 = [v116 initWithString:v57 attributes:v118];
                [(UILabel *)self->_descriptionLabel setAttributedText:v119];
              }
            }

            LOBYTE(v14) = v202;
            v120 = v198;
            v77 = v199;
            v86 = v196;
          }

          else
          {
            v73 = [(ManeuverBannerView *)self maneuverItem];
            v74 = [v73 guidanceState];
            v75 = [v74 isInParkingState];

            if (v75)
            {
              v76 = [NSAttributedString alloc];
              v77 = v199;
              v78 = [v199 parkingDisplayName];
              v230[0] = v27;
              v229[0] = NSForegroundColorAttributeName;
              v229[1] = NSFontAttributeName;
              v79 = [(ManeuverBannerView *)self _descriptionFont];
              v230[1] = v79;
              v80 = [NSDictionary dictionaryWithObjects:v230 forKeys:v229 count:2];
              v81 = [v76 initWithString:v78 attributes:v80];
              [(UILabel *)self->_descriptionLabel setAttributedText:v81];

              v82 = [(ManeuverBannerView *)self maneuverItem];
              v83 = [v82 guidanceState];
              LODWORD(v79) = [v83 isParked];

              v84 = [NSAttributedString alloc];
              v85 = +[NSBundle mainBundle];
              v86 = v85;
              if (v79)
              {
                v14 = [v85 localizedStringForKey:@"Parked" value:@"localized string not found" table:0];
                v227[1] = NSFontAttributeName;
                v228[0] = v24;
                v227[0] = NSForegroundColorAttributeName;
                v54 = [(ManeuverBannerView *)self _distanceFont];
                v228[1] = v54;
                v87 = v228;
                v88 = v227;
              }

              else
              {
                v14 = [v85 localizedStringForKey:@"Parking" value:@"localized string not found" table:0];
                v225[1] = NSFontAttributeName;
                v226[0] = v24;
                v225[0] = NSForegroundColorAttributeName;
                v54 = [(ManeuverBannerView *)self _distanceFont];
                v226[1] = v54;
                v87 = v226;
                v88 = v225;
              }

              v56 = [NSDictionary dictionaryWithObjects:v87 forKeys:v88 count:2];
              v197 = v14;
              v57 = [v84 initWithString:v14 attributes:v56];
              [(UILabel *)self->_distanceLabel setAttributedText:v57];
              LOBYTE(v14) = v202;
              v120 = v198;
            }

            else
            {
              v89 = [v200 arrivalInstructionStringForLegIndex:{objc_msgSend(v201, "legIndex")}];
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
              v94 = [(ManeuverBannerView *)self _descriptionFont];
              v224[1] = v94;
              v95 = [NSDictionary dictionaryWithObjects:v224 forKeys:v223 count:2];
              v96 = [v93 initWithString:v92 attributes:v95];

              [(UILabel *)self->_descriptionLabel setAttributedText:v96];
              v97 = [(ManeuverBannerView *)self maneuverItem];
              v98 = [v97 guidanceState];
              LODWORD(v94) = [v98 isArrived];

              v99 = [NSAttributedString alloc];
              v100 = +[NSBundle mainBundle];
              v86 = v100;
              if (v94)
              {
                v101 = [v100 localizedStringForKey:@"Arrived" value:@"localized string not found" table:0];
                v221[1] = NSFontAttributeName;
                v222[0] = v24;
                v221[0] = NSForegroundColorAttributeName;
                v54 = [(ManeuverBannerView *)self _distanceFont];
                v222[1] = v54;
                v102 = v222;
                v103 = v221;
              }

              else
              {
                v101 = [v100 localizedStringForKey:@"Arriving" value:@"localized string not found" table:0];
                v219[1] = NSFontAttributeName;
                v220[0] = v24;
                v219[0] = NSForegroundColorAttributeName;
                v54 = [(ManeuverBannerView *)self _distanceFont];
                v220[1] = v54;
                v102 = v220;
                v103 = v219;
              }

              v56 = [NSDictionary dictionaryWithObjects:v102 forKeys:v103 count:2];
              v197 = v101;
              v57 = [v99 initWithString:v101 attributes:v56];
              LOBYTE(v14) = v202;
              v120 = v198;
              [(UILabel *)self->_distanceLabel setAttributedText:v57];
              v77 = v199;
            }
          }
        }

        else
        {
          v59 = [(ManeuverBannerView *)self majorText];
          v60 = [(ManeuverBannerView *)self minorText];
          v34 = v208;
          if (!v59)
          {

LABEL_65:
            return;
          }

          v204 = v60;
          v61 = [v208 maneuverArtwork];
          [(GuidanceManeuverView *)self->_maneuverImageView setManeuverArtwork:v61];

          v62 = [(ManeuverBannerView *)self maneuverItem];
          v63 = [v62 laneGuidanceInfo];
          [v63 lanes];
          v64 = v203 = v14;
          [(NavSignLaneGuidanceView *)self->_laneGuidanceView setLanes:v64];

          v218[0] = v24;
          v217[0] = NSForegroundColorAttributeName;
          v217[1] = NSFontAttributeName;
          v65 = [(ManeuverBannerView *)self _distanceFont];
          v66 = MKServerFormattedStringArtworkSizeAttributeKey;
          v217[2] = MKServerFormattedStringArtworkSizeAttributeKey;
          v218[1] = v65;
          v218[2] = &off_1016E6710;
          v67 = [NSDictionary dictionaryWithObjects:v218 forKeys:v217 count:3];
          v68 = [v59 multiPartAttributedStringWithAttributes:v67];
          v69 = [v68 attributedString];
          [(UILabel *)self->_distanceLabel setAttributedText:v69];

          v216[0] = v27;
          v215[0] = NSForegroundColorAttributeName;
          v215[1] = NSFontAttributeName;
          v70 = [(ManeuverBannerView *)self _descriptionFont];
          v215[2] = v66;
          v216[1] = v70;
          v216[2] = &off_1016E6710;
          v71 = [NSDictionary dictionaryWithObjects:v216 forKeys:v215 count:3];
          v14 = [v204 multiPartAttributedStringWithAttributes:v71];
          v72 = [v14 attributedString];
          [(UILabel *)self->_descriptionLabel setAttributedText:v72];

          LOBYTE(v14) = v203;
          v34 = v208;
        }

        v130 = [(ManeuverBannerView *)self maneuverItem];
        v131 = [v130 maneuverGuidanceInfo];
        v132 = [v131 shieldInfo];

        v133 = v209;
        if (!v132)
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
          if ([v132 isEqual:self->_cachedShieldInfo])
          {
LABEL_45:
            v146 = [v34 maneuverArtwork];
            v147 = [(ManeuverBannerView *)self leadingManeuverView];
            [v147 setManeuverArtwork:v146];

            v148 = [v34 maneuverArtwork];
            v149 = [(ManeuverBannerView *)self minimalManeuverView];
            [v149 setManeuverArtwork:v148];

            v150 = [v34 maneuverArtwork];
            v151 = [(ManeuverBannerView *)self detachedMinimalManeuverView];
            [v151 setManeuverArtwork:v150];

            v152 = [(ManeuverBannerView *)self leadingManeuverView];
            [v152 setIsRerouting:v209];

            v153 = [(ManeuverBannerView *)self minimalManeuverView];
            [v153 setIsRerouting:v209];

            v154 = [(ManeuverBannerView *)self detachedMinimalManeuverView];
            [v154 setIsRerouting:v209];

            v155 = [(MapsBannerView *)self item];
            v156 = [v155 guidanceState];
            v157 = [v156 transportType];
            v158 = [(ManeuverBannerView *)self minimalManeuverView];
            [v158 setTransportType:v157];

            v159 = [(MapsBannerView *)self item];
            v160 = [v159 guidanceState];
            v161 = [v160 transportType];
            v162 = [(ManeuverBannerView *)self detachedMinimalManeuverView];
            [v162 setTransportType:v161];

            v163 = [(MapsBannerView *)self item];
            v164 = [v163 guidanceState];
            v165 = [v164 transportType];
            v166 = [(ManeuverBannerView *)self leadingManeuverView];
            [v166 setTransportType:v165];

            if (v209)
            {
              v167 = [(ManeuverBannerView *)self apertureDistanceLabel];
              [v167 setDisplayState:3];

              v168 = [(ManeuverBannerView *)self activityView];
              [v168 setHidden:0];

              v169 = [(ManeuverBannerView *)self activityView];
              [v169 startAnimating];
              v170 = &UIMenuFind_ptr;
            }

            else
            {
              v171 = [(MapsBannerView *)self item];
              v172 = [v171 guidanceState];
              v173 = [v172 distance];
              [v173 doubleValue];
              v175 = v174;
              v176 = [(ManeuverBannerView *)self apertureDistanceLabel];
              [v176 setDistanceToNextManeuver:v175];

              v177 = +[MNNavigationService sharedService];
              LODWORD(v172) = [v177 navigationState];

              v178 = v34;
              if (v172 == 2)
              {
                v179 = [(ManeuverBannerView *)self maneuverItem];
                v180 = [v179 guidanceState];
                if ([v180 isInArrivalState])
                {
                  v181 = 1;
                }

                else
                {
                  v182 = [(ManeuverBannerView *)self maneuverItem];
                  v183 = [v182 guidanceState];
                  if ([v183 isInParkingState])
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

              v184 = [(ManeuverBannerView *)self apertureDistanceLabel];
              [v184 setDisplayState:v181];

              v185 = [(ManeuverBannerView *)self activityView];
              [v185 setHidden:1];

              v169 = [(ManeuverBannerView *)self activityView];
              [v169 stopAnimating];
              v34 = v178;
            }

            v186 = [(UIMenuIdentifier *)v170[281] sharedService];
            v187 = [v186 alternateWalkingRouteDisplayETAInfo];

            if (v187)
            {
              [v187 remainingMinutesToEndOfRoute];
              v188 = GEOStringForDuration();
              [(UIButton *)self->_walkingButton setTitle:v188 forState:0];
            }

            v189 = [(MapsBannerView *)self contentView];
            v190 = [v189 centerBodyContent];

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
            v193 = [(MapsBannerView *)self contentView];
            [v193 setCenterBodyContent:v191 & 1];

            v194 = [(MapsBannerView *)self contentView];
            v195 = [v194 centerBodyContent];

            if (v190 != v195)
            {
              self->_cachedHeight = -1.0;
            }

            [(ManeuverBannerView *)self updateLayout];

            goto LABEL_65;
          }

          v138 = +[UIScreen mainScreen];
          [v138 scale];
          v140 = v139;

          cachedShieldInfo = [v132 shieldImageWithSize:5 scale:0 idiom:v140];
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
          objc_storeStrong(&self->_cachedShieldInfo, v132);
        }

        goto LABEL_45;
      }
    }
  }
}

- (id)majorText
{
  v3 = [(ManeuverBannerView *)self maneuverItem];
  v4 = [v3 maneuverGuidanceInfo];
  v5 = [v4 majorText];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(ManeuverBannerView *)self maneuverItem];
    v9 = [v8 maneuverGuidanceInfo];
    v7 = [v9 minorText];
  }

  return v7;
}

- (void)setExpanded:(BOOL)a3
{
  v3 = a3;
  expanded = self->_expanded;
  self->_expanded = a3;
  v6 = [(ManeuverBannerView *)self leadingView];
  v7 = v6;
  if (v3)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  if (v3)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  if (v3)
  {
    v10 = &OBJC_IVAR___ManeuverBannerView__expandedConstraints;
  }

  else
  {
    v10 = &OBJC_IVAR___ManeuverBannerView__collapsedConstraints;
  }

  if (v3)
  {
    v11 = &OBJC_IVAR___ManeuverBannerView__collapsedConstraints;
  }

  else
  {
    v11 = &OBJC_IVAR___ManeuverBannerView__expandedConstraints;
  }

  [v6 setAlpha:v8];

  v12 = [(ManeuverBannerView *)self trailingView];
  [v12 setAlpha:v8];

  v13 = [(ManeuverBannerView *)self minimalView];
  [v13 setAlpha:v8];

  v14 = [(ManeuverBannerView *)self detachedMinimalView];
  [v14 setAlpha:v8];

  v15 = [(MapsBannerView *)self contentView];
  [v15 setAlpha:v9];

  [NSLayoutConstraint activateConstraints:*(&self->super.super.super.super.isa + *v10)];
  [NSLayoutConstraint deactivateConstraints:*(&self->super.super.super.super.isa + *v11)];
  [(ManeuverBannerView *)self _updateConstraints];
  if (expanded != v3)
  {
    [(AxisAdjustingStackView *)self->_controlsView invalidateStackViewAxis];
    controlsView = self->_controlsView;

    [(AxisAdjustingStackView *)controlsView updateStackViewAxisIfNeeded];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  cachedHeight = self->_cachedHeight;
  if (cachedHeight == -1.0 || self->_calculatedWidth != a3.width)
  {
    if ([(MapsBannerView *)self aperturePresentation])
    {
      v7 = [(ManeuverBannerView *)self SBUISA_systemApertureObstructedAreaLayoutGuide];
      [v7 layoutFrame];
      MaxY = CGRectGetMaxY(v25);
      v9 = [(MapsBannerView *)self contentView];
      [v9 _maps_compressedSizeForWidth:0 withBlock:width];
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
        v14 = [(MapsBannerView *)self item];
        v23.width = width;
        v23.height = height;
        v15 = NSStringFromCGSize(v23);
        v17 = 138412802;
        v18 = v14;
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

- (void)setIsVisible:(BOOL)a3
{
  if (self->_isVisible != a3)
  {
    self->_isVisible = a3;
    [(ManeuverBannerView *)self updateFromBannerItem];
  }
}

- (BOOL)_isEligibleToShowWalkingButton
{
  v2 = +[MNNavigationService sharedService];
  v3 = [v2 destination];
  [v3 findMyHandleID];

  return GEOConfigGetBOOL();
}

- (void)setShowsControls:(BOOL)a3
{
  v4 = [(MapsBannerView *)self aperturePresentation]&& a3;
  if (self->_showsControls != v4)
  {
    self->_showsControls = v4;

    [(ManeuverBannerView *)self updateLayout];
  }
}

- (id)_buttonWithAction:(id)a3
{
  v3 = a3;
  v4 = +[UIButtonConfiguration sbui_systemApertureTextButtonConfiguration];
  if (([v3 attributes] & 2) != 0)
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
  v8 = [SBUISystemApertureButton buttonWithConfiguration:v4 primaryAction:v3];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v9) = 1148846080;
  [v8 setContentCompressionResistancePriority:1 forAxis:v9];
  v10 = [v8 heightAnchor];
  v11 = [v10 constraintEqualToConstant:42.0];
  [v11 setActive:1];

  return v8;
}

- (ManeuverBannerView)initWithTarget:(id)a3 item:(id)a4 aperturePresentation:(BOOL)a5
{
  v192.receiver = self;
  v192.super_class = ManeuverBannerView;
  v5 = [(MapsBannerView *)&v192 initWithTarget:a3 item:a4 aperturePresentation:a5];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(ManeuverBannerView *)v5 setAccessibilityIdentifier:v7];

    v8 = [GuidanceManeuverView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v12 = [(GuidanceManeuverView *)v8 initWithFrame:0 textureProvider:CGRectZero.origin.x, y, width, height];
    maneuverImageView = v5->_maneuverImageView;
    v5->_maneuverImageView = v12;

    [(GuidanceManeuverView *)v5->_maneuverImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v14) = 1148846080;
    [(GuidanceManeuverView *)v5->_maneuverImageView _maps_setAllContentHuggingAndCompressionResistancePriorities:v14];
    [(GuidanceManeuverView *)v5->_maneuverImageView setContentMode:1];
    v15 = [(GuidanceManeuverView *)v5->_maneuverImageView widthAnchor];
    LODWORD(v16) = 1132068864;
    v17 = [v15 constraintEqualToConstant:46.0 priority:v16];
    [v17 setActive:1];

    v18 = [(GuidanceManeuverView *)v5->_maneuverImageView widthAnchor];
    v19 = [v18 constraintGreaterThanOrEqualToConstant:46.0];
    [v19 setActive:1];

    v20 = [(GuidanceManeuverView *)v5->_maneuverImageView heightAnchor];
    v21 = [v20 constraintEqualToConstant:46.0];
    [v21 setActive:1];

    v22 = [(ManeuverBannerView *)v5 theme];
    v23 = [v22 navSignGuidanceManeuverColor];
    [(GuidanceManeuverView *)v5->_maneuverImageView setArrowColor:v23];

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
      v32 = [[DistanceAccessoryView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
      apertureDistanceLabel = v5->_apertureDistanceLabel;
      v5->_apertureDistanceLabel = v32;

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
        v44 = [v43 CGColor];
        v45 = [(ManeuverAccessoryView *)v5->_leadingManeuverView layer];
        [v45 setBorderColor:v44];

        v46 = [(ManeuverAccessoryView *)v5->_leadingManeuverView layer];
        [v46 setBorderWidth:1.0];

        v47 = +[MapsTheme apertureKeyColor];
        v48 = [v47 CGColor];
        v49 = [(DistanceAccessoryView *)v5->_apertureDistanceLabel layer];
        [v49 setBorderColor:v48];

        v50 = [(DistanceAccessoryView *)v5->_apertureDistanceLabel layer];
        [v50 setBorderWidth:1.0];

        v51 = +[MapsTheme apertureKeyColor];
        v52 = [v51 CGColor];
        v53 = [(ManeuverAccessoryView *)v5->_minimalManeuverView layer];
        [v53 setBorderColor:v52];

        v54 = [(ManeuverAccessoryView *)v5->_minimalManeuverView layer];
        [v54 setBorderWidth:1.0];

        v25 = &OBJC_IVAR___TransitPayFeatureDiscoverySource__queue;
        v55 = +[MapsTheme apertureKeyColor];
        v56 = [v55 CGColor];
        v57 = [(ManeuverAccessoryView *)v5->_detachedMinimalManeuverView layer];
        [v57 setBorderColor:v56];

        v58 = [(ManeuverAccessoryView *)v5->_detachedMinimalManeuverView layer];
        [v58 setBorderWidth:1.0];
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

    v65 = [(NavSignLaneGuidanceView *)v5->_laneGuidanceView heightAnchor];
    v66 = [v65 constraintLessThanOrEqualToConstant:46.0];
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
    v73 = [(ManeuverBannerView *)v5 _distanceFont];
    [(UILabel *)v5->_distanceLabel setFont:v73];

    v74 = objc_opt_new();
    descriptionLabel = v5->_descriptionLabel;
    v5->_descriptionLabel = v74;

    [(UILabel *)v5->_descriptionLabel setAccessibilityIdentifier:@"DescriptionLabel"];
    [(UILabel *)v5->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v76) = 1148846080;
    [(UILabel *)v5->_descriptionLabel _maps_setAllContentHuggingAndCompressionResistancePriorities:v76];
    [(UILabel *)v5->_descriptionLabel setNumberOfLines:3];
    v77 = [(ManeuverBannerView *)v5 _descriptionFont];
    [(UILabel *)v5->_descriptionLabel setFont:v77];

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
      v182 = [v97 alternateWalkingRouteDisplayETAInfo];

      [v182 remainingMinutesToEndOfRoute];
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
      v113 = [[AxisAdjustingStackView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
      [(AxisAdjustingStackView *)v113 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(AxisAdjustingStackView *)v113 setDistribution:1];
      [(AxisAdjustingStackView *)v113 setAlignment:0];
      [(AxisAdjustingStackView *)v113 setAccessibilityIdentifier:@"ActionButtonStackView"];
      [(AxisAdjustingStackView *)v113 setSpacing:10.0];
      [(AxisAdjustingStackView *)v113 setDelegate:v109];
      [(AxisAdjustingStackView *)v113 _maps_addArrangedExpandingSubview:v109[19]];
      [(AxisAdjustingStackView *)v113 _maps_addArrangedExpandingSubview:v5->_nextButton];
      [(AxisAdjustingStackView *)v113 _maps_addArrangedExpandingSubview:v5->_findMyButton];
      [(AxisAdjustingStackView *)v113 _maps_addArrangedExpandingSubview:v5->_walkingButton];
      [(AxisAdjustingStackView *)v113 _maps_addArrangedExpandingSubview:v5->_pauseButton];
      [(AxisAdjustingStackView *)v113 _maps_addArrangedExpandingSubview:v5->_endButton];
      [(AxisAdjustingStackView *)v113 addTruncatableView:v109[19]];
      [(AxisAdjustingStackView *)v113 addTruncatableView:v5->_nextButton];
      v25 = &OBJC_IVAR___TransitPayFeatureDiscoverySource__queue;
      [(AxisAdjustingStackView *)v113 addTruncatableView:v5->_findMyButton];
      [(AxisAdjustingStackView *)v113 addTruncatableView:v5->_walkingButton];
      [(AxisAdjustingStackView *)v113 addTruncatableView:v5->_pauseButton];
      [(AxisAdjustingStackView *)v113 addTruncatableView:v5->_endButton];
      v114 = v109[13];
      v109[13] = v113;
      v115 = v113;

      [v109[13] setHidden:1];
      v84 = v109[13];
    }

    v116 = [[MapsBannerContent alloc] initWithHeaderView:v5->_laneGuidanceView iconView:v5->_maneuverImageView leadingTopView:v5->_distanceLabel trailingTopView:v5->_exitShield bottomView:v5->_descriptionLabel footerView:v84];
    v117 = [(MapsBannerView *)v5 contentView];
    [v117 setContent:v116];

    if ([(MapsBannerView *)v5 aperturePresentation])
    {
      v189 = v84;
      v118 = [(UILabel *)v5->_distanceLabel _tightBoundingBoxLayoutGuide];
      v119 = [v118 topAnchor];
      v120 = [(ManeuverBannerView *)v5 SBUISA_systemApertureObstructedAreaLayoutGuide];
      v121 = [v120 bottomAnchor];
      v122 = [v119 constraintEqualToAnchor:v121];
      distanceLabelTopConstraint = v5->_distanceLabelTopConstraint;
      v5->_distanceLabelTopConstraint = v122;

      LODWORD(v124) = 1144750080;
      [(NSLayoutConstraint *)v5->_distanceLabelTopConstraint setPriority:v124];
      v125 = [(NavSignLaneGuidanceView *)v5->_laneGuidanceView topAnchor];
      v126 = [(ManeuverBannerView *)v5 SBUISA_systemApertureObstructedAreaLayoutGuide];
      v127 = [v126 bottomAnchor];
      v128 = [v125 constraintEqualToAnchor:v127];
      laneGuidanceTopConstraint = v5->_laneGuidanceTopConstraint;
      v5->_laneGuidanceTopConstraint = v128;

      LODWORD(v130) = 1144750080;
      [(NSLayoutConstraint *)v5->_laneGuidanceTopConstraint setPriority:v130];
      v131 = [(ManeuverAccessoryView *)v5->_leadingManeuverView leadingAnchor];
      v132 = [(ManeuverBannerView *)v5 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];
      v133 = [v132 leadingAnchor];
      [(MapsBannerView *)v5 bannerAccessoryViewLeadingInset];
      v134 = [v131 constraintEqualToAnchor:v133 constant:?];
      leadingViewLeadingConstraint = v5->_leadingViewLeadingConstraint;
      v5->_leadingViewLeadingConstraint = v134;

      LODWORD(v136) = 1144750080;
      [(NSLayoutConstraint *)v5->_leadingViewLeadingConstraint setPriority:v136];
      v137 = [(ManeuverBannerView *)v5 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];
      v138 = [v137 trailingAnchor];
      v139 = [(DistanceAccessoryView *)v5->_apertureDistanceLabel trailingAnchor];
      [(MapsBannerView *)v5 bannerAccessoryViewTrailingInset];
      v140 = [v138 constraintEqualToAnchor:v139 constant:?];

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
        v145 = [(ManeuverBannerView *)v5 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];
        LODWORD(v146) = 1144750080;
        v147 = [(UIView *)v144 _maps_constraintsEqualToEdgesOfLayoutGuide:v145 priority:v146];

        v148 = v5->_obstructedArea;
        v149 = [(ManeuverBannerView *)v5 SBUISA_systemApertureObstructedAreaLayoutGuide];
        LODWORD(v150) = 1144750080;
        v151 = [(UIView *)v148 _maps_constraintsEqualToEdgesOfLayoutGuide:v149 priority:v150];

        v152 = v5->_trailingConcentricContent;
        v153 = [(ManeuverBannerView *)v5 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];
        LODWORD(v154) = 1144750080;
        v155 = [(UIView *)v152 _maps_constraintsEqualToEdgesOfLayoutGuide:v153 priority:v154];

        v156 = objc_alloc_init(NSMutableArray);
        v157 = [v147 allConstraints];
        [v156 addObjectsFromArray:v157];

        v158 = [v151 allConstraints];
        [v156 addObjectsFromArray:v158];

        v159 = [v155 allConstraints];
        [v156 addObjectsFromArray:v159];

        v160 = [(NSArray *)v5->_collapsedConstraints arrayByAddingObjectsFromArray:v156];
        v161 = v5->_collapsedConstraints;
        v5->_collapsedConstraints = v160;
      }

      v162 = v25[665];
      v187 = [*(&v5->super.super.super.super.isa + v162) heightAnchor];
      v186 = [v187 constraintEqualToConstant:30.0];
      v193[0] = v186;
      v163 = [*(&v5->super.super.super.super.isa + v162) widthAnchor];
      v164 = [v163 constraintEqualToConstant:30.0];
      v193[1] = v164;
      v165 = [*(&v5->super.super.super.super.isa + v162) trailingAnchor];
      v166 = [(MapsBannerView *)v5 contentView];
      v167 = [v166 trailingAnchor];
      v168 = [v165 constraintEqualToAnchor:v167];
      v193[2] = v168;
      v169 = [*(&v5->super.super.super.super.isa + v162) centerYAnchor];
      v170 = [(UILabel *)v5->_distanceLabel centerYAnchor];
      v171 = [v169 constraintEqualToAnchor:v170];
      v193[3] = v171;
      v172 = [NSArray arrayWithObjects:v193 count:4];
      expandedConstraints = v5->_expandedConstraints;
      v5->_expandedConstraints = v172;

      v84 = v189;
    }

    v174 = [(UIImageView *)v5->_exitShield widthAnchor];
    v175 = [(MapsBannerView *)v5 contentView];
    v176 = [v175 widthAnchor];
    v177 = [v174 constraintLessThanOrEqualToAnchor:v176 multiplier:0.349999994];
    [v177 setActive:1];

    [(ManeuverBannerView *)v5 updateFromBannerItem];
    v5->_cachedHeight = -1.0;
    v5->_calculatedWidth = -1.0;
  }

  return v5;
}

@end