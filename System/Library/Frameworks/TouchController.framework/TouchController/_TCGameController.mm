@interface _TCGameController
- (_TCGameController)init;
- (void)addButtonWithLabel:(id)a3;
- (void)addDirectionPadWithLabel:(id)a3;
- (void)setPosition:(CGPoint)a3 forDirectionPadElement:(id)a4;
- (void)setValue:(double)a3 forButtonElement:(id)a4;
@end

@implementation _TCGameController

- (_TCGameController)init
{
  v31[2] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCB0A0]) initWithIdentifier:@"Touch Controller"];
  [v3 setProductCategory:@"Touch Controller"];
  [v3 setVendorName:@"Touch Controller"];
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  memset(v22, 0, sizeof(v22));
  GCExtendedGamepadInitInfoMake();
  v4 = 0;
  v5 = xmmword_23AAEE020;
  v6 = xmmword_23AAEE030;
  v7 = xmmword_23AAEE040;
  v8 = xmmword_23AAEE050;
  v9 = vdupq_n_s64(0x16uLL);
  v10 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v9, v8)), *v5.i8), *v5.i8).u8[0])
    {
      BYTE8(v22[v4 / 8]) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v8)), *&v5), *&v5).i8[1])
    {
      LOBYTE(v22[v4 / 8 + 5]) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v7))), *&v5).i8[2])
    {
      BYTE8(v27[v4 / 8]) = 0;
      LOBYTE(v28[v4 / 8]) = 0;
    }

    if (vuzp1_s8(*&v5, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v6)), *&v5)).i32[1])
    {
      BYTE8(v28[v4 / 8 + 4]) = 0;
    }

    if (vuzp1_s8(*&v5, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v6)), *&v5)).i8[5])
    {
      LOBYTE(v29[v4 / 8]) = 0;
    }

    if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v5)))).i8[6])
    {
      BYTE8(v29[v4 / 8 + 4]) = 0;
      LOBYTE(v30[v4]) = 0;
    }

    v6 = vaddq_s64(v6, v10);
    v7 = vaddq_s64(v7, v10);
    v8 = vaddq_s64(v8, v10);
    v5 = vaddq_s64(v5, v10);
    v4 += 288;
  }

  while (v4 != 864);
  LOWORD(v23) = 1;
  WORD4(v27[0]) = 1;
  LOWORD(v28[0]) = 1;
  WORD4(v28[4]) = 1;
  v30[144] = 1;
  v30[180] = 1;
  v30[72] = 1;
  v30[108] = 1;
  v30[0] = 1;
  v30[36] = 1;
  v30[324] = 1;
  v30[360] = 1;
  v30[252] = 1;
  v30[288] = 1;
  v30[536] = 257;
  WORD4(v22[0]) = 1;
  LOWORD(v29[0]) = 1;
  WORD4(v29[4]) = 1;
  v30[396] = 1;
  v30[432] = 1;
  v30[468] = 1;
  v30[504] = 1;
  v11 = [objc_alloc(MEMORY[0x277CCB060]) initWithController:0 initInfo:v22];
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(v22 + i);
  }

  v31[0] = v3;
  v31[1] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v21.receiver = self;
  v21.super_class = _TCGameController;
  v14 = [(GCController *)&v21 initWithComponents:v13];

  extendedGamepad = v14->_extendedGamepad;
  v14->_extendedGamepad = v11;
  v16 = v11;

  v17 = objc_opt_new();
  event = v14->_event;
  v14->_event = v17;

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)setValue:(double)a3 forButtonElement:(id)a4
{
  v6 = a4;
  if ([v6 isEqualToString:*MEMORY[0x277CCAF78]])
  {
    *&v7 = a3;
    [(_GCGamepadEventImpl *)self->_event setButtonAValue:v7];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CCAF80]])
  {
    *&v8 = a3;
    [(_GCGamepadEventImpl *)self->_event setButtonBValue:v8];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CCAFA0]])
  {
    *&v9 = a3;
    [(_GCGamepadEventImpl *)self->_event setButtonXValue:v9];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CCAFA8]])
  {
    *&v10 = a3;
    [(_GCGamepadEventImpl *)self->_event setButtonYValue:v10];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CCAFC0]])
  {
    *&v11 = a3;
    [(_GCGamepadEventImpl *)self->_event setButtonLeftShoulder:v11];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CCAFE8]])
  {
    *&v12 = a3;
    [(_GCGamepadEventImpl *)self->_event setButtonRightShoulder:v12];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CCAFB8]])
  {
    *&v13 = a3;
    [(_GCGamepadEventImpl *)self->_event setButtonLeftBumper:v13];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CCAFE0]])
  {
    *&v14 = a3;
    [(_GCGamepadEventImpl *)self->_event setButtonRightBumper:v14];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CCAFD8]])
  {
    *&v15 = a3;
    [(_GCGamepadEventImpl *)self->_event setLeftTrigger:v15];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CCB000]])
  {
    *&v16 = a3;
    [(_GCGamepadEventImpl *)self->_event setRightTrigger:v16];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CCAFD0]])
  {
    *&v17 = a3;
    [(_GCGamepadEventImpl *)self->_event setLeftThumbstickButton:v17];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CCAFF8]])
  {
    *&v18 = a3;
    [(_GCGamepadEventImpl *)self->_event setRightThumbstickButton:v18];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CCAF88]])
  {
    *&v19 = a3;
    [(_GCGamepadEventImpl *)self->_event setButtonMenu:v19];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CCAF90]])
  {
    *&v20 = a3;
    [(_GCGamepadEventImpl *)self->_event setButtonOptions:v20];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CCAF98]])
  {
    *&v21 = a3;
    [(_GCGamepadEventImpl *)self->_event setButtonSpecial15:v21];
  }

  else if (([v6 isEqualToString:*MEMORY[0x277CCAF58]] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", *MEMORY[0x277CCB018]))
  {
    *&v22 = a3;
    [(_GCGamepadEventImpl *)self->_event setButtonBackLeftPrimary:v22];
  }

  else if (([v6 isEqualToString:*MEMORY[0x277CCAF60]] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", *MEMORY[0x277CCB008]))
  {
    *&v23 = a3;
    [(_GCGamepadEventImpl *)self->_event setButtonBackLeftSecondary:v23];
  }

  else if (([v6 isEqualToString:*MEMORY[0x277CCAF68]] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", *MEMORY[0x277CCB010]))
  {
    *&v24 = a3;
    [(_GCGamepadEventImpl *)self->_event setButtonBackRightPrimary:v24];
  }

  else if (([v6 isEqualToString:*MEMORY[0x277CCAF70]] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", *MEMORY[0x277CCB020]))
  {
    *&v25 = a3;
    [(_GCGamepadEventImpl *)self->_event setButtonBackRightSecondary:v25];
  }

  else
  {
    v26 = [(GCController *)self physicalInputProfile];
    v27 = [v26 buttons];
    v28 = [v27 objectForKeyedSubscript:v6];

    if (!v28)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"*** Unknown button element '%@'.", v6];
      v35 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
      objc_exception_throw(v35);
    }

    v30 = [(GCController *)self handlerQueue];
    v31 = v28;
    v29 = a3;
    *&v32 = v29;
    if ([v31 _setValue:v30 queue:v32])
    {
      [0 addObject:v31];
    }

    v33 = [(GCController *)self handlerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47___TCGameController_setValue_forButtonElement___block_invoke;
    block[3] = &unk_278B6B570;
    block[4] = self;
    v37 = v31;
    v34 = v31;
    dispatch_async(v33, block);
  }

  [(GCExtendedGamepad *)self->_extendedGamepad handleGamepadEvent:self->_event];
}

- (void)setPosition:(CGPoint)a3 forDirectionPadElement:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = x;
  v9 = y;
  if ([v7 isEqualToString:*MEMORY[0x277CCAFC8]])
  {
    *&v10 = fmaxf(v9, 0.0);
    [(_GCGamepadEventImpl *)self->_event setLeftThumbstickUp:v10];
    *&v11 = fmaxf(v8, 0.0);
    [(_GCGamepadEventImpl *)self->_event setLeftThumbstickRight:v11];
    *&v12 = -v9;
    if (v9 > 0.0)
    {
      *&v12 = -0.0;
    }

    [(_GCGamepadEventImpl *)self->_event setLeftThumbstickDown:v12];
    *&v13 = -v8;
    if (v8 > 0.0)
    {
      *&v13 = -0.0;
    }

    [(_GCGamepadEventImpl *)self->_event setLeftThumbstickLeft:v13];
  }

  else if ([v7 isEqualToString:*MEMORY[0x277CCAFB0]])
  {
    *&v14 = fmaxf(v9, 0.0);
    [(_GCGamepadEventImpl *)self->_event setDpadUpValue:v14];
    *&v15 = fmaxf(v8, 0.0);
    [(_GCGamepadEventImpl *)self->_event setDpadRightValue:v15];
    *&v16 = -v9;
    if (v9 > 0.0)
    {
      *&v16 = -0.0;
    }

    [(_GCGamepadEventImpl *)self->_event setDpadDownValue:v16];
    *&v17 = -v8;
    if (v8 > 0.0)
    {
      *&v17 = -0.0;
    }

    [(_GCGamepadEventImpl *)self->_event setDpadLeftValue:v17];
  }

  else if ([v7 isEqualToString:*MEMORY[0x277CCAFF0]])
  {
    *&v18 = fmaxf(v9, 0.0);
    [(_GCGamepadEventImpl *)self->_event setRightThumbstickUp:v18];
    *&v19 = fmaxf(v8, 0.0);
    [(_GCGamepadEventImpl *)self->_event setRightThumbstickRight:v19];
    *&v20 = -v9;
    if (v9 > 0.0)
    {
      *&v20 = -0.0;
    }

    [(_GCGamepadEventImpl *)self->_event setRightThumbstickDown:v20];
    *&v21 = -v8;
    if (v8 > 0.0)
    {
      *&v21 = -0.0;
    }

    [(_GCGamepadEventImpl *)self->_event setRightThumbstickLeft:v21];
  }

  else
  {
    v22 = [(GCController *)self physicalInputProfile];
    v23 = [v22 dpads];
    v24 = [v23 objectForKeyedSubscript:v7];

    if (!v24)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"*** Unknown direction pad element '%@'.", v7];
      v35 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
      objc_exception_throw(v35);
    }

    v25 = [(GCController *)self handlerQueue];
    v26 = v24;
    v27 = [v26 xAxis];
    *&v28 = v8;
    v29 = [v27 _setValue:v25 queue:v28];

    v30 = [v26 yAxis];
    *&v31 = v9;
    v32 = [v30 _setValue:v25 queue:v31];

    if ((v29 & 1) != 0 || v32)
    {
      [0 addObject:v26];
    }

    v33 = [(GCController *)self handlerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56___TCGameController_setPosition_forDirectionPadElement___block_invoke;
    block[3] = &unk_278B6B570;
    block[4] = self;
    v37 = v26;
    v34 = v26;
    dispatch_async(v33, block);
  }

  [(GCExtendedGamepad *)self->_extendedGamepad handleGamepadEvent:self->_event];
}

- (void)addButtonWithLabel:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(GCController *)self physicalInputProfile];
  v6 = [v5 elements];
  v7 = [v6 allKeys];

  v8 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v24 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v23 + 1) + 8 * v11);
      v13 = [v4 name];
      LOBYTE(v12) = [v12 isEqual:v13];

      if (v12)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v14 = objc_alloc(MEMORY[0x277CCB048]);
    v15 = [v4 name];
    v16 = [v4 name];
    v7 = [v14 initWithName:v15 additionalAliases:0 attributes:0 nameLocalizationKey:v16 symbolName:&stru_284DB3138 sourceAttributes:0 sourceExtendedEventField:-1];

    v17 = [(GCController *)self physicalInputProfile];
    v18 = [v17 _buttonWithDescription:v7];

    v19 = getTCLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(GCController *)self physicalInputProfile];
      v21 = [v20 elements];
      *buf = 138412290;
      v28 = v21;
      _os_log_impl(&dword_23AADD000, v19, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)addDirectionPadWithLabel:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(GCController *)self physicalInputProfile];
  v6 = [v5 elements];
  v7 = [v6 allKeys];

  v8 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v24 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v23 + 1) + 8 * v11);
      v13 = [v4 name];
      LOBYTE(v12) = [v12 isEqual:v13];

      if (v12)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v14 = objc_alloc(MEMORY[0x277CCB050]);
    v15 = [v4 name];
    v16 = [v4 name];
    v7 = [v14 initWithName:v15 additionalAliases:0 attributes:0 nameLocalizationKey:v16 symbolName:&stru_284DB3138 sourceAttributes:0 sourceUpExtendedEventField:-1 sourceDownExtendedEventField:-1 sourceLeftExtendedEventField:-1 sourceRightExtendedEventField:-1];

    v17 = [(GCController *)self physicalInputProfile];
    v18 = [v17 _directionPadWithDescription:v7];

    v19 = getTCLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(GCController *)self physicalInputProfile];
      v21 = [v20 elements];
      *buf = 138412290;
      v28 = v21;
      _os_log_impl(&dword_23AADD000, v19, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end