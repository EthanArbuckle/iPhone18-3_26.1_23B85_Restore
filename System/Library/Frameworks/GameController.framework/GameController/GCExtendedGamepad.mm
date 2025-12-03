@interface GCExtendedGamepad
+ (id)_current;
- (GCExtendedGamepad)initWithCoder:(id)coder;
- (GCExtendedGamepad)initWithController:(id)controller;
- (GCExtendedGamepad)initWithController:(id)controller initInfo:(id *)info;
- (GCExtendedGamepad)initWithIdentifier:(id)identifier;
- (GCExtendedGamepad)initWithIdentifier:(id)identifier info:(id *)info;
- (GCExtendedGamepad)initWithInfo:(id *)info;
- (GCExtendedGamepadSnapshot)saveSnapshot;
- (id)setElementValuesFromExtendedGamepad:(id)gamepad;
- (void)_handleGamepadEvent:(uint64_t)event;
- (void)_legacy_handleEvent:(__IOHIDEvent *)event;
- (void)_triggerValueChangedHandlerForElement:(id)element queue:(id)queue;
- (void)applyGlyphFlags;
- (void)encodeWithCoder:(id)coder;
- (void)initAuxiliaryButtonsWithInitInfo:(id *)info;
- (void)initShareFunctionalityWithInitInfo:(id *)info;
- (void)setGamepadEventSource:(id)source;
- (void)setStateFromExtendedGamepad:(GCExtendedGamepad *)extendedGamepad;
- (void)setThumbstickUserIntentHandler:(id)handler;
@end

@implementation GCExtendedGamepad

- (GCExtendedGamepad)initWithController:(id)controller initInfo:(id *)info
{
  controllerCopy = controller;
  v7 = [(GCExtendedGamepad *)self initWithInfo:info];
  v8 = v7;
  if (v7)
  {
    [(GCPhysicalInputProfile *)v7 setController:controllerCopy];
  }

  return v8;
}

- (GCExtendedGamepad)initWithController:(id)controller
{
  controllerCopy = controller;
  memset(v8, 0, 512);
  GCExtendedGamepadInitInfoMake(v8);
  v5 = [(GCExtendedGamepad *)self initWithController:controllerCopy initInfo:v8];
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(v8 + i);
  }

  return v5;
}

- (void)_legacy_handleEvent:(__IOHIDEvent *)event
{
  v193 = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  [(GCPhysicalInputProfile *)self setLastEventTimestamp:?];

  Type = IOHIDEventGetType();
  if (Type == 35)
  {
    IOHIDEventGetChildren();
    v170 = 0u;
    v171 = 0u;
    v172 = 0u;
    v13 = v173 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v170 objects:v185 count:16];
    v169 = v13;
    if (v14)
    {
      v15 = v14;
      v16 = *v171;
LABEL_10:
      v17 = 0;
      while (1)
      {
        if (*v171 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v170 + 1) + 8 * v17);
        IntegerValue = IOHIDEventGetIntegerValue();
        v20 = IOHIDEventGetIntegerValue();
        if (IntegerValue == 65280 && v20 == 67)
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v170 objects:v185 count:16];
          if (v15)
          {
            goto LABEL_10;
          }

          goto LABEL_17;
        }
      }

      if (!v18)
      {
        goto LABEL_42;
      }

      selfCopy2 = self;
      DataValue = IOHIDEventGetDataValue();
      v23 = [MEMORY[0x1E695DFA8] set];
      controller = [(GCPhysicalInputProfile *)selfCopy2 controller];
      handlerQueue = [controller handlerQueue];

      for (i = 0; i != 47; ++i)
      {
        if ((*DataValue >> i))
        {
          v27 = [(GCPhysicalInputProfile *)selfCopy2 remappedElementForIndex:i];
          v29 = v27;
          if (v27)
          {
            LODWORD(v28) = *(DataValue + i + 2);
            [v27 _setPendingValue:v28];
            collection = [v29 collection];

            if (collection)
            {
              collection2 = [v29 collection];
              [v23 addObject:collection2];
            }

            else
            {
              [v23 addObject:v29];
            }
          }
        }
      }

      v183 = 0u;
      v184 = 0u;
      v181 = 0u;
      v182 = 0u;
      v32 = v23;
      v33 = [v32 countByEnumeratingWithState:&v181 objects:v190 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v182;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v182 != v35)
            {
              objc_enumerationMutation(v32);
            }

            [*(*(&v181 + 1) + 8 * j) _commitPendingValueOnQueue:handlerQueue];
          }

          v34 = [v32 countByEnumeratingWithState:&v181 objects:v190 count:16];
        }

        while (v34);
      }

      v179 = 0u;
      v180 = 0u;
      v177 = 0u;
      v178 = 0u;
      v37 = v32;
      v38 = [v37 countByEnumeratingWithState:&v177 objects:&block count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v178;
        do
        {
          for (k = 0; k != v39; ++k)
          {
            if (*v178 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v177 + 1) + 8 * k);
            v174[0] = MEMORY[0x1E69E9820];
            v174[1] = 3221225472;
            v174[2] = __handleGameControllerExtendedEvent_block_invoke;
            v174[3] = &unk_1E8418C50;
            v175 = selfCopy2;
            v176 = v42;
            dispatch_async(handlerQueue, v174);
          }

          v39 = [v37 countByEnumeratingWithState:&v177 objects:&block count:16];
        }

        while (v39);
      }
    }

    else
    {
LABEL_17:

LABEL_42:
      selfCopy2 = self;
      array = [MEMORY[0x1E695DF70] array];
      controller2 = [(GCPhysicalInputProfile *)selfCopy2 controller];
      handlerQueue2 = [controller2 handlerQueue];

      IOHIDEventGetFloatValue();
      v47 = v46;
      IOHIDEventGetFloatValue();
      v49 = v48;
      IOHIDEventGetFloatValue();
      v51 = v50;
      IOHIDEventGetFloatValue();
      v53 = v52;
      IOHIDEventGetFloatValue();
      v55 = v54;
      IOHIDEventGetFloatValue();
      v57 = v56;
      IOHIDEventGetFloatValue();
      v159 = v58;
      IOHIDEventGetFloatValue();
      v158 = v59;
      IOHIDEventGetFloatValue();
      v160 = v60;
      IOHIDEventGetFloatValue();
      v161 = v61;
      IOHIDEventGetFloatValue();
      v162 = v62;
      IOHIDEventGetFloatValue();
      v163 = v63;
      IOHIDEventGetFloatValue();
      v164 = v64;
      IOHIDEventGetFloatValue();
      v165 = v65;
      IOHIDEventGetFloatValue();
      v166 = v66;
      IOHIDEventGetFloatValue();
      v167 = v67;
      v68 = 0.0;
      v168 = 0.0;
      if (selfCopy2->_leftThumbstickButton)
      {
        v68 = IOHIDEventGetIntegerValue();
      }

      v157 = v68;
      v70 = v49;
      v72 = v53;
      if (selfCopy2->_rightThumbstickButton)
      {
        v168 = IOHIDEventGetIntegerValue();
      }

      v75 = selfCopy2->_dpad;
      v76 = handlerQueue2;
      v77 = array;
      xAxis = [(GCControllerDirectionPad *)v75 xAxis];
      v71 = v51;
      *&v79 = v72 - v71;
      v80 = [xAxis _setValue:v76 queue:v79];

      yAxis = [(GCControllerDirectionPad *)v75 yAxis];
      v69 = v47;
      *&v82 = v69 - v70;
      v83 = [yAxis _setValue:v76 queue:v82];

      if ((v80 & 1) != 0 || v83)
      {
        [v77 addObject:v75];
      }

      v86 = selfCopy2->_leftThumbstick;
      v87 = v76;
      v88 = v77;
      xAxis2 = [(GCControllerDirectionPad *)v86 xAxis];
      v73 = v55;
      *&v90 = v73;
      v91 = [xAxis2 _setValue:v87 queue:v90];

      yAxis2 = [(GCControllerDirectionPad *)v86 yAxis];
      v74 = v57;
      *&v93 = v74;
      v94 = [yAxis2 _setValue:v87 queue:v93];

      if ((v91 & 1) != 0 || v94)
      {
        [v88 addObject:v86];
      }

      v96 = selfCopy2->_rightThumbstick;
      handlerQueue = v87;
      v97 = v88;
      xAxis3 = [(GCControllerDirectionPad *)v96 xAxis];
      v84 = v159;
      *&v99 = v84;
      v100 = [xAxis3 _setValue:handlerQueue queue:v99];

      yAxis3 = [(GCControllerDirectionPad *)v96 yAxis];
      v85 = v158;
      *&v102 = v85;
      v103 = [yAxis3 _setValue:handlerQueue queue:v102];

      if ((v100 & 1) != 0 || v103)
      {
        [v97 addObject:v96];
      }

      v105 = selfCopy2->_button0;
      v106 = v97;
      v95 = v160;
      *&v107 = v95;
      if ([(GCControllerButtonInput *)v105 _setValue:handlerQueue queue:v107])
      {
        [v106 addObject:v105];
      }

      v109 = selfCopy2->_button1;
      v110 = v106;
      v104 = v161;
      *&v111 = v104;
      if ([(GCControllerButtonInput *)v109 _setValue:handlerQueue queue:v111])
      {
        [v110 addObject:v109];
      }

      v113 = selfCopy2->_button2;
      v114 = v110;
      v108 = v162;
      *&v115 = v108;
      if ([(GCControllerButtonInput *)v113 _setValue:handlerQueue queue:v115])
      {
        [v114 addObject:v113];
      }

      v117 = selfCopy2->_button3;
      v118 = v114;
      v112 = v163;
      *&v119 = v112;
      if ([(GCControllerButtonInput *)v117 _setValue:handlerQueue queue:v119])
      {
        [v118 addObject:v117];
      }

      v121 = selfCopy2->_leftShoulder;
      v122 = v118;
      v116 = v164;
      *&v123 = v116;
      if ([(GCControllerButtonInput *)v121 _setValue:handlerQueue queue:v123])
      {
        [v122 addObject:v121];
      }

      v125 = selfCopy2->_rightShoulder;
      v126 = v122;
      v120 = v165;
      *&v127 = v120;
      if ([(GCControllerButtonInput *)v125 _setValue:handlerQueue queue:v127])
      {
        [v126 addObject:v125];
      }

      v129 = selfCopy2->_leftTrigger;
      v130 = v126;
      v124 = v166;
      *&v131 = v124;
      if ([(GCControllerButtonInput *)v129 _setValue:handlerQueue queue:v131])
      {
        [v130 addObject:v129];
      }

      v132 = selfCopy2->_rightTrigger;
      v133 = v130;
      v128 = v167;
      *&v134 = v128;
      if ([(GCControllerButtonInput *)v132 _setValue:handlerQueue queue:v134])
      {
        [v133 addObject:v132];
      }

      leftThumbstickButton = selfCopy2->_leftThumbstickButton;
      if (leftThumbstickButton)
      {
        v136 = leftThumbstickButton;
        v137 = v133;
        *&v138 = v157;
        if ([(GCControllerButtonInput *)v136 _setValue:handlerQueue queue:v138])
        {
          [v137 addObject:v136];
        }
      }

      rightThumbstickButton = selfCopy2->_rightThumbstickButton;
      if (rightThumbstickButton)
      {
        v140 = rightThumbstickButton;
        v141 = v133;
        *&v142 = v168;
        if ([(GCControllerButtonInput *)v140 _setValue:handlerQueue queue:v142])
        {
          [v141 addObject:v140];
        }
      }

      v188 = 0u;
      v189 = 0u;
      block = 0u;
      v187 = 0u;
      v37 = v133;
      v143 = [v37 countByEnumeratingWithState:&block objects:v190 count:16];
      if (v143)
      {
        v144 = v143;
        v145 = *v187;
        do
        {
          for (m = 0; m != v144; ++m)
          {
            if (*v187 != v145)
            {
              objc_enumerationMutation(v37);
            }

            v147 = *(*(&block + 1) + 8 * m);
            *&v181 = MEMORY[0x1E69E9820];
            *(&v181 + 1) = 3221225472;
            *&v182 = __handleGameControllerEvent_block_invoke;
            *(&v182 + 1) = &unk_1E8418C50;
            *&v183 = selfCopy2;
            *(&v183 + 1) = v147;
            dispatch_async(handlerQueue, &v181);
          }

          v144 = [v37 countByEnumeratingWithState:&block objects:v190 count:16];
        }

        while (v144);
      }
    }
  }

  else if (Type == 3)
  {
    selfCopy3 = self;
    if (IOHIDEventGetIntegerValue() != 12)
    {
LABEL_97:

      goto LABEL_98;
    }

    v7 = IOHIDEventGetIntegerValue();
    v8 = IOHIDEventGetIntegerValue();
    if (v7 == selfCopy3->_buttonMenuUsage)
    {
      buttonMenu = [(GCExtendedGamepad *)selfCopy3 buttonMenu];
      v10 = buttonMenu;
      if (v8 == 1 && ([buttonMenu isPressed] & 1) == 0)
      {
        controller3 = [(GCPhysicalInputProfile *)selfCopy3 controller];
        handlerQueue3 = [controller3 handlerQueue];
        *&block = MEMORY[0x1E69E9820];
        *(&block + 1) = 3221225472;
        *&v187 = __handleAncillaryButtonEvent_block_invoke;
        *(&v187 + 1) = &unk_1E8418C28;
        *&v188 = selfCopy3;
        dispatch_async(handlerQueue3, &block);
      }
    }

    else
    {
      if (v7 == selfCopy3->_buttonHomeUsage)
      {
        buttonHome = [(GCExtendedGamepad *)selfCopy3 buttonHome];
      }

      else
      {
        if (v7 != selfCopy3->_buttonOptionsUsage)
        {
          v10 = 0;
LABEL_96:

          goto LABEL_97;
        }

        buttonHome = [(GCExtendedGamepad *)selfCopy3 buttonOptions];
      }

      v10 = buttonHome;
    }

    if (v10)
    {
      v149 = v8;
      controller4 = [(GCPhysicalInputProfile *)selfCopy3 controller];
      handlerQueue4 = [controller4 handlerQueue];
      *&v152 = v149;
      v153 = [v10 _setValue:handlerQueue4 queue:v152];

      if (v153)
      {
        controller5 = [(GCPhysicalInputProfile *)selfCopy3 controller];
        handlerQueue5 = [controller5 handlerQueue];
        v190[0] = MEMORY[0x1E69E9820];
        v190[1] = 3221225472;
        v190[2] = __handleAncillaryButtonEvent_block_invoke_104;
        v190[3] = &unk_1E8418C50;
        v191 = selfCopy3;
        v10 = v10;
        v192 = v10;
        dispatch_async(handlerQueue5, v190);
      }
    }

    goto LABEL_96;
  }

LABEL_98:
  v156 = *MEMORY[0x1E69E9840];
}

- (GCExtendedGamepad)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  memset(v15, 0, 512);
  GCExtendedGamepadInitInfoMake(v15);
  v5 = 0;
  v6 = xmmword_1D2DF0580;
  v7 = xmmword_1D2DF0590;
  v8 = xmmword_1D2DF05A0;
  v9 = xmmword_1D2DEE1B0;
  v10 = vdupq_n_s64(0x16uLL);
  v11 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v10, v9)), *v6.i8), *v6.i8).u8[0])
    {
      BYTE8(v15[v5]) = 1;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v9)), *&v6), *&v6).i8[1])
    {
      LOBYTE(v15[v5 + 5]) = 1;
    }

    if (vuzp1_s8(vuzp1_s16(*&v6, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v8))), *&v6).i8[2])
    {
      BYTE8(v15[v5 + 9]) = 1;
      LOBYTE(v15[v5 + 14]) = 1;
    }

    if (vuzp1_s8(*&v6, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v7)), *&v6)).i32[1])
    {
      BYTE8(v15[v5 + 18]) = 1;
    }

    if (vuzp1_s8(*&v6, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v7)), *&v6)).i8[5])
    {
      LOBYTE(v15[v5 + 23]) = 1;
    }

    if (vuzp1_s8(*&v6, vuzp1_s16(*&v6, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v6)))).i8[6])
    {
      BYTE8(v15[v5 + 27]) = 1;
      LOBYTE(v15[v5 + 32]) = 1;
    }

    v7 = vaddq_s64(v7, v11);
    v8 = vaddq_s64(v8, v11);
    v9 = vaddq_s64(v9, v11);
    v6 = vaddq_s64(v6, v11);
    v5 += 36;
  }

  while (v5 != 108);
  v12 = [(GCExtendedGamepad *)self initWithIdentifier:identifierCopy info:v15, *v6.i64, *v7.i64, *v8.i64, *v9.i64];
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(v15 + i);
  }

  return v12;
}

- (GCExtendedGamepad)initWithInfo:(id *)info
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v6 = [(GCExtendedGamepad *)self initWithIdentifier:uUID info:info];

  return v6;
}

- (GCExtendedGamepad)initWithIdentifier:(id)identifier info:(id *)info
{
  v58.receiver = self;
  v58.super_class = GCExtendedGamepad;
  v5 = [(GCPhysicalInputProfile *)&v58 initWithIdentifier:identifier];
  if (v5)
  {
    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v57, info);
    v6 = [(GCPhysicalInputProfile *)v5 _directionPadWithInfo:v57];
    dpad = v5->_dpad;
    v5->_dpad = v6;

    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v56, &info->var0[5]);
    v8 = [(GCPhysicalInputProfile *)v5 _directionPadWithInfo:v56];
    leftThumbstick = v5->_leftThumbstick;
    v5->_leftThumbstick = v8;

    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v55, &info->var0[6]);
    v10 = [(GCPhysicalInputProfile *)v5 _directionPadWithInfo:v55];
    rightThumbstick = v5->_rightThumbstick;
    v5->_rightThumbstick = v10;

    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v54, &info->var0[1]);
    v12 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v54];
    button0 = v5->_button0;
    v5->_button0 = v12;

    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v53, &info->var0[2]);
    v14 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v53];
    button1 = v5->_button1;
    v5->_button1 = v14;

    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v52, &info->var0[3]);
    v16 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v52];
    button2 = v5->_button2;
    v5->_button2 = v16;

    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v51, &info->var0[4]);
    v18 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v51];
    button3 = v5->_button3;
    v5->_button3 = v18;

    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v50, &info->var0[7]);
    v20 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v50];
    leftShoulder = v5->_leftShoulder;
    v5->_leftShoulder = v20;

    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v49, &info->var0[8]);
    v22 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v49];
    rightShoulder = v5->_rightShoulder;
    v5->_rightShoulder = v22;

    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v48, &info->var0[9]);
    v24 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v48];
    leftTrigger = v5->_leftTrigger;
    v5->_leftTrigger = v24;

    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v47, &info->var0[10]);
    v26 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v47];
    rightTrigger = v5->_rightTrigger;
    v5->_rightTrigger = v26;

    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v46, &info->var0[11]);
    v28 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v46];
    leftThumbstickButton = v5->_leftThumbstickButton;
    v5->_leftThumbstickButton = v28;

    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v45, &info->var0[12]);
    v30 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v45];
    rightThumbstickButton = v5->_rightThumbstickButton;
    v5->_rightThumbstickButton = v30;

    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v44, &info->var0[16]);
    v32 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v44];
    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v43, &info->var0[17]);
    v33 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v43];
    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v42, &info->var0[18]);
    v34 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v42];
    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v41, &info->var0[19]);
    v35 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v41];
    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v40, &info->var0[20]);
    v36 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v40];
    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v39, &info->var0[21]);
    v37 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v39];
    [(GCExtendedGamepad *)v5 initAuxiliaryButtonsWithInitInfo:info];
    [(GCExtendedGamepad *)v5 initShareFunctionalityWithInitInfo:info];
  }

  return v5;
}

- (GCExtendedGamepad)initWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = GCIPCObjectIdentifier_Classes();
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"identifier"];

  v17 = 0;
  v8 = [coderCopy decodeBytesForKey:@"initInfo" returnedLength:&v17];
  if (v17 != 1592)
  {
    [(GCExtendedGamepad *)a2 initWithCoder:?];
  }

  for (i = 0; i != 198; i += 9)
  {
    v10 = &v8[i];
    *v10 = 0;
    v10[6] = 0;
    v10[7] = 0;
  }

  GCExtendedGamepadInitInfoPopulateNames(v8);
  v11 = [(GCExtendedGamepad *)self initWithIdentifier:v7 info:v8];
  v12 = v8[170];
  v8[170] = 0;

  v13 = v8[179];
  v8[179] = 0;

  v14 = v8[188];
  v8[188] = 0;

  v15 = v8[197];
  v8[197] = 0;

  -[GCPhysicalInputProfile setGlyphFlags:](v11, "setGlyphFlags:", [coderCopy decodeInt64ForKey:@"glyphFlags"]);
  [(GCExtendedGamepad *)v11 applyGlyphFlags];

  return v11;
}

- (void)applyGlyphFlags
{
  if (([(GCPhysicalInputProfile *)self glyphFlags]& 1) != 0)
  {
    v38 = @"square.circle";
    v39 = @"triangle.circle";
    v36 = @"xmark.circle";
    v37 = @"circle.circle";
    v35 = @"DS4_BUTTON_Y";
    v3 = &GCInputButtonY;
    v4 = @"DS4_BUTTON_X";
    v5 = &GCInputButtonX;
    v6 = @"DS4_BUTTON_B";
    v7 = &GCInputButtonB;
    v8 = &GCInputButtonA;
    v9 = @"DS4_BUTTON_A";
  }

  else
  {
    if (([(GCPhysicalInputProfile *)self glyphFlags]& 4) == 0)
    {
      goto LABEL_6;
    }

    v38 = @"lb.rectangle.roundedbottom";
    v39 = @"rb.rectangle.roundedbottom";
    v36 = @"lt.rectangle.roundedtop";
    v37 = @"rt.rectangle.roundedtop";
    v35 = @"XBOX_RIGHT_SHOULDER";
    v3 = &GCInputRightShoulder;
    v4 = @"XBOX_LEFT_SHOULDER";
    v5 = &GCInputLeftShoulder;
    v6 = @"XBOX_RIGHT_TRIGGER";
    v7 = &GCInputRightTrigger;
    v8 = &GCInputLeftTrigger;
    v9 = @"XBOX_LEFT_TRIGGER";
  }

  buttons = [(GCPhysicalInputProfile *)self buttons];
  v11 = *v8;
  v12 = [buttons objectForKeyedSubscript:*v8];
  [v12 setUnmappedNameLocalizationKey:v9];

  buttons2 = [(GCPhysicalInputProfile *)self buttons];
  v14 = *v7;
  v15 = [buttons2 objectForKeyedSubscript:*v7];
  [v15 setUnmappedNameLocalizationKey:v6];

  buttons3 = [(GCPhysicalInputProfile *)self buttons];
  v17 = *v5;
  v18 = [buttons3 objectForKeyedSubscript:*v5];
  [v18 setUnmappedNameLocalizationKey:v4];

  buttons4 = [(GCPhysicalInputProfile *)self buttons];
  v20 = *v3;
  v21 = [buttons4 objectForKeyedSubscript:*v3];
  [v21 setUnmappedNameLocalizationKey:v35];

  buttons5 = [(GCPhysicalInputProfile *)self buttons];
  v23 = [buttons5 objectForKeyedSubscript:v11];
  [v23 setUnmappedSfSymbolsName:v36];

  buttons6 = [(GCPhysicalInputProfile *)self buttons];
  v25 = [buttons6 objectForKeyedSubscript:v14];
  [v25 setUnmappedSfSymbolsName:v37];

  buttons7 = [(GCPhysicalInputProfile *)self buttons];
  v27 = [buttons7 objectForKeyedSubscript:v17];
  [v27 setUnmappedSfSymbolsName:v38];

  buttons8 = [(GCPhysicalInputProfile *)self buttons];
  v29 = [buttons8 objectForKeyedSubscript:v20];
  [v29 setUnmappedSfSymbolsName:v39];

LABEL_6:
  if (([(GCPhysicalInputProfile *)self glyphFlags]& 2) != 0)
  {
    v30 = @"logo.playstation";
    v31 = @"DS4_BUTTON_HOME";
  }

  else
  {
    if (([(GCPhysicalInputProfile *)self glyphFlags]& 8) == 0)
    {
      return;
    }

    v30 = @"logo.xbox";
    v31 = @"XBOX_BUTTON_HOME";
  }

  buttons9 = [(GCPhysicalInputProfile *)self buttons];
  v33 = [buttons9 objectForKeyedSubscript:@"Button Home"];
  [v33 setUnmappedNameLocalizationKey:v31];

  buttons10 = [(GCPhysicalInputProfile *)self buttons];
  v34 = [buttons10 objectForKeyedSubscript:@"Button Home"];
  [v34 setUnmappedSfSymbolsName:v30];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bzero(v39, 0x638uLL);
  v37 = +[GCExtendedGamepad version];
  v4 = 0;
  v5 = xmmword_1D2DF0580;
  v6 = xmmword_1D2DF0590;
  v7 = xmmword_1D2DF05A0;
  v8 = xmmword_1D2DEE1B0;
  v9 = vdupq_n_s64(0x16uLL);
  v10 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v9, v8)), *v5.i8), *v5.i8).u8[0])
    {
      v39[v4 + 8] = 1;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v8)), *&v5), *&v5).i8[1])
    {
      v39[v4 + 80] = 1;
    }

    if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v7))), *&v5).i8[2])
    {
      v39[v4 + 152] = 1;
      v39[v4 + 224] = 1;
    }

    if (vuzp1_s8(*&v5, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v6)), *&v5)).i32[1])
    {
      v39[v4 + 296] = 1;
    }

    if (vuzp1_s8(*&v5, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v6)), *&v5)).i8[5])
    {
      v39[v4 + 368] = 1;
    }

    if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v5)))).i8[6])
    {
      v39[v4 + 440] = 1;
      v39[v4 + 512] = 1;
    }

    v6 = vaddq_s64(v6, v10);
    v7 = vaddq_s64(v7, v10);
    v8 = vaddq_s64(v8, v10);
    v5 = vaddq_s64(v5, v10);
    v4 += 576;
  }

  while (v4 != 1728);
  v39[800] = self->_leftThumbstickButton != 0;
  v39[872] = self->_rightThumbstickButton != 0;
  v11 = [(GCPhysicalInputProfile *)self elements:*v5.i64];
  v12 = [v11 objectForKeyedSubscript:@"Left Bumper"];
  v39[1160] = v12 != 0;

  elements = [(GCPhysicalInputProfile *)self elements];
  v14 = [elements objectForKeyedSubscript:@"Right Bumper"];
  v39[1232] = v14 != 0;

  elements2 = [(GCPhysicalInputProfile *)self elements];
  v16 = [elements2 objectForKeyedSubscript:@"Back Left Button 0"];
  v39[1304] = v16 != 0;

  elements3 = [(GCPhysicalInputProfile *)self elements];
  v18 = [elements3 objectForKeyedSubscript:@"Back Left Button 1"];
  v39[1376] = v18 != 0;

  elements4 = [(GCPhysicalInputProfile *)self elements];
  v20 = [elements4 objectForKeyedSubscript:@"Back Right Button 0"];
  v39[1448] = v20 != 0;

  elements5 = [(GCPhysicalInputProfile *)self elements];
  v22 = [elements5 objectForKeyedSubscript:@"Back Right Button 1"];
  v39[1520] = v22 != 0;

  v39[944] = self->_buttonHome != 0;
  v39[1088] = self->_buttonOptions != 0;
  v39[9] = [(GCControllerDirectionPad *)self->_dpad nonAnalog];
  v39[369] = [(GCControllerDirectionPad *)self->_leftThumbstick nonAnalog];
  v39[441] = [(GCControllerDirectionPad *)self->_rightThumbstick nonAnalog];
  v39[81] = [(GCControllerButtonInput *)self->_button0 nonAnalog];
  v39[153] = [(GCControllerButtonInput *)self->_button1 nonAnalog];
  v39[225] = [(GCControllerButtonInput *)self->_button2 nonAnalog];
  v39[297] = [(GCControllerButtonInput *)self->_button3 nonAnalog];
  buttons = [(GCPhysicalInputProfile *)self buttons];
  v24 = [buttons objectForKeyedSubscript:@"Left Bumper"];
  v39[1161] = [v24 nonAnalog];

  buttons2 = [(GCPhysicalInputProfile *)self buttons];
  v26 = [buttons2 objectForKeyedSubscript:@"Right Bumper"];
  v39[1233] = [v26 nonAnalog];

  buttons3 = [(GCPhysicalInputProfile *)self buttons];
  v28 = [buttons3 objectForKeyedSubscript:@"Back Left Button 0"];
  v39[1305] = [v28 nonAnalog];

  buttons4 = [(GCPhysicalInputProfile *)self buttons];
  v30 = [buttons4 objectForKeyedSubscript:@"Back Left Button 1"];
  v39[1377] = [v30 nonAnalog];

  buttons5 = [(GCPhysicalInputProfile *)self buttons];
  v32 = [buttons5 objectForKeyedSubscript:@"Back Right Button 0"];
  v39[1449] = [v32 nonAnalog];

  buttons6 = [(GCPhysicalInputProfile *)self buttons];
  v34 = [buttons6 objectForKeyedSubscript:@"Back Right Button 1"];
  v39[1521] = [v34 nonAnalog];

  v39[513] = [(GCControllerButtonInput *)self->_leftShoulder nonAnalog];
  v39[585] = [(GCControllerButtonInput *)self->_rightShoulder nonAnalog];
  v39[657] = [(GCControllerButtonInput *)self->_leftTrigger nonAnalog];
  v39[729] = [(GCControllerButtonInput *)self->_rightTrigger nonAnalog];
  v39[801] = [(GCControllerButtonInput *)self->_leftThumbstickButton nonAnalog];
  v39[873] = [(GCControllerButtonInput *)self->_rightThumbstickButton nonAnalog];
  v39[1017] = [(GCControllerButtonInput *)self->_buttonMenu nonAnalog];
  v39[945] = [(GCControllerButtonInput *)self->_buttonHome nonAnalog];
  v39[1089] = [(GCControllerButtonInput *)self->_buttonOptions nonAnalog];
  v39[1585] = self->_snapshotUsagePresent;
  v39[1584] = self->_recordUsagePresent;
  [(GCExtendedGamepad *)self populateEncodedInitInfo:v39];
  [coderCopy encodeBytes:v39 length:1592 forKey:@"initInfo"];
  identifier = [(GCPhysicalInputProfile *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [coderCopy encodeInteger:v37 forKey:@"version"];
  [coderCopy encodeInt64:-[GCPhysicalInputProfile glyphFlags](self forKey:{"glyphFlags"), @"glyphFlags"}];
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(&v39[i]);
  }
}

- (void)initAuxiliaryButtonsWithInitInfo:(id *)info
{
  var1 = info->var0[13].var1;
  v5 = info->var0[15].var1;
  v14 = info->var0[14].var1;
  var2 = info->var0[13].var2;
  v6 = info->var0[14].var2;
  v7 = info->var0[15].var2;
  self->_buttonHomeUsage = -1;
  self->_buttonMenuUsage = -1;
  self->_buttonOptionsUsage = -1;
  v27 = 1;
  v26 = @"Button Menu";
  BYTE1(v27) = v6;
  v29 = 0;
  v30 = 0;
  v28 = 23;
  v31 = 0x1000000000001;
  v32 = @"line.horizontal.3.circle";
  v33 = _GCFConvertStringToLocalizedString();
  v34 = 0;
  self->_buttonMenuUsage = 516;
  if (v5)
  {
    *&v20 = 1;
    v19 = @"Button Options";
    BYTE1(v20) = v7;
    v21 = 0uLL;
    *(&v20 + 1) = 24;
    v22 = 0x1010000000001;
    v23 = @"ellipsis.circle";
    v24 = _GCFConvertStringToLocalizedString();
    v25 = 0;
    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v18, &v19);
    v8 = [(GCPhysicalInputProfile *)self _buttonWithInfo:v18];
    buttonOptions = self->_buttonOptions;
    self->_buttonOptions = v8;

    self->_buttonOptionsUsage = 521;
    __destructor_8_s0_s48_s56_s64(&v19);
  }

  if (var1)
  {
    if (v14)
    {
      v22 = 0;
      v21 = 0u;
      v20 = 0u;
      v19 = @"Button Home";
      LOBYTE(v20) = 1;
      BYTE1(v20) = var2;
      v21 = 0uLL;
      *(&v20 + 1) = 22;
      LODWORD(v22) = 1;
      WORD2(v22) = 256;
      BYTE6(v22) = 1;
      v23 = @"house.circle";
      v24 = _GCFConvertStringToLocalizedString();
      v25 = 0;
      __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v17, &v19);
      v10 = [(GCPhysicalInputProfile *)self _buttonWithInfo:v17];
      buttonHome = self->_buttonHome;
      self->_buttonHome = v10;

      self->_buttonHomeUsage = 547;
      __destructor_8_s0_s48_s56_s64(&v19);
    }

    else
    {
      [(GCControllerButtonInput *)self->_buttonMenu setNonAnalog:var2];
      self->_buttonMenuUsage = 547;
    }
  }

  __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v16, &v26);
  v12 = [(GCPhysicalInputProfile *)self _buttonWithInfo:v16];
  buttonMenu = self->_buttonMenu;
  self->_buttonMenu = v12;

  __destructor_8_s0_s48_s56_s64(&v26);
}

- (void)initShareFunctionalityWithInitInfo:(id *)info
{
  self->_snapshotUsagePresent = info->var2;
  var1 = info->var1;
  self->_recordUsagePresent = var1;
  if (var1)
  {
    v7 = @"Button Share";
    v8 = 257;
    v10 = 0;
    v11 = 0;
    v9 = 40;
    v12 = 1;
    v13 = 256;
    v14 = 1;
    v15 = @"square.and.arrow.up";
    v16 = _GCFConvertStringToLocalizedString();
    v17 = 0;
    v5 = [(GCPhysicalInputProfile *)self _buttonWithInfo:&v7];
    buttonShare = self->__buttonShare;
    self->__buttonShare = v5;
  }
}

- (GCExtendedGamepadSnapshot)saveSnapshot
{
  v47.supportsClickableThumbsticks = 0;
  v47.version = 257;
  v47.size = 63;
  dpad = [(GCExtendedGamepad *)self dpad];
  xAxis = [dpad xAxis];
  [xAxis value];
  v47.dpadX = v5;

  dpad2 = [(GCExtendedGamepad *)self dpad];
  yAxis = [dpad2 yAxis];
  [yAxis value];
  v47.dpadY = v8;

  buttonA = [(GCExtendedGamepad *)self buttonA];
  [buttonA value];
  v47.buttonA = v10;

  buttonB = [(GCExtendedGamepad *)self buttonB];
  [buttonB value];
  v47.buttonB = v12;

  buttonX = [(GCExtendedGamepad *)self buttonX];
  [buttonX value];
  v47.buttonX = v14;

  buttonY = [(GCExtendedGamepad *)self buttonY];
  [buttonY value];
  v47.buttonY = v16;

  leftThumbstick = [(GCExtendedGamepad *)self leftThumbstick];
  xAxis2 = [leftThumbstick xAxis];
  [xAxis2 value];
  v47.leftThumbstickX = v19;

  leftThumbstick2 = [(GCExtendedGamepad *)self leftThumbstick];
  yAxis2 = [leftThumbstick2 yAxis];
  [yAxis2 value];
  v47.leftThumbstickY = v22;

  rightThumbstick = [(GCExtendedGamepad *)self rightThumbstick];
  xAxis3 = [rightThumbstick xAxis];
  [xAxis3 value];
  v47.rightThumbstickX = v25;

  rightThumbstick2 = [(GCExtendedGamepad *)self rightThumbstick];
  yAxis3 = [rightThumbstick2 yAxis];
  [yAxis3 value];
  v47.rightThumbstickY = v28;

  leftShoulder = [(GCExtendedGamepad *)self leftShoulder];
  [leftShoulder value];
  v47.leftShoulder = v30;

  rightShoulder = [(GCExtendedGamepad *)self rightShoulder];
  [rightShoulder value];
  v47.rightShoulder = v32;

  leftTrigger = [(GCExtendedGamepad *)self leftTrigger];
  [leftTrigger value];
  v47.leftTrigger = v34;

  rightTrigger = [(GCExtendedGamepad *)self rightTrigger];
  [rightTrigger value];
  v47.rightTrigger = v36;

  rightThumbstickButton = [(GCExtendedGamepad *)self rightThumbstickButton];
  v47.rightThumbstickButton = [rightThumbstickButton isPressed];

  leftThumbstickButton = [(GCExtendedGamepad *)self leftThumbstickButton];
  v47.leftThumbstickButton = [leftThumbstickButton isPressed];

  rightThumbstickButton2 = [(GCExtendedGamepad *)self rightThumbstickButton];
  if (rightThumbstickButton2)
  {
    leftThumbstickButton2 = [(GCExtendedGamepad *)self leftThumbstickButton];
    v41 = leftThumbstickButton2 != 0;
  }

  else
  {
    v41 = 0;
  }

  v47.supportsClickableThumbsticks = v41;

  v42 = NSDataFromGCExtendedGamepadSnapshotData(&v47);
  v43 = [GCExtendedGamepadSnapshot alloc];
  controller = [(GCPhysicalInputProfile *)self controller];
  v45 = [(GCExtendedGamepadSnapshot *)v43 initWithController:controller snapshotData:v42];

  return v45;
}

- (id)setElementValuesFromExtendedGamepad:(id)gamepad
{
  gamepadCopy = gamepad;
  array = [MEMORY[0x1E695DF70] array];
  controller = [(GCPhysicalInputProfile *)self controller];
  handlerQueue = [controller handlerQueue];

  selfCopy = self;
  dpad = self->_dpad;
  dpad = [gamepadCopy dpad];
  xAxis = [dpad xAxis];
  [xAxis value];
  v12 = v11;
  v232 = gamepadCopy;
  dpad2 = [gamepadCopy dpad];
  yAxis = [dpad2 yAxis];
  [yAxis value];
  v16 = v15;
  v17 = dpad;
  v18 = handlerQueue;
  v19 = array;
  xAxis2 = [(GCControllerDirectionPad *)v17 xAxis];
  LODWORD(v21) = v12;
  LOBYTE(dpad) = [xAxis2 _setValue:v18 queue:v21];

  yAxis2 = [(GCControllerDirectionPad *)v17 yAxis];
  LODWORD(v23) = v16;
  v24 = [yAxis2 _setValue:v18 queue:v23];

  if ((dpad & 1) != 0 || v24)
  {
    [v19 addObject:v17];
  }

  leftThumbstick = selfCopy->_leftThumbstick;
  leftThumbstick = [v232 leftThumbstick];
  xAxis3 = [leftThumbstick xAxis];
  [xAxis3 value];
  v29 = v28;
  leftThumbstick2 = [v232 leftThumbstick];
  yAxis3 = [leftThumbstick2 yAxis];
  [yAxis3 value];
  v33 = v32;
  v34 = leftThumbstick;
  v35 = v18;
  v36 = v19;
  xAxis4 = [(GCControllerDirectionPad *)v34 xAxis];
  LODWORD(v38) = v29;
  v39 = [xAxis4 _setValue:v35 queue:v38];

  yAxis4 = [(GCControllerDirectionPad *)v34 yAxis];
  LODWORD(v41) = v33;
  v42 = [yAxis4 _setValue:v35 queue:v41];

  if ((v39 & 1) != 0 || v42)
  {
    [v36 addObject:v34];
  }

  rightThumbstick = selfCopy->_rightThumbstick;
  rightThumbstick = [v232 rightThumbstick];
  xAxis5 = [rightThumbstick xAxis];
  [xAxis5 value];
  v47 = v46;
  rightThumbstick2 = [v232 rightThumbstick];
  yAxis5 = [rightThumbstick2 yAxis];
  [yAxis5 value];
  v51 = v50;
  v52 = rightThumbstick;
  v53 = v35;
  v54 = v36;
  xAxis6 = [(GCControllerDirectionPad *)v52 xAxis];
  LODWORD(v56) = v47;
  v57 = [xAxis6 _setValue:v53 queue:v56];

  yAxis6 = [(GCControllerDirectionPad *)v52 yAxis];
  LODWORD(v59) = v51;
  v60 = [yAxis6 _setValue:v53 queue:v59];

  if ((v57 & 1) != 0 || v60)
  {
    [v54 addObject:v52];
  }

  v61 = selfCopy;
  buttonMenu = selfCopy->_buttonMenu;
  buttonMenu = [v232 buttonMenu];
  [buttonMenu value];
  v65 = v64;
  v66 = buttonMenu;
  v67 = v54;
  LODWORD(v68) = v65;
  if ([(GCControllerButtonInput *)v66 _setValue:v53 queue:v68])
  {
    [v67 addObject:v66];
  }

  buttonHome = selfCopy->_buttonHome;
  buttonHome = [v232 buttonHome];
  [buttonHome value];
  v72 = v71;
  v73 = buttonHome;
  v74 = v67;
  LODWORD(v75) = v72;
  if ([(GCControllerButtonInput *)v73 _setValue:v53 queue:v75])
  {
    [v74 addObject:v73];
  }

  button0 = selfCopy->_button0;
  buttonA = [v232 buttonA];
  [buttonA value];
  v79 = v78;
  v80 = button0;
  v81 = v74;
  LODWORD(v82) = v79;
  if ([(GCControllerButtonInput *)v80 _setValue:v53 queue:v82])
  {
    [v81 addObject:v80];
  }

  button1 = selfCopy->_button1;
  buttonB = [v232 buttonB];
  [buttonB value];
  v86 = v85;
  v87 = button1;
  v88 = v81;
  LODWORD(v89) = v86;
  if ([(GCControllerButtonInput *)v87 _setValue:v53 queue:v89])
  {
    [v88 addObject:v87];
  }

  button2 = selfCopy->_button2;
  buttonX = [v232 buttonX];
  [buttonX value];
  v93 = v92;
  v94 = button2;
  v95 = v88;
  LODWORD(v96) = v93;
  if ([(GCControllerButtonInput *)v94 _setValue:v53 queue:v96])
  {
    [v95 addObject:v94];
  }

  button3 = selfCopy->_button3;
  buttonY = [v232 buttonY];
  [buttonY value];
  v100 = v99;
  v101 = button3;
  v102 = v95;
  LODWORD(v103) = v100;
  if ([(GCControllerButtonInput *)v101 _setValue:v53 queue:v103])
  {
    [v102 addObject:v101];
  }

  leftShoulder = selfCopy->_leftShoulder;
  leftShoulder = [v232 leftShoulder];
  [leftShoulder value];
  v107 = v106;
  v108 = leftShoulder;
  v109 = v102;
  LODWORD(v110) = v107;
  if ([(GCControllerButtonInput *)v108 _setValue:v53 queue:v110])
  {
    [v109 addObject:v108];
  }

  rightShoulder = selfCopy->_rightShoulder;
  rightShoulder = [v232 rightShoulder];
  [rightShoulder value];
  v114 = v113;
  v115 = rightShoulder;
  v116 = v109;
  LODWORD(v117) = v114;
  if ([(GCControllerButtonInput *)v115 _setValue:v53 queue:v117])
  {
    [v116 addObject:v115];
  }

  leftTrigger = selfCopy->_leftTrigger;
  leftTrigger = [v232 leftTrigger];
  [leftTrigger value];
  v121 = v120;
  v122 = leftTrigger;
  v123 = v116;
  LODWORD(v124) = v121;
  if ([(GCControllerButtonInput *)v122 _setValue:v53 queue:v124])
  {
    [v123 addObject:v122];
  }

  rightTrigger = selfCopy->_rightTrigger;
  rightTrigger = [v232 rightTrigger];
  [rightTrigger value];
  v128 = v127;
  v129 = rightTrigger;
  v130 = v123;
  LODWORD(v131) = v128;
  if ([(GCControllerButtonInput *)v129 _setValue:v53 queue:v131])
  {
    [v130 addObject:v129];
  }

  if (selfCopy->_leftThumbstickButton)
  {
    leftThumbstickButton = [v232 leftThumbstickButton];

    if (leftThumbstickButton)
    {
      leftThumbstickButton = selfCopy->_leftThumbstickButton;
      leftThumbstickButton2 = [v232 leftThumbstickButton];
      [leftThumbstickButton2 value];
      v136 = v135;
      v137 = leftThumbstickButton;
      v138 = v130;
      LODWORD(v139) = v136;
      if ([(GCControllerButtonInput *)v137 _setValue:v53 queue:v139])
      {
        [v138 addObject:v137];
      }
    }
  }

  if (selfCopy->_rightThumbstickButton)
  {
    rightThumbstickButton = [v232 rightThumbstickButton];

    if (rightThumbstickButton)
    {
      rightThumbstickButton = selfCopy->_rightThumbstickButton;
      rightThumbstickButton2 = [v232 rightThumbstickButton];
      [rightThumbstickButton2 value];
      v144 = v143;
      v145 = rightThumbstickButton;
      v146 = v130;
      LODWORD(v147) = v144;
      if ([(GCControllerButtonInput *)v145 _setValue:v53 queue:v147])
      {
        [v146 addObject:v145];
      }
    }
  }

  buttons = [(GCPhysicalInputProfile *)selfCopy buttons];
  v149 = [buttons objectForKeyedSubscript:@"Left Bumper"];
  if (v149)
  {
    v150 = v149;
    v151 = [v232 objectForKeyedSubscript:@"Left Bumper"];

    if (!v151)
    {
      goto LABEL_46;
    }

    buttons = [(GCPhysicalInputProfile *)selfCopy buttons];
    v152 = [buttons objectForKeyedSubscript:@"Left Bumper"];
    buttons2 = [v232 buttons];
    v154 = [buttons2 objectForKeyedSubscript:@"Left Bumper"];
    [v154 value];
    v156 = v155;
    v157 = v152;
    v158 = v130;
    LODWORD(v159) = v156;
    if ([v157 _setValue:v53 queue:v159])
    {
      [v158 addObject:v157];
    }

    v61 = selfCopy;
  }

LABEL_46:
  buttons3 = [(GCPhysicalInputProfile *)v61 buttons];
  v161 = [buttons3 objectForKeyedSubscript:@"Right Bumper"];
  if (v161)
  {
    v162 = v161;
    buttons4 = [v232 buttons];
    v164 = [buttons4 objectForKeyedSubscript:@"Right Bumper"];

    if (!v164)
    {
      goto LABEL_52;
    }

    buttons3 = [(GCPhysicalInputProfile *)v61 buttons];
    v165 = [buttons3 objectForKeyedSubscript:@"Right Bumper"];
    buttons5 = [v232 buttons];
    v167 = [buttons5 objectForKeyedSubscript:@"Right Bumper"];
    [v167 value];
    v169 = v168;
    v170 = v165;
    v171 = v130;
    LODWORD(v172) = v169;
    if ([v170 _setValue:v53 queue:v172])
    {
      [v171 addObject:v170];
    }

    v61 = selfCopy;
  }

LABEL_52:
  buttons6 = [(GCPhysicalInputProfile *)v61 buttons];
  v174 = [buttons6 objectForKeyedSubscript:@"Back Left Button 0"];
  if (v174)
  {
    v175 = v174;
    v176 = [v232 objectForKeyedSubscript:@"Back Left Button 0"];

    if (!v176)
    {
      goto LABEL_58;
    }

    buttons6 = [(GCPhysicalInputProfile *)v61 buttons];
    v177 = [buttons6 objectForKeyedSubscript:@"Back Left Button 0"];
    buttons7 = [v232 buttons];
    v179 = [buttons7 objectForKeyedSubscript:@"Back Left Button 0"];
    [v179 value];
    v181 = v180;
    v182 = v177;
    v183 = v130;
    LODWORD(v184) = v181;
    if ([v182 _setValue:v53 queue:v184])
    {
      [v183 addObject:v182];
    }

    v61 = selfCopy;
  }

LABEL_58:
  buttons8 = [(GCPhysicalInputProfile *)v61 buttons];
  v186 = [buttons8 objectForKeyedSubscript:@"Back Left Button 1"];
  if (v186)
  {
    v187 = v186;
    buttons9 = [v232 buttons];
    v189 = [buttons9 objectForKeyedSubscript:@"Back Left Button 1"];

    if (!v189)
    {
      goto LABEL_64;
    }

    buttons8 = [(GCPhysicalInputProfile *)v61 buttons];
    v190 = [buttons8 objectForKeyedSubscript:@"Back Left Button 1"];
    buttons10 = [v232 buttons];
    v192 = [buttons10 objectForKeyedSubscript:@"Back Left Button 1"];
    [v192 value];
    v194 = v193;
    v195 = v190;
    v196 = v130;
    LODWORD(v197) = v194;
    if ([v195 _setValue:v53 queue:v197])
    {
      [v196 addObject:v195];
    }

    v61 = selfCopy;
  }

LABEL_64:
  buttons11 = [(GCPhysicalInputProfile *)v61 buttons];
  v199 = [buttons11 objectForKeyedSubscript:@"Back Right Button 0"];
  if (v199)
  {
    v200 = v199;
    buttons12 = [v232 buttons];
    v202 = [buttons12 objectForKeyedSubscript:@"Back Right Button 0"];

    if (!v202)
    {
      goto LABEL_70;
    }

    buttons11 = [(GCPhysicalInputProfile *)v61 buttons];
    v203 = [buttons11 objectForKeyedSubscript:@"Back Right Button 0"];
    buttons13 = [v232 buttons];
    v205 = [buttons13 objectForKeyedSubscript:@"Back Right Button 0"];
    [v205 value];
    v207 = v206;
    v208 = v203;
    v209 = v130;
    LODWORD(v210) = v207;
    if ([v208 _setValue:v53 queue:v210])
    {
      [v209 addObject:v208];
    }

    v61 = selfCopy;
  }

LABEL_70:
  buttons14 = [(GCPhysicalInputProfile *)v61 buttons];
  v212 = [buttons14 objectForKeyedSubscript:@"Back Right Button 1"];
  if (!v212)
  {
LABEL_75:

    goto LABEL_76;
  }

  v213 = v212;
  v214 = [v232 objectForKeyedSubscript:@"Back Right Button 1"];

  if (v214)
  {
    buttons14 = [(GCPhysicalInputProfile *)v61 buttons];
    v215 = [buttons14 objectForKeyedSubscript:@"Back Right Button 1"];
    buttons15 = [v232 buttons];
    v217 = [buttons15 objectForKeyedSubscript:@"Back Right Button 1"];
    [v217 value];
    v219 = v218;
    v220 = v215;
    v221 = v130;
    LODWORD(v222) = v219;
    if ([v220 _setValue:v53 queue:v222])
    {
      [v221 addObject:v220];
    }

    v61 = selfCopy;
    goto LABEL_75;
  }

LABEL_76:
  if (v61->_buttonOptions)
  {
    buttonOptions = [v232 buttonOptions];

    if (buttonOptions)
    {
      buttonOptions = v61->_buttonOptions;
      buttonOptions2 = [v232 buttonOptions];
      [buttonOptions2 value];
      v227 = v226;
      v228 = buttonOptions;
      v229 = v130;
      LODWORD(v230) = v227;
      if ([(GCControllerButtonInput *)v228 _setValue:v53 queue:v230])
      {
        [v229 addObject:v228];
      }
    }
  }

  return v130;
}

- (void)setStateFromExtendedGamepad:(GCExtendedGamepad *)extendedGamepad
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = extendedGamepad;
  controller = [(GCPhysicalInputProfile *)self controller];
  if (!controller || (v6 = controller, -[GCPhysicalInputProfile controller](self, "controller"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isSnapshot], v7, v6, v8))
  {
    [(GCExtendedGamepad *)self setElementValuesFromExtendedGamepad:v4];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v24 = 0u;
    v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        v12 = 0;
        do
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v21 + 1) + 8 * v12);
          controller2 = [(GCPhysicalInputProfile *)self controller];
          handlerQueue = [controller2 handlerQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __49__GCExtendedGamepad_setStateFromExtendedGamepad___block_invoke;
          block[3] = &unk_1E8419BC0;
          block[4] = self;
          v19 = v4;
          v20 = v13;
          dispatch_async(handlerQueue, block);

          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __49__GCExtendedGamepad_setStateFromExtendedGamepad___block_invoke(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __49__GCExtendedGamepad_setStateFromExtendedGamepad___block_invoke_cold_1(a1);
  }

  v2 = [*(a1 + 32) valueDidChangeHandler];
  v3 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 48));
  }

  v4 = *(*(a1 + 32) + 672);
  if (v4)
  {
    v5 = *(a1 + 48);
    (*(v4 + 16))();
  }
}

- (void)_triggerValueChangedHandlerForElement:(id)element queue:(id)queue
{
  elementCopy = element;
  queueCopy = queue;
  if (gc_isInternalBuild())
  {
    [GCExtendedGamepad _triggerValueChangedHandlerForElement:elementCopy queue:?];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__GCExtendedGamepad__triggerValueChangedHandlerForElement_queue___block_invoke;
  v9[3] = &unk_1E8418C50;
  v9[4] = self;
  v10 = elementCopy;
  v8 = elementCopy;
  dispatch_async(queueCopy, v9);
}

void __65__GCExtendedGamepad__triggerValueChangedHandlerForElement_queue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) valueDidChangeHandler];
  v3 = v2;
  v6 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 40));
    v3 = v6;
  }

  v4 = *(*(a1 + 32) + 672);
  if (v4)
  {
    v5 = *(a1 + 40);
    (*(v4 + 16))();
    v3 = v6;
  }
}

+ (id)_current
{
  v2 = +[_GCLegacyDeviceSession sharedInstance];
  currentExtendedGamepad = [v2 currentExtendedGamepad];

  return currentExtendedGamepad;
}

void __49__GCExtendedGamepad_PubSub___handleGamepadEvent___block_invoke(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __49__GCExtendedGamepad_PubSub___handleGamepadEvent___block_invoke_cold_1(a1);
  }

  v2 = [*(a1 + 32) __deprecated_controllerPausedHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) __deprecated_controllerPausedHandler];
    v3[2](v3, *(a1 + 32));
  }
}

void __49__GCExtendedGamepad_PubSub___handleGamepadEvent___block_invoke_361(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        (*(*(a1 + 48) + 16))(*(a1 + 48));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void *__49__GCExtendedGamepad_PubSub___handleGamepadEvent___block_invoke_362(void *result)
{
  v1 = *(result[4] + 672);
  if (v1)
  {
    return (*(v1 + 16))(*(result[4] + 672), result[5], result[6]);
  }

  return result;
}

void __49__GCExtendedGamepad_PubSub___handleGamepadEvent___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = *(a1 + 48);
        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setGamepadEventSource:(id)source
{
  sourceCopy = source;
  objc_initWeak(&location, self);
  gamepadEventObservation = self->_gamepadEventObservation;
  self->_gamepadEventObservation = 0;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__GCExtendedGamepad_PubSub__setGamepadEventSource___block_invoke;
  v8[3] = &unk_1E841A588;
  objc_copyWeak(&v9, &location);
  v6 = [sourceCopy observeGamepadEvents:v8];
  v7 = self->_gamepadEventObservation;
  self->_gamepadEventObservation = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)setThumbstickUserIntentHandler:(id)handler
{
  handlerCopy = handler;
  webKitUserIntentRecognizer = self->_webKitUserIntentRecognizer;
  self->_webKitUserIntentRecognizer = 0;

  if (handlerCopy)
  {
    v5 = [[_GCWebKitUserIntentRecognizer alloc] initWithPhysicalInputProfile:self thumbstickUserIntentHandler:handlerCopy];
    v6 = self->_webKitUserIntentRecognizer;
    self->_webKitUserIntentRecognizer = v5;
  }
}

- (void)_handleGamepadEvent:(uint64_t)event
{
  v89 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (event)
  {
    timestamp = [v3 timestamp];
    device = [event device];
    [event _receivedEventWithTimestamp:timestamp];
    controller = [event controller];
    if (!controller)
    {
LABEL_60:

      goto LABEL_61;
    }

    v60 = timestamp;
    v8 = _gc_log_signpost();
    v9 = os_signpost_id_generate(v8);
    v10 = _gc_log_signpost();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

    if (v11)
    {
      v50 = v8;
      v51 = v50;
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
      {
        [event lastEventTimestamp];
        *buf = 134218496;
        v84 = device;
        v85 = 2048;
        v86 = v60;
        v87 = 2048;
        v88 = v52;
        _os_signpost_emit_with_name_impl(&dword_1D2CD5000, v51, OS_SIGNPOST_INTERVAL_BEGIN, v9, "GCExtendedGamepad.handle.GamepadEvent", "{device: %p, eventTimestamp: %llu, lastEventTimestamp: %f}", buf, 0x20u);
      }
    }

    spid = v9;
    v58 = v8;
    v12 = [MEMORY[0x1E695DFA8] set];
    v61 = controller;
    handlerQueue = [controller handlerQueue];
    for (i = 0; i != 47; ++i)
    {
      if ((i & 0x3E) != 0x16 && [v4 hasValidValueForElement:i])
      {
        v15 = [event remappedElementForIndex:i];
        if (v15)
        {
          [v4 floatValueForElement:i];
          [v15 _setPendingValue:?];
          collection = [v15 collection];

          if (collection)
          {
            collection2 = [v15 collection];
            [v12 addObject:collection2];
          }

          else
          {
            [v12 addObject:v15];
          }
        }
      }
    }

    v59 = device;
    if (*(event + 656) == 547 && [OUTLINED_FUNCTION_0_27() hasValidValueForElement:?])
    {
      v18 = OUTLINED_FUNCTION_0_27();
    }

    else
    {
      if (*(event + 832) && [OUTLINED_FUNCTION_0_27() hasValidValueForElement:?])
      {
        [OUTLINED_FUNCTION_0_27() floatValueForElement:?];
        [*(event + 832) _setPendingValue:?];
        [v12 addObject:*(event + 832)];
      }

      if (!*(event + 816) || ![v4 hasValidValueForElement:23])
      {
        v22 = 0;
LABEL_26:

        v25 = [MEMORY[0x1E695DFA8] set];
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v26 = v12;
        v27 = [v26 countByEnumeratingWithState:&v75 objects:v82 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v76;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v76 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v75 + 1) + 8 * j);
              if ([v31 _commitPendingValueOnQueue:handlerQueue])
              {
                [v25 addObject:v31];
              }
            }

            v28 = [v26 countByEnumeratingWithState:&v75 objects:v82 count:16];
          }

          while (v28);
        }

        if ([v25 count])
        {
          eventCopy = event;
          valueDidChangeHandler = [eventCopy valueDidChangeHandler];
          if (valueDidChangeHandler)
          {
            v71[0] = MEMORY[0x1E69E9820];
            v71[1] = 3221225472;
            v71[2] = __49__GCExtendedGamepad_PubSub___handleGamepadEvent___block_invoke_361;
            v71[3] = &unk_1E841A968;
            v72 = v25;
            v73 = eventCopy;
            v74 = valueDidChangeHandler;
            dispatch_async(handlerQueue, v71);
          }

          v34 = eventCopy[99];
          if (v34)
          {
            [v34 processChangedElements:v25 atTimestamp:v60];
          }
        }

        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v35 = v25;
        v36 = [v35 countByEnumeratingWithState:&v67 objects:v81 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v68;
          do
          {
            v39 = 0;
            do
            {
              if (*v68 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v40 = *(*(&v67 + 1) + 8 * v39);
              if (gc_isInternalBuild())
              {
                log = getGCLogger();
                if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
                {
                  debugName = [v61 debugName];
                  *buf = 138412546;
                  v84 = debugName;
                  v85 = 2112;
                  v86 = v40;
                  _os_log_debug_impl(&dword_1D2CD5000, log, OS_LOG_TYPE_DEBUG, "%@ changed: %@", buf, 0x16u);
                }
              }

              v66[0] = MEMORY[0x1E69E9820];
              v66[1] = 3221225472;
              v66[2] = __49__GCExtendedGamepad_PubSub___handleGamepadEvent___block_invoke_362;
              v66[3] = &unk_1E8419BC0;
              v66[4] = event;
              v66[5] = event;
              v66[6] = v40;
              eventCopy2 = event;
              dispatch_async(handlerQueue, v66);

              ++v39;
            }

            while (v37 != v39);
            v42 = [v35 countByEnumeratingWithState:&v67 objects:v81 count:16];
            v37 = v42;
          }

          while (v42);
        }

        syntheticDeviceElementValueChangedHandler = [event syntheticDeviceElementValueChangedHandler];
        device = v59;
        if (syntheticDeviceElementValueChangedHandler)
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __49__GCExtendedGamepad_PubSub___handleGamepadEvent___block_invoke_2;
          aBlock[3] = &unk_1E8419210;
          v63 = v35;
          v64 = syntheticDeviceElementValueChangedHandler;
          v65 = v60;
          v44 = _Block_copy(aBlock);
          syntheticDeviceHandlerQueue = [event syntheticDeviceHandlerQueue];
          v46 = syntheticDeviceHandlerQueue;
          if (syntheticDeviceHandlerQueue)
          {
            dispatch_async(syntheticDeviceHandlerQueue, v44);
          }

          else
          {
            v44[2](v44);
          }
        }

        v47 = _gc_log_signpost();
        v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG);

        if (v48)
        {
          v53 = v58;
          v54 = v53;
          if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1D2CD5000, v54, OS_SIGNPOST_INTERVAL_END, spid, "GCExtendedGamepad.handle.GamepadEvent", "{}", buf, 2u);
          }
        }

        controller = v61;
        goto LABEL_60;
      }

      v18 = v4;
      v19 = 23;
    }

    [v18 floatValueForElement:v19];
    v21 = v20;
    v22 = *(event + 816);
    *&v23 = v21;
    [*(event + 816) _setPendingValue:v23];
    [v12 addObject:*(event + 816)];
    if (v21 > 0.0 && ([v22 isPressed] & 1) == 0)
    {
      handlerQueue2 = [controller handlerQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49__GCExtendedGamepad_PubSub___handleGamepadEvent___block_invoke;
      block[3] = &unk_1E8418C28;
      v80 = controller;
      dispatch_async(handlerQueue2, block);
    }

    goto LABEL_26;
  }

LABEL_61:

  v49 = *MEMORY[0x1E69E9840];
}

void __51__GCExtendedGamepad_PubSub__setGamepadEventSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(GCExtendedGamepad *)WeakRetained _handleGamepadEvent:v3];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCExtendedGamepad.m" lineNumber:316 description:@"Serialization bug."];
}

void __49__GCExtendedGamepad_setStateFromExtendedGamepad___block_invoke_cold_1(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) controller];
    v4 = [v3 debugName];
    v5 = [*(a1 + 40) controller];
    v6 = [v5 debugName];
    v7 = *(a1 + 48);
    v9 = 138412802;
    v10 = v4;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_DEFAULT, "set %@ StateFromExtendedGamepad %@: %@", &v9, 0x20u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_triggerValueChangedHandlerForElement:(void *)a1 queue:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = getGCLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [a1 controller];
    v6 = [v5 debugName];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = a2;
    _os_log_impl(&dword_1D2CD5000, v4, OS_LOG_TYPE_INFO, "%@ changed: %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __49__GCExtendedGamepad_PubSub___handleGamepadEvent___block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) debugName];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_INFO, "%@ pause event", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end