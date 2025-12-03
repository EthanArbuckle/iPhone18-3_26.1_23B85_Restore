@interface FUFlightInfoViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
- (void)setFlight:(id)flight;
@end

@implementation FUFlightInfoViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"leg" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FUFlightLeg" hasInstanceMethod:@"duration" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"flightButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"flight" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"leg" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"labelAirlineName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"labelFlightCode" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"labelStatusTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"labelStatus" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"labelDepartureCity" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"labelDepartureCode" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"labelDepartureInfo1" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"labelDepartureInfo2" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"labelArrivalCity" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"labelArrivalCode" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"labelArrivalInfo1" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"labelArrivalInfo2" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"labelDepartureTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"labelDepartureDate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"labelDepartureDelay" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"labelArrivalTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"labelArrivalDate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"labelArrivalDelay" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"labelDurationTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"labelDurationValue" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"labelDurationComplete" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"labelBaggageClaimTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FUFlightInfoView" hasInstanceMethod:@"labelBaggageClaimValue" withFullSignature:{"@", 0}];
}

- (void)setFlight:(id)flight
{
  v4.receiver = self;
  v4.super_class = FUFlightInfoViewAccessibility;
  [(FUFlightInfoViewAccessibility *)&v4 setFlight:flight];
  [(FUFlightInfoViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)accessibilityElements
{
  v3 = [(FUFlightInfoViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (!v3)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v234 = 0;
    objc_opt_class();
    v5 = [(FUFlightInfoViewAccessibility *)self safeValueForKey:@"flight"];
    v6 = __UIAccessibilityCastAsClass();

    v234 = 0;
    objc_opt_class();
    v7 = [(FUFlightInfoViewAccessibility *)self safeValueForKey:@"leg"];
    v8 = __UIAccessibilityCastAsClass();

    v9 = [[UIAccessibilityFrameRecalculatingElement alloc] initWithAccessibilityContainer:self];
    v203 = *MEMORY[0x29EDC7FD0];
    [(UIAccessibilityFrameRecalculatingElement *)v9 setAccessibilityTraits:?];
    v10 = MEMORY[0x29EDBA0F8];
    v11 = accessibilityLocalizedString(@"flight.code.label");
    airline = [v6 airline];
    name = [airline name];
    flightCode = [v6 flightCode];
    v15 = [v10 stringWithFormat:v11, name, flightCode];
    [(UIAccessibilityFrameRecalculatingElement *)v9 setAccessibilityLabel:v15];

    v233[0] = MEMORY[0x29EDCA5F8];
    v233[1] = 3221225472;
    v233[2] = __54__FUFlightInfoViewAccessibility_accessibilityElements__block_invoke;
    v233[3] = &unk_29F2BF258;
    v233[4] = self;
    [(UIAccessibilityFrameRecalculatingElement *)v9 setCalculateFrame:v233];
    [array addObject:v9];
    v234 = 0;
    objc_opt_class();
    v16 = [(FUFlightInfoViewAccessibility *)self safeValueForKey:@"labelStatus"];
    v17 = __UIAccessibilityCastAsClass();

    if (v234 == 1)
    {
      goto LABEL_71;
    }

    v204 = v8;
    v234 = 0;
    objc_opt_class();
    v18 = [(FUFlightInfoViewAccessibility *)self safeValueForKey:@"labelStatusTitle"];
    v19 = __UIAccessibilityCastAsClass();

    if (v234 == 1)
    {
      goto LABEL_71;
    }

    text = [v19 text];
    v21 = [text length];

    if (v21)
    {
      v22 = [[UIAccessibilityFrameRecalculatingElement alloc] initWithAccessibilityContainer:self];
      [(UIAccessibilityFrameRecalculatingElement *)v22 setAccessibilityTraits:v203];
      v23 = [(FUFlightInfoViewAccessibility *)self _accessibilityStringForLabelKeyValues:@"labelStatusTitle, labelStatus"];
      [(UIAccessibilityFrameRecalculatingElement *)v22 setAccessibilityLabel:v23];

      v230[0] = MEMORY[0x29EDCA5F8];
      v230[1] = 3221225472;
      v230[2] = __54__FUFlightInfoViewAccessibility_accessibilityElements__block_invoke_2;
      v230[3] = &unk_29F2BF280;
      v231 = v17;
      v232 = v19;
      [(UIAccessibilityFrameRecalculatingElement *)v22 setCalculateFrame:v230];
      [array addObject:v22];
    }

    v194 = v19;
    v195 = v17;
    v201 = [[UIAccessibilityFrameRecalculatingElement alloc] initWithAccessibilityContainer:self];
    v198 = *MEMORY[0x29EDC7F70];
    [(UIAccessibilityFrameRecalculatingElement *)v201 setAccessibilityTraits:?];
    v234 = 0;
    objc_opt_class();
    v24 = [(FUFlightInfoViewAccessibility *)self safeValueForKey:@"labelDepartureCity"];
    v25 = __UIAccessibilityCastAsClass();

    if (v234 == 1)
    {
      goto LABEL_71;
    }

    v234 = 0;
    objc_opt_class();
    v26 = [(FUFlightInfoViewAccessibility *)self safeValueForKey:@"labelDepartureCode"];
    v27 = __UIAccessibilityCastAsClass();

    if (v234 == 1)
    {
      goto LABEL_71;
    }

    v202 = array;
    v234 = 0;
    objc_opt_class();
    v28 = [(FUFlightInfoViewAccessibility *)self safeValueForKey:@"labelDepartureInfo1"];
    v29 = __UIAccessibilityCastAsClass();

    if (v234 == 1)
    {
      goto LABEL_71;
    }

    v192 = v9;
    v193 = v6;
    v234 = 0;
    objc_opt_class();
    v30 = [(FUFlightInfoViewAccessibility *)self safeValueForKey:@"labelDepartureInfo2"];
    v31 = __UIAccessibilityCastAsClass();

    if (v234 == 1)
    {
      goto LABEL_71;
    }

    v225[0] = MEMORY[0x29EDCA5F8];
    v225[1] = 3221225472;
    v225[2] = __54__FUFlightInfoViewAccessibility_accessibilityElements__block_invoke_3;
    v225[3] = &unk_29F2BF2A8;
    v32 = v25;
    v226 = v32;
    v33 = v27;
    v227 = v33;
    v34 = v29;
    v228 = v34;
    v35 = v31;
    v229 = v35;
    [(UIAccessibilityFrameRecalculatingElement *)v201 setCalculateFrame:v225];
    v36 = v202;
    v190 = v33;
    v191 = v32;
    v188 = v35;
    v189 = v34;
    if (!v8)
    {
      iATACode2 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{4, v32, v33, v34, v35}];
      v42 = MEMORY[0x29C2D6200]();
LABEL_26:

      [(UIAccessibilityFrameRecalculatingElement *)v201 setAccessibilityLabel:v42];
      v58 = accessibilityLocalizedString(@"flight.departure.location.hint");
      [(UIAccessibilityFrameRecalculatingElement *)v201 setAccessibilityHint:v58];

      [v36 addObject:v201];
      v234 = 0;
      objc_opt_class();
      v59 = [(FUFlightInfoViewAccessibility *)self safeValueForKey:@"flightButton"];
      v60 = __UIAccessibilityCastAsClass();

      if (v234 == 1)
      {
        goto LABEL_71;
      }

      v61 = accessibilityLocalizedString(@"flight.overview.label");
      [v60 setAccessibilityLabel:v61];

      v62 = accessibilityLocalizedString(@"flight.overview.hint");
      [v60 setAccessibilityHint:v62];

      [v36 axSafelyAddObject:v60];
      v200 = [[UIAccessibilityFrameRecalculatingElement alloc] initWithAccessibilityContainer:self];
      [(UIAccessibilityFrameRecalculatingElement *)v200 setAccessibilityTraits:v198];
      v234 = 0;
      objc_opt_class();
      v63 = [(FUFlightInfoViewAccessibility *)self safeValueForKey:@"labelArrivalCity"];
      v64 = __UIAccessibilityCastAsClass();

      if (v234 == 1)
      {
        goto LABEL_71;
      }

      v187 = v42;
      v234 = 0;
      objc_opt_class();
      v65 = [(FUFlightInfoViewAccessibility *)self safeValueForKey:@"labelArrivalCode"];
      v66 = __UIAccessibilityCastAsClass();

      if (v234 == 1)
      {
        goto LABEL_71;
      }

      v186 = v60;
      v234 = 0;
      objc_opt_class();
      v67 = [(FUFlightInfoViewAccessibility *)self safeValueForKey:@"labelArrivalInfo1"];
      v68 = __UIAccessibilityCastAsClass();

      if (v234 == 1)
      {
        goto LABEL_71;
      }

      v69 = v36;
      v234 = 0;
      objc_opt_class();
      v70 = [(FUFlightInfoViewAccessibility *)self safeValueForKey:@"labelArrivalInfo2"];
      v71 = __UIAccessibilityCastAsClass();

      if (v234 == 1)
      {
        goto LABEL_71;
      }

      v220[0] = MEMORY[0x29EDCA5F8];
      v220[1] = 3221225472;
      v220[2] = __54__FUFlightInfoViewAccessibility_accessibilityElements__block_invoke_4;
      v220[3] = &unk_29F2BF2A8;
      v72 = v64;
      v221 = v72;
      v73 = v66;
      v222 = v73;
      v74 = v68;
      v223 = v74;
      v75 = v71;
      v224 = v75;
      [(UIAccessibilityFrameRecalculatingElement *)v200 setCalculateFrame:v220];
      v184 = v73;
      v185 = v72;
      v182 = v75;
      v183 = v74;
      if (!v204)
      {
        iATACode = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{4, v72, v73, v74, v75}];
        v82 = MEMORY[0x29C2D6200]();
        v80 = 0x29F2BF000;
        goto LABEL_45;
      }

      arrival = [v204 arrival];
      airport = [arrival airport];
      name2 = [airport name];
      v79 = name2;
      v80 = 0x29F2BF000uLL;
      if (name2)
      {
        iATACode = name2;
      }

      else
      {
        arrival2 = [v204 arrival];
        airport2 = [arrival2 airport];
        iATACode = [airport2 IATACode];
      }

      arrival3 = [v204 arrival];
      terminal = [arrival3 terminal];
      v87 = [terminal length];

      arrival4 = [v204 arrival];
      gate = [arrival4 gate];
      v90 = [gate length];

      v91 = MEMORY[0x29EDBA0F8];
      if (v87)
      {
        if (v90)
        {
          v92 = accessibilityLocalizedString(@"flight.arrival.location.label");
          arrival5 = [v204 arrival];
          gate2 = [arrival5 gate];
          arrival6 = [v204 arrival];
          terminal2 = [arrival6 terminal];
          v82 = [v91 stringWithFormat:v92, gate2, terminal2, iATACode];

          v69 = v202;
LABEL_43:

LABEL_44:
LABEL_45:

          v181 = v82;
          [(UIAccessibilityFrameRecalculatingElement *)v200 setAccessibilityLabel:v82];
          v98 = accessibilityLocalizedString(@"flight.arrival.location.hint");
          [(UIAccessibilityFrameRecalculatingElement *)v200 setAccessibilityHint:v98];

          [v69 addObject:v200];
          v99 = [objc_alloc(*(v80 + 360)) initWithAccessibilityContainer:self];
          [v99 setAccessibilityTraits:v203];
          v234 = 0;
          objc_opt_class();
          v100 = [(FUFlightInfoViewAccessibility *)self safeValueForKey:@"labelDepartureTitle"];
          v101 = __UIAccessibilityCastAsClass();

          if (v234 != 1)
          {
            v234 = 0;
            objc_opt_class();
            v102 = [(FUFlightInfoViewAccessibility *)self safeValueForKey:@"labelDepartureDate"];
            v103 = __UIAccessibilityCastAsClass();

            if (v234 != 1)
            {
              v234 = 0;
              objc_opt_class();
              selfCopy = self;
              v104 = [(FUFlightInfoViewAccessibility *)self safeValueForKey:@"labelDepartureDelay"];
              v105 = __UIAccessibilityCastAsClass();

              if (v234 != 1)
              {
                v216[0] = MEMORY[0x29EDCA5F8];
                v216[1] = 3221225472;
                v216[2] = __54__FUFlightInfoViewAccessibility_accessibilityElements__block_invoke_5;
                v216[3] = &unk_29F2BF2D0;
                v106 = v101;
                v217 = v106;
                v179 = v103;
                v218 = v179;
                v107 = v105;
                v219 = v107;
                v197 = v99;
                [v99 setCalculateFrame:v216];
                departure = [v204 departure];
                time = [departure time];
                date = [time date];
                departure2 = [v204 departure];
                airport3 = [departure2 airport];
                timeZone = [airport3 timeZone];
                v114 = AXDateStringForFormatWithTimeZone();

                status = [v204 status];
                v116 = MEMORY[0x29EDBA0F8];
                if (status == 6)
                {
                  v117 = accessibilityLocalizedString(@"flight.departure.schedule.cancel.label");
                  v114 = [v116 stringWithFormat:v117, v114];
                }

                else
                {
                  v117 = accessibilityLocalizedString(@"flight.departure.schedule.label");
                  text2 = [v106 text];
                  v1142 = [v116 stringWithFormat:v117, text2, v114];
                  text3 = [v107 text];
                  v114 = __UIAXStringForVariables();
                }

                v177 = v114;
                v178 = v107;
                v180 = v106;

                v176 = v114;
                [v197 setAccessibilityLabel:v114];
                [v202 addObject:v197];
                v121 = [[UIAccessibilityFrameRecalculatingElement alloc] initWithAccessibilityContainer:selfCopy];
                [(UIAccessibilityFrameRecalculatingElement *)v121 setAccessibilityTraits:v203];
                v234 = 0;
                objc_opt_class();
                v122 = [(FUFlightInfoViewAccessibility *)selfCopy safeValueForKey:@"labelArrivalTitle"];
                v123 = __UIAccessibilityCastAsClass();

                if (v234 != 1)
                {
                  v234 = 0;
                  objc_opt_class();
                  v124 = [(FUFlightInfoViewAccessibility *)selfCopy safeValueForKey:@"labelArrivalDate"];
                  v125 = __UIAccessibilityCastAsClass();

                  if (v234 != 1)
                  {
                    v234 = 0;
                    objc_opt_class();
                    v126 = [(FUFlightInfoViewAccessibility *)selfCopy safeValueForKey:@"labelArrivalDelay"];
                    v127 = __UIAccessibilityCastAsClass();

                    if (v234 != 1)
                    {
                      v212[0] = MEMORY[0x29EDCA5F8];
                      v212[1] = 3221225472;
                      v212[2] = __54__FUFlightInfoViewAccessibility_accessibilityElements__block_invoke_6;
                      v212[3] = &unk_29F2BF2D0;
                      v128 = v123;
                      v213 = v128;
                      v174 = v125;
                      v214 = v174;
                      v129 = v127;
                      v215 = v129;
                      v196 = v121;
                      [(UIAccessibilityFrameRecalculatingElement *)v121 setCalculateFrame:v212];
                      arrival7 = [v204 arrival];
                      time2 = [arrival7 time];
                      date2 = [time2 date];
                      arrival8 = [v204 arrival];
                      airport4 = [arrival8 airport];
                      timeZone2 = [airport4 timeZone];
                      v136 = AXDateStringForFormatWithTimeZone();

                      status2 = [v204 status];
                      v138 = MEMORY[0x29EDBA0F8];
                      v175 = v128;
                      if (status2 == 6)
                      {
                        v139 = accessibilityLocalizedString(@"flight.arrival.schedule.cancel.label");
                        v136 = [v138 stringWithFormat:v139, v136];
                      }

                      else
                      {
                        v139 = accessibilityLocalizedString(@"flight.arrival.schedule.label");
                        text4 = [v128 text];
                        v1362 = [v138 stringWithFormat:v139, text4, v136];
                        text5 = [v129 text];
                        v136 = __UIAXStringForVariables();
                      }

                      v3 = v202;
                      v173 = v136;

                      v172 = v136;
                      [(UIAccessibilityFrameRecalculatingElement *)v196 setAccessibilityLabel:v136];
                      [v202 addObject:v196];
                      v143 = [[UIAccessibilityFrameRecalculatingElement alloc] initWithAccessibilityContainer:selfCopy];
                      [(UIAccessibilityFrameRecalculatingElement *)v143 setAccessibilityTraits:v203];
                      v234 = 0;
                      objc_opt_class();
                      v144 = [(FUFlightInfoViewAccessibility *)selfCopy safeValueForKey:@"labelDurationTitle"];
                      v145 = __UIAccessibilityCastAsClass();

                      if (v234 != 1)
                      {
                        v234 = 0;
                        objc_opt_class();
                        v146 = [(FUFlightInfoViewAccessibility *)selfCopy safeValueForKey:@"labelDurationValue"];
                        v147 = __UIAccessibilityCastAsClass();

                        if (v234 != 1)
                        {
                          v234 = 0;
                          objc_opt_class();
                          v148 = [(FUFlightInfoViewAccessibility *)selfCopy safeValueForKey:@"labelDurationComplete"];
                          v149 = __UIAccessibilityCastAsClass();

                          if (v234 != 1)
                          {
                            v208[0] = MEMORY[0x29EDCA5F8];
                            v208[1] = 3221225472;
                            v208[2] = __54__FUFlightInfoViewAccessibility_accessibilityElements__block_invoke_7;
                            v208[3] = &unk_29F2BF2D0;
                            v171 = v145;
                            v209 = v171;
                            v170 = v147;
                            v210 = v170;
                            v150 = v149;
                            v211 = v150;
                            [(UIAccessibilityFrameRecalculatingElement *)v143 setCalculateFrame:v208];
                            text6 = [v150 text];
                            v152 = text6;
                            if (text6)
                            {
                              v158 = text6;
                              v154 = selfCopy;
                            }

                            else
                            {
                              v155 = MEMORY[0x29EDBA0F8];
                              v156 = accessibilityLocalizedString(@"flight.duration.label");
                              v154 = selfCopy;
                              v157 = [(FUFlightInfoViewAccessibility *)selfCopy safeValueForKey:@"leg"];
                              [v157 safeTimeIntervalForKey:@"duration"];
                              v158 = AXDurationStringForDuration();
                              v158 = [v155 stringWithFormat:v156, v158];

                              v3 = v202;
                            }

                            [(UIAccessibilityFrameRecalculatingElement *)v143 setAccessibilityLabel:v158];
                            [v3 addObject:v143];
                            v159 = [[UIAccessibilityFrameRecalculatingElement alloc] initWithAccessibilityContainer:v154];
                            [(UIAccessibilityFrameRecalculatingElement *)v159 setAccessibilityTraits:v203];
                            v234 = 0;
                            objc_opt_class();
                            v160 = [(FUFlightInfoViewAccessibility *)v154 safeValueForKey:@"labelBaggageClaimTitle"];
                            v161 = __UIAccessibilityCastAsClass();

                            if (v234 != 1)
                            {
                              v234 = 0;
                              objc_opt_class();
                              v162 = [(FUFlightInfoViewAccessibility *)v154 safeValueForKey:@"labelBaggageClaimValue"];
                              v163 = __UIAccessibilityCastAsClass();

                              if (v234 != 1)
                              {
                                v205[0] = MEMORY[0x29EDCA5F8];
                                v205[1] = 3221225472;
                                v205[2] = __54__FUFlightInfoViewAccessibility_accessibilityElements__block_invoke_8;
                                v205[3] = &unk_29F2BF280;
                                v206 = v161;
                                v207 = v163;
                                v164 = v163;
                                v165 = v161;
                                [(UIAccessibilityFrameRecalculatingElement *)v159 setCalculateFrame:v205];
                                v166 = __UIAXStringForVariables();
                                [(UIAccessibilityFrameRecalculatingElement *)v159 setAccessibilityLabel:v166, v164, @"__AXStringForVariablesSentinel"];

                                [v3 addObject:v159];
                                [(FUFlightInfoViewAccessibility *)v154 _accessibilitySetRetainedValue:v3 forKey:*MEMORY[0x29EDC7620]];

                                goto LABEL_66;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_71:
          abort();
        }

        v92 = accessibilityLocalizedString(@"flight.arrival.location.label.nogate");
        arrival5 = [v204 arrival];
        terminal3 = [arrival5 terminal];
      }

      else
      {
        if (!v90)
        {
          v92 = accessibilityLocalizedString(@"flight.arrival.location.label.noterminal");
          v82 = [v91 stringWithFormat:v92, iATACode];
          goto LABEL_44;
        }

        v92 = accessibilityLocalizedString(@"flight.arrival.location.label.noterminal.gate");
        arrival5 = [v204 arrival];
        terminal3 = [arrival5 gate];
      }

      gate2 = terminal3;
      v82 = [v91 stringWithFormat:v92, terminal3, iATACode];
      goto LABEL_43;
    }

    departure3 = [v8 departure];
    airport5 = [departure3 airport];
    name3 = [airport5 name];
    v40 = name3;
    if (name3)
    {
      iATACode2 = name3;
    }

    else
    {
      departure4 = [v8 departure];
      airport6 = [departure4 airport];
      iATACode2 = [airport6 IATACode];

      v36 = v202;
    }

    departure5 = [v8 departure];
    terminal4 = [departure5 terminal];
    v47 = [terminal4 length];

    departure6 = [v8 departure];
    gate3 = [departure6 gate];
    v50 = [gate3 length];

    v51 = MEMORY[0x29EDBA0F8];
    if (v47)
    {
      if (v50)
      {
        v52 = accessibilityLocalizedString(@"flight.departure.location.label");
        departure7 = [v8 departure];
        gate4 = [departure7 gate];
        departure8 = [v8 departure];
        terminal5 = [departure8 terminal];
        v42 = [v51 stringWithFormat:v52, gate4, terminal5, iATACode2];

        v36 = v202;
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v52 = accessibilityLocalizedString(@"flight.departure.location.label.nogate");
      departure7 = [v8 departure];
      terminal6 = [departure7 terminal];
    }

    else
    {
      if (!v50)
      {
        v52 = accessibilityLocalizedString(@"flight.departure.location.label.noterminal");
        v42 = [v51 stringWithFormat:v52, iATACode2];
        goto LABEL_25;
      }

      v52 = accessibilityLocalizedString(@"flight.departure.location.label.noterminal.gate");
      departure7 = [v8 departure];
      terminal6 = [departure7 gate];
    }

    gate4 = terminal6;
    v42 = [v51 stringWithFormat:v52, terminal6, iATACode2];
    goto LABEL_24;
  }

LABEL_66:

  return v3;
}

double __54__FUFlightInfoViewAccessibility_accessibilityElements__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"labelAirlineName"];
  [v2 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [*(a1 + 32) safeValueForKey:@"labelFlightCode"];
  [v11 accessibilityFrame];
  v16 = UnionExcludingEmptyRects(v4, v6, v8, v10, v12, v13, v14, v15);

  return v16;
}

CGFloat __54__FUFlightInfoViewAccessibility_accessibilityElements__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) accessibilityFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [*(a1 + 40) accessibilityFrame];

  return UnionExcludingEmptyRects(v3, v5, v7, v9, v10, v11, v12, v13);
}

CGFloat __54__FUFlightInfoViewAccessibility_accessibilityElements__block_invoke_3(id *a1)
{
  [a1[4] accessibilityFrame];
  v37 = v3;
  v38 = v2;
  v35 = v5;
  v36 = v4;
  [a1[5] accessibilityFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [a1[6] accessibilityFrame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [a1[7] accessibilityFrame];
  v26 = UnionExcludingEmptyRects(v15, v17, v19, v21, v22, v23, v24, v25);
  v33 = UnionExcludingEmptyRects(v7, v9, v11, v13, v26, v27, v28, v29);

  return UnionExcludingEmptyRects(v38, v37, v36, v35, v33, v30, v31, v32);
}

CGFloat __54__FUFlightInfoViewAccessibility_accessibilityElements__block_invoke_4(id *a1)
{
  [a1[4] accessibilityFrame];
  v37 = v3;
  v38 = v2;
  v35 = v5;
  v36 = v4;
  [a1[5] accessibilityFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [a1[6] accessibilityFrame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [a1[7] accessibilityFrame];
  v26 = UnionExcludingEmptyRects(v15, v17, v19, v21, v22, v23, v24, v25);
  v33 = UnionExcludingEmptyRects(v7, v9, v11, v13, v26, v27, v28, v29);

  return UnionExcludingEmptyRects(v38, v37, v36, v35, v33, v30, v31, v32);
}

CGFloat __54__FUFlightInfoViewAccessibility_accessibilityElements__block_invoke_5(id *a1)
{
  [a1[4] accessibilityFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [a1[5] accessibilityFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [a1[6] accessibilityFrame];
  v25 = UnionExcludingEmptyRects(v11, v13, v15, v17, v18, v19, v20, v21);

  return UnionExcludingEmptyRects(v3, v5, v7, v9, v25, v22, v23, v24);
}

CGFloat __54__FUFlightInfoViewAccessibility_accessibilityElements__block_invoke_6(id *a1)
{
  [a1[4] accessibilityFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [a1[5] accessibilityFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [a1[6] accessibilityFrame];
  v25 = UnionExcludingEmptyRects(v11, v13, v15, v17, v18, v19, v20, v21);

  return UnionExcludingEmptyRects(v3, v5, v7, v9, v25, v22, v23, v24);
}

CGFloat __54__FUFlightInfoViewAccessibility_accessibilityElements__block_invoke_7(id *a1)
{
  [a1[4] accessibilityFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [a1[5] accessibilityFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [a1[6] accessibilityFrame];
  v25 = UnionExcludingEmptyRects(v11, v13, v15, v17, v18, v19, v20, v21);

  return UnionExcludingEmptyRects(v3, v5, v7, v9, v25, v22, v23, v24);
}

CGFloat __54__FUFlightInfoViewAccessibility_accessibilityElements__block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) accessibilityFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [*(a1 + 40) accessibilityFrame];

  return UnionExcludingEmptyRects(v3, v5, v7, v9, v10, v11, v12, v13);
}

@end