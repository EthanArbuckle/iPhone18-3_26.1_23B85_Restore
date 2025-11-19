@interface AXSSEventManager
- (AXSSEventManager)initWithActionManager:(id)a3;
- (AXSSEventManager)initWithActionManager:(id)a3 commandMap:(id)a4;
- (AXSSKeyFilterDelegate)filterDelegate;
- (BOOL)_handleCommand:(id)a3 event:(id)a4;
- (BOOL)_handleEvent:(id)a3 forCaptureOnly:(BOOL)a4;
- (BOOL)_performDownActionForCommand:(id)a3 info:(id)a4;
- (BOOL)processKeyboardEvent:(id)a3;
- (id)_tabbedKeyChordForKeyChord:(id)a3;
- (void)_handleTabComboEvent:(id)a3;
- (void)_handleTabEvent:(id)a3;
- (void)_handleTabRepeatOrUpWithCommand:(id)a3;
@end

@implementation AXSSEventManager

- (AXSSEventManager)initWithActionManager:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(AXSSEventManager *)self initWithActionManager:v4 commandMap:v5];

  return v6;
}

- (AXSSEventManager)initWithActionManager:(id)a3 commandMap:(id)a4
{
  v4 = MEMORY[0x1EEE9AC00](self);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  v405[71] = *MEMORY[0x1E69E9840];
  v172 = v7;
  v171 = v6;
  v403.receiver = v9;
  v403.super_class = AXSSEventManager;
  val = [(AXSSEventManager *)&v403 init];
  if (val)
  {
    objc_storeStrong(&val->_actionManager, v8);
    objc_storeStrong(&val->_commandMap, v6);
    objc_initWeak(&v402, val);
    v404[0] = @"GoToNextElement";
    v399[0] = MEMORY[0x1E69E9820];
    v399[1] = 3221225472;
    v399[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke;
    v399[3] = &unk_1E8135B98;
    objc_copyWeak(&v401, &v402);
    v10 = v172;
    v400 = v10;
    v170 = [AXSSKeyboardCommandInfo infoWithHandler:v399];
    v405[0] = v170;
    v404[1] = @"GoToPreviousElement";
    v396[0] = MEMORY[0x1E69E9820];
    v396[1] = 3221225472;
    v396[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_2;
    v396[3] = &unk_1E8135B98;
    objc_copyWeak(&v398, &v402);
    v11 = v10;
    v397 = v11;
    v169 = [AXSSKeyboardCommandInfo infoWithHandler:v396];
    v405[1] = v169;
    v404[2] = @"EnterContainer";
    v393[0] = MEMORY[0x1E69E9820];
    v393[1] = 3221225472;
    v393[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_3;
    v393[3] = &unk_1E8135B98;
    objc_copyWeak(&v395, &v402);
    v12 = v11;
    v394 = v12;
    v168 = [AXSSKeyboardCommandInfo infoWithHandler:v393];
    v405[2] = v168;
    v404[3] = @"ExitContainer";
    v390[0] = MEMORY[0x1E69E9820];
    v390[1] = 3221225472;
    v390[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_4;
    v390[3] = &unk_1E8135B98;
    objc_copyWeak(&v392, &v402);
    v13 = v12;
    v391 = v13;
    v167 = [AXSSKeyboardCommandInfo infoWithHandler:v390];
    v405[3] = v167;
    v404[4] = @"GoToNextSection";
    v387[0] = MEMORY[0x1E69E9820];
    v387[1] = 3221225472;
    v387[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_5;
    v387[3] = &unk_1E8135B98;
    objc_copyWeak(&v389, &v402);
    v14 = v13;
    v388 = v14;
    v166 = [AXSSKeyboardCommandInfo infoWithHandler:v387];
    v405[4] = v166;
    v404[5] = @"GoToPreviousSection";
    v384[0] = MEMORY[0x1E69E9820];
    v384[1] = 3221225472;
    v384[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_6;
    v384[3] = &unk_1E8135B98;
    objc_copyWeak(&v386, &v402);
    v15 = v14;
    v385 = v15;
    v16 = [AXSSKeyboardCommandInfo infoWithHandler:v384];
    v405[5] = v16;
    v404[6] = @"PressAndLift";
    v382[0] = MEMORY[0x1E69E9820];
    v382[1] = 3221225472;
    v382[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_7;
    v382[3] = &unk_1E8134870;
    v383 = v15;
    v380[0] = MEMORY[0x1E69E9820];
    v380[1] = 3221225472;
    v380[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_8;
    v380[3] = &unk_1E8134870;
    v17 = v383;
    v381 = v17;
    [AXSSKeyboardCommandInfo infoWithDownHandler:v382 upHandler:v380];
    v165 = v164 = v16;
    v405[6] = v165;
    v404[7] = @"ActivateSiri";
    v377[0] = MEMORY[0x1E69E9820];
    v377[1] = 3221225472;
    v377[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_9;
    v377[3] = &unk_1E8135B98;
    objc_copyWeak(&v379, &v402);
    v18 = v17;
    v378 = v18;
    v163 = [AXSSKeyboardCommandInfo infoWithHandler:v377];
    v405[7] = v163;
    v404[8] = @"MoveLeft";
    v374[0] = MEMORY[0x1E69E9820];
    v374[1] = 3221225472;
    v374[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_10;
    v374[3] = &unk_1E8135B98;
    objc_copyWeak(&v376, &v402);
    v19 = v18;
    v375 = v19;
    v162 = [AXSSKeyboardCommandInfo infoWithHandler:v374];
    v405[8] = v162;
    v404[9] = @"GoToFirstElement";
    v371[0] = MEMORY[0x1E69E9820];
    v371[1] = 3221225472;
    v371[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_11;
    v371[3] = &unk_1E8135B98;
    objc_copyWeak(&v373, &v402);
    v20 = v19;
    v372 = v20;
    v21 = [AXSSKeyboardCommandInfo infoWithHandler:v371];
    v405[9] = v21;
    v404[10] = @"SwipeLeft";
    v369[0] = MEMORY[0x1E69E9820];
    v369[1] = 3221225472;
    v369[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_12;
    v369[3] = &unk_1E8134870;
    v370 = v20;
    v367[0] = MEMORY[0x1E69E9820];
    v367[1] = 3221225472;
    v367[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_13;
    v367[3] = &unk_1E8134870;
    v22 = v370;
    v368 = v22;
    v23 = [AXSSKeyboardCommandInfo infoWithDownHandler:v369 upHandler:v367];
    v405[10] = v23;
    v404[11] = @"TwoFingerSwipeLeft";
    v365[0] = MEMORY[0x1E69E9820];
    v365[1] = 3221225472;
    v365[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_14;
    v365[3] = &unk_1E8134870;
    v366 = v22;
    v363[0] = MEMORY[0x1E69E9820];
    v363[1] = 3221225472;
    v363[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_15;
    v363[3] = &unk_1E8134870;
    v24 = v366;
    v364 = v24;
    v25 = [AXSSKeyboardCommandInfo infoWithDownHandler:v365 upHandler:v363];
    v405[11] = v25;
    v404[12] = @"RotateLeft";
    v361[0] = MEMORY[0x1E69E9820];
    v361[1] = 3221225472;
    v361[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_16;
    v361[3] = &unk_1E8134870;
    v362 = v24;
    v359[0] = MEMORY[0x1E69E9820];
    v359[1] = 3221225472;
    v359[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_17;
    v359[3] = &unk_1E8134870;
    v26 = v362;
    v360 = v26;
    [AXSSKeyboardCommandInfo infoWithDownHandler:v361 upHandler:v359];
    v161 = v160 = v25;
    v158 = v23;
    v156 = v21;
    v405[12] = v161;
    v404[13] = @"MoveRight";
    v356[0] = MEMORY[0x1E69E9820];
    v356[1] = 3221225472;
    v356[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_18;
    v356[3] = &unk_1E8135B98;
    objc_copyWeak(&v358, &v402);
    v27 = v26;
    v357 = v27;
    v159 = [AXSSKeyboardCommandInfo infoWithHandler:v356];
    v405[13] = v159;
    v404[14] = @"GoToLastElement";
    v353[0] = MEMORY[0x1E69E9820];
    v353[1] = 3221225472;
    v353[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_19;
    v353[3] = &unk_1E8135B98;
    objc_copyWeak(&v355, &v402);
    v28 = v27;
    v354 = v28;
    v29 = [AXSSKeyboardCommandInfo infoWithHandler:v353];
    v405[14] = v29;
    v404[15] = @"SwipeRight";
    v351[0] = MEMORY[0x1E69E9820];
    v351[1] = 3221225472;
    v351[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_20;
    v351[3] = &unk_1E8134870;
    v352 = v28;
    v349[0] = MEMORY[0x1E69E9820];
    v349[1] = 3221225472;
    v349[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_21;
    v349[3] = &unk_1E8134870;
    v30 = v352;
    v350 = v30;
    v31 = [AXSSKeyboardCommandInfo infoWithDownHandler:v351 upHandler:v349];
    v405[15] = v31;
    v404[16] = @"TwoFingerSwipeRight";
    v347[0] = MEMORY[0x1E69E9820];
    v347[1] = 3221225472;
    v347[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_22;
    v347[3] = &unk_1E8134870;
    v348 = v30;
    v345[0] = MEMORY[0x1E69E9820];
    v345[1] = 3221225472;
    v345[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_23;
    v345[3] = &unk_1E8134870;
    v32 = v348;
    v346 = v32;
    v33 = [AXSSKeyboardCommandInfo infoWithDownHandler:v347 upHandler:v345];
    v405[16] = v33;
    v404[17] = @"RotateRight";
    v343[0] = MEMORY[0x1E69E9820];
    v343[1] = 3221225472;
    v343[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_24;
    v343[3] = &unk_1E8134870;
    v344 = v32;
    v341[0] = MEMORY[0x1E69E9820];
    v341[1] = 3221225472;
    v341[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_25;
    v341[3] = &unk_1E8134870;
    v34 = v344;
    v342 = v34;
    [AXSSKeyboardCommandInfo infoWithDownHandler:v343 upHandler:v341];
    v155 = v33;
    v153 = v31;
    v157 = v150 = v29;
    v405[17] = v157;
    v404[18] = @"MoveUp";
    v338[0] = MEMORY[0x1E69E9820];
    v338[1] = 3221225472;
    v338[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_26;
    v338[3] = &unk_1E8135B98;
    objc_copyWeak(&v340, &v402);
    v35 = v34;
    v339 = v35;
    v36 = [AXSSKeyboardCommandInfo infoWithHandler:v338];
    v405[18] = v36;
    v404[19] = @"SwipeUp";
    v336[0] = MEMORY[0x1E69E9820];
    v336[1] = 3221225472;
    v336[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_27;
    v336[3] = &unk_1E8134870;
    v337 = v35;
    v334[0] = MEMORY[0x1E69E9820];
    v334[1] = 3221225472;
    v334[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_28;
    v334[3] = &unk_1E8134870;
    v37 = v337;
    v335 = v37;
    v38 = [AXSSKeyboardCommandInfo infoWithDownHandler:v336 upHandler:v334];
    v405[19] = v38;
    v404[20] = @"TwoFingerSwipeUp";
    v332[0] = MEMORY[0x1E69E9820];
    v332[1] = 3221225472;
    v332[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_29;
    v332[3] = &unk_1E8134870;
    v333 = v37;
    v330[0] = MEMORY[0x1E69E9820];
    v330[1] = 3221225472;
    v330[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_30;
    v330[3] = &unk_1E8134870;
    v39 = v333;
    v331 = v39;
    v40 = [AXSSKeyboardCommandInfo infoWithDownHandler:v332 upHandler:v330];
    v405[20] = v40;
    v404[21] = @"PinchOut";
    v328[0] = MEMORY[0x1E69E9820];
    v328[1] = 3221225472;
    v328[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_31;
    v328[3] = &unk_1E8134870;
    v329 = v39;
    v326[0] = MEMORY[0x1E69E9820];
    v326[1] = 3221225472;
    v326[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_32;
    v326[3] = &unk_1E8134870;
    v41 = v329;
    v327 = v41;
    [AXSSKeyboardCommandInfo infoWithDownHandler:v328 upHandler:v326];
    v152 = v40;
    v149 = v38;
    v154 = v147 = v36;
    v405[21] = v154;
    v404[22] = @"MoveDown";
    v323[0] = MEMORY[0x1E69E9820];
    v323[1] = 3221225472;
    v323[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_33;
    v323[3] = &unk_1E8135B98;
    objc_copyWeak(&v325, &v402);
    v42 = v41;
    v324 = v42;
    v151 = [AXSSKeyboardCommandInfo infoWithHandler:v323];
    v405[22] = v151;
    v404[23] = @"MoveInsideNext";
    v320[0] = MEMORY[0x1E69E9820];
    v320[1] = 3221225472;
    v320[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_34;
    v320[3] = &unk_1E8135B98;
    objc_copyWeak(&v322, &v402);
    v43 = v42;
    v321 = v43;
    v148 = [AXSSKeyboardCommandInfo infoWithHandler:v320];
    v405[23] = v148;
    v404[24] = @"MoveInsidePrevious";
    v317[0] = MEMORY[0x1E69E9820];
    v317[1] = 3221225472;
    v317[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_35;
    v317[3] = &unk_1E8135B98;
    objc_copyWeak(&v319, &v402);
    v44 = v43;
    v318 = v44;
    v45 = [AXSSKeyboardCommandInfo infoWithHandler:v317];
    v405[24] = v45;
    v404[25] = @"SwipeDown";
    v315[0] = MEMORY[0x1E69E9820];
    v315[1] = 3221225472;
    v315[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_36;
    v315[3] = &unk_1E8134870;
    v316 = v44;
    v313[0] = MEMORY[0x1E69E9820];
    v313[1] = 3221225472;
    v313[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_37;
    v313[3] = &unk_1E8134870;
    v46 = v316;
    v314 = v46;
    v47 = [AXSSKeyboardCommandInfo infoWithDownHandler:v315 upHandler:v313];
    v405[25] = v47;
    v404[26] = @"TwoFingerSwipeDown";
    v311[0] = MEMORY[0x1E69E9820];
    v311[1] = 3221225472;
    v311[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_38;
    v311[3] = &unk_1E8134870;
    v312 = v46;
    v309[0] = MEMORY[0x1E69E9820];
    v309[1] = 3221225472;
    v309[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_39;
    v309[3] = &unk_1E8134870;
    v48 = v312;
    v310 = v48;
    v49 = [AXSSKeyboardCommandInfo infoWithDownHandler:v311 upHandler:v309];
    v405[26] = v49;
    v404[27] = @"PinchIn";
    v307[0] = MEMORY[0x1E69E9820];
    v307[1] = 3221225472;
    v307[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_40;
    v307[3] = &unk_1E8134870;
    v308 = v48;
    v305[0] = MEMORY[0x1E69E9820];
    v305[1] = 3221225472;
    v305[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_41;
    v305[3] = &unk_1E8134870;
    v50 = v308;
    v306 = v50;
    v51 = [AXSSKeyboardCommandInfo infoWithDownHandler:v307 upHandler:v305];
    v405[27] = v51;
    v404[28] = @"TwoFingerPressAndLift";
    v303[0] = MEMORY[0x1E69E9820];
    v303[1] = 3221225472;
    v303[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_42;
    v303[3] = &unk_1E8134870;
    v304 = v50;
    v301[0] = MEMORY[0x1E69E9820];
    v301[1] = 3221225472;
    v301[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_43;
    v301[3] = &unk_1E8134870;
    v52 = v304;
    v302 = v52;
    [AXSSKeyboardCommandInfo infoWithDownHandler:v303 upHandler:v301];
    v146 = v145 = v51;
    v143 = v49;
    v141 = v47;
    v139 = v45;
    v405[28] = v146;
    v404[29] = @"PerformDefaultAction";
    v298[0] = MEMORY[0x1E69E9820];
    v298[1] = 3221225472;
    v298[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_44;
    v298[3] = &unk_1E8135B98;
    objc_copyWeak(&v300, &v402);
    v53 = v52;
    v299 = v53;
    v144 = [AXSSKeyboardCommandInfo infoWithHandler:v298];
    v405[29] = v144;
    v404[30] = @"GoHome";
    v295[0] = MEMORY[0x1E69E9820];
    v295[1] = 3221225472;
    v295[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_45;
    v295[3] = &unk_1E8135B98;
    objc_copyWeak(&v297, &v402);
    v54 = v53;
    v296 = v54;
    v142 = [AXSSKeyboardCommandInfo infoWithHandler:v295];
    v405[30] = v142;
    v404[31] = @"OpenContextualMenu";
    v292[0] = MEMORY[0x1E69E9820];
    v292[1] = 3221225472;
    v292[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_46;
    v292[3] = &unk_1E8135B98;
    objc_copyWeak(&v294, &v402);
    v55 = v54;
    v293 = v55;
    v140 = [AXSSKeyboardCommandInfo infoWithHandler:v292];
    v405[31] = v140;
    v404[32] = @"ShowAccessibilityActions";
    v289[0] = MEMORY[0x1E69E9820];
    v289[1] = 3221225472;
    v289[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_47;
    v289[3] = &unk_1E8135B98;
    objc_copyWeak(&v291, &v402);
    v56 = v55;
    v290 = v56;
    v138 = [AXSSKeyboardCommandInfo infoWithHandler:v289];
    v405[32] = v138;
    v404[33] = @"ToggleAppSwitcher";
    v286[0] = MEMORY[0x1E69E9820];
    v286[1] = 3221225472;
    v286[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_48;
    v286[3] = &unk_1E8135B98;
    objc_copyWeak(&v288, &v402);
    v57 = v56;
    v287 = v57;
    v137 = [AXSSKeyboardCommandInfo infoWithHandler:v286];
    v405[33] = v137;
    v404[34] = @"ToggleAppLibrary";
    v283[0] = MEMORY[0x1E69E9820];
    v283[1] = 3221225472;
    v283[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_49;
    v283[3] = &unk_1E8135B98;
    objc_copyWeak(&v285, &v402);
    v58 = v57;
    v284 = v58;
    v136 = [AXSSKeyboardCommandInfo infoWithHandler:v283];
    v405[34] = v136;
    v404[35] = @"ToggleQuickNote";
    v280[0] = MEMORY[0x1E69E9820];
    v280[1] = 3221225472;
    v280[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_50;
    v280[3] = &unk_1E8135B98;
    objc_copyWeak(&v282, &v402);
    v59 = v58;
    v281 = v59;
    v135 = [AXSSKeyboardCommandInfo infoWithHandler:v280];
    v405[35] = v135;
    v404[36] = @"ActivateAccessibilityShortcut";
    v277[0] = MEMORY[0x1E69E9820];
    v277[1] = 3221225472;
    v277[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_51;
    v277[3] = &unk_1E8135B98;
    objc_copyWeak(&v279, &v402);
    v60 = v59;
    v278 = v60;
    v134 = [AXSSKeyboardCommandInfo infoWithHandler:v277];
    v405[36] = v134;
    v404[37] = @"ToggleControlCenter";
    v274[0] = MEMORY[0x1E69E9820];
    v274[1] = 3221225472;
    v274[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_52;
    v274[3] = &unk_1E8135B98;
    objc_copyWeak(&v276, &v402);
    v61 = v60;
    v275 = v61;
    v133 = [AXSSKeyboardCommandInfo infoWithHandler:v274];
    v405[37] = v133;
    v404[38] = @"ToggleDock";
    v271[0] = MEMORY[0x1E69E9820];
    v271[1] = 3221225472;
    v271[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_53;
    v271[3] = &unk_1E8135B98;
    objc_copyWeak(&v273, &v402);
    v62 = v61;
    v272 = v62;
    v132 = [AXSSKeyboardCommandInfo infoWithHandler:v271];
    v405[38] = v132;
    v404[39] = @"PerformEscape";
    v268[0] = MEMORY[0x1E69E9820];
    v268[1] = 3221225472;
    v268[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_54;
    v268[3] = &unk_1E8135B98;
    objc_copyWeak(&v270, &v402);
    v63 = v62;
    v269 = v63;
    v131 = [AXSSKeyboardCommandInfo infoWithHandler:v268];
    v405[39] = v131;
    v404[40] = @"PerformSysdiagnose";
    v265[0] = MEMORY[0x1E69E9820];
    v265[1] = 3221225472;
    v265[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_55;
    v265[3] = &unk_1E8135B98;
    objc_copyWeak(&v267, &v402);
    v64 = v63;
    v266 = v64;
    v130 = [AXSSKeyboardCommandInfo infoWithHandler:v265];
    v405[40] = v130;
    v404[41] = @"LockScreen";
    v262[0] = MEMORY[0x1E69E9820];
    v262[1] = 3221225472;
    v262[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_56;
    v262[3] = &unk_1E8135B98;
    objc_copyWeak(&v264, &v402);
    v65 = v64;
    v263 = v65;
    v129 = [AXSSKeyboardCommandInfo infoWithHandler:v262];
    v405[41] = v129;
    v404[42] = @"ToggleNotificationCenter";
    v259[0] = MEMORY[0x1E69E9820];
    v259[1] = 3221225472;
    v259[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_57;
    v259[3] = &unk_1E8135B98;
    objc_copyWeak(&v261, &v402);
    v66 = v65;
    v260 = v66;
    v128 = [AXSSKeyboardCommandInfo infoWithHandler:v259];
    v405[42] = v128;
    v404[43] = @"ArmApplePay";
    v256[0] = MEMORY[0x1E69E9820];
    v256[1] = 3221225472;
    v256[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_58;
    v256[3] = &unk_1E8135B98;
    objc_copyWeak(&v258, &v402);
    v67 = v66;
    v257 = v67;
    v127 = [AXSSKeyboardCommandInfo infoWithHandler:v256];
    v405[43] = v127;
    v404[44] = @"RotateDevice";
    v253[0] = MEMORY[0x1E69E9820];
    v253[1] = 3221225472;
    v253[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_59;
    v253[3] = &unk_1E8135B98;
    objc_copyWeak(&v255, &v402);
    v68 = v67;
    v254 = v68;
    v126 = [AXSSKeyboardCommandInfo infoWithHandler:v253];
    v405[44] = v126;
    v404[45] = @"RebootDevice";
    v250[0] = MEMORY[0x1E69E9820];
    v250[1] = 3221225472;
    v250[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_60;
    v250[3] = &unk_1E8135B98;
    objc_copyWeak(&v252, &v402);
    v69 = v68;
    v251 = v69;
    v125 = [AXSSKeyboardCommandInfo infoWithHandler:v250];
    v405[45] = v125;
    v404[46] = @"ToggleMenuBar";
    v247[0] = MEMORY[0x1E69E9820];
    v247[1] = 3221225472;
    v247[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_61;
    v247[3] = &unk_1E8135B98;
    objc_copyWeak(&v249, &v402);
    v70 = v69;
    v248 = v70;
    v124 = [AXSSKeyboardCommandInfo infoWithHandler:v247];
    v405[46] = v124;
    v404[47] = @"ActivateSOS";
    v244[0] = MEMORY[0x1E69E9820];
    v244[1] = 3221225472;
    v244[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_62;
    v244[3] = &unk_1E8135B98;
    objc_copyWeak(&v246, &v402);
    v71 = v70;
    v245 = v71;
    v123 = [AXSSKeyboardCommandInfo infoWithHandler:v244];
    v405[47] = v123;
    v404[48] = @"ActivateTypeahead";
    v241[0] = MEMORY[0x1E69E9820];
    v241[1] = 3221225472;
    v241[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_63;
    v241[3] = &unk_1E8135B98;
    objc_copyWeak(&v243, &v402);
    v72 = v71;
    v242 = v72;
    v122 = [AXSSKeyboardCommandInfo infoWithHandler:v241];
    v405[48] = v122;
    v404[49] = @"TogglePassthroughMode";
    v238[0] = MEMORY[0x1E69E9820];
    v238[1] = 3221225472;
    v238[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_64;
    v238[3] = &unk_1E8135B98;
    objc_copyWeak(&v240, &v402);
    v73 = v72;
    v239 = v73;
    v121 = [AXSSKeyboardCommandInfo infoWithHandler:v238];
    v405[49] = v121;
    v404[50] = @"Gestures";
    v235[0] = MEMORY[0x1E69E9820];
    v235[1] = 3221225472;
    v235[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_65;
    v235[3] = &unk_1E8135B98;
    objc_copyWeak(&v237, &v402);
    v74 = v73;
    v236 = v74;
    v120 = [AXSSKeyboardCommandInfo infoWithHandler:v235];
    v405[50] = v120;
    v404[51] = @"Help";
    v232[0] = MEMORY[0x1E69E9820];
    v232[1] = 3221225472;
    v232[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_66;
    v232[3] = &unk_1E8135B98;
    objc_copyWeak(&v234, &v402);
    v75 = v74;
    v233 = v75;
    v76 = [AXSSKeyboardCommandInfo infoWithHandler:v232];
    v405[51] = v76;
    v404[52] = @"3DTouch";
    v230[0] = MEMORY[0x1E69E9820];
    v230[1] = 3221225472;
    v230[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_67;
    v230[3] = &unk_1E8134870;
    v231 = v75;
    v228[0] = MEMORY[0x1E69E9820];
    v228[1] = 3221225472;
    v228[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_68;
    v228[3] = &unk_1E8134870;
    v77 = v231;
    v229 = v77;
    [AXSSKeyboardCommandInfo infoWithDownHandler:v230 upHandler:v228];
    v119 = v118 = v76;
    v405[52] = v119;
    v404[53] = @"MovePointerToFocus";
    v225[0] = MEMORY[0x1E69E9820];
    v225[1] = 3221225472;
    v225[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_69;
    v225[3] = &unk_1E8135B98;
    objc_copyWeak(&v227, &v402);
    v78 = v77;
    v226 = v78;
    v117 = [AXSSKeyboardCommandInfo infoWithHandler:v225];
    v405[53] = v117;
    v404[54] = @"WindowList";
    v222[0] = MEMORY[0x1E69E9820];
    v222[1] = 3221225472;
    v222[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_70;
    v222[3] = &unk_1E8135B98;
    objc_copyWeak(&v224, &v402);
    v79 = v78;
    v223 = v79;
    v116 = [AXSSKeyboardCommandInfo infoWithHandler:v222];
    v405[54] = v116;
    v404[55] = @"ApplicationList";
    v219[0] = MEMORY[0x1E69E9820];
    v219[1] = 3221225472;
    v219[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_71;
    v219[3] = &unk_1E8135B98;
    objc_copyWeak(&v221, &v402);
    v80 = v79;
    v220 = v80;
    v115 = [AXSSKeyboardCommandInfo infoWithHandler:v219];
    v405[55] = v115;
    v404[56] = @"NextButton";
    v216[0] = MEMORY[0x1E69E9820];
    v216[1] = 3221225472;
    v216[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_72;
    v216[3] = &unk_1E8135B98;
    objc_copyWeak(&v218, &v402);
    v81 = v80;
    v217 = v81;
    v114 = [AXSSKeyboardCommandInfo infoWithHandler:v216];
    v405[56] = v114;
    v404[57] = @"PreviousButton";
    v213[0] = MEMORY[0x1E69E9820];
    v213[1] = 3221225472;
    v213[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_73;
    v213[3] = &unk_1E8135B98;
    objc_copyWeak(&v215, &v402);
    v82 = v81;
    v214 = v82;
    v113 = [AXSSKeyboardCommandInfo infoWithHandler:v213];
    v405[57] = v113;
    v404[58] = @"NextCheckbox";
    v210[0] = MEMORY[0x1E69E9820];
    v210[1] = 3221225472;
    v210[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_74;
    v210[3] = &unk_1E8135B98;
    objc_copyWeak(&v212, &v402);
    v83 = v82;
    v211 = v83;
    v112 = [AXSSKeyboardCommandInfo infoWithHandler:v210];
    v405[58] = v112;
    v404[59] = @"PreviousCheckbox";
    v207[0] = MEMORY[0x1E69E9820];
    v207[1] = 3221225472;
    v207[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_75;
    v207[3] = &unk_1E8135B98;
    objc_copyWeak(&v209, &v402);
    v84 = v83;
    v208 = v84;
    v111 = [AXSSKeyboardCommandInfo infoWithHandler:v207];
    v405[59] = v111;
    v404[60] = @"NextTable";
    v204[0] = MEMORY[0x1E69E9820];
    v204[1] = 3221225472;
    v204[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_76;
    v204[3] = &unk_1E8135B98;
    objc_copyWeak(&v206, &v402);
    v85 = v84;
    v205 = v85;
    v110 = [AXSSKeyboardCommandInfo infoWithHandler:v204];
    v405[60] = v110;
    v404[61] = @"PreviousTable";
    v201[0] = MEMORY[0x1E69E9820];
    v201[1] = 3221225472;
    v201[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_77;
    v201[3] = &unk_1E8135B98;
    objc_copyWeak(&v203, &v402);
    v86 = v85;
    v202 = v86;
    v109 = [AXSSKeyboardCommandInfo infoWithHandler:v201];
    v405[61] = v109;
    v404[62] = @"NextImage";
    v198[0] = MEMORY[0x1E69E9820];
    v198[1] = 3221225472;
    v198[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_78;
    v198[3] = &unk_1E8135B98;
    objc_copyWeak(&v200, &v402);
    v87 = v86;
    v199 = v87;
    v108 = [AXSSKeyboardCommandInfo infoWithHandler:v198];
    v405[62] = v108;
    v404[63] = @"PreviousImage";
    v195[0] = MEMORY[0x1E69E9820];
    v195[1] = 3221225472;
    v195[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_79;
    v195[3] = &unk_1E8135B98;
    objc_copyWeak(&v197, &v402);
    v88 = v87;
    v196 = v88;
    v107 = [AXSSKeyboardCommandInfo infoWithHandler:v195];
    v405[63] = v107;
    v404[64] = @"NextLink";
    v192[0] = MEMORY[0x1E69E9820];
    v192[1] = 3221225472;
    v192[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_80;
    v192[3] = &unk_1E8135B98;
    objc_copyWeak(&v194, &v402);
    v89 = v88;
    v193 = v89;
    v90 = [AXSSKeyboardCommandInfo infoWithHandler:v192];
    v405[64] = v90;
    v404[65] = @"PreviousLink";
    v189[0] = MEMORY[0x1E69E9820];
    v189[1] = 3221225472;
    v189[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_81;
    v189[3] = &unk_1E8135B98;
    objc_copyWeak(&v191, &v402);
    v91 = v89;
    v190 = v91;
    v92 = [AXSSKeyboardCommandInfo infoWithHandler:v189];
    v405[65] = v92;
    v404[66] = @"NextHeading";
    v186[0] = MEMORY[0x1E69E9820];
    v186[1] = 3221225472;
    v186[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_82;
    v186[3] = &unk_1E8135B98;
    objc_copyWeak(&v188, &v402);
    v93 = v91;
    v187 = v93;
    v94 = [AXSSKeyboardCommandInfo infoWithHandler:v186];
    v405[66] = v94;
    v404[67] = @"PreviousHeading";
    v183[0] = MEMORY[0x1E69E9820];
    v183[1] = 3221225472;
    v183[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_83;
    v183[3] = &unk_1E8135B98;
    objc_copyWeak(&v185, &v402);
    v95 = v93;
    v184 = v95;
    v96 = [AXSSKeyboardCommandInfo infoWithHandler:v183];
    v405[67] = v96;
    v404[68] = @"NextTextField";
    v180[0] = MEMORY[0x1E69E9820];
    v180[1] = 3221225472;
    v180[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_84;
    v180[3] = &unk_1E8135B98;
    objc_copyWeak(&v182, &v402);
    v97 = v95;
    v181 = v97;
    v98 = [AXSSKeyboardCommandInfo infoWithHandler:v180];
    v405[68] = v98;
    v404[69] = @"PreviousTextField";
    v177[0] = MEMORY[0x1E69E9820];
    v177[1] = 3221225472;
    v177[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_85;
    v177[3] = &unk_1E8135B98;
    objc_copyWeak(&v179, &v402);
    v99 = v97;
    v178 = v99;
    v100 = [AXSSKeyboardCommandInfo infoWithHandler:v177];
    v405[69] = v100;
    v404[70] = @"Escape";
    v174[0] = MEMORY[0x1E69E9820];
    v174[1] = 3221225472;
    v174[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_86;
    v174[3] = &unk_1E8135B98;
    objc_copyWeak(&v176, &v402);
    v175 = v99;
    v101 = [AXSSKeyboardCommandInfo infoWithHandler:v174];
    v405[70] = v101;
    v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v405 forKeys:v404 count:71];
    commandInfos = val->__commandInfos;
    val->__commandInfos = v102;

    _AXSKeyRepeatDelay();
    val->_minimumDelayUntilRepeat = v104;

    objc_destroyWeak(&v176);
    objc_destroyWeak(&v179);

    objc_destroyWeak(&v182);
    objc_destroyWeak(&v185);

    objc_destroyWeak(&v188);
    objc_destroyWeak(&v191);

    objc_destroyWeak(&v194);
    objc_destroyWeak(&v197);

    objc_destroyWeak(&v200);
    objc_destroyWeak(&v203);

    objc_destroyWeak(&v206);
    objc_destroyWeak(&v209);

    objc_destroyWeak(&v212);
    objc_destroyWeak(&v215);

    objc_destroyWeak(&v218);
    objc_destroyWeak(&v221);

    objc_destroyWeak(&v224);
    objc_destroyWeak(&v227);

    objc_destroyWeak(&v234);
    objc_destroyWeak(&v237);

    objc_destroyWeak(&v240);
    objc_destroyWeak(&v243);

    objc_destroyWeak(&v246);
    objc_destroyWeak(&v249);

    objc_destroyWeak(&v252);
    objc_destroyWeak(&v255);

    objc_destroyWeak(&v258);
    objc_destroyWeak(&v261);

    objc_destroyWeak(&v264);
    objc_destroyWeak(&v267);

    objc_destroyWeak(&v270);
    objc_destroyWeak(&v273);

    objc_destroyWeak(&v276);
    objc_destroyWeak(&v279);

    objc_destroyWeak(&v282);
    objc_destroyWeak(&v285);

    objc_destroyWeak(&v288);
    objc_destroyWeak(&v291);

    objc_destroyWeak(&v294);
    objc_destroyWeak(&v297);

    objc_destroyWeak(&v300);
    objc_destroyWeak(&v319);

    objc_destroyWeak(&v322);
    objc_destroyWeak(&v325);

    objc_destroyWeak(&v340);
    objc_destroyWeak(&v355);

    objc_destroyWeak(&v358);
    objc_destroyWeak(&v373);

    objc_destroyWeak(&v376);
    objc_destroyWeak(&v379);

    objc_destroyWeak(&v386);
    objc_destroyWeak(&v389);

    objc_destroyWeak(&v392);
    objc_destroyWeak(&v395);

    objc_destroyWeak(&v398);
    objc_destroyWeak(&v401);
    objc_destroyWeak(&v402);
  }

  v105 = *MEMORY[0x1E69E9840];
  return val;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"GoToNextElement"];
  [*(a1 + 32) goToNextElementOfType:{objc_msgSend(WeakRetained, "searchType")}];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"GoToNextElement"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"GoToPreviousElement"];
  [*(a1 + 32) goToPreviousElementOfType:{objc_msgSend(WeakRetained, "searchType")}];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"GoToPreviousElement"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"EnterContainer"];
  [*(a1 + 32) enterContainer];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"EnterContainer"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ExitContainer"];
  [*(a1 + 32) exitContainer];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ExitContainer"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"GoToNextSection"];
  [*(a1 + 32) goToNextSection];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"GoToNextSection"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"GoToPreviousSection"];
  [*(a1 + 32) goToPreviousSection];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"GoToPreviousSection"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"PressAndLift"];
  v2 = *(a1 + 32);

  return [v2 press];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) lift];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"PressAndLift"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ActivateSiri"];
  [*(a1 + 32) activateSiri];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ActivateSiri"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"MoveLeft"];
  [*(a1 + 32) moveLeft];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"MoveLeft"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"GoToFirstElement"];
  [*(a1 + 32) goToFirstElement];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"GoToFirstElement"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_12(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"SwipeLeft"];
  v2 = *(a1 + 32);

  return [v2 beginSwipeLeft];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_13(uint64_t a1)
{
  [*(a1 + 32) endSwipe];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"SwipeLeft"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_14(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"TwoFingerSwipeLeft"];
  v2 = *(a1 + 32);

  return [v2 beginTwoFingerSwipeLeft];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_15(uint64_t a1)
{
  [*(a1 + 32) endSwipe];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"TwoFingerSwipeLeft"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_16(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"RotateLeft"];
  v2 = *(a1 + 32);

  return [v2 beginRotateLeft];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_17(uint64_t a1)
{
  [*(a1 + 32) endRotate];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"RotateLeft"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"MoveRight"];
  [*(a1 + 32) moveRight];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"MoveRight"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_19(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"GoToLastElement"];
  [*(a1 + 32) goToLastElement];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"GoToLastElement"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_20(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"SwipeRight"];
  v2 = *(a1 + 32);

  return [v2 beginSwipeRight];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_21(uint64_t a1)
{
  [*(a1 + 32) endSwipe];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"SwipeRight"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_22(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"TwoFingerSwipeRight"];
  v2 = *(a1 + 32);

  return [v2 beginTwoFingerSwipeRight];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_23(uint64_t a1)
{
  [*(a1 + 32) endSwipe];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"TwoFingerSwipeRight"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_24(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"RotateRight"];
  v2 = *(a1 + 32);

  return [v2 beginRotateRight];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_25(uint64_t a1)
{
  [*(a1 + 32) endRotate];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"RotateRight"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_26(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"MoveUp"];
  [*(a1 + 32) moveUp];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"MoveUp"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_27(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"SwipeUp"];
  v2 = *(a1 + 32);

  return [v2 beginSwipeUp];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_28(uint64_t a1)
{
  [*(a1 + 32) endSwipe];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"SwipeUp"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_29(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"TwoFingerSwipeUp"];
  v2 = *(a1 + 32);

  return [v2 beginTwoFingerSwipeUp];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_30(uint64_t a1)
{
  [*(a1 + 32) endSwipe];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"TwoFingerSwipeUp"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_31(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"PinchOut"];
  v2 = *(a1 + 32);

  return [v2 beginPinchOut];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_32(uint64_t a1)
{
  [*(a1 + 32) endPinch];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"PinchOut"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_33(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"MoveDown"];
  [*(a1 + 32) moveDown];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"MoveDown"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"MoveInsideNext"];
  [*(a1 + 32) moveInsideNext];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"MoveInsideNext"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_35(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"MoveInsidePrevious"];
  [*(a1 + 32) moveInsidePrevious];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"MoveInsidePrevious"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_36(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"SwipeDown"];
  v2 = *(a1 + 32);

  return [v2 beginSwipeDown];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_37(uint64_t a1)
{
  [*(a1 + 32) endSwipe];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"SwipeDown"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_38(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"TwoFingerSwipeDown"];
  v2 = *(a1 + 32);

  return [v2 beginTwoFingerSwipeDown];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_39(uint64_t a1)
{
  [*(a1 + 32) endSwipe];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"TwoFingerSwipeDown"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_40(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"PinchIn"];
  v2 = *(a1 + 32);

  return [v2 beginPinchIn];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_41(uint64_t a1)
{
  [*(a1 + 32) endPinch];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"PinchIn"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_42(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"TwoFingerPressAndLift"];
  v2 = *(a1 + 32);

  return [v2 twoFingerPress];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_43(uint64_t a1)
{
  [*(a1 + 32) twoFingerLift];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"TwoFingerPressAndLift"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"PerformDefaultAction"];
  [*(a1 + 32) performDefaultAction];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"PerformDefaultAction"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_45(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"GoHome"];
  [*(a1 + 32) goHome];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"GoHome"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_46(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"OpenContextualMenu"];
  [*(a1 + 32) openContextualMenu];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"OpenContextualMenu"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_47(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ShowAccessibilityActions"];
  [*(a1 + 32) showAccessibilityActions];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ShowAccessibilityActions"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ToggleAppSwitcher"];
  [*(a1 + 32) toggleAppSwitcher];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ToggleAppSwitcher"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_49(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ToggleAppLibrary"];
  [*(a1 + 32) toggleAppLibrary];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ToggleAppLibrary"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ToggleQuickNote"];
  [*(a1 + 32) toggleQuickNote];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ToggleQuickNote"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_51(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ActivateAccessibilityShortcut"];
  [*(a1 + 32) activateAccessibilityShortcut];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ActivateAccessibilityShortcut"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_52(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ToggleControlCenter"];
  [*(a1 + 32) toggleControlCenter];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ToggleControlCenter"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_53(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ToggleDock"];
  [*(a1 + 32) toggleDock];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ToggleDock"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"PerformEscape"];
  [*(a1 + 32) performEscape];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"PerformEscape"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_55(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"PerformSysdiagnose"];
  [*(a1 + 32) performSysdiagnose];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"PerformSysdiagnose"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_56(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"LockScreen"];
  [*(a1 + 32) lockScreen];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"LockScreen"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_57(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ToggleNotificationCenter"];
  [*(a1 + 32) toggleNotificationCenter];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ToggleNotificationCenter"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ArmApplePay"];
  [*(a1 + 32) armApplePay];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ArmApplePay"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_59(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"RotateDevice"];
  [*(a1 + 32) rotateDevice];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"RotateDevice"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"RebootDevice"];
  [*(a1 + 32) rebootDevice];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"RebootDevice"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_61(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ToggleMenuBar"];
  [*(a1 + 32) toggleMenuBar];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ToggleMenuBar"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_62(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ActivateSOS"];
  [*(a1 + 32) activateSOS];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ActivateSOS"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_63(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ActivateTypeahead"];
  [*(a1 + 32) activateTypeahead];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ActivateTypeahead"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"TogglePassthroughMode"];
  [*(a1 + 32) togglePassthroughMode];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"TogglePassthroughMode"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_65(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"Gestures"];
  [*(a1 + 32) toggleGesturesMode];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"Gestures"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_66(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"Help"];
  [*(a1 + 32) toggleHelp];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"Help"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_67(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"3DTouch"];
  v2 = *(a1 + 32);

  return [v2 begin3DTouch];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_68(uint64_t a1)
{
  [*(a1 + 32) end3DTouch];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"3DTouch"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_69(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"MovePointerToFocus"];
  [*(a1 + 32) movePointerToFocus];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"MovePointerToFocus"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"WindowList"];
  [*(a1 + 32) toggleWindowList];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"WindowList"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_71(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ApplicationList"];
  [*(a1 + 32) toggleApplicationList];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ApplicationList"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_72(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"NextButton"];
  [*(a1 + 32) nextButton];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"NextButton"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_73(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"PreviousButton"];
  [*(a1 + 32) previousButton];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"PreviousButton"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"NextCheckbox"];
  [*(a1 + 32) nextCheckbox];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"NextCheckbox"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_75(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"PreviousCheckbox"];
  [*(a1 + 32) previousCheckbox];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"PreviousCheckbox"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_76(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"NextTable"];
  [*(a1 + 32) nextTable];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"NextTable"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_77(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"PreviousTable"];
  [*(a1 + 32) previousTable];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"PreviousTable"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"NextImage"];
  [*(a1 + 32) nextImage];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"NextImage"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_79(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"PreviousImage"];
  [*(a1 + 32) previousImage];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"PreviousImage"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"NextLink"];
  [*(a1 + 32) nextLink];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"NextLink"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_81(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"PreviousLink"];
  [*(a1 + 32) previousLink];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"PreviousLink"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_82(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"NextHeading"];
  [*(a1 + 32) nextHeading];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"NextHeading"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_83(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"PreviousHeading"];
  [*(a1 + 32) previousHeading];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"PreviousHeading"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"NextTextField"];
  [*(a1 + 32) nextTextField];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"NextTextField"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_85(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"PreviousTextField"];
  [*(a1 + 32) previousTextField];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"PreviousTextField"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_86(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"Escape"];
  v3 = [*(a1 + 32) handleEscapeKey];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"Escape"];

  return v3;
}

- (BOOL)processKeyboardEvent:(id)a3
{
  v4 = a3;
  v5 = [(AXSSEventManager *)self shouldCaptureEvent:v4];
  if (v5)
  {
    [(AXSSEventManager *)self handleFKAEvent:v4];
  }

  return v5;
}

- (BOOL)_performDownActionForCommand:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(AXSSEventManager *)self shouldSuppressCommands])
  {
    v8 = [(AXSSEventManager *)self actionManager];
    [v8 didSuppressCommand:v6];

    v9 = 0;
  }

  else if ([v7 handlesBothDownAndUp])
  {
    v10 = [v7 downHandler];
    v10[2]();

    [(AXSSEventManager *)self set_lastDownAndUpCommandInfo:v7];
    v9 = 1;
  }

  else
  {
    v11 = [v7 handler];
    v9 = v11[2]();
  }

  return v9;
}

- (BOOL)_handleEvent:(id)a3 forCaptureOnly:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v4)
  {
    v7 = [(AXSSEventManager *)self _lastDownAndUpCommandInfo];
    if (v7)
    {
      v8 = v7;
      v9 = [v6 isDownEvent];

      if ((v9 & 1) == 0)
      {
        v10 = [(AXSSEventManager *)self _lastDownAndUpCommandInfo];
        v11 = [v10 upHandler];
        v11[2]();

        [(AXSSEventManager *)self set_lastDownAndUpCommandInfo:0];
      }
    }
  }

  v12 = [v6 keyCode];
  v13 = [v6 modifierMask];
  if (v12 != 43 || (v14 = v13, [(AXSSEventManager *)self isPassthroughModeEnabled]))
  {
    if ([(AXSSEventManager *)self _tabKeyPressed])
    {
      if (!v4 && [v6 isDownEvent])
      {
        [(AXSSEventManager *)self _handleTabComboEvent:v6];
      }

      goto LABEL_19;
    }

    v15 = [v6 keyChord];
    if (v15)
    {
      v16 = [(AXSSEventManager *)self commandMap];
      v17 = [v16 commandForKeyChord:v15];

      if (v17)
      {
        if (v4)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v22 = [(AXSSEventManager *)self commandMap];
        v23 = [v6 backupKeyChord];
        v17 = [v22 commandForKeyChord:v23];

        if (v4)
        {
LABEL_14:
          if ([(AXSSEventManager *)self isPassthroughModeEnabled])
          {
            v18 = [v17 standardCommandIdentifier];
            v19 = [v18 isEqualToString:@"TogglePassthroughMode"];
          }

          else
          {
            v19 = v17 != 0;
          }

LABEL_27:

          goto LABEL_28;
        }
      }

      if ([v6 isDownEvent])
      {
        [(AXSSEventManager *)self _handleCommand:v17 event:v6];
      }

      v19 = 0;
      goto LABEL_27;
    }

    v19 = 0;
LABEL_28:

    goto LABEL_29;
  }

  if (!v4)
  {
    [(AXSSEventManager *)self _handleTabEvent:v6];
    v19 = 0;
    goto LABEL_29;
  }

  if (v14)
  {
    v20 = [(AXSSEventManager *)self commandMap];
    v21 = [v6 keyChord];
    v15 = [v20 commandForKeyChord:v21];

    v19 = v15 != 0;
    goto LABEL_28;
  }

LABEL_19:
  v19 = 1;
LABEL_29:

  return v19;
}

- (void)_handleTabRepeatOrUpWithCommand:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = v4;
    if ([(AXSSEventManager *)self shouldSuppressCommands])
    {
      v5 = [(AXSSEventManager *)self actionManager];
      [v5 didSuppressCommand:v11];
    }

    else
    {
      v6 = [v11 type];
      v7 = [v6 isEqualToString:@"Standard"];

      if (v7)
      {
        v8 = [(AXSSEventManager *)self _commandInfos];
        v9 = [v11 standardCommandIdentifier];
        v5 = [v8 objectForKeyedSubscript:v9];

        if (v5 && ([v5 handlesBothDownAndUp] & 1) == 0)
        {
          v10 = [v5 handler];
          v10[2]();
        }
      }

      else
      {
        v5 = [(AXSSEventManager *)self actionManager];
        [v5 handleCommand:v11];
      }
    }

    v4 = v11;
  }
}

- (void)_handleTabEvent:(id)a3
{
  v18 = a3;
  v4 = [v18 keyChord];
  v5 = [(AXSSEventManager *)self commandMap];
  v6 = [v5 commandForKeyChord:v4];

  v7 = [v18 isDownEvent];
  v8 = [v18 isRepeatEvent];
  v9 = v8;
  if (v7 && (v8 & 1) == 0)
  {
    [(AXSSEventManager *)self set_lastTabPressTime:CFAbsoluteTimeGetCurrent()];
    [(AXSSEventManager *)self set_tabKeyPressed:1];
  }

  if ([v18 modifierMask])
  {
    if (v7)
    {
      if (![(AXSSEventManager *)self _handleCommand:v6 event:v18])
      {
        goto LABEL_19;
      }

      v10 = 1;
      goto LABEL_18;
    }

LABEL_17:
    [(AXSSEventManager *)self set_tabKeyPressed:0];
    v10 = 0;
LABEL_18:
    [(AXSSEventManager *)self set_performedActionWhileTabComboPressed:v10];
    goto LABEL_19;
  }

  if ([(AXSSEventManager *)self _performedActionWhileTabComboPressed]|| !v6)
  {
LABEL_16:
    if (v7)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v9)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(AXSSEventManager *)self _lastTabPressTime];
    v13 = Current - v12;
    [(AXSSEventManager *)self minimumDelayUntilRepeat];
    if (v13 <= v14)
    {
      goto LABEL_16;
    }
  }

  else if (v7)
  {
    goto LABEL_19;
  }

  v15 = [(AXSSEventManager *)self filterDelegate];
  v16 = [v15 eventManager:self shouldRepostEvent:v18];

  if (v16)
  {
    v17 = [(AXSSEventManager *)self filterDelegate];
    [v17 eventManager:self repostEvent:v18];

    goto LABEL_16;
  }

  [(AXSSEventManager *)self _handleTabRepeatOrUpWithCommand:v6];
  if ((v7 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_19:
}

- (id)_tabbedKeyChordForKeyChord:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E695DF70];
    v4 = [a3 keys];
    v5 = [v3 arrayWithArray:v4];

    [v5 addObject:@"⇥"];
    v6 = [AXSSKeyChord keyChordWithKeys:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_handleTabComboEvent:(id)a3
{
  v12 = a3;
  v4 = [v12 keyChord];
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = [(AXSSEventManager *)self _tabbedKeyChordForKeyChord:v4];
  v6 = [(AXSSEventManager *)self commandMap];
  v7 = [v6 commandForKeyChord:v5];

  if (!v7)
  {
LABEL_3:
    v8 = [v12 backupKeyChord];
    if (!v8)
    {
      v7 = 0;
      goto LABEL_8;
    }

    v9 = v8;
    v10 = [(AXSSEventManager *)self _tabbedKeyChordForKeyChord:v8];
    v11 = [(AXSSEventManager *)self commandMap];
    v7 = [v11 commandForKeyChord:v10];

    if (!v7)
    {
      goto LABEL_8;
    }
  }

  if ([(AXSSEventManager *)self _handleCommand:v7 event:0])
  {
    [(AXSSEventManager *)self set_performedActionWhileTabComboPressed:1];
  }

LABEL_8:
}

- (BOOL)_handleCommand:(id)a3 event:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    goto LABEL_6;
  }

  v8 = [v6 type];
  v9 = [v8 isEqualToString:@"Standard"];

  if (v9)
  {
    if (v7)
    {
      v10 = [(AXSSEventManager *)self filterDelegate];
      v11 = [v10 eventManager:self shouldRepostEvent:v7];

      if (v11)
      {
        v12 = [(AXSSEventManager *)self filterDelegate];
        [v12 eventManager:self repostEvent:v7];

LABEL_6:
        v13 = 0;
        goto LABEL_21;
      }
    }

    v17 = [(AXSSEventManager *)self _commandInfos];
    v18 = [v6 standardCommandIdentifier];
    v19 = [v17 objectForKeyedSubscript:v18];

    if (v19)
    {
      if ([(AXSSEventManager *)self _performDownActionForCommand:v6 info:v19])
      {
        v13 = 1;
LABEL_20:

        goto LABEL_21;
      }

      v21 = [v6 standardCommandIdentifier];
      v22 = [v21 isEqualToString:@"Escape"];

      if (v22)
      {
        v23 = [(AXSSEventManager *)self filterDelegate];
        [v23 eventManager:self repostEvent:v7];
      }
    }

    else
    {
      v20 = FKALogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [AXSSEventManager _handleCommand:v6 event:v20];
      }
    }

    v13 = 0;
    goto LABEL_20;
  }

  v14 = [(AXSSEventManager *)self shouldSuppressCommands];
  v15 = [(AXSSEventManager *)self actionManager];
  v16 = v15;
  if (v14)
  {
    [v15 didSuppressCommand:v6];
  }

  else
  {
    [v15 handleCommand:v6];
  }

  v13 = 1;
LABEL_21:

  return v13;
}

- (AXSSKeyFilterDelegate)filterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_filterDelegate);

  return WeakRetained;
}

- (void)_handleCommand:(uint64_t)a1 event:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_ERROR, "Found standard command with no info: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end