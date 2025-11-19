@interface GCExtendedGamepad
+ (id)_current;
- (GCExtendedGamepad)initWithCoder:(id)a3;
- (GCExtendedGamepad)initWithController:(id)a3;
- (GCExtendedGamepad)initWithController:(id)a3 initInfo:(id *)a4;
- (GCExtendedGamepad)initWithIdentifier:(id)a3;
- (GCExtendedGamepad)initWithIdentifier:(id)a3 info:(id *)a4;
- (GCExtendedGamepad)initWithInfo:(id *)a3;
- (GCExtendedGamepadSnapshot)saveSnapshot;
- (id)setElementValuesFromExtendedGamepad:(id)a3;
- (void)_handleGamepadEvent:(uint64_t)a1;
- (void)_legacy_handleEvent:(__IOHIDEvent *)a3;
- (void)_triggerValueChangedHandlerForElement:(id)a3 queue:(id)a4;
- (void)applyGlyphFlags;
- (void)encodeWithCoder:(id)a3;
- (void)initAuxiliaryButtonsWithInitInfo:(id *)a3;
- (void)initShareFunctionalityWithInitInfo:(id *)a3;
- (void)setGamepadEventSource:(id)a3;
- (void)setStateFromExtendedGamepad:(GCExtendedGamepad *)extendedGamepad;
- (void)setThumbstickUserIntentHandler:(id)a3;
@end

@implementation GCExtendedGamepad

- (GCExtendedGamepad)initWithController:(id)a3 initInfo:(id *)a4
{
  v6 = a3;
  v7 = [(GCExtendedGamepad *)self initWithInfo:a4];
  v8 = v7;
  if (v7)
  {
    [(GCPhysicalInputProfile *)v7 setController:v6];
  }

  return v8;
}

- (GCExtendedGamepad)initWithController:(id)a3
{
  v4 = a3;
  memset(v8, 0, 512);
  GCExtendedGamepadInitInfoMake(v8);
  v5 = [(GCExtendedGamepad *)self initWithController:v4 initInfo:v8];
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(v8 + i);
  }

  return v5;
}

- (void)_legacy_handleEvent:(__IOHIDEvent *)a3
{
  v193 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSince1970];
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

      v21 = self;
      DataValue = IOHIDEventGetDataValue();
      v23 = [MEMORY[0x1E695DFA8] set];
      v24 = [(GCPhysicalInputProfile *)v21 controller];
      v25 = [v24 handlerQueue];

      for (i = 0; i != 47; ++i)
      {
        if ((*DataValue >> i))
        {
          v27 = [(GCPhysicalInputProfile *)v21 remappedElementForIndex:i];
          v29 = v27;
          if (v27)
          {
            LODWORD(v28) = *(DataValue + i + 2);
            [v27 _setPendingValue:v28];
            v30 = [v29 collection];

            if (v30)
            {
              v31 = [v29 collection];
              [v23 addObject:v31];
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

            [*(*(&v181 + 1) + 8 * j) _commitPendingValueOnQueue:v25];
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
            v175 = v21;
            v176 = v42;
            dispatch_async(v25, v174);
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
      v21 = self;
      v43 = [MEMORY[0x1E695DF70] array];
      v44 = [(GCPhysicalInputProfile *)v21 controller];
      v45 = [v44 handlerQueue];

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
      if (v21->_leftThumbstickButton)
      {
        v68 = IOHIDEventGetIntegerValue();
      }

      v157 = v68;
      v70 = v49;
      v72 = v53;
      if (v21->_rightThumbstickButton)
      {
        v168 = IOHIDEventGetIntegerValue();
      }

      v75 = v21->_dpad;
      v76 = v45;
      v77 = v43;
      v78 = [(GCControllerDirectionPad *)v75 xAxis];
      v71 = v51;
      *&v79 = v72 - v71;
      v80 = [v78 _setValue:v76 queue:v79];

      v81 = [(GCControllerDirectionPad *)v75 yAxis];
      v69 = v47;
      *&v82 = v69 - v70;
      v83 = [v81 _setValue:v76 queue:v82];

      if ((v80 & 1) != 0 || v83)
      {
        [v77 addObject:v75];
      }

      v86 = v21->_leftThumbstick;
      v87 = v76;
      v88 = v77;
      v89 = [(GCControllerDirectionPad *)v86 xAxis];
      v73 = v55;
      *&v90 = v73;
      v91 = [v89 _setValue:v87 queue:v90];

      v92 = [(GCControllerDirectionPad *)v86 yAxis];
      v74 = v57;
      *&v93 = v74;
      v94 = [v92 _setValue:v87 queue:v93];

      if ((v91 & 1) != 0 || v94)
      {
        [v88 addObject:v86];
      }

      v96 = v21->_rightThumbstick;
      v25 = v87;
      v97 = v88;
      v98 = [(GCControllerDirectionPad *)v96 xAxis];
      v84 = v159;
      *&v99 = v84;
      v100 = [v98 _setValue:v25 queue:v99];

      v101 = [(GCControllerDirectionPad *)v96 yAxis];
      v85 = v158;
      *&v102 = v85;
      v103 = [v101 _setValue:v25 queue:v102];

      if ((v100 & 1) != 0 || v103)
      {
        [v97 addObject:v96];
      }

      v105 = v21->_button0;
      v106 = v97;
      v95 = v160;
      *&v107 = v95;
      if ([(GCControllerButtonInput *)v105 _setValue:v25 queue:v107])
      {
        [v106 addObject:v105];
      }

      v109 = v21->_button1;
      v110 = v106;
      v104 = v161;
      *&v111 = v104;
      if ([(GCControllerButtonInput *)v109 _setValue:v25 queue:v111])
      {
        [v110 addObject:v109];
      }

      v113 = v21->_button2;
      v114 = v110;
      v108 = v162;
      *&v115 = v108;
      if ([(GCControllerButtonInput *)v113 _setValue:v25 queue:v115])
      {
        [v114 addObject:v113];
      }

      v117 = v21->_button3;
      v118 = v114;
      v112 = v163;
      *&v119 = v112;
      if ([(GCControllerButtonInput *)v117 _setValue:v25 queue:v119])
      {
        [v118 addObject:v117];
      }

      v121 = v21->_leftShoulder;
      v122 = v118;
      v116 = v164;
      *&v123 = v116;
      if ([(GCControllerButtonInput *)v121 _setValue:v25 queue:v123])
      {
        [v122 addObject:v121];
      }

      v125 = v21->_rightShoulder;
      v126 = v122;
      v120 = v165;
      *&v127 = v120;
      if ([(GCControllerButtonInput *)v125 _setValue:v25 queue:v127])
      {
        [v126 addObject:v125];
      }

      v129 = v21->_leftTrigger;
      v130 = v126;
      v124 = v166;
      *&v131 = v124;
      if ([(GCControllerButtonInput *)v129 _setValue:v25 queue:v131])
      {
        [v130 addObject:v129];
      }

      v132 = v21->_rightTrigger;
      v133 = v130;
      v128 = v167;
      *&v134 = v128;
      if ([(GCControllerButtonInput *)v132 _setValue:v25 queue:v134])
      {
        [v133 addObject:v132];
      }

      leftThumbstickButton = v21->_leftThumbstickButton;
      if (leftThumbstickButton)
      {
        v136 = leftThumbstickButton;
        v137 = v133;
        *&v138 = v157;
        if ([(GCControllerButtonInput *)v136 _setValue:v25 queue:v138])
        {
          [v137 addObject:v136];
        }
      }

      rightThumbstickButton = v21->_rightThumbstickButton;
      if (rightThumbstickButton)
      {
        v140 = rightThumbstickButton;
        v141 = v133;
        *&v142 = v168;
        if ([(GCControllerButtonInput *)v140 _setValue:v25 queue:v142])
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
            *&v183 = v21;
            *(&v183 + 1) = v147;
            dispatch_async(v25, &v181);
          }

          v144 = [v37 countByEnumeratingWithState:&block objects:v190 count:16];
        }

        while (v144);
      }
    }
  }

  else if (Type == 3)
  {
    v6 = self;
    if (IOHIDEventGetIntegerValue() != 12)
    {
LABEL_97:

      goto LABEL_98;
    }

    v7 = IOHIDEventGetIntegerValue();
    v8 = IOHIDEventGetIntegerValue();
    if (v7 == v6->_buttonMenuUsage)
    {
      v9 = [(GCExtendedGamepad *)v6 buttonMenu];
      v10 = v9;
      if (v8 == 1 && ([v9 isPressed] & 1) == 0)
      {
        v11 = [(GCPhysicalInputProfile *)v6 controller];
        v12 = [v11 handlerQueue];
        *&block = MEMORY[0x1E69E9820];
        *(&block + 1) = 3221225472;
        *&v187 = __handleAncillaryButtonEvent_block_invoke;
        *(&v187 + 1) = &unk_1E8418C28;
        *&v188 = v6;
        dispatch_async(v12, &block);
      }
    }

    else
    {
      if (v7 == v6->_buttonHomeUsage)
      {
        v148 = [(GCExtendedGamepad *)v6 buttonHome];
      }

      else
      {
        if (v7 != v6->_buttonOptionsUsage)
        {
          v10 = 0;
LABEL_96:

          goto LABEL_97;
        }

        v148 = [(GCExtendedGamepad *)v6 buttonOptions];
      }

      v10 = v148;
    }

    if (v10)
    {
      v149 = v8;
      v150 = [(GCPhysicalInputProfile *)v6 controller];
      v151 = [v150 handlerQueue];
      *&v152 = v149;
      v153 = [v10 _setValue:v151 queue:v152];

      if (v153)
      {
        v154 = [(GCPhysicalInputProfile *)v6 controller];
        v155 = [v154 handlerQueue];
        v190[0] = MEMORY[0x1E69E9820];
        v190[1] = 3221225472;
        v190[2] = __handleAncillaryButtonEvent_block_invoke_104;
        v190[3] = &unk_1E8418C50;
        v191 = v6;
        v10 = v10;
        v192 = v10;
        dispatch_async(v155, v190);
      }
    }

    goto LABEL_96;
  }

LABEL_98:
  v156 = *MEMORY[0x1E69E9840];
}

- (GCExtendedGamepad)initWithIdentifier:(id)a3
{
  v4 = a3;
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
  v12 = [(GCExtendedGamepad *)self initWithIdentifier:v4 info:v15, *v6.i64, *v7.i64, *v8.i64, *v9.i64];
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(v15 + i);
  }

  return v12;
}

- (GCExtendedGamepad)initWithInfo:(id *)a3
{
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = [(GCExtendedGamepad *)self initWithIdentifier:v5 info:a3];

  return v6;
}

- (GCExtendedGamepad)initWithIdentifier:(id)a3 info:(id *)a4
{
  v58.receiver = self;
  v58.super_class = GCExtendedGamepad;
  v5 = [(GCPhysicalInputProfile *)&v58 initWithIdentifier:a3];
  if (v5)
  {
    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v57, a4);
    v6 = [(GCPhysicalInputProfile *)v5 _directionPadWithInfo:v57];
    dpad = v5->_dpad;
    v5->_dpad = v6;

    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v56, &a4->var0[5]);
    v8 = [(GCPhysicalInputProfile *)v5 _directionPadWithInfo:v56];
    leftThumbstick = v5->_leftThumbstick;
    v5->_leftThumbstick = v8;

    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v55, &a4->var0[6]);
    v10 = [(GCPhysicalInputProfile *)v5 _directionPadWithInfo:v55];
    rightThumbstick = v5->_rightThumbstick;
    v5->_rightThumbstick = v10;

    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v54, &a4->var0[1]);
    v12 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v54];
    button0 = v5->_button0;
    v5->_button0 = v12;

    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v53, &a4->var0[2]);
    v14 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v53];
    button1 = v5->_button1;
    v5->_button1 = v14;

    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v52, &a4->var0[3]);
    v16 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v52];
    button2 = v5->_button2;
    v5->_button2 = v16;

    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v51, &a4->var0[4]);
    v18 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v51];
    button3 = v5->_button3;
    v5->_button3 = v18;

    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v50, &a4->var0[7]);
    v20 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v50];
    leftShoulder = v5->_leftShoulder;
    v5->_leftShoulder = v20;

    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v49, &a4->var0[8]);
    v22 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v49];
    rightShoulder = v5->_rightShoulder;
    v5->_rightShoulder = v22;

    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v48, &a4->var0[9]);
    v24 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v48];
    leftTrigger = v5->_leftTrigger;
    v5->_leftTrigger = v24;

    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v47, &a4->var0[10]);
    v26 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v47];
    rightTrigger = v5->_rightTrigger;
    v5->_rightTrigger = v26;

    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v46, &a4->var0[11]);
    v28 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v46];
    leftThumbstickButton = v5->_leftThumbstickButton;
    v5->_leftThumbstickButton = v28;

    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v45, &a4->var0[12]);
    v30 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v45];
    rightThumbstickButton = v5->_rightThumbstickButton;
    v5->_rightThumbstickButton = v30;

    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v44, &a4->var0[16]);
    v32 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v44];
    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v43, &a4->var0[17]);
    v33 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v43];
    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v42, &a4->var0[18]);
    v34 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v42];
    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v41, &a4->var0[19]);
    v35 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v41];
    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v40, &a4->var0[20]);
    v36 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v40];
    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v39, &a4->var0[21]);
    v37 = [(GCPhysicalInputProfile *)v5 _buttonWithInfo:v39];
    [(GCExtendedGamepad *)v5 initAuxiliaryButtonsWithInitInfo:a4];
    [(GCExtendedGamepad *)v5 initShareFunctionalityWithInitInfo:a4];
  }

  return v5;
}

- (GCExtendedGamepad)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = GCIPCObjectIdentifier_Classes();
  v7 = [v5 decodeObjectOfClasses:v6 forKey:@"identifier"];

  v17 = 0;
  v8 = [v5 decodeBytesForKey:@"initInfo" returnedLength:&v17];
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

  -[GCPhysicalInputProfile setGlyphFlags:](v11, "setGlyphFlags:", [v5 decodeInt64ForKey:@"glyphFlags"]);
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

  v10 = [(GCPhysicalInputProfile *)self buttons];
  v11 = *v8;
  v12 = [v10 objectForKeyedSubscript:*v8];
  [v12 setUnmappedNameLocalizationKey:v9];

  v13 = [(GCPhysicalInputProfile *)self buttons];
  v14 = *v7;
  v15 = [v13 objectForKeyedSubscript:*v7];
  [v15 setUnmappedNameLocalizationKey:v6];

  v16 = [(GCPhysicalInputProfile *)self buttons];
  v17 = *v5;
  v18 = [v16 objectForKeyedSubscript:*v5];
  [v18 setUnmappedNameLocalizationKey:v4];

  v19 = [(GCPhysicalInputProfile *)self buttons];
  v20 = *v3;
  v21 = [v19 objectForKeyedSubscript:*v3];
  [v21 setUnmappedNameLocalizationKey:v35];

  v22 = [(GCPhysicalInputProfile *)self buttons];
  v23 = [v22 objectForKeyedSubscript:v11];
  [v23 setUnmappedSfSymbolsName:v36];

  v24 = [(GCPhysicalInputProfile *)self buttons];
  v25 = [v24 objectForKeyedSubscript:v14];
  [v25 setUnmappedSfSymbolsName:v37];

  v26 = [(GCPhysicalInputProfile *)self buttons];
  v27 = [v26 objectForKeyedSubscript:v17];
  [v27 setUnmappedSfSymbolsName:v38];

  v28 = [(GCPhysicalInputProfile *)self buttons];
  v29 = [v28 objectForKeyedSubscript:v20];
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

  v32 = [(GCPhysicalInputProfile *)self buttons];
  v33 = [v32 objectForKeyedSubscript:@"Button Home"];
  [v33 setUnmappedNameLocalizationKey:v31];

  v40 = [(GCPhysicalInputProfile *)self buttons];
  v34 = [v40 objectForKeyedSubscript:@"Button Home"];
  [v34 setUnmappedSfSymbolsName:v30];
}

- (void)encodeWithCoder:(id)a3
{
  v38 = a3;
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

  v13 = [(GCPhysicalInputProfile *)self elements];
  v14 = [v13 objectForKeyedSubscript:@"Right Bumper"];
  v39[1232] = v14 != 0;

  v15 = [(GCPhysicalInputProfile *)self elements];
  v16 = [v15 objectForKeyedSubscript:@"Back Left Button 0"];
  v39[1304] = v16 != 0;

  v17 = [(GCPhysicalInputProfile *)self elements];
  v18 = [v17 objectForKeyedSubscript:@"Back Left Button 1"];
  v39[1376] = v18 != 0;

  v19 = [(GCPhysicalInputProfile *)self elements];
  v20 = [v19 objectForKeyedSubscript:@"Back Right Button 0"];
  v39[1448] = v20 != 0;

  v21 = [(GCPhysicalInputProfile *)self elements];
  v22 = [v21 objectForKeyedSubscript:@"Back Right Button 1"];
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
  v23 = [(GCPhysicalInputProfile *)self buttons];
  v24 = [v23 objectForKeyedSubscript:@"Left Bumper"];
  v39[1161] = [v24 nonAnalog];

  v25 = [(GCPhysicalInputProfile *)self buttons];
  v26 = [v25 objectForKeyedSubscript:@"Right Bumper"];
  v39[1233] = [v26 nonAnalog];

  v27 = [(GCPhysicalInputProfile *)self buttons];
  v28 = [v27 objectForKeyedSubscript:@"Back Left Button 0"];
  v39[1305] = [v28 nonAnalog];

  v29 = [(GCPhysicalInputProfile *)self buttons];
  v30 = [v29 objectForKeyedSubscript:@"Back Left Button 1"];
  v39[1377] = [v30 nonAnalog];

  v31 = [(GCPhysicalInputProfile *)self buttons];
  v32 = [v31 objectForKeyedSubscript:@"Back Right Button 0"];
  v39[1449] = [v32 nonAnalog];

  v33 = [(GCPhysicalInputProfile *)self buttons];
  v34 = [v33 objectForKeyedSubscript:@"Back Right Button 1"];
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
  [v38 encodeBytes:v39 length:1592 forKey:@"initInfo"];
  v35 = [(GCPhysicalInputProfile *)self identifier];
  [v38 encodeObject:v35 forKey:@"identifier"];

  [v38 encodeInteger:v37 forKey:@"version"];
  [v38 encodeInt64:-[GCPhysicalInputProfile glyphFlags](self forKey:{"glyphFlags"), @"glyphFlags"}];
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(&v39[i]);
  }
}

- (void)initAuxiliaryButtonsWithInitInfo:(id *)a3
{
  var1 = a3->var0[13].var1;
  v5 = a3->var0[15].var1;
  v14 = a3->var0[14].var1;
  var2 = a3->var0[13].var2;
  v6 = a3->var0[14].var2;
  v7 = a3->var0[15].var2;
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

- (void)initShareFunctionalityWithInitInfo:(id *)a3
{
  self->_snapshotUsagePresent = a3->var2;
  var1 = a3->var1;
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
  v3 = [(GCExtendedGamepad *)self dpad];
  v4 = [v3 xAxis];
  [v4 value];
  v47.dpadX = v5;

  v6 = [(GCExtendedGamepad *)self dpad];
  v7 = [v6 yAxis];
  [v7 value];
  v47.dpadY = v8;

  v9 = [(GCExtendedGamepad *)self buttonA];
  [v9 value];
  v47.buttonA = v10;

  v11 = [(GCExtendedGamepad *)self buttonB];
  [v11 value];
  v47.buttonB = v12;

  v13 = [(GCExtendedGamepad *)self buttonX];
  [v13 value];
  v47.buttonX = v14;

  v15 = [(GCExtendedGamepad *)self buttonY];
  [v15 value];
  v47.buttonY = v16;

  v17 = [(GCExtendedGamepad *)self leftThumbstick];
  v18 = [v17 xAxis];
  [v18 value];
  v47.leftThumbstickX = v19;

  v20 = [(GCExtendedGamepad *)self leftThumbstick];
  v21 = [v20 yAxis];
  [v21 value];
  v47.leftThumbstickY = v22;

  v23 = [(GCExtendedGamepad *)self rightThumbstick];
  v24 = [v23 xAxis];
  [v24 value];
  v47.rightThumbstickX = v25;

  v26 = [(GCExtendedGamepad *)self rightThumbstick];
  v27 = [v26 yAxis];
  [v27 value];
  v47.rightThumbstickY = v28;

  v29 = [(GCExtendedGamepad *)self leftShoulder];
  [v29 value];
  v47.leftShoulder = v30;

  v31 = [(GCExtendedGamepad *)self rightShoulder];
  [v31 value];
  v47.rightShoulder = v32;

  v33 = [(GCExtendedGamepad *)self leftTrigger];
  [v33 value];
  v47.leftTrigger = v34;

  v35 = [(GCExtendedGamepad *)self rightTrigger];
  [v35 value];
  v47.rightTrigger = v36;

  v37 = [(GCExtendedGamepad *)self rightThumbstickButton];
  v47.rightThumbstickButton = [v37 isPressed];

  v38 = [(GCExtendedGamepad *)self leftThumbstickButton];
  v47.leftThumbstickButton = [v38 isPressed];

  v39 = [(GCExtendedGamepad *)self rightThumbstickButton];
  if (v39)
  {
    v40 = [(GCExtendedGamepad *)self leftThumbstickButton];
    v41 = v40 != 0;
  }

  else
  {
    v41 = 0;
  }

  v47.supportsClickableThumbsticks = v41;

  v42 = NSDataFromGCExtendedGamepadSnapshotData(&v47);
  v43 = [GCExtendedGamepadSnapshot alloc];
  v44 = [(GCPhysicalInputProfile *)self controller];
  v45 = [(GCExtendedGamepadSnapshot *)v43 initWithController:v44 snapshotData:v42];

  return v45;
}

- (id)setElementValuesFromExtendedGamepad:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(GCPhysicalInputProfile *)self controller];
  v7 = [v6 handlerQueue];

  v233 = self;
  dpad = self->_dpad;
  v9 = [v4 dpad];
  v10 = [v9 xAxis];
  [v10 value];
  v12 = v11;
  v232 = v4;
  v13 = [v4 dpad];
  v14 = [v13 yAxis];
  [v14 value];
  v16 = v15;
  v17 = dpad;
  v18 = v7;
  v19 = v5;
  v20 = [(GCControllerDirectionPad *)v17 xAxis];
  LODWORD(v21) = v12;
  LOBYTE(dpad) = [v20 _setValue:v18 queue:v21];

  v22 = [(GCControllerDirectionPad *)v17 yAxis];
  LODWORD(v23) = v16;
  v24 = [v22 _setValue:v18 queue:v23];

  if ((dpad & 1) != 0 || v24)
  {
    [v19 addObject:v17];
  }

  leftThumbstick = v233->_leftThumbstick;
  v26 = [v232 leftThumbstick];
  v27 = [v26 xAxis];
  [v27 value];
  v29 = v28;
  v30 = [v232 leftThumbstick];
  v31 = [v30 yAxis];
  [v31 value];
  v33 = v32;
  v34 = leftThumbstick;
  v35 = v18;
  v36 = v19;
  v37 = [(GCControllerDirectionPad *)v34 xAxis];
  LODWORD(v38) = v29;
  v39 = [v37 _setValue:v35 queue:v38];

  v40 = [(GCControllerDirectionPad *)v34 yAxis];
  LODWORD(v41) = v33;
  v42 = [v40 _setValue:v35 queue:v41];

  if ((v39 & 1) != 0 || v42)
  {
    [v36 addObject:v34];
  }

  rightThumbstick = v233->_rightThumbstick;
  v44 = [v232 rightThumbstick];
  v45 = [v44 xAxis];
  [v45 value];
  v47 = v46;
  v48 = [v232 rightThumbstick];
  v49 = [v48 yAxis];
  [v49 value];
  v51 = v50;
  v52 = rightThumbstick;
  v53 = v35;
  v54 = v36;
  v55 = [(GCControllerDirectionPad *)v52 xAxis];
  LODWORD(v56) = v47;
  v57 = [v55 _setValue:v53 queue:v56];

  v58 = [(GCControllerDirectionPad *)v52 yAxis];
  LODWORD(v59) = v51;
  v60 = [v58 _setValue:v53 queue:v59];

  if ((v57 & 1) != 0 || v60)
  {
    [v54 addObject:v52];
  }

  v61 = v233;
  buttonMenu = v233->_buttonMenu;
  v63 = [v232 buttonMenu];
  [v63 value];
  v65 = v64;
  v66 = buttonMenu;
  v67 = v54;
  LODWORD(v68) = v65;
  if ([(GCControllerButtonInput *)v66 _setValue:v53 queue:v68])
  {
    [v67 addObject:v66];
  }

  buttonHome = v233->_buttonHome;
  v70 = [v232 buttonHome];
  [v70 value];
  v72 = v71;
  v73 = buttonHome;
  v74 = v67;
  LODWORD(v75) = v72;
  if ([(GCControllerButtonInput *)v73 _setValue:v53 queue:v75])
  {
    [v74 addObject:v73];
  }

  button0 = v233->_button0;
  v77 = [v232 buttonA];
  [v77 value];
  v79 = v78;
  v80 = button0;
  v81 = v74;
  LODWORD(v82) = v79;
  if ([(GCControllerButtonInput *)v80 _setValue:v53 queue:v82])
  {
    [v81 addObject:v80];
  }

  button1 = v233->_button1;
  v84 = [v232 buttonB];
  [v84 value];
  v86 = v85;
  v87 = button1;
  v88 = v81;
  LODWORD(v89) = v86;
  if ([(GCControllerButtonInput *)v87 _setValue:v53 queue:v89])
  {
    [v88 addObject:v87];
  }

  button2 = v233->_button2;
  v91 = [v232 buttonX];
  [v91 value];
  v93 = v92;
  v94 = button2;
  v95 = v88;
  LODWORD(v96) = v93;
  if ([(GCControllerButtonInput *)v94 _setValue:v53 queue:v96])
  {
    [v95 addObject:v94];
  }

  button3 = v233->_button3;
  v98 = [v232 buttonY];
  [v98 value];
  v100 = v99;
  v101 = button3;
  v102 = v95;
  LODWORD(v103) = v100;
  if ([(GCControllerButtonInput *)v101 _setValue:v53 queue:v103])
  {
    [v102 addObject:v101];
  }

  leftShoulder = v233->_leftShoulder;
  v105 = [v232 leftShoulder];
  [v105 value];
  v107 = v106;
  v108 = leftShoulder;
  v109 = v102;
  LODWORD(v110) = v107;
  if ([(GCControllerButtonInput *)v108 _setValue:v53 queue:v110])
  {
    [v109 addObject:v108];
  }

  rightShoulder = v233->_rightShoulder;
  v112 = [v232 rightShoulder];
  [v112 value];
  v114 = v113;
  v115 = rightShoulder;
  v116 = v109;
  LODWORD(v117) = v114;
  if ([(GCControllerButtonInput *)v115 _setValue:v53 queue:v117])
  {
    [v116 addObject:v115];
  }

  leftTrigger = v233->_leftTrigger;
  v119 = [v232 leftTrigger];
  [v119 value];
  v121 = v120;
  v122 = leftTrigger;
  v123 = v116;
  LODWORD(v124) = v121;
  if ([(GCControllerButtonInput *)v122 _setValue:v53 queue:v124])
  {
    [v123 addObject:v122];
  }

  rightTrigger = v233->_rightTrigger;
  v126 = [v232 rightTrigger];
  [v126 value];
  v128 = v127;
  v129 = rightTrigger;
  v130 = v123;
  LODWORD(v131) = v128;
  if ([(GCControllerButtonInput *)v129 _setValue:v53 queue:v131])
  {
    [v130 addObject:v129];
  }

  if (v233->_leftThumbstickButton)
  {
    v132 = [v232 leftThumbstickButton];

    if (v132)
    {
      leftThumbstickButton = v233->_leftThumbstickButton;
      v134 = [v232 leftThumbstickButton];
      [v134 value];
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

  if (v233->_rightThumbstickButton)
  {
    v140 = [v232 rightThumbstickButton];

    if (v140)
    {
      rightThumbstickButton = v233->_rightThumbstickButton;
      v142 = [v232 rightThumbstickButton];
      [v142 value];
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

  v148 = [(GCPhysicalInputProfile *)v233 buttons];
  v149 = [v148 objectForKeyedSubscript:@"Left Bumper"];
  if (v149)
  {
    v150 = v149;
    v151 = [v232 objectForKeyedSubscript:@"Left Bumper"];

    if (!v151)
    {
      goto LABEL_46;
    }

    v148 = [(GCPhysicalInputProfile *)v233 buttons];
    v152 = [v148 objectForKeyedSubscript:@"Left Bumper"];
    v153 = [v232 buttons];
    v154 = [v153 objectForKeyedSubscript:@"Left Bumper"];
    [v154 value];
    v156 = v155;
    v157 = v152;
    v158 = v130;
    LODWORD(v159) = v156;
    if ([v157 _setValue:v53 queue:v159])
    {
      [v158 addObject:v157];
    }

    v61 = v233;
  }

LABEL_46:
  v160 = [(GCPhysicalInputProfile *)v61 buttons];
  v161 = [v160 objectForKeyedSubscript:@"Right Bumper"];
  if (v161)
  {
    v162 = v161;
    v163 = [v232 buttons];
    v164 = [v163 objectForKeyedSubscript:@"Right Bumper"];

    if (!v164)
    {
      goto LABEL_52;
    }

    v160 = [(GCPhysicalInputProfile *)v61 buttons];
    v165 = [v160 objectForKeyedSubscript:@"Right Bumper"];
    v166 = [v232 buttons];
    v167 = [v166 objectForKeyedSubscript:@"Right Bumper"];
    [v167 value];
    v169 = v168;
    v170 = v165;
    v171 = v130;
    LODWORD(v172) = v169;
    if ([v170 _setValue:v53 queue:v172])
    {
      [v171 addObject:v170];
    }

    v61 = v233;
  }

LABEL_52:
  v173 = [(GCPhysicalInputProfile *)v61 buttons];
  v174 = [v173 objectForKeyedSubscript:@"Back Left Button 0"];
  if (v174)
  {
    v175 = v174;
    v176 = [v232 objectForKeyedSubscript:@"Back Left Button 0"];

    if (!v176)
    {
      goto LABEL_58;
    }

    v173 = [(GCPhysicalInputProfile *)v61 buttons];
    v177 = [v173 objectForKeyedSubscript:@"Back Left Button 0"];
    v178 = [v232 buttons];
    v179 = [v178 objectForKeyedSubscript:@"Back Left Button 0"];
    [v179 value];
    v181 = v180;
    v182 = v177;
    v183 = v130;
    LODWORD(v184) = v181;
    if ([v182 _setValue:v53 queue:v184])
    {
      [v183 addObject:v182];
    }

    v61 = v233;
  }

LABEL_58:
  v185 = [(GCPhysicalInputProfile *)v61 buttons];
  v186 = [v185 objectForKeyedSubscript:@"Back Left Button 1"];
  if (v186)
  {
    v187 = v186;
    v188 = [v232 buttons];
    v189 = [v188 objectForKeyedSubscript:@"Back Left Button 1"];

    if (!v189)
    {
      goto LABEL_64;
    }

    v185 = [(GCPhysicalInputProfile *)v61 buttons];
    v190 = [v185 objectForKeyedSubscript:@"Back Left Button 1"];
    v191 = [v232 buttons];
    v192 = [v191 objectForKeyedSubscript:@"Back Left Button 1"];
    [v192 value];
    v194 = v193;
    v195 = v190;
    v196 = v130;
    LODWORD(v197) = v194;
    if ([v195 _setValue:v53 queue:v197])
    {
      [v196 addObject:v195];
    }

    v61 = v233;
  }

LABEL_64:
  v198 = [(GCPhysicalInputProfile *)v61 buttons];
  v199 = [v198 objectForKeyedSubscript:@"Back Right Button 0"];
  if (v199)
  {
    v200 = v199;
    v201 = [v232 buttons];
    v202 = [v201 objectForKeyedSubscript:@"Back Right Button 0"];

    if (!v202)
    {
      goto LABEL_70;
    }

    v198 = [(GCPhysicalInputProfile *)v61 buttons];
    v203 = [v198 objectForKeyedSubscript:@"Back Right Button 0"];
    v204 = [v232 buttons];
    v205 = [v204 objectForKeyedSubscript:@"Back Right Button 0"];
    [v205 value];
    v207 = v206;
    v208 = v203;
    v209 = v130;
    LODWORD(v210) = v207;
    if ([v208 _setValue:v53 queue:v210])
    {
      [v209 addObject:v208];
    }

    v61 = v233;
  }

LABEL_70:
  v211 = [(GCPhysicalInputProfile *)v61 buttons];
  v212 = [v211 objectForKeyedSubscript:@"Back Right Button 1"];
  if (!v212)
  {
LABEL_75:

    goto LABEL_76;
  }

  v213 = v212;
  v214 = [v232 objectForKeyedSubscript:@"Back Right Button 1"];

  if (v214)
  {
    v211 = [(GCPhysicalInputProfile *)v61 buttons];
    v215 = [v211 objectForKeyedSubscript:@"Back Right Button 1"];
    v216 = [v232 buttons];
    v217 = [v216 objectForKeyedSubscript:@"Back Right Button 1"];
    [v217 value];
    v219 = v218;
    v220 = v215;
    v221 = v130;
    LODWORD(v222) = v219;
    if ([v220 _setValue:v53 queue:v222])
    {
      [v221 addObject:v220];
    }

    v61 = v233;
    goto LABEL_75;
  }

LABEL_76:
  if (v61->_buttonOptions)
  {
    v223 = [v232 buttonOptions];

    if (v223)
    {
      buttonOptions = v61->_buttonOptions;
      v225 = [v232 buttonOptions];
      [v225 value];
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
  v5 = [(GCPhysicalInputProfile *)self controller];
  if (!v5 || (v6 = v5, -[GCPhysicalInputProfile controller](self, "controller"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isSnapshot], v7, v6, v8))
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
          v14 = [(GCPhysicalInputProfile *)self controller];
          v15 = [v14 handlerQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __49__GCExtendedGamepad_setStateFromExtendedGamepad___block_invoke;
          block[3] = &unk_1E8419BC0;
          block[4] = self;
          v19 = v4;
          v20 = v13;
          dispatch_async(v15, block);

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

- (void)_triggerValueChangedHandlerForElement:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gc_isInternalBuild())
  {
    [GCExtendedGamepad _triggerValueChangedHandlerForElement:v6 queue:?];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__GCExtendedGamepad__triggerValueChangedHandlerForElement_queue___block_invoke;
  v9[3] = &unk_1E8418C50;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, v9);
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
  v3 = [v2 currentExtendedGamepad];

  return v3;
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

- (void)setGamepadEventSource:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  gamepadEventObservation = self->_gamepadEventObservation;
  self->_gamepadEventObservation = 0;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__GCExtendedGamepad_PubSub__setGamepadEventSource___block_invoke;
  v8[3] = &unk_1E841A588;
  objc_copyWeak(&v9, &location);
  v6 = [v4 observeGamepadEvents:v8];
  v7 = self->_gamepadEventObservation;
  self->_gamepadEventObservation = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)setThumbstickUserIntentHandler:(id)a3
{
  v7 = a3;
  webKitUserIntentRecognizer = self->_webKitUserIntentRecognizer;
  self->_webKitUserIntentRecognizer = 0;

  if (v7)
  {
    v5 = [[_GCWebKitUserIntentRecognizer alloc] initWithPhysicalInputProfile:self thumbstickUserIntentHandler:v7];
    v6 = self->_webKitUserIntentRecognizer;
    self->_webKitUserIntentRecognizer = v5;
  }
}

- (void)_handleGamepadEvent:(uint64_t)a1
{
  v89 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 timestamp];
    v6 = [a1 device];
    [a1 _receivedEventWithTimestamp:v5];
    v7 = [a1 controller];
    if (!v7)
    {
LABEL_60:

      goto LABEL_61;
    }

    v60 = v5;
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
        [a1 lastEventTimestamp];
        *buf = 134218496;
        v84 = v6;
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
    v61 = v7;
    v13 = [v7 handlerQueue];
    for (i = 0; i != 47; ++i)
    {
      if ((i & 0x3E) != 0x16 && [v4 hasValidValueForElement:i])
      {
        v15 = [a1 remappedElementForIndex:i];
        if (v15)
        {
          [v4 floatValueForElement:i];
          [v15 _setPendingValue:?];
          v16 = [v15 collection];

          if (v16)
          {
            v17 = [v15 collection];
            [v12 addObject:v17];
          }

          else
          {
            [v12 addObject:v15];
          }
        }
      }
    }

    v59 = v6;
    if (*(a1 + 656) == 547 && [OUTLINED_FUNCTION_0_27() hasValidValueForElement:?])
    {
      v18 = OUTLINED_FUNCTION_0_27();
    }

    else
    {
      if (*(a1 + 832) && [OUTLINED_FUNCTION_0_27() hasValidValueForElement:?])
      {
        [OUTLINED_FUNCTION_0_27() floatValueForElement:?];
        [*(a1 + 832) _setPendingValue:?];
        [v12 addObject:*(a1 + 832)];
      }

      if (!*(a1 + 816) || ![v4 hasValidValueForElement:23])
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
              if ([v31 _commitPendingValueOnQueue:v13])
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
          v32 = a1;
          v33 = [v32 valueDidChangeHandler];
          if (v33)
          {
            v71[0] = MEMORY[0x1E69E9820];
            v71[1] = 3221225472;
            v71[2] = __49__GCExtendedGamepad_PubSub___handleGamepadEvent___block_invoke_361;
            v71[3] = &unk_1E841A968;
            v72 = v25;
            v73 = v32;
            v74 = v33;
            dispatch_async(v13, v71);
          }

          v34 = v32[99];
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
                  v55 = [v61 debugName];
                  *buf = 138412546;
                  v84 = v55;
                  v85 = 2112;
                  v86 = v40;
                  _os_log_debug_impl(&dword_1D2CD5000, log, OS_LOG_TYPE_DEBUG, "%@ changed: %@", buf, 0x16u);
                }
              }

              v66[0] = MEMORY[0x1E69E9820];
              v66[1] = 3221225472;
              v66[2] = __49__GCExtendedGamepad_PubSub___handleGamepadEvent___block_invoke_362;
              v66[3] = &unk_1E8419BC0;
              v66[4] = a1;
              v66[5] = a1;
              v66[6] = v40;
              v41 = a1;
              dispatch_async(v13, v66);

              ++v39;
            }

            while (v37 != v39);
            v42 = [v35 countByEnumeratingWithState:&v67 objects:v81 count:16];
            v37 = v42;
          }

          while (v42);
        }

        v43 = [a1 syntheticDeviceElementValueChangedHandler];
        v6 = v59;
        if (v43)
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __49__GCExtendedGamepad_PubSub___handleGamepadEvent___block_invoke_2;
          aBlock[3] = &unk_1E8419210;
          v63 = v35;
          v64 = v43;
          v65 = v60;
          v44 = _Block_copy(aBlock);
          v45 = [a1 syntheticDeviceHandlerQueue];
          v46 = v45;
          if (v45)
          {
            dispatch_async(v45, v44);
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

        v7 = v61;
        goto LABEL_60;
      }

      v18 = v4;
      v19 = 23;
    }

    [v18 floatValueForElement:v19];
    v21 = v20;
    v22 = *(a1 + 816);
    *&v23 = v21;
    [*(a1 + 816) _setPendingValue:v23];
    [v12 addObject:*(a1 + 816)];
    if (v21 > 0.0 && ([v22 isPressed] & 1) == 0)
    {
      v24 = [v7 handlerQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49__GCExtendedGamepad_PubSub___handleGamepadEvent___block_invoke;
      block[3] = &unk_1E8418C28;
      v80 = v7;
      dispatch_async(v24, block);
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