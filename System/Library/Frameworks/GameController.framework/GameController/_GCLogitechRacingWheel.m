@interface _GCLogitechRacingWheel
- (BOOL)acquireDeviceWithError:(id *)a3;
- (_GCLogitechRacingWheel)initWithService:(unsigned int)a3;
- (id)eventObservers;
- (id)observeGamepadEvents:(id)a3;
- (void)dealloc;
- (void)setEventObservers:(void *)a1;
@end

@implementation _GCLogitechRacingWheel

- (_GCLogitechRacingWheel)initWithService:(unsigned int)a3
{
  v214[2] = *MEMORY[0x1E69E9840];
  v3 = IOHIDDeviceCreate(*MEMORY[0x1E695E480], a3);
  if (v3)
  {
    v4 = v3;
    v5 = IOHIDDeviceGetProperty(v3, @"VendorID");
    v6 = IOHIDDeviceGetProperty(v4, @"ProductID");
    if ([v5 unsignedIntValue] == 1133 && objc_msgSend(v6, "unsignedIntValue") == 49774)
    {
      v196 = v6;
      v197 = v5;
      v7 = 0;
    }

    else if ([v5 unsignedIntValue] == 1133 && objc_msgSend(v6, "unsignedIntValue") == 49766)
    {
      v196 = v6;
      v197 = v5;
      v7 = 1;
    }

    else if ([v5 unsignedIntValue] == 1133 && objc_msgSend(v6, "unsignedIntValue") == 49762)
    {
      v196 = v6;
      v197 = v5;
      v7 = 2;
    }

    else
    {
      if ([v5 unsignedIntValue] != 1133 || objc_msgSend(v6, "unsignedIntValue") != 49743)
      {
        CFRelease(v4);
        v8 = 0;
LABEL_26:

        goto LABEL_27;
      }

      v196 = v6;
      v197 = v5;
      v7 = 3;
    }

    self->_mode = v7;
    self->_device = CFRetain(v4);
    v9 = dispatch_queue_create("LogitechRacingWheel", 0);
    queue = self->_queue;
    self->_queue = v9;

    v11 = objc_opt_new();
    eventObservers = self->_eventObservers;
    self->_eventObservers = v11;

    IOHIDDeviceRegisterInputReportWithTimeStampCallback(v4, &self->_report.g920.reportID, 64, HandleReport, self);
    IOHIDDeviceSetDispatchQueue(v4, self->_queue);
    v13 = objc_opt_new();
    v14 = v13;
    if (self->_mode >= 2u)
    {
      v15 = @"Logitech DRIVING FORCE";
    }

    else
    {
      v15 = @"Logitech TRUEFORCE";
    }

    [v13 setProductCategory:v15];
    v195 = v14;
    [v14 setVendorName:{IOHIDDeviceGetProperty(v4, @"Product"}];
    v16 = [(_GCDevicePhysicalInputElementParameters *)_GCDevicePhysicalInputDirectionPadElementParameters parametersWithIdentifier:@"dpad"];
    v17 = [MEMORY[0x1E695DFD8] setWithObject:@"Direction Pad"];
    [(_GCDevicePhysicalInputElementParameters *)v16 setAliases:v17, v18];

    v19 = _GCFConvertStringToLocalizedString();
    [(_GCDevicePhysicalInputElementParameters *)v16 setLocalizedName:v19, v20];

    v21 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"dpad"];
    [(_GCDevicePhysicalInputElementParameters *)v16 setSymbol:v21, v22];

    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v16 setEventUpValueField:?];
    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v16 setEventDownValueField:?];
    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v16 setEventLeftValueField:?];
    v211 = v16;
    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v16 setEventRightValueField:?];
    v23 = [(_GCDevicePhysicalInputElementParameters *)_GCDevicePhysicalInputButtonElementParameters parametersWithIdentifier:@"button.a"];
    v24 = [MEMORY[0x1E695DFD8] setWithObject:@"Button A"];
    [(_GCDevicePhysicalInputElementParameters *)v23 setAliases:v24, v25];

    v26 = _GCFConvertStringToLocalizedString();
    [(_GCDevicePhysicalInputElementParameters *)v23 setLocalizedName:v26, v27];

    v28 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"a.circle"];
    [(_GCDevicePhysicalInputElementParameters *)v23 setSymbol:v28, v29];

    [(_GCDevicePhysicalInputButtonElementParameters *)v23 setAnalog:?];
    v210 = v23;
    [(_GCDevicePhysicalInputButtonElementParameters *)v23 setEventPressedValueField:?];
    v30 = [(_GCDevicePhysicalInputElementParameters *)_GCDevicePhysicalInputButtonElementParameters parametersWithIdentifier:@"button.b"];
    v31 = [MEMORY[0x1E695DFD8] setWithObject:@"Button B"];
    [(_GCDevicePhysicalInputElementParameters *)v30 setAliases:v31, v32];

    v33 = _GCFConvertStringToLocalizedString();
    [(_GCDevicePhysicalInputElementParameters *)v30 setLocalizedName:v33, v34];

    v35 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"b.circle"];
    [(_GCDevicePhysicalInputElementParameters *)v30 setSymbol:v35, v36];

    [(_GCDevicePhysicalInputButtonElementParameters *)v30 setAnalog:?];
    v209 = v30;
    [(_GCDevicePhysicalInputButtonElementParameters *)v30 setEventPressedValueField:?];
    v37 = [(_GCDevicePhysicalInputElementParameters *)_GCDevicePhysicalInputButtonElementParameters parametersWithIdentifier:@"button.x"];
    v38 = [MEMORY[0x1E695DFD8] setWithObject:@"Button X"];
    [(_GCDevicePhysicalInputElementParameters *)v37 setAliases:v38, v39];

    v40 = _GCFConvertStringToLocalizedString();
    [(_GCDevicePhysicalInputElementParameters *)v37 setLocalizedName:v40, v41];

    v42 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"x.circle"];
    [(_GCDevicePhysicalInputElementParameters *)v37 setSymbol:v42, v43];

    [(_GCDevicePhysicalInputButtonElementParameters *)v37 setAnalog:?];
    v208 = v37;
    [(_GCDevicePhysicalInputButtonElementParameters *)v37 setEventPressedValueField:?];
    v44 = [(_GCDevicePhysicalInputElementParameters *)_GCDevicePhysicalInputButtonElementParameters parametersWithIdentifier:@"button.y"];
    v45 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Y"];
    [(_GCDevicePhysicalInputElementParameters *)v44 setAliases:v45, v46];

    v47 = _GCFConvertStringToLocalizedString();
    [(_GCDevicePhysicalInputElementParameters *)v44 setLocalizedName:v47, v48];

    v49 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"y.circle"];
    [(_GCDevicePhysicalInputElementParameters *)v44 setSymbol:v49, v50];

    [(_GCDevicePhysicalInputButtonElementParameters *)v44 setAnalog:?];
    v207 = v44;
    [(_GCDevicePhysicalInputButtonElementParameters *)v44 setEventPressedValueField:?];
    v51 = [(_GCDevicePhysicalInputElementParameters *)_GCDevicePhysicalInputButtonElementParameters parametersWithIdentifier:@"button.l2"];
    v52 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Trigger"];
    [(_GCDevicePhysicalInputElementParameters *)v51 setAliases:v52, v53];

    v54 = _GCFConvertStringToLocalizedString();
    [(_GCDevicePhysicalInputElementParameters *)v51 setLocalizedName:v54, v55];

    [(_GCDevicePhysicalInputButtonElementParameters *)v51 setAnalog:?];
    v201 = v51;
    [(_GCDevicePhysicalInputButtonElementParameters *)v51 setEventPressedValueField:?];
    v56 = [(_GCDevicePhysicalInputElementParameters *)_GCDevicePhysicalInputButtonElementParameters parametersWithIdentifier:@"button.r2"];
    v57 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Trigger"];
    [(_GCDevicePhysicalInputElementParameters *)v56 setAliases:v57, v58];

    v59 = _GCFConvertStringToLocalizedString();
    [(_GCDevicePhysicalInputElementParameters *)v56 setLocalizedName:v59, v60];

    [(_GCDevicePhysicalInputButtonElementParameters *)v56 setAnalog:?];
    v200 = v56;
    [(_GCDevicePhysicalInputButtonElementParameters *)v56 setEventPressedValueField:?];
    v61 = [(_GCDevicePhysicalInputElementParameters *)_GCDevicePhysicalInputButtonElementParameters parametersWithIdentifier:@"button.l3"];
    v62 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick Button"];
    [(_GCDevicePhysicalInputElementParameters *)v61 setAliases:v62, v63];

    v64 = _GCFConvertStringToLocalizedString();
    [(_GCDevicePhysicalInputElementParameters *)v61 setLocalizedName:v64, v65];

    [(_GCDevicePhysicalInputButtonElementParameters *)v61 setAnalog:?];
    v206 = v61;
    [(_GCDevicePhysicalInputButtonElementParameters *)v61 setEventPressedValueField:?];
    v66 = [(_GCDevicePhysicalInputElementParameters *)_GCDevicePhysicalInputButtonElementParameters parametersWithIdentifier:@"button.r3"];
    v67 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick Button"];
    [(_GCDevicePhysicalInputElementParameters *)v66 setAliases:v67, v68];

    v69 = _GCFConvertStringToLocalizedString();
    [(_GCDevicePhysicalInputElementParameters *)v66 setLocalizedName:v69, v70];

    [(_GCDevicePhysicalInputButtonElementParameters *)v66 setAnalog:?];
    v205 = v66;
    [(_GCDevicePhysicalInputButtonElementParameters *)v66 setEventPressedValueField:?];
    v71 = [(_GCDevicePhysicalInputElementParameters *)_GCDevicePhysicalInputButtonElementParameters parametersWithIdentifier:@"leftPaddle"];
    v72 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Left Paddle", @"Left Shoulder", 0}];
    [(_GCDevicePhysicalInputElementParameters *)v71 setAliases:v72, v73];

    v74 = _GCFConvertStringToLocalizedString();
    [(_GCDevicePhysicalInputElementParameters *)v71 setLocalizedName:v74, v75];

    [(_GCDevicePhysicalInputButtonElementParameters *)v71 setAnalog:?];
    v204 = v71;
    [(_GCDevicePhysicalInputButtonElementParameters *)v71 setEventPressedValueField:?];
    v76 = [(_GCDevicePhysicalInputElementParameters *)_GCDevicePhysicalInputButtonElementParameters parametersWithIdentifier:@"rightPaddle"];
    v77 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Right Paddle", @"Right Shoulder", 0}];
    [(_GCDevicePhysicalInputElementParameters *)v76 setAliases:v77, v78];

    v79 = _GCFConvertStringToLocalizedString();
    [(_GCDevicePhysicalInputElementParameters *)v76 setLocalizedName:v79, v80];

    [(_GCDevicePhysicalInputButtonElementParameters *)v76 setAnalog:?];
    v203 = v76;
    [(_GCDevicePhysicalInputButtonElementParameters *)v76 setEventPressedValueField:?];
    v81 = [(_GCDevicePhysicalInputElementParameters *)_GCDevicePhysicalInputButtonElementParameters parametersWithIdentifier:@"button.home"];
    v82 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Home"];
    [(_GCDevicePhysicalInputElementParameters *)v81 setAliases:v82, v83];

    v84 = _GCFConvertStringToLocalizedString();
    [(_GCDevicePhysicalInputElementParameters *)v81 setLocalizedName:v84, v85];

    v86 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"house.circle"];
    [(_GCDevicePhysicalInputElementParameters *)v81 setSymbol:v86, v87];

    [(_GCDevicePhysicalInputButtonElementParameters *)v81 setAnalog:?];
    [(_GCDevicePhysicalInputButtonElementParameters *)v81 setEventPressedValueField:?];
    v88 = [(_GCDevicePhysicalInputElementParameters *)_GCDevicePhysicalInputButtonElementParameters parametersWithIdentifier:@"button.menu"];
    v89 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Menu"];
    [(_GCDevicePhysicalInputElementParameters *)v88 setAliases:v89, v90];

    v91 = _GCFConvertStringToLocalizedString();
    [(_GCDevicePhysicalInputElementParameters *)v88 setLocalizedName:v91, v92];

    v93 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"line.horizontal.3.circle"];
    [(_GCDevicePhysicalInputElementParameters *)v88 setSymbol:v93, v94];

    [(_GCDevicePhysicalInputButtonElementParameters *)v88 setAnalog:?];
    v199 = v88;
    [(_GCDevicePhysicalInputButtonElementParameters *)v88 setEventPressedValueField:?];
    v95 = [(_GCDevicePhysicalInputElementParameters *)_GCDevicePhysicalInputButtonElementParameters parametersWithIdentifier:@"button.options"];
    v96 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Options"];
    [(_GCDevicePhysicalInputElementParameters *)v95 setAliases:v96, v97];

    v98 = _GCFConvertStringToLocalizedString();
    [(_GCDevicePhysicalInputElementParameters *)v95 setLocalizedName:v98, v99];

    v100 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"ellipsis.circle"];
    [(_GCDevicePhysicalInputElementParameters *)v95 setSymbol:v100, v101];

    [(_GCDevicePhysicalInputButtonElementParameters *)v95 setAnalog:?];
    v198 = v95;
    [(_GCDevicePhysicalInputButtonElementParameters *)v95 setEventPressedValueField:?];
    v102 = [(_GCDevicePhysicalInputElementParameters *)_GCDevicePhysicalInputButtonElementParameters parametersWithIdentifier:@"button.share"];
    v103 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Share"];
    [(_GCDevicePhysicalInputElementParameters *)v102 setAliases:v103, v104];

    v105 = _GCFConvertStringToLocalizedString();
    [(_GCDevicePhysicalInputElementParameters *)v102 setLocalizedName:v105, v106];

    v107 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"square.and.arrow.up"];
    [(_GCDevicePhysicalInputElementParameters *)v102 setSymbol:v107, v108];

    [(_GCDevicePhysicalInputButtonElementParameters *)v102 setAnalog:?];
    v193 = v102;
    [(_GCDevicePhysicalInputButtonElementParameters *)v102 setEventPressedValueField:?];
    v109 = [(_GCDevicePhysicalInputElementParameters *)_GCDevicePhysicalInputButtonElementParameters parametersWithIdentifier:@"pedal.accelerator"];
    v110 = [MEMORY[0x1E695DFD8] setWithObject:@"Accelerator Pedal"];
    [(_GCDevicePhysicalInputElementParameters *)v109 setAliases:v110, v111];

    v112 = _GCFConvertStringToLocalizedString();
    [(_GCDevicePhysicalInputElementParameters *)v109 setLocalizedName:v112, v113];

    [(_GCDevicePhysicalInputButtonElementParameters *)v109 setAnalog:?];
    [(_GCDevicePhysicalInputButtonElementParameters *)v109 setEventPressedValueField:?];
    v114 = [(_GCDevicePhysicalInputElementParameters *)_GCDevicePhysicalInputButtonElementParameters parametersWithIdentifier:@"pedal.brake"];
    v115 = [MEMORY[0x1E695DFD8] setWithObject:@"Brake Pedal"];
    [(_GCDevicePhysicalInputElementParameters *)v114 setAliases:v115, v116];

    v117 = _GCFConvertStringToLocalizedString();
    [(_GCDevicePhysicalInputElementParameters *)v114 setLocalizedName:v117, v118];

    [(_GCDevicePhysicalInputButtonElementParameters *)v114 setAnalog:?];
    [(_GCDevicePhysicalInputButtonElementParameters *)v114 setEventPressedValueField:?];
    v119 = [(_GCDevicePhysicalInputElementParameters *)_GCDevicePhysicalInputButtonElementParameters parametersWithIdentifier:@"pedal.clutch"];
    v120 = [MEMORY[0x1E695DFD8] setWithObject:@"Clutch Pedal"];
    [(_GCDevicePhysicalInputElementParameters *)v119 setAliases:v120, v121];

    v122 = _GCFConvertStringToLocalizedString();
    [(_GCDevicePhysicalInputElementParameters *)v119 setLocalizedName:v122, v123];

    [(_GCDevicePhysicalInputButtonElementParameters *)v119 setAnalog:?];
    [(_GCDevicePhysicalInputButtonElementParameters *)v119 setEventPressedValueField:?];
    v124 = [(_GCDevicePhysicalInputElementParameters *)_GCSteeringWheelElementParameters parametersWithIdentifier:@"wheel"];
    v125 = [MEMORY[0x1E695DFD8] setWithObject:@"Steering Wheel"];
    [(_GCDevicePhysicalInputElementParameters *)v124 setAliases:v125, v126];

    v127 = _GCFConvertStringToLocalizedString();
    [(_GCDevicePhysicalInputElementParameters *)v124 setLocalizedName:v127, v128];

    [(_GCSteeringWheelElementParameters *)v124 setMaximumDegreesOfRotation:?];
    [(_GCSteeringWheelElementParameters *)v124 setEventRotationValueField:?];
    v129 = [(_GCDevicePhysicalInputElementParameters *)_GCGearShifterElementParameters parametersWithIdentifier:@"shifter"];
    v130 = [MEMORY[0x1E695DFD8] setWithObject:@"Shifter"];
    [(_GCDevicePhysicalInputElementParameters *)v129 setAliases:v130, v131];

    [(_GCGearShifterElementParameters *)v129 setPatternShifter:?];
    [(_GCGearShifterElementParameters *)v129 setPositionRange:8];
    v132 = _GCFConvertStringToLocalizedString();
    [(_GCDevicePhysicalInputElementParameters *)v129 setLocalizedName:v132, v133];

    [(_GCGearShifterElementParameters *)v129 setEventShifterValueField:?];
    v187 = objc_opt_new();
    v194 = v81;
    v191 = v114;
    v192 = v109;
    v189 = v124;
    v190 = v119;
    v188 = v129;
    if (self->_mode)
    {
      v176 = MEMORY[0x1E695DFA8];
      v185 = [[_GCDevicePhysicalInputDirectionPadElement alloc] initWithParameters:v211];
      v183 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v210];
      v174 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v209];
      v181 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v208];
      v172 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v207];
      v170 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v201];
      v168 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v200];
      v166 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v206];
      v179 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v205];
      v164 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v204];
      v162 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v203];
      v160 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v81];
      v134 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v109];
      v135 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v114];
      v136 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v119];
      v137 = [[GCGearShifterElement alloc] initWithParameters:v129];
      v138 = [[GCSteeringWheelElement alloc] initWithParameters:v124];
      v177 = [v176 setWithObjects:{v185, v183, v174, v181, v172, v170, v168, v166, v179, v164, v162, v160, v134, v135, v136, v137, v138, 0}];

      if (self->_mode == 2)
      {
        v139 = v177;
        v141 = v200;
        v140 = v201;
        v142 = v198;
        v143 = v199;
        v144 = v193;
LABEL_25:
        v153 = v139;
        v154 = [[_GCDevicePhysicalInput alloc] initWithFacade:v187 elements:v139];
        v155 = [[_GCDevicePhysicalInputComponent alloc] initWithIdentifier:&stru_1F4E3B4E0 defaultPhysicalInput:v154];
        [(_GCDevicePhysicalInputComponent *)v155 setGamepadEventSource:self];

        v214[0] = v195;
        v214[1] = v155;
        v156 = [MEMORY[0x1E695DEC8] arrayWithObjects:v214 count:2];
        v213.receiver = self;
        v213.super_class = _GCLogitechRacingWheel;
        v157 = [(GCRacingWheel *)&v213 initWithComponents:v156];

        IOHIDDeviceActivate(v157->_device);
        v8 = v157;

        self = v8;
        v5 = v197;
        v6 = v196;
        goto LABEL_26;
      }

      v142 = v95;
      v152 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v95];
      [v177 addObject:v152];

      v144 = v193;
      v150 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v193];
      v139 = v177;
      [v177 addObject:v150];
      v143 = v199;
      v141 = v200;
    }

    else
    {
      v180 = MEMORY[0x1E695DFD8];
      v178 = [[_GCDevicePhysicalInputDirectionPadElement alloc] initWithParameters:v211];
      v202 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v210];
      v186 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v209];
      v184 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v208];
      v175 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v207];
      v173 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v206];
      v182 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v205];
      v167 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v204];
      v171 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v203];
      v169 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v81];
      v165 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v199];
      v145 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v95];
      v163 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v109];
      v161 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v114];
      v146 = [[_GCDevicePhysicalInputButtonElement alloc] initWithParameters:v119];
      v147 = [[GCGearShifterElement alloc] initWithParameters:v129];
      v148 = [GCSteeringWheelElement alloc];
      v149 = v124;
      v150 = v178;
      v151 = [(GCSteeringWheelElement *)v148 initWithParameters:v149];
      v139 = [v180 setWithObjects:{v178, v202, v186, v184, v175, v173, v182, v167, v171, v169, v165, v145, v163, v161, v146, v147, v151, 0}];

      v143 = v199;
      v141 = v200;
      v142 = v95;
      v144 = v193;
    }

    v140 = v201;
    goto LABEL_25;
  }

  v8 = 0;
LABEL_27:

  v158 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)dealloc
{
  device = self->_device;
  if (device)
  {
    IOHIDDeviceClose(device, 0);
    CFRelease(self->_device);
    self->_device = 0;
  }

  v4.receiver = self;
  v4.super_class = _GCLogitechRacingWheel;
  [(_GCLogitechRacingWheel *)&v4 dealloc];
}

- (BOOL)acquireDeviceWithError:(id *)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  if (gc_isInternalBuild())
  {
    [_GCLogitechRacingWheel acquireDeviceWithError:?];
  }

  v5 = IOHIDDeviceOpen(self->_device, 0);
  if (v5)
  {
    if (a3)
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = v5;
      v8 = *MEMORY[0x1E696A588];
      v20[0] = *MEMORY[0x1E696A578];
      v20[1] = v8;
      v21[0] = @"Aquire device failed";
      v21[1] = @"Failed to open device";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
      *a3 = [v6 errorWithDomain:@"IOKitErrorDomain" code:v7 userInfo:v9];
    }

    goto LABEL_6;
  }

  if (self->_mode != 3 || (*&v17[3] = 0, *v17 = 1016, (v11 = IOHIDDeviceSetReport(self->_device, kIOHIDReportTypeOutput, 248, v17, 7)) == 0))
  {
    result = 1;
    self->_isOpen = 1;
    goto LABEL_13;
  }

  v12 = v11;
  if (gc_isInternalBuild())
  {
    [_GCLogitechRacingWheel acquireDeviceWithError:v12];
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (a3)
  {
LABEL_11:
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A588];
    v18[0] = *MEMORY[0x1E696A578];
    v18[1] = v14;
    v19[0] = @"Aquire device failed";
    v19[1] = @"Failed to switch wheel mode to 900 degrses.";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
    *a3 = [v13 errorWithDomain:@"IOKitErrorDomain" code:0 userInfo:v15];
  }

LABEL_6:
  result = 0;
LABEL_13:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)observeGamepadEvents:(id)a3
{
  v6 = [a3 copy];
  if (!self)
  {
    goto LABEL_9;
  }

LABEL_2:
  for (i = objc_getProperty(self, v5, 144, 1); ; i = 0)
  {
    v8 = i;
    v9 = OUTLINED_FUNCTION_8_0();
    v10 = _Block_copy(v9);
    v11 = [v3 containsObject:v10];

    if (v11)
    {
      break;
    }

    if (self)
    {
      Property = objc_getProperty(self, v12, 144, 1);
    }

    else
    {
      Property = 0;
    }

    [Property mutableCopy];
    v14 = OUTLINED_FUNCTION_8_0();
    v15 = _Block_copy(v14);
    [v3 addObject:v15];

    if (self)
    {
      objc_setProperty_atomic_copy(self, v16, v3, 144);
    }

    if (self)
    {
      goto LABEL_2;
    }

LABEL_9:
    ;
  }

  v17 = [_GCObservation alloc];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __47___GCLogitechRacingWheel_observeGamepadEvents___block_invoke;
  v21[3] = &unk_1E8418BB8;
  v21[4] = self;
  v22 = v6;
  v18 = v6;
  v19 = [(_GCObservation *)v17 initWithCleanupHandler:v21];

  return v19;
}

- (id)eventObservers
{
  if (result)
  {
    return objc_getProperty(result, a2, 144, 1);
  }

  return result;
}

- (void)setEventObservers:(void *)a1
{
  if (a1)
  {
    objc_setProperty_atomic_copy(a1, newValue, newValue, 144);
  }
}

- (void)acquireDeviceWithError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 56);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_INFO, "Aquire device: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)acquireDeviceWithError:(int)a1 .cold.2(int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_error_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_ERROR, "Error issuing wheel mode switch command: %{mach.errno}d", v4, 8u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

@end