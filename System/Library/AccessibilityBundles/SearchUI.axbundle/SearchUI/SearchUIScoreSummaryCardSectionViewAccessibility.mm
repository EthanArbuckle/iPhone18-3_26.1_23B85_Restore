@interface SearchUIScoreSummaryCardSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axRecordStringWithLeftTeamName:(id)name score:(id)score rightTeamName:(id)teamName score:(id)a6;
- (id)accessibilityLabel;
@end

@implementation SearchUIScoreSummaryCardSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SearchUIScoreSummaryCardSectionView" isKindOfClass:@"SearchUICardSectionView"];
  [validationsCopy validateClass:@"SearchUICardSectionView" hasInstanceMethod:@"section" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"SFScoreboardCardSection" hasRequiredInstanceMethod:@"team1"];
  [validationsCopy validateProtocol:@"SFScoreboardCardSection" hasRequiredInstanceMethod:@"team2"];
  [validationsCopy validateProtocol:@"SFScoreboardCardSection" hasRequiredInstanceMethod:@"subtitle"];
  [validationsCopy validateProtocol:@"SFScoreboardCardSection" hasRequiredInstanceMethod:@"accessibilityDescription"];
  [validationsCopy validateClass:@"SFSportsTeam"];
  [validationsCopy validateClass:@"SFSportsTeam" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SFSportsTeam" hasInstanceMethod:@"record" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(SearchUIScoreSummaryCardSectionViewAccessibility *)self safeValueForKey:@"section"];
  v14 = [v3 safeStringForKey:@"accessibilityDescription"];
  v4 = [v3 safeStringForKey:@"subtitle"];
  v5 = [v3 safeValueForKey:@"team1"];
  v6 = [v3 safeValueForKey:@"team2"];
  v7 = [v5 safeStringForKey:@"name"];
  v8 = [v6 safeStringForKey:@"name"];
  v9 = [v5 safeStringForKey:@"record"];
  v10 = [v6 safeStringForKey:@"record"];
  v11 = 0;
  if (v10 && v9)
  {
    v11 = [(SearchUIScoreSummaryCardSectionViewAccessibility *)self _axRecordStringWithLeftTeamName:v7 score:v9 rightTeamName:v8 score:v10];
  }

  v13 = __AXStringForVariables();

  return v13;
}

- (id)_axRecordStringWithLeftTeamName:(id)name score:(id)score rightTeamName:(id)teamName score:(id)a6
{
  nameCopy = name;
  teamNameCopy = teamName;
  v11 = a6;
  v12 = [score componentsSeparatedByString:@"-"];
  v13 = [v11 componentsSeparatedByString:@"-"];

  if ([v12 count] == 3 && objc_msgSend(v13, "count") == 3)
  {
    v14 = MEMORY[0x29EDBA0F8];
    v15 = accessibilityLocalizedString(@"score.wins");
    v16 = [v12 objectAtIndexedSubscript:0];
    v17 = [v14 localizedStringWithFormat:v15, objc_msgSend(v16, "integerValue")];

    v18 = MEMORY[0x29EDBA0F8];
    v19 = accessibilityLocalizedString(@"score.draws");
    v20 = [v12 objectAtIndexedSubscript:1];
    v21 = [v18 localizedStringWithFormat:v19, objc_msgSend(v20, "integerValue")];

    v22 = MEMORY[0x29EDBA0F8];
    v23 = accessibilityLocalizedString(@"score.losses");
    v24 = [v12 objectAtIndexedSubscript:2];
    v60 = [v22 localizedStringWithFormat:v23, objc_msgSend(v24, "integerValue")];

    v62 = v21;
    v63 = v17;
    v25 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@, %@, %@", v17, v21, v60];
    v26 = MEMORY[0x29EDBA0F8];
    v27 = accessibilityLocalizedString(@"score.wins");
    v28 = [v13 objectAtIndexedSubscript:0];
    v29 = [v26 localizedStringWithFormat:v27, objc_msgSend(v28, "integerValue")];

    v30 = MEMORY[0x29EDBA0F8];
    v31 = accessibilityLocalizedString(@"score.draws");
    [v13 objectAtIndexedSubscript:1];
    v33 = v32 = nameCopy;
    v34 = [v30 localizedStringWithFormat:v31, objc_msgSend(v33, "integerValue")];

    v35 = MEMORY[0x29EDBA0F8];
    v36 = accessibilityLocalizedString(@"score.losses");
    v37 = [v13 objectAtIndexedSubscript:2];
    v38 = [v35 localizedStringWithFormat:v36, objc_msgSend(v37, "integerValue")];

    v59 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@, %@, %@", v29, v34, v38];
    v39 = __AXStringForVariables();

    v40 = v60;
    nameCopy = v32;
LABEL_7:

    goto LABEL_9;
  }

  if ([v12 count] == 2 && objc_msgSend(v13, "count") == 2)
  {
    v61 = nameCopy;
    v41 = MEMORY[0x29EDBA0F8];
    v42 = accessibilityLocalizedString(@"score.wins");
    v43 = [v12 objectAtIndexedSubscript:0];
    v44 = [v41 localizedStringWithFormat:v42, objc_msgSend(v43, "integerValue")];

    v45 = MEMORY[0x29EDBA0F8];
    v46 = accessibilityLocalizedString(@"score.losses");
    v47 = [v12 objectAtIndexedSubscript:1];
    v48 = [v45 localizedStringWithFormat:v46, objc_msgSend(v47, "integerValue")];

    v62 = v48;
    v63 = v44;
    v49 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@, %@", v44, v48];
    v50 = MEMORY[0x29EDBA0F8];
    v51 = accessibilityLocalizedString(@"score.wins");
    v52 = [v13 objectAtIndexedSubscript:0];
    v25 = [v50 localizedStringWithFormat:v51, objc_msgSend(v52, "integerValue")];

    v53 = MEMORY[0x29EDBA0F8];
    v54 = accessibilityLocalizedString(@"score.losses");
    v55 = [v13 objectAtIndexedSubscript:1];
    integerValue = [v55 integerValue];
    v56 = v53;
    nameCopy = v61;
    v29 = [v56 localizedStringWithFormat:v54, integerValue];

    v40 = v49;
    v34 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@, %@", v25, v29];
    v39 = __AXStringForVariables();
    goto LABEL_7;
  }

  v39 = 0;
LABEL_9:

  return v39;
}

@end