id AXSettings.VoiceOver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXSettings.VoiceOver.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver____lazy_storage___resolver] = 0;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___defaultVoiceSelectionsByLanguage_Storage] = 0;
  v2 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6438);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___voiceRotors_Storage] = 0;
  v4 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_voiceRotors;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v0[v4] = v5;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver____oldDomainRotors_Storage] = 0;
  v6 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock__oldDomainRotors;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *&v0[v6] = v7;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___currentRotorVoiceIdentifier_Storage] = 0;
  v8 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_currentRotorVoiceIdentifier;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *&v0[v8] = v9;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___rotorItems_Storage] = 0;
  v10 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_rotorItems;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *&v0[v10] = v11;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___largeCursorEnabled_Storage] = 0;
  v12 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_largeCursorEnabled;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *&v0[v12] = v13;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___magicTapDefaultToMediaPlayback_Storage] = 0;
  v14 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_magicTapDefaultToMediaPlayback;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *&v0[v14] = v15;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___contentDescriptionLevel_Storage] = 0;
  v16 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_contentDescriptionLevel;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *&v0[v16] = v17;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___useDigitalCrownNavigation_Storage] = 0;
  v18 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useDigitalCrownNavigation;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *&v0[v18] = v19;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___imageCaptionsEnabled_Storage] = 0;
  v20 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_imageCaptionsEnabled;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *&v0[v20] = v21;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___useTVToggleStyleNavigation_Storage] = 0;
  v22 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useTVToggleStyleNavigation;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *&v0[v22] = v23;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___continuousPathKeyboardStartTimeout_Storage] = 0;
  v24 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_continuousPathKeyboardStartTimeout;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *&v0[v24] = v25;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___hearingAidRoutingEnabled_Storage] = 0;
  v26 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_hearingAidRoutingEnabled;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *&v0[v26] = v27;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___listAnnotation_Storage] = 0;
  v28 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_listAnnotation;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *&v0[v28] = v29;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___useSiriSounds_Storage] = 0;
  v30 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useSiriSounds;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *&v0[v30] = v31;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___cursorOutputStyle_Storage] = 0;
  v32 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_cursorOutputStyle;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *&v0[v32] = v33;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___braillePanningAutoTurnsReadingContent_Storage] = 0;
  v34 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_braillePanningAutoTurnsReadingContent;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *&v0[v34] = v35;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayOutputMode_Storage] = 0;
  v36 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayOutputMode;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *&v0[v36] = v37;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayInputMode_Storage] = 0;
  v38 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayInputMode;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *&v0[v38] = v39;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesInputMode_Storage] = 0;
  v40 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesInputMode;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *&v0[v40] = v41;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplaySyncInputOutputTables_Storage] = 0;
  v42 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplaySyncInputOutputTables;
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *&v0[v42] = v43;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayInputTableIdentifier_Storage] = 0;
  v44 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayInputTableIdentifier;
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *&v0[v44] = v45;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayOutputTableIdentifier_Storage] = 0;
  v46 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayOutputTableIdentifier;
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *&v0[v46] = v47;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesInputTableIdentifier_Storage] = 0;
  v48 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesInputTableIdentifier;
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  *&v0[v48] = v49;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesActivationGestureEnabled_Storage] = 0;
  v50 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesActivationGestureEnabled;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *&v0[v50] = v51;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesSoundOption_Storage] = 0;
  v52 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSoundOption;
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  *&v0[v52] = v53;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesUsesHapticFeedback_Storage] = 0;
  v54 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesUsesHapticFeedback;
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *&v0[v54] = v55;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesUsesTypingSoundFeedback_Storage] = 0;
  v56 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesUsesTypingSoundFeedback;
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  *&v0[v56] = v57;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesSingleHandUsesDotNumbersFeedback_Storage] = 0;
  v58 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSingleHandUsesDotNumbersFeedback;
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  *&v0[v58] = v59;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesDisplayEnteredText_Storage] = 0;
  v60 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesDisplayEnteredText;
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  *&v0[v60] = v61;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesLearnsDotPositions_Storage] = 0;
  v62 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesLearnsDotPositions;
  v63 = swift_allocObject();
  *(v63 + 16) = 0;
  *&v0[v62] = v63;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesAutoActivateOnTextFields_Storage] = 0;
  v64 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesAutoActivateOnTextFields;
  v65 = swift_allocObject();
  *(v65 + 16) = 0;
  *&v0[v64] = v65;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesSingleHandStyle_Storage] = 0;
  v66 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSingleHandStyle;
  v67 = swift_allocObject();
  *(v67 + 16) = 0;
  *&v0[v66] = v67;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesCharacterAcceptanceTestBraille_Storage] = 0;
  v68 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesCharacterAcceptanceTestBraille;
  v69 = swift_allocObject();
  *(v69 + 16) = 0;
  *&v0[v68] = v69;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___perkinsKeyboardInputEnabled_Storage] = 0;
  v70 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_perkinsKeyboardInputEnabled;
  v71 = swift_allocObject();
  *(v71 + 16) = 0;
  *&v0[v70] = v71;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___perkinsChordKeyboardInputEnabled_Storage] = 0;
  v72 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_perkinsChordKeyboardInputEnabled;
  v73 = swift_allocObject();
  *(v73 + 16) = 0;
  *&v0[v72] = v73;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleHIMSUsesDot7ForCommand_Storage] = 0;
  v74 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleHIMSUsesDot7ForCommand;
  v75 = swift_allocObject();
  *(v75 + 16) = 0;
  *&v0[v74] = v75;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___keyboardBrailleUIEnabled_Storage] = 0;
  v76 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_keyboardBrailleUIEnabled;
  v77 = swift_allocObject();
  *(v77 + 16) = 0;
  *&v0[v76] = v77;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIShouldReopenViewsWhenRestart_Storage] = 0;
  v78 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIShouldReopenViewsWhenRestart;
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  *&v0[v78] = v79;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIReadListItemsEnabled_Storage] = 0;
  v80 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIReadListItemsEnabled;
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  *&v0[v80] = v81;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIVisualsEnabled_Storage] = 0;
  v82 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIVisualsEnabled;
  v83 = swift_allocObject();
  *(v83 + 16) = 0;
  *&v0[v82] = v83;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBrailleNotesSortType_Storage] = 0;
  v84 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBrailleNotesSortType;
  v85 = swift_allocObject();
  *(v85 + 16) = 0;
  *&v0[v84] = v85;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBrailleNotesSortDirection_Storage] = 0;
  v86 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBrailleNotesSortDirection;
  v87 = swift_allocObject();
  *(v87 + 16) = 0;
  *&v0[v86] = v87;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUITypingSpeechFeedbackEnabled_Storage] = 0;
  v88 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUITypingSpeechFeedbackEnabled;
  v89 = swift_allocObject();
  *(v89 + 16) = 0;
  *&v0[v88] = v89;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBRFReflowEnabled_Storage] = 0;
  v90 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBRFReflowEnabled;
  v91 = swift_allocObject();
  *(v91 + 16) = 0;
  *&v0[v90] = v91;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBRFStripPageIndicatorsEnabled_Storage] = 0;
  v92 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBRFStripPageIndicatorsEnabled;
  v93 = swift_allocObject();
  *(v93 + 16) = 0;
  *&v0[v92] = v93;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUICalculatorUsesUEBMath_Storage] = 0;
  v94 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUICalculatorUsesUEBMath;
  v95 = swift_allocObject();
  *(v95 + 16) = 0;
  *&v0[v94] = v95;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUILiveCaptionsSource_Storage] = 0;
  v96 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUILiveCaptionsSource;
  v97 = swift_allocObject();
  *(v97 + 16) = 0;
  *&v0[v96] = v97;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIMigrationMessageAnnounced_Storage] = 0;
  v98 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIMigrationMessageAnnounced;
  v99 = swift_allocObject();
  *(v99 + 16) = 0;
  *&v0[v98] = v99;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIShowsBackButton_Storage] = 0;
  v100 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIShowsBackButton;
  v101 = swift_allocObject();
  *(v101 + 16) = 0;
  *&v0[v100] = v101;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleZoomOutNumCellsPerElement_Storage] = 0;
  v102 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleZoomOutNumCellsPerElement;
  v103 = swift_allocObject();
  *(v103 + 16) = 0;
  *&v0[v102] = v103;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUsesUnderlineCursor_Storage] = 0;
  v104 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUsesUnderlineCursor;
  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  *&v0[v104] = v105;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___defaultPunctuationGroup_Storage] = 0;
  v106 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultPunctuationGroup;
  v107 = swift_allocObject();
  *(v107 + 16) = 0;
  *&v0[v106] = v107;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___activities_Storage] = 0;
  v108 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_activities;
  v109 = swift_allocObject();
  *(v109 + 16) = 0;
  *&v0[v108] = v109;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___selectedActivityId_Storage] = 0;
  v110 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_selectedActivityId;
  v111 = swift_allocObject();
  *(v111 + 16) = 0;
  *&v0[v110] = v111;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___languageDetectionEnabled_Storage] = 0;
  v112 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_languageDetectionEnabled;
  v113 = swift_allocObject();
  *(v113 + 16) = 0;
  *&v0[v112] = v113;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___pitchChangeEnabled_Storage] = 0;
  v114 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_pitchChangeEnabled;
  v115 = swift_allocObject();
  *(v115 + 16) = 0;
  *&v0[v114] = v115;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___selectedLanguage_Storage] = 0;
  v116 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_selectedLanguage;
  v117 = swift_allocObject();
  *(v117 + 16) = 0;
  *&v0[v116] = v117;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___speakUpEnabled_Storage] = 0;
  v118 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_speakUpEnabled;
  v119 = swift_allocObject();
  *(v119 + 16) = 0;
  *&v0[v118] = v119;
  v120 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver_encoder;
  sub_18B2C9594();
  swift_allocObject();
  *&v0[v120] = sub_18B2C9584();
  v121 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver_decoder;
  sub_18B2C9574();
  swift_allocObject();
  *&v0[v121] = sub_18B2C9564();
  sub_18B2C95B4();
  v123.receiver = v0;
  v123.super_class = ObjectType;
  return objc_msgSendSuper2(&v123, sel_init);
}

id AXSettings.VoiceOver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B26703C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_18B28B308(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_18B22EF7C(i, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6DD8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_18B28B308((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

Swift::Void __swiftcall enableVoicesRotor()()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v2 = [v1 voiceOverRotorItems];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6C70);
  v3 = sub_18B2C99F4();

  v4 = v3[2];
  if (!v4)
  {

    return;
  }

  v18 = v0;
  v5 = 0;
  v6 = -32;
  while (1)
  {
    sub_18B2C9D14();
    if (v5 >= v3[2])
    {
      __break(1u);
      goto LABEL_29;
    }

    v7 = v3[v5 + 4];
    if (!*(v7 + 16))
    {
      goto LABEL_12;
    }

    v8 = sub_18B293EAC(v19);
    if ((v9 & 1) == 0)
    {

LABEL_12:
      sub_18B22EB84(v19);
LABEL_13:
      sub_18B2C9894();

      goto LABEL_14;
    }

    sub_18B22EF7C(*(v7 + 56) + 32 * v8, &v20);
    sub_18B22EB84(v19);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_13;
    }

    if (sub_18B2C9894() == 0x657449726F746F52 && v10 == 0xE90000000000006DLL)
    {
      break;
    }

    v11 = sub_18B2C9F24();

    if (v11)
    {
      v12 = &v3[v6 / 0xFFFFFFFFFFFFFFF8];
      goto LABEL_20;
    }

LABEL_14:
    ++v5;
    v6 -= 8;
    if (v4 == v5)
    {
      goto LABEL_15;
    }
  }

  v12 = &v3[v6 / 0xFFFFFFFFFFFFFFF8];

LABEL_20:
  sub_18B2C9D14();
  if (v5 < v3[2])
  {
    v13 = *v12;
    if (*(*v12 + 16))
    {

      v14 = sub_18B293EAC(v19);
      if (v15)
      {
        sub_18B22EF7C(*(v13 + 56) + 32 * v14, &v20);
        sub_18B22EB84(v19);

        swift_dynamicCast();
LABEL_15:

        return;
      }
    }

    sub_18B22EB84(v19);
    goto LABEL_15;
  }

LABEL_29:
  __break(1u);
  if (v5 >= sub_18B26BF40(v3)[2])
  {
    __break(1u);
  }

  else
  {
    sub_18B28F254(&v20, v19);
    v16 = [v18 sharedInstance];
    v17 = sub_18B2C99D4();
    [v16 setVoiceOverRotorItems_];
  }
}

uint64_t VORotorItem.RotorItem.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t VORotorItem.RotorItem.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t static VORotorItem.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_18B2C9F24();
  }
}

uint64_t sub_18B267684()
{
  if (*v0)
  {
    return 0x657449726F746F52;
  }

  else
  {
    return 0x64656C62616E45;
  }
}

uint64_t sub_18B2676C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656C62616E45 && a2 == 0xE700000000000000;
  if (v6 || (sub_18B2C9F24() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657449726F746F52 && a2 == 0xE90000000000006DLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_18B2C9F24();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_18B2677B4(uint64_t a1)
{
  v2 = sub_18B26EBF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18B2677F0(uint64_t a1)
{
  v2 = sub_18B26EBF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VORotorItem.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6C78);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *(v1 + 8);
  v10[0] = *(v1 + 16);
  v10[1] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18B26EBF0();
  sub_18B2C9FD4();
  v12 = 0;
  sub_18B2C9EE4();
  if (!v2)
  {
    v11 = 1;
    sub_18B2C9ED4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t VORotorItem.hash(into:)()
{
  sub_18B2C9F84();

  return sub_18B2C98D4();
}

uint64_t VORotorItem.hashValue.getter()
{
  sub_18B2C9F64();
  sub_18B2C9F84();
  sub_18B2C98D4();
  return sub_18B2C9FB4();
}

uint64_t VORotorItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6C88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18B26EBF0();
  sub_18B2C9FC4();
  if (!v2)
  {
    v16 = 0;
    v9 = sub_18B2C9E74();
    v15 = 1;
    v11 = sub_18B2C9E64();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_18B267C50()
{
  sub_18B2C9F64();
  sub_18B2C9F84();
  sub_18B2C98D4();
  return sub_18B2C9FB4();
}

uint64_t sub_18B267CB4()
{
  sub_18B2C9F84();

  return sub_18B2C98D4();
}

uint64_t sub_18B267D08()
{
  sub_18B2C9F64();
  sub_18B2C9F84();
  sub_18B2C98D4();
  return sub_18B2C9FB4();
}

uint64_t sub_18B267D68(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_18B2C9F24();
  }
}

uint64_t sub_18B267DB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_18B2C9094();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18B2C9014();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v25 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v24 = &v23 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v23 - v16;
  v18 = *a1;
  sub_18B2C90A4();
  sub_18B2C9084();
  (*(v7 + 8))(v9, v6);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_18B1630AC(v5, &qword_1EA9B63D0);
    *v26 = v18;
  }

  else
  {
    (*(v11 + 32))(v17, v5, v10);
    v20 = v25;
    *v26 = v18;
    (*(v11 + 16))(v20, v17, v10);

    v21 = v24;
    sub_18B232F08(v24, v20);
    v22 = *(v11 + 8);
    v22(v21, v10);
    return (v22)(v17, v10);
  }
}

uint64_t sub_18B268108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_18B293C80(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_18B26A5C8();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_18B2C9014();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_18B2C9424();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_18B269910(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_18B2C9424();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_18B2682A8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_18B293EAC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_18B26AEAC();
      v9 = v11;
    }

    sub_18B22EB84(*(v9 + 48) + 40 * v7);
    sub_18B26F444((*(v9 + 56) + 32 * v7), a2);
    sub_18B269C58(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_18B26834C(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = sub_18B2C9424();
  v5 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18B2C9014();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6CC0);
  v47 = a2;
  result = sub_18B2C9DE4();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_18B26FC84(&qword_1EA9B56A8, 255, MEMORY[0x1E6969610]);
      result = sub_18B2C9834();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_18B2687F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B75B0);
  v33 = a2;
  result = sub_18B2C9DE4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_18B2C9F64();
      sub_18B2C98D4();
      result = sub_18B2C9FB4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_18B268A9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6CE8);
  v33 = a2;
  result = sub_18B2C9DE4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_18B22C7E4(v24, v34);
      }

      else
      {
        sub_18B22C738(v24, v34);
      }

      sub_18B2C9F64();
      sub_18B2C98D4();
      result = sub_18B2C9FB4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_18B22C7E4(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_18B268D60(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_18B2C9424();
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6CE0);
  v42 = a2;
  result = sub_18B2C9DE4();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_18B2C9F64();
      sub_18B2C98D4();
      result = sub_18B2C9FB4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_18B2690E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6CF8);
  result = sub_18B2C9DE4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_18B26F444((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_18B26F3E8(v23, &v36);
        sub_18B22EF7C(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_18B2C9CF4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_18B26F444(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_18B269398(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6D00);
  v38 = a2;
  result = sub_18B2C9DE4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_18B26F3E8(v27, &v39);
      }

      sub_18B2C9F64();
      sub_18B2C98D4();
      result = sub_18B2C9FB4();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_18B269668(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6CF0);
  v34 = a2;
  result = sub_18B2C9DE4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_18B2C9F64();
      sub_18B2C98D4();
      result = sub_18B2C9FB4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_18B269910(int64_t a1, uint64_t a2)
{
  v4 = sub_18B2C9014();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_18B2C9C84();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_18B26FC84(&qword_1EA9B56A8, 255, MEMORY[0x1E6969610]);
      v22 = sub_18B2C9834();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(sub_18B2C9424() - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_18B269C58(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18B2C9C84() + 1) & ~v5;
    do
    {
      sub_18B26F3E8(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_18B2C9CF4();
      result = sub_18B22EB84(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_18B269DFC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_18B2C9014();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_18B293C80(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_18B26A5C8();
      goto LABEL_7;
    }

    sub_18B26834C(v17, a3 & 1);
    v28 = sub_18B293C80(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_18B26A458(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_18B2C9F44();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_18B2C9424();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

_OWORD *sub_18B26A000(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_18B293EAC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_18B26AEAC();
      goto LABEL_7;
    }

    sub_18B2690E0(v13, a3 & 1);
    v19 = sub_18B293EAC(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_18B26F3E8(a2, v21);
      return sub_18B26A54C(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_18B2C9F44();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return sub_18B26F444(a1, v17);
}

uint64_t sub_18B26A14C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_18B293E34(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_18B269398(v16, a4 & 1);
      v11 = sub_18B293E34(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_18B2C9F44();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_18B26B050();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_18B26F454(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * v11;
  v26 = *a1;
  v27 = *(a1 + 16);
  *(v25 + 32) = *(a1 + 32);
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

uint64_t sub_18B26A2DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_18B293E34(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_18B269668(v16, a4 & 1);
      v11 = sub_18B293E34(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_18B2C9F44();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_18B26B204();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_18B26A458(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_18B2C9014();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_18B2C9424();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

_OWORD *sub_18B26A54C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_18B26F444(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

char *sub_18B26A5C8()
{
  v1 = v0;
  v41 = sub_18B2C9424();
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_18B2C9014();
  v43 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6CC0);
  v4 = *v0;
  v5 = sub_18B2C9DD4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_18B26A91C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B75B0);
  v2 = *v0;
  v3 = sub_18B2C9DD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_18B26AA84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6CE8);
  v2 = *v0;
  v3 = sub_18B2C9DD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_18B22C738(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_18B22C7E4(v25, *(v4 + 56) + v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_18B26AC2C()
{
  v1 = v0;
  v35 = sub_18B2C9424();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6CE0);
  v3 = *v0;
  v4 = sub_18B2C9DD4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_18B26AEAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6CF8);
  v2 = *v0;
  v3 = sub_18B2C9DD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_18B26F3E8(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_18B22EF7C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_18B26F444(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_18B26B050()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6D00);
  v2 = *v0;
  v3 = sub_18B2C9DD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_18B26F3E8(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_18B26B204()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6CF0);
  v2 = *v0;
  v3 = sub_18B2C9DD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_18B26B374(uint64_t a1, char a2, void *a3)
{
  v59 = sub_18B2C9424();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6CD8);
  v56 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v50 - v10);
  v54 = *(a1 + 16);
  if (!v54)
  {
    goto LABEL_24;
  }

  v50 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v56 + 80);
  v55 = a1;
  v14 = (v57 + 32);
  v52 = a1 + ((v13 + 32) & ~v13);
  sub_18B163044(v52, v11, &qword_1EA9B6CD8);
  v15 = v11[1];
  v62 = *v11;
  v16 = v62;
  v63 = v15;
  v17 = *v14;
  v53 = v12;
  v51 = v17;
  v17(v58, v11 + v12, v59);
  v18 = *a3;
  v20 = sub_18B293E34(v16, v15);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_18B26AC2C();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_18B268D60(v23, a2 & 1);
  v25 = sub_18B293E34(v16, v15);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v29 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v30 = (v29[6] + 16 * v20);
      *v30 = v16;
      v30[1] = v15;
      v51((v29[7] + *(v57 + 72) * v20), v58, v59);
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v29[2] = v33;
      if (v54 != 1)
      {
        v34 = 1;
        while (v34 < *(v55 + 16))
        {
          sub_18B163044(v52 + *(v56 + 72) * v34, v11, &qword_1EA9B6CD8);
          v35 = v11[1];
          v62 = *v11;
          v36 = v62;
          v63 = v35;
          v37 = *v14;
          (*v14)(v58, v11 + v53, v59);
          v38 = *a3;
          v39 = sub_18B293E34(v36, v35);
          v41 = v38[2];
          v42 = (v40 & 1) == 0;
          v32 = __OFADD__(v41, v42);
          v43 = v41 + v42;
          if (v32)
          {
            goto LABEL_26;
          }

          v44 = v40;
          if (v38[3] < v43)
          {
            sub_18B268D60(v43, 1);
            v39 = sub_18B293E34(v36, v35);
            if ((v44 & 1) != (v45 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v44)
          {
            goto LABEL_11;
          }

          v46 = *a3;
          *(*a3 + 8 * (v39 >> 6) + 64) |= 1 << v39;
          v47 = (v46[6] + 16 * v39);
          *v47 = v36;
          v47[1] = v35;
          v37((v46[7] + *(v57 + 72) * v39), v58, v59);
          v48 = v46[2];
          v32 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v32)
          {
            goto LABEL_27;
          }

          ++v34;
          v46[2] = v49;
          if (v54 == v34)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = swift_allocError();
    swift_willThrow();
    v64 = v27;
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6CC8);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v57 + 8))(v58, v59);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_18B2C9F44();
  __break(1u);
LABEL_29:
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_18B2C9D64();
  MEMORY[0x18CFF0A00](0xD00000000000001BLL, 0x800000018B2F4380);
  sub_18B2C9DA4();
  MEMORY[0x18CFF0A00](39, 0xE100000000000000);
  sub_18B2C9DB4();
  __break(1u);
}

void sub_18B26B8E0(uint64_t a1, char a2, void *a3)
{
  v66 = a3;
  v6 = sub_18B2C9424();
  v63 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v64 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_18B2C9014();
  v62 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6CB8);
  v61 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v54 - v12;
  v58 = *(a1 + 16);
  if (!v58)
  {
    goto LABEL_24;
  }

  v54[1] = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v11 + 48);
  v15 = *(v61 + 80);
  v59 = a1;
  v16 = a1 + ((v15 + 32) & ~v15);
  v17 = (v62 + 32);
  v18 = (v63 + 32);
  v56 = v16;
  sub_18B163044(v16, v13, &qword_1EA9B6CB8);
  v55 = *v17;
  v55(v9, v13, v65);
  v19 = *v18;
  v57 = v14;
  v60 = v6;
  v19(v64, &v13[v14], v6);
  v20 = *v66;
  v22 = sub_18B293C80(v9);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (a2)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_18B26A5C8();
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_18B26834C(v25, a2 & 1);
  v27 = sub_18B293C80(v9);
  if ((v26 & 1) == (v28 & 1))
  {
    v22 = v27;
    if ((v26 & 1) == 0)
    {
LABEL_14:
      v31 = v65;
      v32 = *v66;
      *(*v66 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v55((v32[6] + *(v62 + 72) * v22), v9, v31);
      v33 = v60;
      v19((v32[7] + *(v63 + 72) * v22), v64, v60);
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v32[2] = v36;
      if (v58 != 1)
      {
        v37 = 1;
        while (v37 < *(v59 + 16))
        {
          sub_18B163044(v56 + *(v61 + 72) * v37, v13, &qword_1EA9B6CB8);
          v38 = *v17;
          (*v17)(v9, v13, v65);
          v39 = *v18;
          (*v18)(v64, &v13[v57], v33);
          v40 = *v66;
          v41 = sub_18B293C80(v9);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v35 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v35)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            sub_18B26834C(v45, 1);
            v41 = sub_18B293C80(v9);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = v65;
          v49 = *v66;
          *(*v66 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v50 = v41;
          v38((v49[6] + *(v62 + 72) * v41), v9, v48);
          v51 = v49[7] + *(v63 + 72) * v50;
          v33 = v60;
          v39(v51, v64, v60);
          v52 = v49[2];
          v35 = __OFADD__(v52, 1);
          v53 = v52 + 1;
          if (v35)
          {
            goto LABEL_27;
          }

          ++v37;
          v49[2] = v53;
          if (v58 == v37)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v29 = swift_allocError();
    swift_willThrow();
    v69 = v29;
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6CC8);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v63 + 8))(v64, v60);
      (*(v62 + 8))(v9, v65);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_18B2C9F44();
  __break(1u);
LABEL_29:
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_18B2C9D64();
  MEMORY[0x18CFF0A00](0xD00000000000001BLL, 0x800000018B2F4380);
  sub_18B2C9DA4();
  MEMORY[0x18CFF0A00](39, 0xE100000000000000);
  sub_18B2C9DB4();
  __break(1u);
}

uint64_t sub_18B26C784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserVoiceConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B26C828(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A70) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B22E8DC;

  return sub_18B293430(a1, v6, v1 + v5);
}

uint64_t sub_18B26C918(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B26C9C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v107 - v1;
  v3 = sub_18B2C9424();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v133 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v107 - v7;
  v9 = sub_18B2C9014();
  v135 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v134 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B2C95B4();
  __swift_project_boxed_opaque_existential_1(&v141, v143);
  sub_18B22BF90(MEMORY[0x1E69E6448], &v139);
  v11 = v139;
  v12 = BYTE4(v139);
  __swift_destroy_boxed_opaque_existential_1Tm(&v141);
  v13 = [objc_allocWithZone(AXSettings) init];
  v14 = [v13 selectedSpeechVoiceIdentifiersWithLanguageSource];

  if (!v14)
  {
    goto LABEL_60;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A8);
  v15 = sub_18B2C9814();

  v16 = *MEMORY[0x1E6988660];
  v17 = sub_18B2C9894();
  if (!*(v15 + 16))
  {

    goto LABEL_59;
  }

  v128 = v16;
  v127 = v8;
  v131 = v4;
  v19 = sub_18B293E34(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_59:

LABEL_60:
    v35 = MEMORY[0x1E69E7CC8];
    goto LABEL_61;
  }

  v124 = v2;
  v129 = v9;
  v130 = v3;
  v22 = *(*(v15 + 56) + 8 * v19);

  v125 = objc_opt_self();
  v23 = [v125 sharedInstance];
  [v23 voiceOverPitch];
  v25 = v24;

  v26 = 0;
  v28 = v22 + 64;
  v27 = *(v22 + 64);
  v136 = v22;
  v29 = 1 << *(v22 + 32);
  if (v29 < 64)
  {
    v31 = ~(-1 << v29);
  }

  else
  {
    v31 = -1;
  }

  v32 = v31 & v27;
  v33 = (v29 + 63) >> 6;
  v119 = *MEMORY[0x1E69D9EB8];
  *&v30 = v25;
  v123 = v30;
  v122 = (v135 + 56);
  v34 = 1056964608;
  if (!v12)
  {
    v34 = v11;
  }

  v121 = v34;
  v126 = (v131 + 32);
  v118 = v135 + 16;
  v120 = (v135 + 8);
  v117 = v131 + 40;
  v35 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    while (1)
    {
      if (!v32)
      {
        while (1)
        {
          v36 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            __break(1u);
            goto LABEL_67;
          }

          if (v36 >= v33)
          {
            break;
          }

          v32 = *(v28 + 8 * v36);
          ++v26;
          if (v32)
          {
            v26 = v36;
            goto LABEL_16;
          }
        }

LABEL_61:
        v97 = sub_18B2C9B74();
        v98 = AXTTSLogCommon();
        if (!v98)
        {
          goto LABEL_71;
        }

        v99 = v98;
        if (os_log_type_enabled(v98, v97))
        {
          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          v141 = v101;
          *v100 = 136315138;
          sub_18B26FC84(&qword_1EA9B56A8, 255, MEMORY[0x1E6969610]);

          v102 = sub_18B2C9824();
          v104 = v103;

          v105 = sub_18B27ACAC(v102, v104, &v141);

          *(v100 + 4) = v105;
          _os_log_impl(&dword_18B15E000, v99, v97, "Migrating general selections to %s", v100, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v101);
          MEMORY[0x18CFF4B10](v101, -1, -1);
          MEMORY[0x18CFF4B10](v100, -1, -1);
        }

        return v35;
      }

LABEL_16:
      v37 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v38 = (v26 << 10) | (16 * v37);
      v39 = (*(v136 + 48) + v38);
      v41 = *v39;
      v40 = v39[1];
      v132 = *(*(v136 + 56) + v38);
      v141 = v41;
      v142 = v40;
      *&v139 = 45;
      *(&v139 + 1) = 0xE100000000000000;
      sub_18B26FCCC();

      if ((sub_18B2C9C24() & 1) == 0)
      {
        v141 = v41;
        v142 = v40;
        *&v139 = 95;
        *(&v139 + 1) = 0xE100000000000000;
        if ((sub_18B2C9C24() & 1) == 0)
        {
          break;
        }
      }
    }

    v42 = [v125 sharedInstance];
    v116 = v42;
    v43 = sub_18B2C9864();
    v44 = [v42 customSettingsForVoice:v43 sourceKey:v128];

    if (!v44)
    {
      goto LABEL_28;
    }

    v45 = sub_18B2C9814();

    v137 = sub_18B2C9894();
    v138 = v46;
    sub_18B2C9D14();
    if (!*(v45 + 16) || (v47 = sub_18B293EAC(&v141), (v48 & 1) == 0))
    {

      sub_18B22EB84(&v141);
LABEL_28:
      v139 = 0u;
      v140 = 0u;
LABEL_29:
      sub_18B1630AC(&v139, &qword_1EA9B66B0);
      goto LABEL_30;
    }

    sub_18B22EF7C(*(v45 + 56) + 32 * v47, &v139);
    sub_18B22EB84(&v141);

    if (!*(&v140 + 1))
    {
      goto LABEL_29;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66B8);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_30:
    v56 = v134;
    sub_18B2C9024();
    (*v122)(v124, 1, 1, v129);
    LOBYTE(v141) = 1;
    v57 = v127;
    sub_18B2C93F4();
    v58 = *v126;
    (*v126)(v133, v57, v130);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v141 = v35;
    v60 = sub_18B293C80(v56);
    v62 = v35[2];
    v63 = (v61 & 1) == 0;
    v64 = __OFADD__(v62, v63);
    v65 = v62 + v63;
    if (v64)
    {
      goto LABEL_68;
    }

    v66 = v61;
    if (v35[3] >= v65)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_35;
      }

      v90 = v60;
      sub_18B26A5C8();
      v60 = v90;
      v35 = v141;
      if ((v66 & 1) == 0)
      {
        goto LABEL_56;
      }

LABEL_36:
      (*(v131 + 40))(v35[7] + *(v131 + 72) * v60, v133, v130);
      (*v120)(v134, v129);
    }

    else
    {
      sub_18B26834C(v65, isUniquelyReferenced_nonNull_native);
      v60 = sub_18B293C80(v134);
      if ((v66 & 1) != (v67 & 1))
      {
        goto LABEL_73;
      }

LABEL_35:
      v35 = v141;
      if (v66)
      {
        goto LABEL_36;
      }

LABEL_56:
      v35[(v60 >> 6) + 8] |= 1 << v60;
      v92 = v134;
      v91 = v135;
      v93 = v60;
      v94 = v129;
      (*(v135 + 16))(v35[6] + *(v135 + 72) * v60, v134, v129);
      v58((v35[7] + *(v131 + 72) * v93), v133, v130);
      (*(v91 + 8))(v92, v94);
      v95 = v35[2];
      v64 = __OFADD__(v95, 1);
      v96 = v95 + 1;
      if (v64)
      {
        goto LABEL_69;
      }

      v35[2] = v96;
    }
  }

  v49 = 0;
  v51 = v141 + 8;
  v50 = v141[8];
  v110 = v141;
  v52 = 1 << *(v141 + 32);
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  else
  {
    v53 = -1;
  }

  v54 = v53 & v50;
  v55 = (v52 + 63) >> 6;
  v114 = MEMORY[0x1E69E7CC8];
  v109 = v141 + 8;
  v108 = v55;
  while (v54)
  {
    v68 = v49;
LABEL_44:
    v113 = v54;
    v69 = __clz(__rbit64(v54)) | (v68 << 6);
    v70 = *(v110 + 56);
    v71 = (*(v110 + 48) + 16 * v69);
    v72 = v71[1];
    v115 = *v71;
    v116 = v72;
    v73 = *(v70 + 8 * v69);

    v112 = v73;
    [v112 floatValue];
    v75 = v74;
    v76 = v114;
    LODWORD(v111) = swift_isUniquelyReferenced_nonNull_native();
    v141 = v76;
    v78 = sub_18B293E34(v115, v116);
    v79 = *(v76 + 16);
    v80 = (v77 & 1) == 0;
    v81 = v79 + v80;
    if (__OFADD__(v79, v80))
    {
      goto LABEL_70;
    }

    if (*(v76 + 24) < v81)
    {
      LODWORD(v114) = v77;
      sub_18B2687F8(v81, v111);
      v82 = sub_18B293E34(v115, v116);
      v83 = v77 & 1;
      LOBYTE(v77) = v114;
      if ((v114 & 1) != v83)
      {
        goto LABEL_74;
      }

      v78 = v82;
      goto LABEL_48;
    }

    v84 = v113;
    if ((v111 & 1) == 0)
    {
      v111 = v78;
      LODWORD(v114) = v77;
      sub_18B26A91C();
      LOBYTE(v77) = v114;
      v78 = v111;
LABEL_48:
      v84 = v113;
    }

    v54 = (v84 - 1) & v84;
    if (v77)
    {
      v111 = v78;

      v114 = v141;
      *(v141[7] + 4 * v111) = v75;
    }

    else
    {
      v85 = v141;
      v114 = v141;
      v141[(v78 >> 6) + 8] |= 1 << v78;
      v86 = (*(v85 + 48) + 16 * v78);
      v87 = v116;
      *v86 = v115;
      v86[1] = v87;
      *(*(v85 + 56) + 4 * v78) = v75;

      v88 = *(v114 + 16);
      v64 = __OFADD__(v88, 1);
      v89 = v88 + 1;
      if (v64)
      {
        goto LABEL_72;
      }

      *(v114 + 16) = v89;
    }

    v49 = v68;
    v51 = v109;
    v55 = v108;
  }

  while (1)
  {
    v68 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v68 >= v55)
    {

      goto LABEL_30;
    }

    v54 = v51[v68];
    ++v49;
    if (v54)
    {
      goto LABEL_44;
    }
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  sub_18B2C9F44();
  __break(1u);
LABEL_74:
  result = sub_18B2C9F44();
  __break(1u);
  return result;
}

uint64_t sub_18B26D6F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v83[-v1];
  v3 = type metadata accessor for UserVoiceConfiguration();
  v101 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v83[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v83[-v7];
  if (qword_1ED653E68 != -1)
  {
LABEL_60:
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_1ED653E70;
  v10 = OBJC_IVAR___AXSettings_voiceover;
  v11 = swift_beginAccess();
  v12 = *(*(v9 + v10) + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock__oldDomainRotors);
  v13 = MEMORY[0x1EEE9AC00](v11);
  *&v83[-16] = v14;
  MEMORY[0x1EEE9AC00](v13);
  *&v83[-16] = sub_18B2702A4;
  *&v83[-8] = v15;
  v17 = v16;

  os_unfair_lock_lock(v12 + 4);
  sub_18B22F010(&v106);
  os_unfair_lock_unlock(v12 + 4);

  sub_18B2C9474();

  v18 = v106;
  if (v106)
  {
    return v18;
  }

  v19 = objc_opt_self();
  v20 = [v19 sharedInstance];
  v21 = [v20 voiceOverLanguageRotorItems];

  if (!v21)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v22 = sub_18B2C99F4();

  v23 = sub_18B26703C(v22);

  if (!v23)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v100 = v3;
  v3 = *(v23 + 16);
  if (!v3)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v98 = v6;
  v99 = v19;
  v24 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v6 = *MEMORY[0x1E6988660];
  v97 = *MEMORY[0x1E69D9EB8];
  while (1)
  {
    if (v24 >= *(v23 + 16))
    {
      __break(1u);
      goto LABEL_60;
    }

    v25 = *(v23 + 32 + 8 * v24);
    if (*(v25 + 16))
    {
      break;
    }

LABEL_8:
    if (++v24 == v3)
    {

      return v18;
    }
  }

  v26 = sub_18B293E34(0x64656C62616E45, 0xE700000000000000);
  if ((v27 & 1) == 0 || (sub_18B26F3E8(*(v25 + 56) + 40 * v26, &v106), (swift_dynamicCast() & 1) == 0) || (v104 & 1) == 0 || !*(v25 + 16) || (v28 = sub_18B293E34(0x657449726F746F52, 0xE90000000000006DLL), (v29 & 1) == 0))
  {

    goto LABEL_8;
  }

  sub_18B26F3E8(*(v25 + 56) + 40 * v28, &v106);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v95 = v2;
  v30 = v104;
  v31 = [v99 sharedInstance];
  v96 = v30;
  v32 = sub_18B2C9864();
  v94 = v6;
  v33 = [v31 speechVoiceIdentifierForLanguageWithoutFallback:v32 sourceKey:v6];

  if (!v33)
  {

    v2 = v95;
LABEL_37:
    enableVoicesRotor()();
    goto LABEL_8;
  }

  v93 = v33;
  v92 = sub_18B2C9894();
  v91 = v34;
  v35 = v99;
  v36 = [v99 sharedInstance];
  v37 = sub_18B2C9864();
  [v36 voiceOverSpeakingRateForLanguage_];

  v38 = [v35 sharedInstance];
  v39 = v93;
  v40 = [v38 customSettingsForVoice:v93 sourceKey:v94];

  if (!v40)
  {
    goto LABEL_29;
  }

  v41 = sub_18B2C9814();

  v102 = sub_18B2C9894();
  v103 = v42;
  sub_18B2C9D14();
  if (!*(v41 + 16) || (v43 = sub_18B293EAC(&v106), (v44 & 1) == 0))
  {

    sub_18B22EB84(&v106);
LABEL_29:
    v104 = 0u;
    v105 = 0u;
    v45 = *(&v96 + 1);
    v46 = v96;
    goto LABEL_30;
  }

  sub_18B22EF7C(*(v41 + 56) + 32 * v43, &v104);
  sub_18B22EB84(&v106);

  v45 = *(&v96 + 1);
  v46 = v96;
  if (!*(&v105 + 1))
  {
LABEL_30:
    sub_18B1630AC(&v104, &qword_1EA9B66B0);
LABEL_31:
    v94 = MEMORY[0x1E69E7CC8];
LABEL_32:
    v106 = 0;
    v107 = 0xE000000000000000;
    sub_18B2C9D64();

    v106 = 0x6574617267696D5FLL;
    v107 = 0xEF5F676E616C5F64;
    MEMORY[0x18CFF0A00](v46, v45);

    *(&v96 + 1) = v106;
    *&v96 = v107;
    v55 = sub_18B2C9014();
    v2 = v95;
    (*(*(v55 - 8) + 56))(v95, 1, 1, v55);
    v56 = v100;
    LOBYTE(v106) = 1;
    sub_18B2C93F4();
    v57 = (v8 + *(v56 + 24));
    v58 = v96;
    *v8 = *(&v96 + 1);
    v8[1] = v58;
    *v57 = 0;
    v57[1] = 0;
    sub_18B230B70(v8, v98);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_18B2C0C50(0, v18[2] + 1, 1, v18);
    }

    v60 = v18[2];
    v59 = v18[3];
    if (v60 >= v59 >> 1)
    {
      v18 = sub_18B2C0C50(v59 > 1, v60 + 1, 1, v18);
    }

    v18[2] = v60 + 1;
    sub_18B26C784(v98, v18 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v60);
    sub_18B26F68C(v8, type metadata accessor for UserVoiceConfiguration);
    goto LABEL_37;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_31;
  }

  v47 = 0;
  v49 = v106 + 64;
  v48 = *(v106 + 64);
  v87 = v106;
  v50 = 1 << *(v106 + 32);
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  else
  {
    v51 = -1;
  }

  v52 = v51 & v48;
  v53 = (v50 + 63) >> 6;
  v54 = MEMORY[0x1E69E7CC8];
  v86 = v106 + 64;
  for (i = v53; ; v53 = i)
  {
    v94 = v54;
    if (!v52)
    {
      break;
    }

    v61 = v47;
LABEL_45:
    v62 = __clz(__rbit64(v52)) | (v61 << 6);
    v63 = *(v87 + 56);
    v64 = (*(v87 + 48) + 16 * v62);
    v65 = v64[1];
    v90 = *v64;
    v93 = v65;
    v66 = *(v63 + 8 * v62);

    v89 = v66;
    [v89 floatValue];
    v68 = v67;
    v69 = v94;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106 = v69;
    v71 = sub_18B293E34(v90, v93);
    v72 = *(v69 + 16);
    v73 = (v70 & 1) == 0;
    v74 = v72 + v73;
    if (__OFADD__(v72, v73))
    {
      goto LABEL_62;
    }

    if (*(v69 + 24) >= v74)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v94 = v71;
        v84 = v70;
        sub_18B26A91C();
        LOBYTE(v70) = v84;
        v71 = v94;
      }
    }

    else
    {
      v84 = v70;
      sub_18B2687F8(v74, isUniquelyReferenced_nonNull_native);
      v75 = sub_18B293E34(v90, v93);
      v76 = v70 & 1;
      LOBYTE(v70) = v84;
      if ((v84 & 1) != v76)
      {
        goto LABEL_64;
      }

      v71 = v75;
    }

    v52 &= v52 - 1;
    if (v70)
    {
      v94 = v71;

      v54 = v106;
      *(*(v106 + 56) + 4 * v94) = v68;
    }

    else
    {
      v54 = v106;
      *(v106 + 8 * (v71 >> 6) + 64) |= 1 << v71;
      v77 = (v54[6] + 16 * v71);
      v78 = v93;
      *v77 = v90;
      v77[1] = v78;
      *(v54[7] + 4 * v71) = v68;

      v79 = v54[2];
      v80 = __OFADD__(v79, 1);
      v81 = v79 + 1;
      if (v80)
      {
        goto LABEL_63;
      }

      v54[2] = v81;
    }

    v47 = v61;
    v49 = v86;
  }

  while (1)
  {
    v61 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v61 >= v53)
    {

      v45 = *(&v96 + 1);
      v46 = v96;
      goto LABEL_32;
    }

    v52 = *(v49 + 8 * v61);
    ++v47;
    if (v52)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  result = sub_18B2C9F44();
  __break(1u);
  return result;
}

uint64_t _sSo10AXSettingsC22AccessibilityUtilitiesE9VoiceOverC9selectorsShy10ObjectiveC8SelectorVGvg_0()
{
  v2 = MEMORY[0x1E69E7CD0];
  sub_18B232DFC(&v1, sel_voiceOverDefaultVoiceSelections);
  sub_18B232DFC(&v1, sel_setVoiceOverDefaultVoiceSelections_);
  sub_18B232DFC(&v1, sel_voiceOverVoiceRotors);
  sub_18B232DFC(&v1, sel_setVoiceOverVoiceRotors_);
  sub_18B232DFC(&v1, sel_voiceOverCurrentRotorVoiceIdentifier);
  sub_18B232DFC(&v1, sel_setVoiceOverCurrentRotorVoiceIdentifier_);
  sub_18B232DFC(&v1, sel_voiceOverLargeCursorEnabled);
  sub_18B232DFC(&v1, sel_setVoiceOverLargeCursorEnabled_);
  sub_18B232DFC(&v1, sel_voiceOverMagicTapDefaultToMediaPlayback);
  sub_18B232DFC(&v1, sel_setVoiceOverMagicTapDefaultToMediaPlayback_);
  sub_18B232DFC(&v1, sel_voiceOverContentDescriptionLevel);
  sub_18B232DFC(&v1, sel_setVoiceOverContentDescriptionLevel_);
  sub_18B232DFC(&v1, sel_voiceOverUseDigitalCrownNavigation);
  sub_18B232DFC(&v1, sel_setVoiceOverUseDigitalCrownNavigation_);
  sub_18B232DFC(&v1, sel_voiceOverImageCaptionsEnabled);
  sub_18B232DFC(&v1, sel_setVoiceOverImageCaptionsEnabled_);
  sub_18B232DFC(&v1, sel_voiceOverUseTVToggleStyleNavigation);
  sub_18B232DFC(&v1, sel_setVoiceOverUseTVToggleStyleNavigation_);
  sub_18B232DFC(&v1, sel_voiceOverContinuousPathKeyboardStartTimeout);
  sub_18B232DFC(&v1, sel_setVoiceOverContinuousPathKeyboardStartTimeout_);
  sub_18B232DFC(&v1, sel_voiceOverHearingAidRoutingEnabled);
  sub_18B232DFC(&v1, sel_setVoiceOverHearingAidRoutingEnabled_);
  sub_18B232DFC(&v1, sel_voiceOverListAnnotation);
  sub_18B232DFC(&v1, sel_setVoiceOverListAnnotation_);
  sub_18B232DFC(&v1, sel_voiceOverUseSiriSounds);
  sub_18B232DFC(&v1, sel_setVoiceOverUseSiriSounds_);
  sub_18B232DFC(&v1, sel_voiceOverCursorOutputStyle);
  sub_18B232DFC(&v1, sel_setVoiceOverCursorOutputStyle_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBraillePanningAutoTurnsReadingContent);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBraillePanningAutoTurnsReadingContent_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleDisplayOutputMode);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleDisplayOutputMode_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleDisplayInputMode);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleDisplayInputMode_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleGesturesInputMode);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleGesturesInputMode_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleDisplaySyncInputOutputTables);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleDisplaySyncInputOutputTables_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleDisplayInputTableIdentifier);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleDisplayInputTableIdentifier_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleDisplayOutputTableIdentifier);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleDisplayOutputTableIdentifier_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleGesturesInputTableIdentifier);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleGesturesInputTableIdentifier_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleGesturesActivationGestureEnabled);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleGesturesActivationGestureEnabled_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleGesturesSoundOption);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleGesturesSoundOption_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleGesturesUsesHapticFeedback);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleGesturesUsesHapticFeedback_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleGesturesUsesTypingSoundFeedback);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleGesturesUsesTypingSoundFeedback_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleGesutresSingleHandUsesDotNumbersFeedback);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleGesutresSingleHandUsesDotNumbersFeedback_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleGesturesDisplaysEnteredText);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleGesturesDisplaysEnteredText_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleGesturesLearnsDotPositions);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleGesturesLearnsDotPositions_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleGesturesAutoActivateOnTextFields);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleGesturesAutoActivateOnTextFields_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleGesturesSingleHandStyle);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleGesturesSingleHandStyle_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleGesturesCharacterAcceptanceTestBraille);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleGesturesCharacterAcceptanceTestBraille_);
  sub_18B232DFC(&v1, sel_voiceOverTouchPerkinsKeyboardInputEnabled);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchPerkinsKeyboardInputEnabled_);
  sub_18B232DFC(&v1, sel_voiceOverTouchPerkinsChordKeyboardInputEnabled);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchPerkinsChordKeyboardInputEnabled_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleHIMSUsesDot7ForCommand);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleHIMSUsesDot7ForCommand_);
  sub_18B232DFC(&v1, sel_voiceOverTouchKeyboardBrailleUIEnabled);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchKeyboardBrailleUIEnabled_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleUIShouldReopenViewsWhenRestart);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleUIShouldReopenViewsWhenRestart_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleUIReadListItemsEnabled);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleUIReadListItemsEnabled_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleUIVisualsEnabled);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleUIVisualsEnabled_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleUIBrailleNotesSortType);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleUIBrailleNotesSortType_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleUIBrailleNotesSortDirection);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleUIBrailleNotesSortDirection_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleUITypingSpeechFeedbackEnabled);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleUITypingSpeechFeedbackEnabled_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleUIIsBRFReflowEnabled);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleUIIsBRFReflowEnabled_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleUIIsBRFStripPageIndicatorsEnabled);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleUIIsBRFStripPageIndicatorsEnabled_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleUICalculatorUsesUEBMath);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleUICalculatorUsesUEBMath_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleUILiveCaptionsSource);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleUILiveCaptionsSource_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleUIMigrationMessageAnnounced);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleUIMigrationMessageAnnounced_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleUIShowsBackButton);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleUIShowsBackButton_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleZoomOutNumCellsPerElement);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleZoomOutNumCellsPerElement_);
  sub_18B232DFC(&v1, sel_voiceOverTouchBrailleUsesUnderlineCursor);
  sub_18B232DFC(&v1, sel_setVoiceOverTouchBrailleUsesUnderlineCursor_);
  sub_18B232DFC(&v1, sel_voiceOverDefaultPunctuationGroup);
  sub_18B232DFC(&v1, sel_setVoiceOverDefaultPunctuationGroup_);
  sub_18B232DFC(&v1, sel_voiceOverActivities);
  sub_18B232DFC(&v1, sel_setVoiceOverActivities_);
  sub_18B232DFC(&v1, sel_voiceOverLanguageDetectionEnabled);
  sub_18B232DFC(&v1, sel_setVoiceOverLanguageDetectionEnabled_);
  sub_18B232DFC(&v1, sel_voiceOverPitchChangeEnabled);
  sub_18B232DFC(&v1, sel_setVoiceOverPitchChangeEnabled_);
  sub_18B232DFC(&v1, sel_voiceOverSelectedLanguage);
  sub_18B232DFC(&v1, sel_setVoiceOverSelectedLanguage_);
  sub_18B232DFC(&v1, sel_voiceOverSpeakUpEnabled);
  sub_18B232DFC(&v1, sel_setVoiceOverSpeakUpEnabled_);
  sub_18B232DFC(&v1, sel_voiceOverSpeakingRate);
  sub_18B232DFC(&v1, sel_setVoiceOverSpeakingRate_);
  sub_18B232DFC(&v1, sel_speechVoiceIdentifierForLanguage_completionHandler_);
  sub_18B232DFC(&v1, sel_setWithVoiceId_forLanguage_completionHandler_);
  sub_18B232DFC(&v1, sel_setWithVoiceId_forLanguage_rate_volume_pitch_);
  return v2;
}

unint64_t sub_18B26EBF0()
{
  result = qword_1EA9B6C80;
  if (!qword_1EA9B6C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B6C80);
  }

  return result;
}

unint64_t sub_18B26EC48()
{
  result = qword_1EA9B6C90;
  if (!qword_1EA9B6C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B6C90);
  }

  return result;
}

uint64_t keypath_set_1035Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_18B26EE28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18B26EE70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VORotorItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VORotorItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_18B26F020()
{
  result = qword_1EA9B6C98;
  if (!qword_1EA9B6C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B6C98);
  }

  return result;
}

unint64_t sub_18B26F078()
{
  result = qword_1EA9B6CA0;
  if (!qword_1EA9B6CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B6CA0);
  }

  return result;
}

unint64_t sub_18B26F0D0()
{
  result = qword_1EA9B6CA8;
  if (!qword_1EA9B6CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B6CA8);
  }

  return result;
}

uint64_t sub_18B26F124()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_18B22F028;

  return sub_18B25CCB0(v2, v3, v5, v4);
}

uint64_t sub_18B26F1E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_18B22F028;

  return sub_18B25C63C(v2, v3, v4);
}

uint64_t sub_18B26F298(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_18B22F028;

  return sub_18B2565D0(v5, a1, v4);
}

uint64_t sub_18B26F348(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B22F028;

  return sub_18B255E04(a1, v4);
}

_OWORD *sub_18B26F444(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_18B26F4B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B6868);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18B26F51C()
{
  result = qword_1EA9B5620;
  if (!qword_1EA9B5620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B6A10);
    sub_18B26FC84(&qword_1EA9B5570, 255, type metadata accessor for AXSettings.VoiceOver.Activity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B5620);
  }

  return result;
}

unint64_t sub_18B26F5D4()
{
  result = qword_1EA9B5628;
  if (!qword_1EA9B5628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B6A10);
    sub_18B26FC84(&unk_1EA9B5578, 255, type metadata accessor for AXSettings.VoiceOver.Activity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B5628);
  }

  return result;
}

uint64_t sub_18B26F68C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_18B26F6EC()
{
  result = qword_1ED653C40;
  if (!qword_1ED653C40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED653C40);
  }

  return result;
}

uint64_t sub_18B26F738(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_18B26F7A0()
{
  result = qword_1ED653C18;
  if (!qword_1ED653C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA9B74F0);
    sub_18B26FC84(&qword_1ED653C30, 255, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED653C18);
  }

  return result;
}

unint64_t sub_18B26F858()
{
  result = qword_1ED653C20;
  if (!qword_1ED653C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA9B74F0);
    sub_18B26FC84(&qword_1ED653C38, 255, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED653C20);
  }

  return result;
}

uint64_t sub_18B26F910(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B6900);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18B26F97C()
{
  result = qword_1EA9B6DA0;
  if (!qword_1EA9B6DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B6DA0);
  }

  return result;
}

uint64_t sub_18B26F9D0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B6878);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18B26FA48()
{
  result = qword_1EA9B6DB0;
  if (!qword_1EA9B6DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B6DB0);
  }

  return result;
}

uint64_t sub_18B26FA9C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B6858);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18B26FB14()
{
  result = qword_1EA9B6DC0;
  if (!qword_1EA9B6DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B6848);
    sub_18B26FC84(&qword_1EA9B6700, 255, type metadata accessor for UserVoiceConfiguration);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B6DC0);
  }

  return result;
}

unint64_t sub_18B26FBCC()
{
  result = qword_1EA9B6DD0;
  if (!qword_1EA9B6DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B6848);
    sub_18B26FC84(&qword_1EA9B6708, 255, type metadata accessor for UserVoiceConfiguration);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B6DD0);
  }

  return result;
}

uint64_t sub_18B26FC84(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18B26FCCC()
{
  result = qword_1ED653B90;
  if (!qword_1ED653B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED653B90);
  }

  return result;
}

uint64_t AXSettings.LiveSpeech._$enabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_enabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B235DBC(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B270350@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v14 - v5);
  v7 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___enabled_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___enabled_Storage])
  {
    v9 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___enabled_Storage];
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v14[1] = "rdVoiceSelections";
    v14[2] = v10;
    v14[0] = "AssistiveTouchSavedGestures";
    *v6 = swift_getKeyPath();
    v11 = a1;
    sub_18B2C94D4();
    v14[5] = v6;
    v14[3] = sub_18B2C9504();
    sub_18B2C9674();
    sub_18B27BD14(&qword_1EA9B6E28, v12, type metadata accessor for AXSettings.LiveSpeech);
    v9 = sub_18B2C9454();
    *&a1[v8] = v9;
  }

  *a2 = v9;
}

uint64_t sub_18B2705FC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_enabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.LiveSpeech.enabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_enabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.LiveSpeech.enabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_enabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.LiveSpeech.enabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_enabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B2708A4;
}

uint64_t sub_18B2708A4(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.LiveSpeech._$keyboardVoiceSelections.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_keyboardVoiceSelections);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B270A1C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v14 - v5);
  v7 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___keyboardVoiceSelections_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___keyboardVoiceSelections_Storage])
  {
    v9 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___keyboardVoiceSelections_Storage];
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6560);
    v14[1] = "LiveSpeechPreferredVoices";
    v14[2] = v10;
    *v6 = swift_getKeyPath();
    v11 = a1;
    sub_18B2C94D4();
    v14[5] = v6;
    v14[3] = sub_18B2C9504();
    sub_18B2C9674();
    sub_18B27BB94();
    sub_18B27BC54();
    sub_18B27BD14(&qword_1EA9B6E28, v12, type metadata accessor for AXSettings.LiveSpeech);
    v9 = sub_18B2C9454();
    *&a1[v8] = v9;
  }

  *a2 = v9;
}

uint64_t sub_18B270C4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18B27BD5C();
  *a1 = result;
  return result;
}

uint64_t sub_18B270CA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_keyboardVoiceSelections);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.LiveSpeech.keyboardVoiceSelections.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_keyboardVoiceSelections);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.LiveSpeech.keyboardVoiceSelections.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_keyboardVoiceSelections);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.LiveSpeech.keyboardVoiceSelections.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_keyboardVoiceSelections;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B270FB4;
}

void sub_18B270FB4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *((*a1)[2] + (*a1)[3]);
  if (a2)
  {

    os_unfair_lock_lock(v4 + 4);
    sub_18B22F010(v5);
    os_unfair_lock_unlock(v4 + 4);

    v2[1] = v3;
    sub_18B2C9484();
  }

  else
  {

    os_unfair_lock_lock(v4 + 4);
    sub_18B22F010(v5);
    os_unfair_lock_unlock(v4 + 4);

    v2[1] = v3;
    sub_18B2C9484();
  }

  free(v2);
}

uint64_t AXSettings.LiveSpeech._$preferredVoices.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_preferredVoices);

  os_unfair_lock_lock(v1 + 4);
  sub_18B235DBC(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B271170@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v14 - v5);
  v7 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___preferredVoices_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___preferredVoices_Storage])
  {
    v9 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___preferredVoices_Storage];
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6670);
    v14[1] = "redKeyboardLanguages";
    v14[2] = v10;
    *v6 = swift_getKeyPath();
    v11 = a1;
    sub_18B2C94D4();
    v14[5] = v6;
    v14[3] = sub_18B2C9504();
    sub_18B2C9674();
    sub_18B27BAF4(&qword_1EA9B6DC0, &qword_1EA9B6700);
    sub_18B27BAF4(&qword_1EA9B6DD0, &qword_1EA9B6708);
    sub_18B27BD14(&qword_1EA9B6E28, v12, type metadata accessor for AXSettings.LiveSpeech);
    v9 = sub_18B2C9454();
    *&a1[v8] = v9;
  }

  *a2 = v9;
}

uint64_t sub_18B271440@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_preferredVoices);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.LiveSpeech.preferredVoices.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_preferredVoices);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.LiveSpeech.preferredVoices.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_preferredVoices);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.LiveSpeech.preferredVoices.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_preferredVoices;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B23602C(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B271750;
}

void sub_18B271750(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *((*a1)[2] + (*a1)[3]);
  if (a2)
  {

    os_unfair_lock_lock(v4 + 4);
    sub_18B23602C(v5);
    os_unfair_lock_unlock(v4 + 4);

    v2[1] = v3;
    sub_18B2C9484();
  }

  else
  {

    os_unfair_lock_lock(v4 + 4);
    sub_18B23602C(v5);
    os_unfair_lock_unlock(v4 + 4);

    v2[1] = v3;
    sub_18B2C9484();
  }

  free(v2);
}

uint64_t AXSettings.LiveSpeech._$preferredKeyboardLanguages.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_preferredKeyboardLanguages);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22C68C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B27190C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___preferredKeyboardLanguages_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___preferredKeyboardLanguages_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___preferredKeyboardLanguages_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6550);
    v7 = a1;
    sub_18B2C9674();
    sub_18B27B974();
    sub_18B27BA34();
    sub_18B27BD14(&qword_1EA9B6E28, v8, type metadata accessor for AXSettings.LiveSpeech);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

unint64_t sub_18B271ABC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_18B2B53A4(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t sub_18B271B1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_preferredKeyboardLanguages);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.LiveSpeech.preferredKeyboardLanguages.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_preferredKeyboardLanguages);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.LiveSpeech.preferredKeyboardLanguages.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_preferredKeyboardLanguages);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.LiveSpeech.preferredKeyboardLanguages.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_preferredKeyboardLanguages;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B271E2C;
}

void sub_18B271E2C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *((*a1)[2] + (*a1)[3]);
  if (a2)
  {

    os_unfair_lock_lock(v4 + 4);
    sub_18B22F010(v5);
    os_unfair_lock_unlock(v4 + 4);

    v2[1] = v3;
    sub_18B2C9484();
  }

  else
  {

    os_unfair_lock_lock(v4 + 4);
    sub_18B22F010(v5);
    os_unfair_lock_unlock(v4 + 4);

    v2[1] = v3;
    sub_18B2C9484();
  }

  free(v2);
}

uint64_t AXSettings.LiveSpeech._$visionOSLiveSpeechLaunchDistance.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_visionOSLiveSpeechLaunchDistance);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B271FE8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___visionOSLiveSpeechLaunchDistance_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___visionOSLiveSpeechLaunchDistance_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___visionOSLiveSpeechLaunchDistance_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6540);
    v16[3] = "AssistiveTouchSavedGestures";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B27BD14(&qword_1EA9B5650, 255, MEMORY[0x1E6988260]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B27BD14(&qword_1EA9B6E28, v14, type metadata accessor for AXSettings.LiveSpeech);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

float sub_18B2723BC@<S0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_visionOSLiveSpeechLaunchDistance);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  result = *&v5;
  *a2 = v5;
  return result;
}

float AXSettings.LiveSpeech.visionOSLiveSpeechLaunchDistance.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_visionOSLiveSpeechLaunchDistance);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return *&v3;
}

uint64_t AXSettings.LiveSpeech.visionOSLiveSpeechLaunchDistance.setter(float a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_visionOSLiveSpeechLaunchDistance);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *&v5 = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.LiveSpeech.visionOSLiveSpeechLaunchDistance.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_visionOSLiveSpeechLaunchDistance;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B22F010(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 28);
  return sub_18B27266C;
}

uint64_t sub_18B27266C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 28) = v2;
  sub_18B2C9484();
}

uint64_t sub_18B272764(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107949 && a2 == 0xE300000000000000;
  if (v3 || (sub_18B2C9F24() & 1) != 0 || a1 == 0x696A6F6D65 && a2 == 0xE500000000000000 || (sub_18B2C9F24() & 1) != 0)
  {
    return 0;
  }

  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = a1;
  v7[4] = a2;
  v8 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6868);
  sub_18B2C95A4();

  return v9;
}

uint64_t sub_18B27287C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E18);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E20);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B2729EC, 0, 0);
}

uint64_t sub_18B2729EC()
{
  v14 = v0;
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_keyboardVoiceSelections);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_18B27C250;
  *(v4 + 24) = v3;

  os_unfair_lock_lock(v2 + 4);
  sub_18B22F010(&v13);
  v6 = v0[4];
  v5 = v0[5];
  os_unfair_lock_unlock(v2 + 4);

  sub_18B2C9434();

  sub_18B2C9154();
  v7 = sub_18B2C9144();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v5;
  v8[4] = v7;
  v0[13] = sub_18B2C9424();

  sub_18B2C9544();

  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_18B272C1C;
  v10 = v0[12];
  v11 = v0[6];

  return MEMORY[0x1EEDE9B70](v10, v11);
}

uint64_t sub_18B272C1C()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_18B272D74, 0, 0);
}

uint64_t sub_18B272D74()
{
  v1 = v0[12];
  v2 = v0[13];
  (*(v0[10] + 8))(v0[11], v0[9]);
  v3 = *(v2 - 8);
  (*(v3 + 56))(v1, 0, 1, v2);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[2];
    sub_18B1630AC(v0[12], &qword_1EA9B63D8);
    *v4 = 0;
    v4[1] = 0;
  }

  else
  {
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[2];
    *v7 = sub_18B2C9404();
    v7[1] = v8;
    (*(v3 + 8))(v6, v5);
  }

  v9 = v0[1];

  return v9();
}

uint64_t AXFetchableStream<A>.selection(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E18);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B272F9C, 0, 0);
}

uint64_t sub_18B272F9C()
{
  v1 = v0[4];
  v2 = v0[3];
  sub_18B2C9154();
  v3 = sub_18B2C9144();
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E20);
  v0[9] = sub_18B2C9424();
  sub_18B2C9544();

  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_18B273104;
  v6 = v0[6];
  v7 = v0[2];

  return MEMORY[0x1EEDE9B70](v7, v6);
}

uint64_t sub_18B273104()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_18B27325C, 0, 0);
}

uint64_t sub_18B27325C()
{
  (*(*(v0[9] - 8) + 56))(v0[2], 0, 1);

  v1 = v0[1];

  return v1();
}

uint64_t sub_18B273390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E18);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E20);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B273500, 0, 0);
}

uint64_t sub_18B273500()
{
  v14 = v0;
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_keyboardVoiceSelections);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_18B27C250;
  *(v4 + 24) = v3;

  os_unfair_lock_lock(v2 + 4);
  sub_18B22F010(&v13);
  v6 = v0[4];
  v5 = v0[5];
  os_unfair_lock_unlock(v2 + 4);

  sub_18B2C9434();

  sub_18B2C9154();
  v7 = sub_18B2C9144();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v5;
  v8[4] = v7;
  v0[13] = sub_18B2C9424();

  sub_18B2C9544();

  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_18B273730;
  v10 = v0[12];
  v11 = v0[6];

  return MEMORY[0x1EEDE9B70](v10, v11);
}

uint64_t sub_18B273730()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_18B273888, 0, 0);
}

uint64_t sub_18B273888()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  v3 = *(v2 - 8);
  (*(v3 + 56))(v1, 0, 1, v2);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_18B1630AC(*(v0 + 96), &qword_1EA9B63D8);
    v4 = 1056964608;
  }

  else
  {
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = sub_18B2C9374();
    (*(v3 + 8))(v6, v5);
    if ((v7 & 0x100000000) != 0)
    {
      v4 = 1056964608;
    }

    else
    {
      v4 = v7;
    }
  }

  **(v0 + 16) = v4;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_18B273A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E18);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E20);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B273B7C, 0, 0);
}

uint64_t sub_18B273B7C()
{
  v14 = v0;
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_keyboardVoiceSelections);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_18B27C250;
  *(v4 + 24) = v3;

  os_unfair_lock_lock(v2 + 4);
  sub_18B22F010(&v13);
  v6 = v0[4];
  v5 = v0[5];
  os_unfair_lock_unlock(v2 + 4);

  sub_18B2C9434();

  sub_18B2C9154();
  v7 = sub_18B2C9144();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v5;
  v8[4] = v7;
  v0[13] = sub_18B2C9424();

  sub_18B2C9544();

  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_18B273DAC;
  v10 = v0[12];
  v11 = v0[6];

  return MEMORY[0x1EEDE9B70](v10, v11);
}

uint64_t sub_18B273DAC()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_18B273F04, 0, 0);
}

uint64_t sub_18B273F04()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  v3 = *(v2 - 8);
  (*(v3 + 56))(v1, 0, 1, v2);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_18B1630AC(*(v0 + 96), &qword_1EA9B63D8);
    v4 = 1056964608;
  }

  else
  {
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = sub_18B2C9394();
    (*(v3 + 8))(v6, v5);
    if ((v7 & 0x100000000) != 0)
    {
      v4 = 1056964608;
    }

    else
    {
      v4 = v7;
    }
  }

  **(v0 + 16) = v4;

  v8 = *(v0 + 8);

  return v8();
}

float sub_18B274088(void *a1)
{
  v2 = sub_18B2C9894();
  v4 = v3;
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = v2;
  v5[4] = v4;
  v6 = a1;
  sub_18B2C95A4();

  return v8;
}

uint64_t AXSettings.LiveSpeech.voiceSelection(preferringSpeechLocale:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E18);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E20);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  v3[13] = swift_task_alloc();
  v6 = sub_18B2C9424();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A50);
  v3[18] = swift_task_alloc();
  v7 = sub_18B2C9274();
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  v8 = type metadata accessor for UserVoiceConfiguration();
  v3[22] = v8;
  v3[23] = *(v8 - 8);
  v3[24] = swift_task_alloc();
  v9 = sub_18B2C96B4();
  v3[25] = v9;
  v3[26] = *(v9 - 8);
  v3[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B274458, 0, 0);
}

uint64_t sub_18B274458()
{
  v34 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  (*(v2 + 104))(v1, *MEMORY[0x1E69882A8], v3);
  v4 = sub_18B2C96A4();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = *(v0 + 40);
    v6 = *(v5 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_preferredVoices);
    v7 = swift_task_alloc();
    *(v7 + 16) = v5;
    v8 = swift_task_alloc();
    *(v8 + 16) = sub_18B27C268;
    *(v8 + 24) = v7;

    os_unfair_lock_lock(v6 + 4);
    sub_18B23602C(&v33);
    os_unfair_lock_unlock(v6 + 4);

    sub_18B2C9474();

    v16 = *(v0 + 16);
    *(v0 + 224) = v16;
    v18 = *(v16 + 16);
    *(v0 + 232) = v18;
    if (v18)
    {
      v19 = 0;
      *(v0 + 296) = *(*(v0 + 184) + 80);
      while (1)
      {
        *(v0 + 240) = v19;
        v20 = *(v0 + 224);
        if (v19 >= *(v20 + 16))
        {
          __break(1u);
          return MEMORY[0x1EEDE9B70](v16, v17);
        }

        v21 = *(v0 + 176);
        sub_18B230B70(v20 + ((*(v0 + 296) + 32) & ~*(v0 + 296)) + *(*(v0 + 184) + 72) * v19, *(v0 + 192));
        *(v0 + 300) = *(v21 + 20);
        v22 = sub_18B2C9404();
        *(v0 + 248) = v22;
        *(v0 + 256) = v23;
        if (v23)
        {
          break;
        }

        v16 = sub_18B230BD4(*(v0 + 192));
        v19 = *(v0 + 240) + 1;
        if (v19 == *(v0 + 232))
        {
          goto LABEL_11;
        }
      }

      v28 = v22;
      v29 = v23;
      *(v0 + 264) = AXSettings.LiveSpeech.resolver.getter();
      v32 = (*MEMORY[0x1E69D9E48] + MEMORY[0x1E69D9E48]);
      v30 = swift_task_alloc();
      *(v0 + 272) = v30;
      *v30 = v0;
      v30[1] = sub_18B274928;
      v31 = *(v0 + 144);

      return v32(v31, v28, v29);
    }

    else
    {
LABEL_11:

      v24 = swift_task_alloc();
      *(v0 + 280) = v24;
      *v24 = v0;
      v24[1] = sub_18B274E20;
      v25 = *(v0 + 136);
      v26 = *(v0 + 32);

      return sub_18B2756B8(v25, v26);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6DF0);
    sub_18B27BD14(&qword_1EA9B6E28, v9, type metadata accessor for AXSettings.LiveSpeech);
    sub_18B2C9614();
    sub_18B2C9434();

    v10 = sub_18B2C9044();
    v12 = v11;
    sub_18B2C9154();
    v13 = sub_18B2C9144();
    v14 = swift_allocObject();
    v14[2] = v10;
    v14[3] = v12;
    v14[4] = v13;

    sub_18B2C9544();

    v15 = swift_task_alloc();
    *(v0 + 288) = v15;
    *v15 = v0;
    v15[1] = sub_18B2750DC;
    v16 = *(v0 + 104);
    v17 = *(v0 + 56);

    return MEMORY[0x1EEDE9B70](v16, v17);
  }
}

uint64_t sub_18B274928()
{

  return MEMORY[0x1EEE6DFA0](sub_18B274A40, 0, 0);
}

uint64_t sub_18B274A40()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_18B230BD4(*(v0 + 192));

    result = sub_18B1630AC(v3, &qword_1EA9B6A50);
    goto LABEL_11;
  }

  v5 = *(v0 + 168);
  (*(v2 + 32))(v5, v3, v1);
  v6 = sub_18B2C91C4();
  (*(v2 + 8))(v5, v1);
  v7 = *(v0 + 256);
  if (v6)
  {
    v8 = *(v0 + 248);
    v9 = *(v0 + 300);
    v10 = *(v0 + 192);
    v11 = *(v0 + 112);
    v12 = *(v0 + 120);
    v13 = *(v0 + 24);

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E30);
    v15 = *(v14 + 48);
    *v13 = v8;
    *(v13 + 1) = v7;
    (*(v12 + 16))(&v13[v15], v10 + v9, v11);
    sub_18B230BD4(v10);
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    sub_18B230BD4(*(v0 + 192));

    {
LABEL_11:
      v21 = *(v0 + 240) + 1;
      if (v21 == *(v0 + 232))
      {

        v22 = swift_task_alloc();
        *(v0 + 280) = v22;
        *v22 = v0;
        v22[1] = sub_18B274E20;
        v23 = *(v0 + 136);
        v24 = *(v0 + 32);

        return sub_18B2756B8(v23, v24);
      }

      *(v0 + 240) = v21;
      v17 = *(v0 + 224);
      if (v21 >= *(v17 + 16))
      {
        __break(1u);
        return result;
      }

      v18 = *(v0 + 176);
      sub_18B230B70(v17 + ((*(v0 + 296) + 32) & ~*(v0 + 296)) + *(*(v0 + 184) + 72) * v21, *(v0 + 192));
      *(v0 + 300) = *(v18 + 20);
      v19 = sub_18B2C9404();
      *(v0 + 248) = v19;
      *(v0 + 256) = v20;
      if (v20)
      {
        break;
      }
    }

    v25 = v19;
    v26 = v20;
    *(v0 + 264) = AXSettings.LiveSpeech.resolver.getter();
    v29 = (*MEMORY[0x1E69D9E48] + MEMORY[0x1E69D9E48]);
    v27 = swift_task_alloc();
    *(v0 + 272) = v27;
    *v27 = v0;
    v27[1] = sub_18B274928;
    v28 = *(v0 + 144);

    return v29(v28, v25, v26);
  }
}

uint64_t sub_18B274E20()
{

  return MEMORY[0x1EEE6DFA0](sub_18B274F1C, 0, 0);
}

uint64_t sub_18B274F1C()
{
  v1 = sub_18B2C9404();
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[3];
  if (v2)
  {
    v7 = v1;
    v8 = v2;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E30);
    v10 = *(v9 + 48);
    *v6 = v7;
    v6[1] = v8;
    (*(v5 + 32))(v6 + v10, v3, v4);
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  }

  else
  {
    (*(v5 + 8))(v0[17], v0[14]);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E30);
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_18B2750DC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_18B275234, 0, 0);
}

uint64_t sub_18B275234()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 56))(v3, 0, 1, v1);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[3];
    sub_18B1630AC(v0[13], &qword_1EA9B63D8);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E30);
    v6 = *(*(v5 - 8) + 56);
    v7 = v4;
  }

  else
  {
    v8 = *(v0[15] + 32);
    v8(v0[16], v0[13], v0[14]);
    v9 = sub_18B2C9404();
    v11 = v0[16];
    if (v10)
    {
      v12 = v9;
      v13 = v10;
      v14 = v0[14];
      v15 = v0[3];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E30);
      v17 = *(v16 + 48);
      *v15 = v12;
      v15[1] = v13;
      v8(v15 + v17, v11, v14);
      (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
      goto LABEL_7;
    }

    v18 = v0[3];
    (*(v0[15] + 8))(v0[16], v0[14]);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E30);
    v6 = *(*(v5 - 8) + 56);
    v7 = v18;
  }

  v6(v7, 1, 1, v5);
LABEL_7:

  v19 = v0[1];

  return v19();
}

uint64_t AXSettings.LiveSpeech.resolvedVoice(forVoiceID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18B2754EC, 0, 0);
}

uint64_t sub_18B2754EC()
{
  v0[6] = AXSettings.LiveSpeech.resolver.getter();
  v6 = (*MEMORY[0x1E69D9E48] + MEMORY[0x1E69D9E48]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_18B2755A8;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return v6(v4, v2, v3);
}

uint64_t sub_18B2755A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_18B2756B8(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  v2[13] = swift_task_alloc();
  v3 = sub_18B2C90B4();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = sub_18B2C9704();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A50);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v5 = sub_18B2C9274();
  v2[24] = v5;
  v2[25] = *(v5 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B2758E8, 0, 0);
}

uint64_t sub_18B2758E8()
{
  if (qword_1ED653E68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_1ED653E70;
  v2 = OBJC_IVAR___AXSettings_liveSpeech;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[30] = v3;
  v4 = v3;
  v0[31] = AXSettings.LiveSpeech.resolver.getter();
  v9 = (*MEMORY[0x1E69D9E50] + MEMORY[0x1E69D9E50]);
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_18B275A24;
  v6 = v0[23];
  v7 = v0[12];

  return v9(v6, v7);
}

uint64_t sub_18B275A24()
{
  v1 = *(*v0 + 240);

  return MEMORY[0x1EEE6DFA0](sub_18B275B54, 0, 0);
}

uint64_t sub_18B275B54()
{
  v50 = v0;
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = *(v2 + 48);
  v0[33] = v4;
  v0[34] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_18B1630AC(v3, &qword_1EA9B6A50);
    v5 = qword_1ED653E70;
    v6 = OBJC_IVAR___AXSettings_liveSpeech;
    swift_beginAccess();
    v7 = *(v5 + v6);
    v0[35] = v7;
    v7;
    v8 = swift_task_alloc();
    v0[36] = v8;
    *v8 = v0;
    v8[1] = sub_18B2760A0;
    v9 = v0[22];

    return AXSettings.LiveSpeech.systemDefaultVoice()(v9);
  }

  else
  {
    v12 = v0[28];
    v11 = v0[29];
    v13 = v0[15];
    v48 = v0[16];
    v14 = v0[14];
    v15 = v0[12];
    (*(v2 + 32))(v11, v3, v1);
    sub_18B2C96D4();
    (*(v2 + 16))(v12, v11, v1);
    (*(v13 + 16))(v48, v15, v14);
    v16 = sub_18B2C96F4();
    v46 = sub_18B2C9B64();
    v17 = os_log_type_enabled(v16, v46);
    v18 = v0[28];
    v19 = v0[24];
    v20 = v0[25];
    v21 = v0[21];
    v23 = v0[17];
    v22 = v0[18];
    v24 = v0[15];
    v25 = v0[16];
    v47 = v0[14];
    if (v17)
    {
      v45 = v0[21];
      v26 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v49 = v43;
      *v26 = 136315650;
      *(v26 + 4) = sub_18B27ACAC(0xD00000000000002FLL, 0x800000018B2F51E0, &v49);
      *(v26 + 12) = 2080;
      log = v16;
      v42 = v22;
      v27 = sub_18B2C9194();
      v44 = v23;
      v29 = v28;
      v30 = *(v20 + 8);
      v30(v18, v19);
      v31 = sub_18B27ACAC(v27, v29, &v49);

      *(v26 + 14) = v31;
      *(v26 + 22) = 2080;
      v32 = sub_18B2C8FF4();
      v34 = v33;
      (*(v24 + 8))(v25, v47);
      v35 = sub_18B27ACAC(v32, v34, &v49);

      *(v26 + 24) = v35;
      _os_log_impl(&dword_18B15E000, log, v46, "%s - Returning voiceId=%s from systemDefaultVoice(forLocale:  %s", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x18CFF4B10](v43, -1, -1);
      MEMORY[0x18CFF4B10](v26, -1, -1);

      (*(v42 + 8))(v45, v44);
    }

    else
    {

      (*(v24 + 8))(v25, v47);
      v30 = *(v20 + 8);
      v30(v18, v19);
      (*(v22 + 8))(v21, v23);
    }

    v36 = v0[29];
    v37 = v0[24];
    v38 = v0[13];
    sub_18B2C9194();
    v39 = sub_18B2C9014();
    (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
    sub_18B2C93F4();
    v30(v36, v37);

    v40 = v0[1];

    return v40();
  }
}

uint64_t sub_18B2760A0()
{
  v1 = *(*v0 + 280);

  return MEMORY[0x1EEE6DFA0](sub_18B2761B4, 0, 0);
}

uint64_t sub_18B2761B4()
{
  v42 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  if ((*(v0 + 264))(v2, 1, v1) == 1)
  {
    sub_18B1630AC(v2, &qword_1EA9B6A50);
    sub_18B2C96D4();
    v3 = sub_18B2C96F4();
    v4 = sub_18B2C9B64();
    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v0 + 144);
    v6 = *(v0 + 152);
    v8 = *(v0 + 136);
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v41 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_18B27ACAC(0xD00000000000002FLL, 0x800000018B2F51E0, &v41);
      _os_log_impl(&dword_18B15E000, v3, v4, "%s - Returning voiceId=nil", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x18CFF4B10](v10, -1, -1);
      MEMORY[0x18CFF4B10](v9, -1, -1);
    }

    (*(v7 + 8))(v6, v8);
    v11 = *(v0 + 104);
    v12 = sub_18B2C9014();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    LOBYTE(v41) = 1;
    sub_18B2C93F4();
  }

  else
  {
    v14 = *(v0 + 208);
    v13 = *(v0 + 216);
    v15 = *(v0 + 200);
    (*(v15 + 32))(v13, v2, v1);
    sub_18B2C96D4();
    (*(v15 + 16))(v14, v13, v1);
    v16 = sub_18B2C96F4();
    v17 = sub_18B2C9B64();
    v18 = os_log_type_enabled(v16, v17);
    v20 = *(v0 + 200);
    v19 = *(v0 + 208);
    v40 = *(v0 + 192);
    v21 = *(v0 + 160);
    v23 = *(v0 + 136);
    v22 = *(v0 + 144);
    if (v18)
    {
      v36 = v17;
      v24 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v41 = v38;
      *v24 = 136315394;
      *(v24 + 4) = sub_18B27ACAC(0xD00000000000002FLL, 0x800000018B2F51E0, &v41);
      *(v24 + 12) = 2080;
      v39 = v23;
      v25 = sub_18B2C9194();
      v37 = v21;
      v27 = v26;
      v28 = *(v20 + 8);
      v28(v19, v40);
      v29 = sub_18B27ACAC(v25, v27, &v41);

      *(v24 + 14) = v29;
      _os_log_impl(&dword_18B15E000, v16, v36, "%s - Returning voiceId=%s from systemDefaultVoice()", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x18CFF4B10](v38, -1, -1);
      MEMORY[0x18CFF4B10](v24, -1, -1);

      (*(v22 + 8))(v37, v39);
    }

    else
    {

      v28 = *(v20 + 8);
      v28(v19, v40);
      (*(v22 + 8))(v21, v23);
    }

    v30 = *(v0 + 216);
    v31 = *(v0 + 192);
    v32 = *(v0 + 104);
    sub_18B2C9194();
    v33 = sub_18B2C9014();
    (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
    LOBYTE(v41) = 1;
    sub_18B2C93F4();
    v28(v30, v31);
  }

  v34 = *(v0 + 8);

  return v34();
}

uint64_t AXSettings.LiveSpeech.resolvedVoice(preferringVoiceID:proposedVoiceFilter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v7 = sub_18B2C9704();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  v8 = sub_18B2C9274();
  v6[17] = v8;
  v6[18] = *(v8 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A50);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B276884, 0, 0);
}

uint64_t sub_18B276884()
{
  v1 = v0[24];
  v2 = v0[17];
  v3 = v0[18];
  v4 = *(v3 + 56);
  v0[25] = v4;
  v0[26] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v0[27] = AXSettings.LiveSpeech.resolver.getter();
  v10 = (*MEMORY[0x1E69D9E48] + MEMORY[0x1E69D9E48]);
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_18B27696C;
  v6 = v0[23];
  v7 = v0[9];
  v8 = v0[10];

  return v10(v6, v7, v8);
}

uint64_t sub_18B27696C()
{

  return MEMORY[0x1EEE6DFA0](sub_18B276A84, 0, 0);
}

uint64_t sub_18B276A84()
{
  v1 = v0[23];
  v2 = v0[17];
  v3 = v0[18];
  v4 = *(v3 + 48);
  v0[29] = v4;
  v0[30] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_18B1630AC(v1, &qword_1EA9B6A50);
  }

  else
  {
    v5 = v0[20];
    v6 = v0[11];
    v7 = *(v3 + 32);
    v7(v5, v1, v2);
    if (v6(v5))
    {
      v8 = v0[25];
      v9 = v0[24];
      v10 = v0[20];
      v11 = v0[17];
      sub_18B1630AC(v9, &qword_1EA9B6A50);
      v7(v9, v10, v11);
      v8(v9, 0, 1, v11);
    }

    else
    {
      (*(v0[18] + 8))(v0[20], v0[17]);
    }
  }

  v12 = v0[22];
  v13 = v0[17];
  sub_18B163044(v0[24], v12, &qword_1EA9B6A50);
  LODWORD(v13) = v4(v12, 1, v13);
  sub_18B1630AC(v12, &qword_1EA9B6A50);
  if (v13 == 1)
  {
    v14 = swift_task_alloc();
    v0[31] = v14;
    *v14 = v0;
    v14[1] = sub_18B276D70;
    v15 = v0[21];

    return AXSettings.LiveSpeech.systemDefaultVoice()(v15);
  }

  else
  {
    v17 = v0[24];
    v18 = v0[8];
    swift_beginAccess();
    sub_18B163044(v17, v18, &qword_1EA9B6A50);
    sub_18B1630AC(v17, &qword_1EA9B6A50);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_18B276D70()
{

  return MEMORY[0x1EEE6DFA0](sub_18B276E6C, 0, 0);
}

uint64_t sub_18B276E6C()
{
  v27 = v0;
  sub_18B27B3D4(v0[21], v0[24]);
  sub_18B2C96D4();
  v1 = sub_18B2C96F4();
  v2 = sub_18B2C9B84();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[29];
    v4 = v0[24];
    v5 = v0[17];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136315138;
    swift_beginAccess();
    if (v3(v4, 1, v5))
    {
      v8 = 0xE500000000000000;
      v9 = 0x3E6C696E3CLL;
    }

    else
    {
      v14 = v0[18];
      v13 = v0[19];
      v15 = v0[17];
      (*(v14 + 16))(v13, v0[24], v15);
      v16 = sub_18B2C91D4();
      v8 = v17;
      (*(v14 + 8))(v13, v15);
      v9 = v16;
    }

    v19 = v0[15];
    v18 = v0[16];
    v20 = v0[14];
    v21 = sub_18B27ACAC(v9, v8, &v26);

    *(v6 + 4) = v21;
    _os_log_impl(&dword_18B15E000, v1, v2, "Preferred voice was nil. Using system default voice: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x18CFF4B10](v7, -1, -1);
    MEMORY[0x18CFF4B10](v6, -1, -1);

    (*(v19 + 8))(v18, v20);
  }

  else
  {
    v11 = v0[15];
    v10 = v0[16];
    v12 = v0[14];

    (*(v11 + 8))(v10, v12);
  }

  v22 = v0[24];
  v23 = v0[8];
  swift_beginAccess();
  sub_18B163044(v22, v23, &qword_1EA9B6A50);
  sub_18B1630AC(v22, &qword_1EA9B6A50);

  v24 = v0[1];

  return v24();
}

uint64_t AXSettings.LiveSpeech.resolver.getter()
{
  v1 = sub_18B2C9244();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18B2C9134();
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech____lazy_storage___resolver;
  if (*(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech____lazy_storage___resolver))
  {
    v10 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech____lazy_storage___resolver);
  }

  else
  {
    v25 = v5;
    v23 = v6;
    v26 = sub_18B2C9154();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63A0);
    v11 = sub_18B2C90F4();
    v12 = *(v11 - 8);
    v24 = v3;
    v13 = v12;
    v14 = *(v12 + 72);
    v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_18B2FA080;
    sub_18B2C9224();
    v17 = *MEMORY[0x1E69D9E18];
    v18 = *(v13 + 104);
    v18(v16 + v15, v17, v11);
    sub_18B2C9214();
    v18(v16 + v15 + v14, v17, v11);
    v22 = v0;
    sub_18B2C91F4();
    v18(v16 + v15 + 2 * v14, v17, v11);
    sub_18B2C9204();
    v18(v16 + v15 + 3 * v14, v17, v11);
    v18(v16 + v15 + 4 * v14, *MEMORY[0x1E69D9E28], v11);
    v18(v16 + v15 + 5 * v14, *MEMORY[0x1E69D9E08], v11);
    *v8 = v16;
    (*(v23 + 104))(v8, *MEMORY[0x1E69D9E40], v25);
    v19 = sub_18B2C9294();
    v20 = sub_18B2C9284();
    v28 = v19;
    v29 = MEMORY[0x1E69D9E88];
    v27 = v20;
    sub_18B2C9234();
    v10 = sub_18B2C9104();
    *(v22 + v9) = v10;
  }

  return v10;
}

uint64_t AXSettings.LiveSpeech.systemDefaultVoice()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E40);
  v3 = swift_task_alloc();
  v2[4] = v3;
  v4 = sub_18B2C90B4();
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A50);
  v2[9] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[10] = v5;
  *v5 = v2;
  v5[1] = sub_18B2775F4;

  return AXSettings.LiveSpeech.systemSpokenLocale()(v3);
}

uint64_t sub_18B2775F4()
{

  return MEMORY[0x1EEE6DFA0](sub_18B2776F0, 0, 0);
}

uint64_t sub_18B2776F0()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    sub_18B2C8FE4();
    if (v4(v3, 1, v1) != 1)
    {
      sub_18B1630AC(v0[4], &qword_1EA9B6E40);
    }
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
  }

  v0[11] = AXSettings.LiveSpeech.resolver.getter();
  v9 = (*MEMORY[0x1E69D9E50] + MEMORY[0x1E69D9E50]);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_18B277854;
  v7 = v0[8];
  v6 = v0[9];

  return v9(v6, v7);
}

uint64_t sub_18B277854()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);

  v5 = *(v3 + 8);
  *(v1 + 104) = v5;
  *(v1 + 112) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_18B2779DC, 0, 0);
}

uint64_t sub_18B2779DC()
{
  v1 = v0[9];
  v2 = sub_18B2C9274();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[3];
    sub_18B1630AC(v1, &qword_1EA9B6A50);
    sub_18B2C8FE4();
    v0[15] = *(v4 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech____lazy_storage___resolver);
    v11 = (*MEMORY[0x1E69D9E50] + MEMORY[0x1E69D9E50]);

    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_18B277BFC;
    v6 = v0[7];
    v7 = v0[2];

    return v11(v7, v6);
  }

  else
  {
    v9 = v0[2];
    (*(v3 + 32))(v9, v1, v2);
    (*(v3 + 56))(v9, 0, 1, v2);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_18B277BFC()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 40);
  v4 = *v0;

  v1(v2, v3);

  v5 = *(v4 + 8);

  return v5();
}

uint64_t AXSettings.LiveSpeech.systemDefaultVoice(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18B277E00, 0, 0);
}

uint64_t sub_18B277E00()
{
  v0[5] = AXSettings.LiveSpeech.resolver.getter();
  v5 = (*MEMORY[0x1E69D9E50] + MEMORY[0x1E69D9E50]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_18B277EB8;
  v2 = v0[2];
  v3 = v0[3];

  return v5(v2, v3);
}

uint64_t sub_18B277EB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t AXSettings.LiveSpeech.systemSpokenLocale()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_18B2C90B4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E40);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E48);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E50);
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B27819C, 0, 0);
}

uint64_t sub_18B27819C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  AXSettings.LiveSpeech.resolver.getter();
  sub_18B2C9124();

  (*(v4 + 16))(v2, v1, v3);
  sub_18B22EBD8(&qword_1EA9B5608, &qword_1EA9B6E50);
  sub_18B2C9AE4();
  v5 = sub_18B22EBD8(&qword_1EA9B5610, &qword_1EA9B6E48);
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_18B278308;
  v7 = v0[7];
  v8 = v0[8];

  return MEMORY[0x1EEE6D8C8](v7, v8, v5);
}

uint64_t sub_18B278308()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[9];
    v3 = v2[10];
    v5 = v2[8];

    (*(v4 + 8))(v3, v5);
    v6 = nullsub_1;
  }

  else
  {
    v6 = sub_18B278448;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_18B278448()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[8];
  if (v4 == 1)
  {
    (*(v8 + 8))(v0[10], v0[8]);
    (*(v7 + 8))(v5, v6);
    v11 = 1;
  }

  else
  {
    v16 = v0[14];
    v17 = v0[11];
    v12 = v0[6];
    v18 = v0[2];
    v13 = *(v3 + 32);
    v13(v12, v1, v2);
    (*(v8 + 8))(v9, v10);
    (*(v7 + 8))(v16, v17);
    v13(v18, v12, v2);
    v11 = 0;
  }

  (*(v0[5] + 56))(v0[2], v11, 1, v0[4]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_18B27862C(void (*a1)(void))
{
  AXSettings.LiveSpeech.resolver.getter();
  a1();
}

uint64_t (*AXSettings.LiveSpeech.resolver.modify(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = AXSettings.LiveSpeech.resolver.getter();
  return sub_18B2786E0;
}

uint64_t AXSettings.LiveSpeech._$tripleClickItems.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_tripleClickItems);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B278784@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v18 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6EC8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v18 - v8);
  v10 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___tripleClickItems_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___tripleClickItems_Storage])
  {
    v12 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___tripleClickItems_Storage];
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6530);
    v18[2] = "ckItems";
    v18[3] = v13;
    v14 = *(v7 + 48);
    *v9 = swift_getKeyPath();
    v19 = a2;
    v18[1] = a1;
    sub_18B2C95D4();
    v15 = sub_18B2C9604();
    (*(*(v15 - 8) + 56))(v9 + v14, 0, 1, v15);
    v23 = v9;
    *v6 = swift_getKeyPath();
    a2 = v19;
    sub_18B2C94D4();
    v24 = v6;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6ED0);
    v22 = sub_18B2C9504();
    sub_18B2C9674();
    sub_18B27B8D4(&qword_1EA9B6ED8, &qword_1EA9B6EE0);
    sub_18B27B8D4(&qword_1EA9B6EE8, &qword_1EA9B6EF0);
    sub_18B27BD14(&qword_1EA9B6E28, v16, type metadata accessor for AXSettings.LiveSpeech);
    v12 = sub_18B2C9454();
    *&a1[v11] = v12;
  }

  *a2 = v12;
}

void sub_18B278B4C()
{
  if (*MEMORY[0x1E69E4F48])
  {
    v0 = *MEMORY[0x1E69E4F48];
    sub_18B2C9894();

    v1 = sub_18B2C98C4();

    notify_post((v1 + 32));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18B278BD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6ED0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_18B163044(a1, &v5 - v3, &qword_1EA9B6ED0);
  return sub_18B2C9654();
}

uint64_t sub_18B278CAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_tripleClickItems);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.LiveSpeech.tripleClickItems.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_tripleClickItems);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.LiveSpeech.tripleClickItems.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_tripleClickItems);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.LiveSpeech.tripleClickItems.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_tripleClickItems;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B278FBC;
}

void sub_18B278FBC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *((*a1)[2] + (*a1)[3]);
  if (a2)
  {

    os_unfair_lock_lock(v4 + 4);
    sub_18B22F010(v5);
    os_unfair_lock_unlock(v4 + 4);

    v2[1] = v3;
    sub_18B2C9484();
  }

  else
  {

    os_unfair_lock_lock(v4 + 4);
    sub_18B22F010(v5);
    os_unfair_lock_unlock(v4 + 4);

    v2[1] = v3;
    sub_18B2C9484();
  }

  free(v2);
}

uint64_t AXSettings.LiveSpeech.settings.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_enabled);
  v58 = sub_18B27C238;
  v59 = &v60;

  os_unfair_lock_lock(v2 + 4);
  sub_18B23602C(&v64);
  os_unfair_lock_unlock(v2 + 4);
  v3 = v64;

  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
  v66 = sub_18B22EBD8(&qword_1EA9B6428, &qword_1EA9B6420);
  *&v64 = v3;
  sub_18B22C7E4(&v64, v62);
  v4 = MEMORY[0x1E69E7CC8];
  LOBYTE(v2) = swift_isUniquelyReferenced_nonNull_native();
  v61 = v4;
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v53[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v7);
  sub_18B22C8D8(*v7, 0x64656C62616E6524, 0xE800000000000000, v2, &v61);
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  v9 = v61;
  v10 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_keyboardVoiceSelections);
  v57 = v1;
  v54 = sub_18B27C250;
  v55 = &v56;

  os_unfair_lock_lock(v10 + 4);
  sub_18B22F010(&v64);
  os_unfair_lock_unlock(v10 + 4);
  v11 = v64;

  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6560);
  v66 = sub_18B22EBD8(&qword_1EA9B6568, &qword_1EA9B6560);
  *&v64 = v11;
  sub_18B22C7E4(&v64, v62);
  LOBYTE(v4) = swift_isUniquelyReferenced_nonNull_native();
  v61 = v9;
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v14);
  sub_18B22CA60(*v14, 0xD000000000000018, 0x800000018B2F4F00, v4, &v61);
  v16 = __swift_destroy_boxed_opaque_existential_1Tm(v62);
  v17 = v61;
  v18 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_preferredVoices);
  v19 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v19);

  os_unfair_lock_lock(v18 + 4);
  sub_18B23602C(&v64);
  os_unfair_lock_unlock(v18 + 4);
  v20 = v64;

  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6670);
  v66 = sub_18B22EBD8(&qword_1EA9B6678, &qword_1EA9B6670);
  *&v64 = v20;
  sub_18B22C7E4(&v64, v62);
  LOBYTE(v4) = swift_isUniquelyReferenced_nonNull_native();
  v61 = v17;
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v53[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v24 + 16))(v23);
  sub_18B22C868(*v23, 0xD000000000000010, 0x800000018B2F4F20, v4, &v61);
  v25 = __swift_destroy_boxed_opaque_existential_1Tm(v62);
  v26 = v61;
  v27 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_preferredKeyboardLanguages);
  v28 = MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v28);

  os_unfair_lock_lock(v27 + 4);
  sub_18B22F010(&v64);
  os_unfair_lock_unlock(v27 + 4);
  v29 = v64;

  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6550);
  v66 = sub_18B22EBD8(&qword_1EA9B6558, &qword_1EA9B6550);
  *&v64 = v29;
  sub_18B22C7E4(&v64, v62);
  LOBYTE(v4) = swift_isUniquelyReferenced_nonNull_native();
  v61 = v26;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v53[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v33 + 16))(v32);
  sub_18B22CA7C(*v32, 0xD00000000000001BLL, 0x800000018B2F4F40, v4, &v61);
  v34 = __swift_destroy_boxed_opaque_existential_1Tm(v62);
  v35 = v61;
  v36 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_visionOSLiveSpeechLaunchDistance);
  v37 = MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v37);

  os_unfair_lock_lock(v36 + 4);
  sub_18B22F010(&v64);
  os_unfair_lock_unlock(v36 + 4);
  v38 = v64;

  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6540);
  v66 = sub_18B22EBD8(&qword_1EA9B6548, &qword_1EA9B6540);
  *&v64 = v38;
  sub_18B22C7E4(&v64, v62);
  LOBYTE(v4) = swift_isUniquelyReferenced_nonNull_native();
  v61 = v35;
  v39 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v53[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v42 + 16))(v41);
  sub_18B22CA98(*v41, 0xD000000000000021, 0x800000018B2F4F60, v4, &v61);
  v43 = __swift_destroy_boxed_opaque_existential_1Tm(v62);
  v44 = v61;
  v45 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_tripleClickItems);
  v46 = MEMORY[0x1EEE9AC00](v43);
  MEMORY[0x1EEE9AC00](v46);

  os_unfair_lock_lock(v45 + 4);
  sub_18B22F010(&v64);
  os_unfair_lock_unlock(v45 + 4);
  v47 = v64;

  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6530);
  v66 = sub_18B22EBD8(&qword_1EA9B6538, &qword_1EA9B6530);
  *&v64 = v47;
  sub_18B22C7E4(&v64, v62);
  LOBYTE(v1) = swift_isUniquelyReferenced_nonNull_native();
  v61 = v44;
  v48 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v53[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v51 + 16))(v50);
  sub_18B22CAB4(*v50, 0xD000000000000011, 0x800000018B2F4F90, v1, &v61);
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  return v61;
}

uint64_t AXSettings.LiveSpeech.selectors.getter()
{
  v2 = MEMORY[0x1E69E7CD0];
  sub_18B232DFC(&v1, sel_liveSpeechVoiceIdentifierForKeyboardID_);
  sub_18B232DFC(&v1, sel_liveSpeechRateForKeyboardID_);
  sub_18B232DFC(&v1, sel_liveSpeechPitchForKeyboardID_);
  return v2;
}

id AXSettings.LiveSpeech.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXSettings.LiveSpeech.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___enabled_Storage] = 0;
  v2 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_enabled;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6438);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___keyboardVoiceSelections_Storage] = 0;
  v4 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_keyboardVoiceSelections;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v0[v4] = v5;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___preferredVoices_Storage] = 0;
  v6 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_preferredVoices;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *&v0[v6] = v7;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___preferredKeyboardLanguages_Storage] = 0;
  v8 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_preferredKeyboardLanguages;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *&v0[v8] = v9;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___visionOSLiveSpeechLaunchDistance_Storage] = 0;
  v10 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_visionOSLiveSpeechLaunchDistance;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *&v0[v10] = v11;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech____lazy_storage___resolver] = 0;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___tripleClickItems_Storage] = 0;
  v12 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech___lock_tripleClickItems;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *&v0[v12] = v13;
  v14 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech_encoder;
  sub_18B2C9594();
  swift_allocObject();
  *&v0[v14] = sub_18B2C9584();
  v15 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech_decoder;
  sub_18B2C9574();
  swift_allocObject();
  *&v0[v15] = sub_18B2C9564();
  sub_18B2C95B4();
  v17.receiver = v0;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_init);
}

id AXSettings.LiveSpeech.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AXFetchableStream<A>.voiceSelectionStream(for:withResolver:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E20);
  sub_18B2C9424();
  sub_18B2C9544();
}

uint64_t sub_18B27A108(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a3;
  v7 = sub_18B2C90B4();
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v5[8] = swift_task_alloc();
  v8 = sub_18B2C9704();
  v5[9] = v8;
  v5[10] = *(v8 - 8);
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A50);
  v5[12] = swift_task_alloc();
  v9 = sub_18B2C9424();
  v5[13] = v9;
  v5[14] = *(v9 - 8);
  v10 = swift_task_alloc();
  v11 = *a2;
  v5[15] = v10;
  v5[16] = v11;

  return MEMORY[0x1EEE6DFA0](sub_18B27A2C4, 0, 0);
}

uint64_t sub_18B27A2C4()
{
  if (*(v0[16] + 16))
  {
    v1 = sub_18B293E34(v0[3], v0[4]);
    if (v2)
    {
      (*(v0[14] + 16))(v0[15], *(v0[16] + 56) + *(v0[14] + 72) * v1, v0[13]);
      v3 = sub_18B2C9404();
      v0[17] = v3;
      v0[18] = v4;
      if (v4)
      {
        v5 = v3;
        v6 = v4;
        v13 = (*MEMORY[0x1E69D9E48] + MEMORY[0x1E69D9E48]);
        v7 = swift_task_alloc();
        v0[19] = v7;
        *v7 = v0;
        v7[1] = sub_18B27A480;
        v8 = v0[12];

        return v13(v8, v5, v6);
      }

      (*(v0[14] + 8))(v0[15], v0[13]);
    }
  }

  sub_18B2C9054();
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_18B27A91C;
  v11 = v0[8];
  v12 = v0[2];

  return sub_18B2756B8(v12, v11);
}

uint64_t sub_18B27A480()
{

  return MEMORY[0x1EEE6DFA0](sub_18B27A57C, 0, 0);
}

uint64_t sub_18B27A57C()
{
  v25 = v0;
  v1 = v0[12];
  v2 = sub_18B2C9274();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);

    sub_18B1630AC(v1, &qword_1EA9B6A50);

    sub_18B2C9054();
    v3 = swift_task_alloc();
    v0[20] = v3;
    *v3 = v0;
    v3[1] = sub_18B27A91C;
    v4 = v0[8];
    v5 = v0[2];

    return sub_18B2756B8(v5, v4);
  }

  else
  {
    sub_18B1630AC(v1, &qword_1EA9B6A50);
    sub_18B2C96D4();

    v7 = sub_18B2C96F4();
    v8 = sub_18B2C9B64();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[18];
    if (v9)
    {
      v11 = v0[17];
      v12 = v0[10];
      v22 = v0[9];
      v23 = v0[11];
      v13 = v0[3];
      v21 = v0[4];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136315650;
      *(v14 + 4) = sub_18B27ACAC(0xD000000000000027, 0x800000018B2F5210, &v24);
      *(v14 + 12) = 2080;
      v16 = sub_18B27ACAC(v11, v10, &v24);

      *(v14 + 14) = v16;
      *(v14 + 22) = 2080;
      *(v14 + 24) = sub_18B27ACAC(v13, v21, &v24);
      _os_log_impl(&dword_18B15E000, v7, v8, "%s - Returning voiceId=%s from match from keyboard=%s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x18CFF4B10](v15, -1, -1);
      MEMORY[0x18CFF4B10](v14, -1, -1);

      (*(v12 + 8))(v23, v22);
    }

    else
    {
      v18 = v0[10];
      v17 = v0[11];
      v19 = v0[9];

      (*(v18 + 8))(v17, v19);
    }

    (*(v0[14] + 32))(v0[2], v0[15], v0[13]);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_18B27A91C()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *v0;

  (*(v2 + 8))(v1, v3);

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_18B27AC3C()
{
  v2 = MEMORY[0x1E69E7CD0];
  sub_18B232DFC(&v1, sel_liveSpeechVoiceIdentifierForKeyboardID_);
  sub_18B232DFC(&v1, sel_liveSpeechRateForKeyboardID_);
  sub_18B232DFC(&v1, sel_liveSpeechPitchForKeyboardID_);
  return v2;
}

unint64_t sub_18B27ACAC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_18B27AD78(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_18B22EF7C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_18B27AD78(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_18B27AE84(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_18B2C9D84();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_18B27AE84(uint64_t a1, unint64_t a2)
{
  v3 = sub_18B27AED0(a1, a2);
  sub_18B27B000(&unk_1EFE6ADF0);
  return v3;
}

uint64_t sub_18B27AED0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_18B27B0EC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_18B2C9D84();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_18B2C9904();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_18B27B0EC(v10, 0);
        result = sub_18B2C9D54();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_18B27B000(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_18B27B160(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_18B27B0EC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6EF8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_18B27B160(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6EF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_18B27B2EC(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_18B22F028;

  return sub_18B27A108(a1, a2, v6, v7, v8);
}

uint64_t sub_18B27B3D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B27B468(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_18B22E8DC;

  return sub_18B27A108(a1, a2, v6, v7, v8);
}

uint64_t sub_18B27B638(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B22F028;

  return sub_18B273A0C(a1, v4, v5, v6);
}

uint64_t sub_18B27B6EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B22F028;

  return sub_18B273390(a1, v4, v5, v6);
}

uint64_t objectdestroy_130Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18B27B7E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B22F028;

  return sub_18B27287C(a1, v4, v5, v6);
}

uint64_t objectdestroy_64Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18B27B8D4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B6E60);
    sub_18B27BD14(a2, 255, type metadata accessor for AXSTripleClickOption);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18B27B974()
{
  result = qword_1EA9B6F00;
  if (!qword_1EA9B6F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B6E08);
    sub_18B27BD14(&qword_1ED653C08, 255, MEMORY[0x1E6969610]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B6F00);
  }

  return result;
}

unint64_t sub_18B27BA34()
{
  result = qword_1EA9B6F08;
  if (!qword_1EA9B6F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B6E08);
    sub_18B27BD14(&qword_1ED653C10, 255, MEMORY[0x1E6969610]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B6F08);
  }

  return result;
}

uint64_t sub_18B27BAF4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B6848);
    sub_18B27BD14(a2, 255, type metadata accessor for UserVoiceConfiguration);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18B27BB94()
{
  result = qword_1EA9B6F10;
  if (!qword_1EA9B6F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B6DF0);
    sub_18B27BD14(&qword_1EA9B5660, 255, MEMORY[0x1E6988218]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B6F10);
  }

  return result;
}

unint64_t sub_18B27BC54()
{
  result = qword_1EA9B6F18;
  if (!qword_1EA9B6F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B6DF0);
    sub_18B27BD14(&qword_1EA9B5668, 255, MEMORY[0x1E6988218]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B6F18);
  }

  return result;
}

uint64_t sub_18B27BD14(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18B27BD5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v47 - v1;
  v55 = sub_18B2C9424();
  v3 = *(v55 - 8);
  v4 = MEMORY[0x1EEE9AC00](v55);
  v54 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v47 - v6;
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 selectedSpeechVoiceIdentifiersWithLanguageSource];

  if (!v8)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A8);
  v9 = sub_18B2C9814();

  v10 = sub_18B2C9894();
  if (!*(v9 + 16))
  {

    goto LABEL_24;
  }

  v12 = sub_18B293E34(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_24:

    return MEMORY[0x1E69E7CC8];
  }

  v15 = *(*(v9 + 56) + 8 * v12);

  v16 = 0;
  v18 = v15 + 64;
  v17 = *(v15 + 64);
  v51 = v15;
  v19 = 1 << *(v15 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v17;
  v22 = (v19 + 63) >> 6;
  v52 = (v3 + 32);
  v47 = v3 + 40;
  v23 = MEMORY[0x1E69E7CC8];
  v48 = v18;
  v49 = v2;
  v50 = v3;
  while (v21)
  {
    v25 = v16;
LABEL_14:
    v26 = (*(v51 + 48) + ((v25 << 10) | (16 * __clz(__rbit64(v21)))));
    v28 = *v26;
    v27 = v26[1];
    v29 = sub_18B2C9014();
    (*(*(v29 - 8) + 56))(v2, 1, 1, v29);

    v59 = 1;
    v58 = 1;
    v57 = 1;
    v30 = v53;
    sub_18B2C93F4();
    v31 = *v52;
    (*v52)(v54, v30, v55);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v23;
    v33 = sub_18B293E34(v28, v27);
    v35 = v23[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      goto LABEL_29;
    }

    v39 = v34;
    if (v23[3] >= v38)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = v33;
        sub_18B26AC2C();
        v33 = v45;
      }
    }

    else
    {
      sub_18B268D60(v38, isUniquelyReferenced_nonNull_native);
      v33 = sub_18B293E34(v28, v27);
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_31;
      }
    }

    v21 &= v21 - 1;
    if (v39)
    {
      v24 = v33;

      v23 = v56;
      (*(v50 + 40))(v56[7] + *(v50 + 72) * v24, v54, v55);
    }

    else
    {
      v41 = v55;
      v23 = v56;
      v56[(v33 >> 6) + 8] |= 1 << v33;
      v42 = (v23[6] + 16 * v33);
      *v42 = v28;
      v42[1] = v27;
      v31((v23[7] + *(v50 + 72) * v33), v54, v41);
      v43 = v23[2];
      v37 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v37)
      {
        goto LABEL_30;
      }

      v23[2] = v44;
    }

    v16 = v25;
    v18 = v48;
    v2 = v49;
  }

  while (1)
  {
    v25 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v25 >= v22)
    {

      return v23;
    }

    v21 = *(v18 + 8 * v25);
    ++v16;
    if (v21)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_18B2C9F44();
  __break(1u);
  return result;
}

uint64_t AXSettings.Zoom._$shouldLockPassthroughDepthToHands.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings4Zoom___lock_shouldLockPassthroughDepthToHands);

  os_unfair_lock_lock(v1 + 4);
  sub_18B235DBC(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B27C370@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings4Zoom___shouldLockPassthroughDepthToHands_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings4Zoom___shouldLockPassthroughDepthToHands_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings4Zoom___shouldLockPassthroughDepthToHands_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B27CFAC(&qword_1EA9B6F58);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t AXSettings.Zoom.shouldLockPassthroughDepthToHandsStream.getter()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  sub_18B2C96C4();
}

uint64_t sub_18B27C5B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings4Zoom___lock_shouldLockPassthroughDepthToHands);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.Zoom.shouldLockPassthroughDepthToHands.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings4Zoom___lock_shouldLockPassthroughDepthToHands);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.Zoom.shouldLockPassthroughDepthToHands.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings4Zoom___lock_shouldLockPassthroughDepthToHands);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.Zoom.shouldLockPassthroughDepthToHands.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings4Zoom___lock_shouldLockPassthroughDepthToHands;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B27C8E8;
}

uint64_t sub_18B27C8E8(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.Zoom.settings.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings4Zoom___lock_shouldLockPassthroughDepthToHands);
  v10 = sub_18B27CFEC;
  v11 = &v12;

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v16);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v16;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
  v18 = sub_18B235E04();
  *&v16 = v2;
  sub_18B22C7E4(&v16, v14);
  v3 = MEMORY[0x1E69E7CC8];
  LOBYTE(v2) = swift_isUniquelyReferenced_nonNull_native();
  v13 = v3;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v6);
  sub_18B22C8D8(*v6, 0xD000000000000022, 0x800000018B2F5300, v2, &v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v13;
}

uint64_t AXSettings.Zoom.selectors.getter()
{
  v2 = MEMORY[0x1E69E7CD0];
  sub_18B232DFC(&v1, sel_magnifyingGlassShouldLockPassthroughDepthToHands);
  sub_18B232DFC(&v1, sel_setMagnifyingGlassShouldLockPassthroughDepthToHands_);
  return v2;
}

id AXSettings.Zoom.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXSettings.Zoom.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings4Zoom___shouldLockPassthroughDepthToHands_Storage] = 0;
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings4Zoom___lock_shouldLockPassthroughDepthToHands;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6438);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *&v1[v3] = v4;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings4Zoom_encoder;
  sub_18B2C9594();
  swift_allocObject();
  *&v1[v5] = sub_18B2C9584();
  v6 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings4Zoom_decoder;
  sub_18B2C9574();
  swift_allocObject();
  *&v1[v6] = sub_18B2C9564();
  sub_18B2C95B4();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id AXSettings.Zoom.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B27CE88()
{
  v2 = MEMORY[0x1E69E7CD0];
  sub_18B232DFC(&v1, sel_magnifyingGlassShouldLockPassthroughDepthToHands);
  sub_18B232DFC(&v1, sel_setMagnifyingGlassShouldLockPassthroughDepthToHands_);
  return v2;
}

uint64_t sub_18B27CFAC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AXSettings.Zoom();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AXSettings.VoiceOver.Activity.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_18B2C8FD4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AXSettings.VoiceOver.Activity.id.setter(uint64_t a1)
{
  v3 = sub_18B2C8FD4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AXSettings.VoiceOver.Activity.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for AXSettings.VoiceOver.Activity() + 20));

  return v1;
}

uint64_t AXSettings.VoiceOver.Activity.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AXSettings.VoiceOver.Activity() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AXSettings.VoiceOver.Activity.textualContexts.getter()
{
  type metadata accessor for AXSettings.VoiceOver.Activity();
}

uint64_t AXSettings.VoiceOver.Activity.textualContexts.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AXSettings.VoiceOver.Activity() + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AXSettings.VoiceOver.Activity.appIdentifiers.getter()
{
  type metadata accessor for AXSettings.VoiceOver.Activity();
}

uint64_t AXSettings.VoiceOver.Activity.appIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AXSettings.VoiceOver.Activity() + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AXSettings.VoiceOver.Activity.tableHeaders.setter(char a1)
{
  result = type metadata accessor for AXSettings.VoiceOver.Activity();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t AXSettings.VoiceOver.Activity.tableRowAndColumn.setter(char a1)
{
  result = type metadata accessor for AXSettings.VoiceOver.Activity();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t AXSettings.VoiceOver.Activity.speakEmojis.setter(char a1)
{
  result = type metadata accessor for AXSettings.VoiceOver.Activity();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t AXSettings.VoiceOver.Activity.imageDescriptions.setter(char a1)
{
  result = type metadata accessor for AXSettings.VoiceOver.Activity();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t AXSettings.VoiceOver.Activity.hints.setter(char a1)
{
  result = type metadata accessor for AXSettings.VoiceOver.Activity();
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t AXSettings.VoiceOver.Activity.containerFeedback.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for AXSettings.VoiceOver.Activity();
  v6 = v2 + *(result + 56);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t AXSettings.VoiceOver.Activity.numberFeedback.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for AXSettings.VoiceOver.Activity();
  v6 = v2 + *(result + 60);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t AXSettings.VoiceOver.Activity.typingStyle.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for AXSettings.VoiceOver.Activity();
  v6 = v2 + *(result + 64);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t AXSettings.VoiceOver.Activity.navigationStyle.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for AXSettings.VoiceOver.Activity();
  v6 = v2 + *(result + 68);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_18B27DAA0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t AXSettings.VoiceOver.Activity.voiceIdentifier.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for AXSettings.VoiceOver.Activity();
  sub_18B163044(v0 + *(v4 + 72), v3, &qword_1EA9B63D8);
  v5 = sub_18B2C9424();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_18B1630AC(v3, &qword_1EA9B63D8);
    return 0;
  }

  else
  {
    v8 = sub_18B2C9404();
    (*(v6 + 8))(v3, v5);
    return v8;
  }
}

unint64_t sub_18B27DCD4(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for AXSettings.VoiceOver.Activity();
  sub_18B163044(v1 + *(v6 + 72), v5, &qword_1EA9B63D8);
  v7 = sub_18B2C9424();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_18B1630AC(v5, &qword_1EA9B63D8);
    v9 = 0;
    LOBYTE(v10) = 1;
  }

  else
  {
    v11 = a1();
    v12 = v11;
    v10 = HIDWORD(v11) & 1;
    (*(v8 + 8))(v5, v7);
    v9 = v12;
  }

  return v9 | (v10 << 32);
}

uint64_t AXSettings.VoiceOver.Activity.speechMuted.setter(char a1)
{
  result = type metadata accessor for AXSettings.VoiceOver.Activity();
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t AXSettings.VoiceOver.Activity.soundMuted.setter(char a1)
{
  result = type metadata accessor for AXSettings.VoiceOver.Activity();
  *(v1 + *(result + 80)) = a1;
  return result;
}

uint64_t AXSettings.VoiceOver.Activity.audioDucking.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for AXSettings.VoiceOver.Activity();
  v6 = v2 + *(result + 84);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t AXSettings.VoiceOver.Activity.audioDuckingAmount.setter(uint64_t a1)
{
  result = type metadata accessor for AXSettings.VoiceOver.Activity();
  v4 = v1 + *(result + 88);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t AXSettings.VoiceOver.Activity.modifierKeys.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for AXSettings.VoiceOver.Activity();
  v6 = v2 + *(result + 92);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t AXSettings.VoiceOver.Activity.brailleStatusCellGeneral.setter(char a1)
{
  result = type metadata accessor for AXSettings.VoiceOver.Activity();
  *(v1 + *(result + 96)) = a1;
  return result;
}

uint64_t AXSettings.VoiceOver.Activity.brailleStatusCellText.setter(char a1)
{
  result = type metadata accessor for AXSettings.VoiceOver.Activity();
  *(v1 + *(result + 100)) = a1;
  return result;
}

uint64_t AXSettings.VoiceOver.Activity.brailleTable.getter()
{
  v1 = *(v0 + *(type metadata accessor for AXSettings.VoiceOver.Activity() + 104));

  return v1;
}

uint64_t AXSettings.VoiceOver.Activity.brailleTable.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AXSettings.VoiceOver.Activity() + 104));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AXSettings.VoiceOver.Activity.brailleInputTable.getter()
{
  v1 = *(v0 + *(type metadata accessor for AXSettings.VoiceOver.Activity() + 108));

  return v1;
}

uint64_t AXSettings.VoiceOver.Activity.brailleInputTable.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AXSettings.VoiceOver.Activity() + 108));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AXSettings.VoiceOver.Activity.brailleOutput.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for AXSettings.VoiceOver.Activity();
  v6 = v2 + *(result + 112);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t AXSettings.VoiceOver.Activity.brailleInput.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for AXSettings.VoiceOver.Activity();
  v6 = v2 + *(result + 116);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t AXSettings.VoiceOver.Activity.brailleAutoAdvanceDuration.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for AXSettings.VoiceOver.Activity();
  v6 = v2 + *(result + 120);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t AXSettings.VoiceOver.Activity.brailleAlerts.setter(char a1)
{
  result = type metadata accessor for AXSettings.VoiceOver.Activity();
  *(v1 + *(result + 124)) = a1;
  return result;
}

uint64_t AXSettings.VoiceOver.Activity.brailleFormatting.setter(char a1)
{
  result = type metadata accessor for AXSettings.VoiceOver.Activity();
  *(v1 + *(result + 128)) = a1;
  return result;
}

uint64_t AXSettings.VoiceOver.Activity.brailleStartAutoActivateOnTextFields.setter(char a1)
{
  result = type metadata accessor for AXSettings.VoiceOver.Activity();
  *(v1 + *(result + 132)) = a1;
  return result;
}

uint64_t static AXSettings.VoiceOver.Activity.typeKey.getter()
{
  swift_beginAccess();
  v0 = qword_1EA9B6F60;

  return v0;
}

uint64_t static AXSettings.VoiceOver.Activity.typeKey.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_1EA9B6F60 = a1;
  off_1EA9B6F68 = a2;
}

uint64_t sub_18B27E998(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EA9B6F60 = v2;
  off_1EA9B6F68 = v1;
}

uint64_t sub_18B27E9FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6FF8);
  sub_18B2C92E4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18B2F88F0;
  result = sub_18B2C92D4();
  qword_1EA9B5598 = v0;
  return result;
}

uint64_t sub_18B27EAD0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7000);
  inited = swift_initStackObject();
  v3 = inited;
  *(inited + 16) = xmmword_18B2FA460;
  *(inited + 32) = 0x64496563696F76;
  *(inited + 40) = 0xE700000000000000;
  if (*(a1 + 16))
  {

    v4 = sub_18B293E34(0x6564496563696F76, 0xEF7265696669746ELL);
    if (v5)
    {
      sub_18B26F3E8(*(a1 + 56) + 40 * v4, v3 + 48);
    }

    else
    {
      *(v3 + 80) = 0;
      *(v3 + 48) = 0u;
      *(v3 + 64) = 0u;
    }
  }

  else
  {
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  *(v3 + 88) = 1702125938;
  *(v3 + 96) = 0xE400000000000000;
  if (*(a1 + 16) && (v6 = sub_18B293E34(0x6152686365657073, 0xEA00000000006574), (v7 & 1) != 0))
  {
    sub_18B26F3E8(*(a1 + 56) + 40 * v6, v3 + 104);
  }

  else
  {
    *(v3 + 136) = 0;
    *(v3 + 120) = 0u;
    *(v3 + 104) = 0u;
  }

  *(v3 + 144) = 0x656D756C6F76;
  *(v3 + 152) = 0xE600000000000000;
  if (*(a1 + 16) && (v8 = sub_18B293E34(0x656D756C6F76, 0xE600000000000000), (v9 & 1) != 0))
  {
    sub_18B26F3E8(*(a1 + 56) + 40 * v8, v3 + 160);
  }

  else
  {
    *(v3 + 192) = 0;
    *(v3 + 160) = 0u;
    *(v3 + 176) = 0u;
  }

  sub_18B2B5590(v3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7008);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7010);
  sub_18B2847FC();
  sub_18B2C9D14();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = a1;
  sub_18B26A14C(v12, 0x6C65536563696F76, 0xEE006E6F69746365, isUniquelyReferenced_nonNull_native);
  return v13;
}

uint64_t static AXSettings.VoiceOver.Activity.migrations.getter()
{
  if (qword_1EA9B5590 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static AXSettings.VoiceOver.Activity.migrations.setter(uint64_t a1)
{
  if (qword_1EA9B5590 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EA9B5598 = a1;
}

uint64_t (*static AXSettings.VoiceOver.Activity.migrations.modify())()
{
  if (qword_1EA9B5590 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_18B27EEA8@<X0>(void *a1@<X8>)
{
  if (qword_1EA9B5590 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EA9B5598;
}

uint64_t sub_18B27EF28(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EA9B5590;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EA9B5598 = v1;
}

unint64_t sub_18B27EFB4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x436C617574786574;
      break;
    case 3:
      result = 0x746E656449707061;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x616548656C626174;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x6F6D456B61657073;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x73746E6968;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x65467265626D756ELL;
      break;
    case 12:
      result = 0x7453676E69707974;
      break;
    case 13:
      result = 0x697461676976616ELL;
      break;
    case 14:
      result = 0x6C65536563696F76;
      break;
    case 15:
      result = 0x754D686365657073;
      break;
    case 16:
      result = 0x74754D646E756F73;
      break;
    case 17:
      result = 0x6375446F69647561;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0x7265696669646F6DLL;
      break;
    case 20:
      result = 0xD000000000000018;
      break;
    case 21:
      result = 0xD000000000000015;
      break;
    case 22:
      result = 0x54656C6C69617262;
      break;
    case 23:
      result = 0xD000000000000011;
      break;
    case 24:
      result = 0x4F656C6C69617262;
      break;
    case 25:
      result = 0x49656C6C69617262;
      break;
    case 26:
      result = 0xD00000000000001ALL;
      break;
    case 27:
      result = 0x41656C6C69617262;
      break;
    case 28:
      result = 0xD000000000000011;
      break;
    case 29:
      result = 0xD000000000000024;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18B27F354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18B283E4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18B27F388(uint64_t a1)
{
  v2 = sub_18B2832A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18B27F3C4(uint64_t a1)
{
  v2 = sub_18B2832A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AXSettings.VoiceOver.Activity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6F70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18B2832A4();
  sub_18B2C9FD4();
  LOBYTE(v30) = 0;
  sub_18B2C8FD4();
  sub_18B2847B4(&qword_1ED653C38, MEMORY[0x1E69695A8]);
  sub_18B2C9EF4();
  if (!v2)
  {
    v9 = type metadata accessor for AXSettings.VoiceOver.Activity();
    LOBYTE(v30) = 1;
    sub_18B2C9ED4();
    v30 = *(v3 + v9[6]);
    v32 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6F78);
    sub_18B28334C(&qword_1EA9B55D8, &qword_1EA9B54F8);
    sub_18B2C9EC4();
    v30 = *(v3 + v9[7]);
    v32 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6F80);
    sub_18B2833E8(&qword_1EA9B55F0);
    sub_18B2C9EC4();
    LOBYTE(v30) = 4;
    sub_18B2C9EC4();
    LOBYTE(v30) = 5;
    sub_18B2C9EA4();
    LOBYTE(v30) = 6;
    sub_18B2C9EA4();
    LOBYTE(v30) = 7;
    sub_18B2C9EA4();
    LOBYTE(v30) = 8;
    sub_18B2C9EA4();
    LOBYTE(v30) = 9;
    sub_18B2C9EA4();
    v10 = (v3 + v9[14]);
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    v30 = v11;
    v31 = v10;
    v32 = 10;
    type metadata accessor for AXSVoiceOverFeedbackOption(0);
    sub_18B2847B4(&qword_1EA9B6D88, type metadata accessor for AXSVoiceOverFeedbackOption);
    sub_18B2C9EC4();
    v12 = (v3 + v9[15]);
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 8);
    v30 = v13;
    v31 = v12;
    v32 = 11;
    type metadata accessor for AXSVoiceOverNumberFeedback(0);
    sub_18B2847B4(&qword_1EA9B6F88, type metadata accessor for AXSVoiceOverNumberFeedback);
    sub_18B2C9EC4();
    v14 = (v3 + v9[16]);
    v15 = *v14;
    LOBYTE(v14) = *(v14 + 8);
    v30 = v15;
    v31 = v14;
    v32 = 12;
    type metadata accessor for AXSVoiceOverTouchTypingMode(0);
    sub_18B2847B4(&qword_1EA9B54C8, type metadata accessor for AXSVoiceOverTouchTypingMode);
    sub_18B2C9EC4();
    v16 = (v3 + v9[17]);
    v17 = *v16;
    LOBYTE(v16) = *(v16 + 8);
    v30 = v17;
    v31 = v16;
    v32 = 13;
    type metadata accessor for AXSVoiceOverNavigationStyle(0);
    sub_18B2847B4(&qword_1EA9B6F90, type metadata accessor for AXSVoiceOverNavigationStyle);
    sub_18B2C9EC4();
    LOBYTE(v30) = 14;
    sub_18B2C9424();
    sub_18B2847B4(&qword_1EA9B5668, MEMORY[0x1E6988218]);
    sub_18B2C9EC4();
    LOBYTE(v30) = 15;
    sub_18B2C9EA4();
    LOBYTE(v30) = 16;
    sub_18B2C9EA4();
    v18 = (v3 + v9[21]);
    v19 = *v18;
    LOBYTE(v18) = *(v18 + 8);
    v30 = v19;
    v31 = v18;
    v32 = 17;
    type metadata accessor for AXSVoiceOverMediaDuckingMode(0);
    sub_18B2847B4(&qword_1EA9B6F98, type metadata accessor for AXSVoiceOverMediaDuckingMode);
    sub_18B2C9EC4();
    v20 = *(v3 + v9[22] + 4);
    LOBYTE(v30) = 18;
    v32 = v20;
    sub_18B2C9EB4();
    v21 = (v3 + v9[23]);
    v22 = *v21;
    LOBYTE(v21) = *(v21 + 8);
    v30 = v22;
    v31 = v21;
    v32 = 19;
    type metadata accessor for AXSVoiceOverKeyboardModifierChoice(0);
    sub_18B2847B4(&qword_1EA9B6FA0, type metadata accessor for AXSVoiceOverKeyboardModifierChoice);
    sub_18B2C9EC4();
    LOBYTE(v30) = 20;
    sub_18B2C9EA4();
    LOBYTE(v30) = 21;
    sub_18B2C9EA4();
    LOBYTE(v30) = 22;
    sub_18B2C9E94();
    LOBYTE(v30) = 23;
    sub_18B2C9E94();
    v23 = (v3 + v9[28]);
    v24 = *v23;
    LOBYTE(v23) = *(v23 + 8);
    v30 = v24;
    v31 = v23;
    v32 = 24;
    type metadata accessor for AXSVoiceOverBrailleMode(0);
    sub_18B2847B4(&qword_1EA9B6D70, type metadata accessor for AXSVoiceOverBrailleMode);
    sub_18B2C9EC4();
    v25 = (v3 + v9[29]);
    v26 = *v25;
    LOBYTE(v25) = *(v25 + 8);
    v30 = v26;
    v31 = v25;
    v32 = 25;
    sub_18B2C9EC4();
    v27 = (v3 + v9[30]);
    v28 = *v27;
    LOBYTE(v27) = *(v27 + 8);
    v30 = v28;
    v31 = v27;
    v32 = 26;
    sub_18B2832F8();
    sub_18B2C9EC4();
    LOBYTE(v30) = 27;
    sub_18B2C9EA4();
    LOBYTE(v30) = 28;
    sub_18B2C9EA4();
    LOBYTE(v30) = 29;
    sub_18B2C9EA4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AXSettings.VoiceOver.Activity.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18B2C9424();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = &v42 - v7;
  v8 = sub_18B2C8FD4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B74F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v42 - v13;
  sub_18B2847B4(&qword_1EA9B5680, MEMORY[0x1E69695A8]);
  sub_18B2C9844();
  v15 = type metadata accessor for AXSettings.VoiceOver.Activity();
  sub_18B2C98D4();
  v16 = *(v1 + v15[6]);
  sub_18B2C9F84();
  if (v16)
  {
    sub_18B282388(a1, v16);
  }

  v17 = *(v1 + v15[7]);
  sub_18B2C9F84();
  if (v17)
  {
    sub_18B28222C(a1, v17);
  }

  sub_18B163044(v1 + v15[8], v14, &unk_1EA9B74F0);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_18B2C9F84();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_18B2C9F84();
    sub_18B2C9844();
    (*(v9 + 8))(v11, v8);
  }

  v18 = v44;
  if (*(v1 + v15[9]) != 2)
  {
    sub_18B2C9F84();
  }

  sub_18B2C9F84();
  if (*(v1 + v15[10]) != 2)
  {
    sub_18B2C9F84();
  }

  sub_18B2C9F84();
  if (*(v1 + v15[11]) != 2)
  {
    sub_18B2C9F84();
  }

  sub_18B2C9F84();
  if (*(v1 + v15[12]) != 2)
  {
    sub_18B2C9F84();
  }

  sub_18B2C9F84();
  if (*(v1 + v15[13]) != 2)
  {
    sub_18B2C9F84();
  }

  sub_18B2C9F84();
  v19 = (v1 + v15[14]);
  if (*(v19 + 8) == 1)
  {
    sub_18B2C9F84();
  }

  else
  {
    v20 = *v19;
    sub_18B2C9F84();
    MEMORY[0x18CFF1080](v20);
  }

  v21 = (v1 + v15[15]);
  if (*(v21 + 8) == 1)
  {
    sub_18B2C9F84();
  }

  else
  {
    v22 = *v21;
    sub_18B2C9F84();
    MEMORY[0x18CFF1080](v22);
  }

  v23 = (v1 + v15[16]);
  if (*(v23 + 8) == 1)
  {
    sub_18B2C9F84();
  }

  else
  {
    v24 = *v23;
    sub_18B2C9F84();
    MEMORY[0x18CFF1080](v24);
  }

  v25 = (v1 + v15[17]);
  if (*(v25 + 8) == 1)
  {
    sub_18B2C9F84();
  }

  else
  {
    v26 = *v25;
    sub_18B2C9F84();
    MEMORY[0x18CFF1080](v26);
  }

  v27 = v45;
  v28 = v43;
  sub_18B163044(v2 + v15[18], v43, &qword_1EA9B63D8);
  if ((*(v18 + 48))(v28, 1, v27) == 1)
  {
    sub_18B2C9F84();
  }

  else
  {
    v29 = v42;
    (*(v18 + 32))(v42, v28, v27);
    sub_18B2C9F84();
    sub_18B2847B4(&qword_1EA9B66F0, MEMORY[0x1E6988218]);
    sub_18B2C9844();
    (*(v18 + 8))(v29, v27);
  }

  if (*(v2 + v15[19]) != 2)
  {
    sub_18B2C9F84();
  }

  sub_18B2C9F84();
  if (*(v2 + v15[20]) != 2)
  {
    sub_18B2C9F84();
  }

  sub_18B2C9F84();
  v30 = (v2 + v15[21]);
  if (*(v30 + 8) == 1)
  {
    sub_18B2C9F84();
  }

  else
  {
    v31 = *v30;
    sub_18B2C9F84();
    MEMORY[0x18CFF1080](v31);
  }

  if (*(v2 + v15[22] + 4) == 1)
  {
    sub_18B2C9F84();
  }

  else
  {
    sub_18B2C9F84();
    sub_18B2C9F94();
  }

  v32 = (v2 + v15[23]);
  if (*(v32 + 8) == 1)
  {
    sub_18B2C9F84();
  }

  else
  {
    v33 = *v32;
    sub_18B2C9F84();
    MEMORY[0x18CFF1080](v33);
  }

  if (*(v2 + v15[24]) != 2)
  {
    sub_18B2C9F84();
  }

  sub_18B2C9F84();
  if (*(v2 + v15[25]) != 2)
  {
    sub_18B2C9F84();
  }

  sub_18B2C9F84();
  if (*(v2 + v15[26] + 8))
  {
    sub_18B2C9F84();
    sub_18B2C98D4();
  }

  else
  {
    sub_18B2C9F84();
  }

  if (*(v2 + v15[27] + 8))
  {
    sub_18B2C9F84();
    sub_18B2C98D4();
  }

  else
  {
    sub_18B2C9F84();
  }

  v34 = (v2 + v15[28]);
  if (*(v34 + 8) == 1)
  {
    sub_18B2C9F84();
  }

  else
  {
    v35 = *v34;
    sub_18B2C9F84();
    MEMORY[0x18CFF1080](v35);
  }

  v36 = (v2 + v15[29]);
  if (*(v36 + 8) == 1)
  {
    sub_18B2C9F84();
  }

  else
  {
    v37 = *v36;
    sub_18B2C9F84();
    MEMORY[0x18CFF1080](v37);
  }

  v38 = (v2 + v15[30]);
  if (*(v38 + 8) == 1)
  {
    sub_18B2C9F84();
  }

  else
  {
    v39 = *v38;
    sub_18B2C9F84();
    if ((v39 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    MEMORY[0x18CFF10B0](v40);
  }

  if (*(v2 + v15[31]) != 2)
  {
    sub_18B2C9F84();
  }

  sub_18B2C9F84();
  if (*(v2 + v15[32]) != 2)
  {
    sub_18B2C9F84();
  }

  sub_18B2C9F84();
  if (*(v2 + v15[33]) != 2)
  {
    sub_18B2C9F84();
  }

  return sub_18B2C9F84();
}

uint64_t AXSettings.VoiceOver.Activity.hashValue.getter()
{
  sub_18B2C9F64();
  AXSettings.VoiceOver.Activity.hash(into:)(v1);
  return sub_18B2C9FB4();
}

uint64_t AXSettings.VoiceOver.Activity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v65 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B74F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v65 - v7;
  v9 = sub_18B2C8FD4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6FA8);
  v67 = *(v13 - 8);
  v68 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v65 - v14;
  v16 = type metadata accessor for AXSettings.VoiceOver.Activity();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B2C8FC4();
  v75 = *(v16 + 32);
  v76 = v10;
  (*(v10 + 56))(&v18[v75], 1, 1, v9);
  v69 = v16;
  v19 = *(v16 + 72);
  v20 = sub_18B2C9424();
  v21 = *(*(v20 - 8) + 56);
  v72 = v19;
  v74 = v18;
  v22 = &v18[v19];
  v23 = v20;
  v21(v22, 1, 1, v20);
  v24 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_18B2832A4();
  v70 = v15;
  v25 = v71;
  sub_18B2C9FC4();
  if (v25)
  {
    v26 = v74;
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    (*(v76 + 8))(v26, v9);

    sub_18B1630AC(&v26[v75], &unk_1EA9B74F0);
    sub_18B1630AC(&v26[v72], &qword_1EA9B63D8);
  }

  else
  {
    v71 = v8;
    v65[2] = v23;
    LOBYTE(v77) = 0;
    sub_18B2847B4(&qword_1ED653C30, MEMORY[0x1E69695A8]);
    sub_18B2C9E84();
    v27 = v74;
    (*(v76 + 40))(v74, v12, v9);
    LOBYTE(v77) = 1;
    v28 = sub_18B2C9E64();
    v29 = v69;
    v30 = &v27[v69[5]];
    *v30 = v28;
    v30[1] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6F78);
    v79 = 2;
    sub_18B28334C(&qword_1EA9B55D0, &qword_1EA9B54E8);
    sub_18B2C9E54();
    v32 = v29[6];
    v65[1] = v77;
    *&v27[v32] = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6F80);
    v79 = 3;
    sub_18B2833E8(&qword_1EA9B55E8);
    sub_18B2C9E54();
    v33 = v29[7];
    v65[0] = v77;
    *&v27[v33] = v77;
    LOBYTE(v77) = 4;
    v34 = v71;
    sub_18B2C9E54();
    sub_18B27DAA0(v34, &v27[v75], &unk_1EA9B74F0);
    LOBYTE(v77) = 5;
    v27[v29[9]] = sub_18B2C9E34();
    LOBYTE(v77) = 6;
    v27[v29[10]] = sub_18B2C9E34();
    LOBYTE(v77) = 7;
    v27[v69[11]] = sub_18B2C9E34();
    LOBYTE(v77) = 8;
    v27[v69[12]] = sub_18B2C9E34();
    LOBYTE(v77) = 9;
    v74[v69[13]] = sub_18B2C9E34();
    type metadata accessor for AXSVoiceOverFeedbackOption(0);
    v79 = 10;
    sub_18B2847B4(&qword_1EA9B5528, type metadata accessor for AXSVoiceOverFeedbackOption);
    sub_18B2C9E54();
    v35 = &v74[v69[14]];
    v36 = v78;
    *v35 = v77;
    v35[8] = v36;
    type metadata accessor for AXSVoiceOverNumberFeedback(0);
    v79 = 11;
    sub_18B2847B4(&qword_1EA9B5510, type metadata accessor for AXSVoiceOverNumberFeedback);
    sub_18B2C9E54();
    v37 = &v74[v69[15]];
    v38 = v78;
    *v37 = v77;
    v37[8] = v38;
    type metadata accessor for AXSVoiceOverTouchTypingMode(0);
    v79 = 12;
    sub_18B2847B4(&qword_1EA9B54C0, type metadata accessor for AXSVoiceOverTouchTypingMode);
    sub_18B2C9E54();
    v39 = &v74[v69[16]];
    v40 = v78;
    *v39 = v77;
    v39[8] = v40;
    type metadata accessor for AXSVoiceOverNavigationStyle(0);
    v79 = 13;
    sub_18B2847B4(&qword_1EA9B54E0, type metadata accessor for AXSVoiceOverNavigationStyle);
    sub_18B2C9E54();
    v41 = &v74[v69[17]];
    v42 = v78;
    *v41 = v77;
    v41[8] = v42;
    LOBYTE(v77) = 14;
    sub_18B2847B4(&qword_1EA9B5660, MEMORY[0x1E6988218]);
    sub_18B2C9E54();
    sub_18B27DAA0(v5, &v74[v72], &qword_1EA9B63D8);
    LOBYTE(v77) = 15;
    v74[v69[19]] = sub_18B2C9E34();
    LOBYTE(v77) = 16;
    v74[v69[20]] = sub_18B2C9E34();
    type metadata accessor for AXSVoiceOverMediaDuckingMode(0);
    v79 = 17;
    sub_18B2847B4(&qword_1EA9B54A8, type metadata accessor for AXSVoiceOverMediaDuckingMode);
    sub_18B2C9E54();
    v43 = &v74[v69[21]];
    v44 = v78;
    *v43 = v77;
    v43[8] = v44;
    LOBYTE(v77) = 18;
    v45 = sub_18B2C9E44();
    v46 = &v74[v69[22]];
    *v46 = v45;
    v46[4] = BYTE4(v45) & 1;
    type metadata accessor for AXSVoiceOverKeyboardModifierChoice(0);
    v79 = 19;
    sub_18B2847B4(&qword_1EA9B5490, type metadata accessor for AXSVoiceOverKeyboardModifierChoice);
    sub_18B2C9E54();
    v47 = &v74[v69[23]];
    v48 = v78;
    *v47 = v77;
    v47[8] = v48;
    LOBYTE(v77) = 20;
    v74[v69[24]] = sub_18B2C9E34();
    LOBYTE(v77) = 21;
    v74[v69[25]] = sub_18B2C9E34();
    LOBYTE(v77) = 22;
    v49 = sub_18B2C9E24();
    v50 = &v74[v69[26]];
    *v50 = v49;
    v50[1] = v51;
    LOBYTE(v77) = 23;
    v52 = sub_18B2C9E24();
    v53 = &v74[v69[27]];
    *v53 = v52;
    v53[1] = v54;
    type metadata accessor for AXSVoiceOverBrailleMode(0);
    v79 = 24;
    sub_18B2847B4(&qword_1EA9B5538, type metadata accessor for AXSVoiceOverBrailleMode);
    sub_18B2C9E54();
    v55 = &v74[v69[28]];
    v56 = v78;
    *v55 = v77;
    v55[8] = v56;
    v79 = 25;
    sub_18B2C9E54();
    v57 = &v74[v69[29]];
    v58 = v78;
    *v57 = v77;
    v57[8] = v58;
    v79 = 26;
    sub_18B283454();
    sub_18B2C9E54();
    v59 = &v74[v69[30]];
    v60 = v78;
    *v59 = v77;
    v59[8] = v60;
    LOBYTE(v77) = 27;
    v74[v69[31]] = sub_18B2C9E34();
    LOBYTE(v77) = 28;
    v74[v69[32]] = sub_18B2C9E34();
    LOBYTE(v77) = 29;
    v61 = sub_18B2C9E34();
    v62 = v69[33];
    (*(v67 + 8))(v70, v68);
    v63 = v74;
    v74[v62] = v61;
    sub_18B2834A8(v63, v66);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    return sub_18B28350C(v63);
  }
}