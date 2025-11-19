@interface BKSHIDEventKeyCommand
+ (BOOL)_isModifierKeyWithPage:(int64_t)a3 usage:(int64_t)a4;
+ (BOOL)_shouldMatchKeyCommandsForEvent:(__IOHIDEvent *)a3 gsKeyboard:(__GSKeyboard *)a4;
+ (id)_descriptionForKeyCommandCollection:(id)a3;
+ (id)keyCommandForEvent:(__IOHIDEvent *)a3 gsKeyboard:(__GSKeyboard *)a4 activeModifiers:(int64_t *)a5;
+ (id)keyCommandWithInput:(id)a3 modifierFlags:(int64_t)a4;
+ (id)keyCommandWithKeyCode:(int64_t)a3 modifierFlags:(int64_t)a4;
+ (void)_appendDescriptionOfKeyCommandCollection:(id)a3 toStream:(id)a4;
- (BKSHIDEventKeyCommand)init;
- (BKSHIDEventKeyCommand)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isModifierOnlyCommand;
- (NSString)description;
- (id)_initWithInput:(id)a3 keyCode:(int64_t)a4 modifierFlags:(int64_t)a5;
- (id)_sanitizedInputForDescription;
- (int64_t)describes:(id)a3;
- (unint64_t)hash;
- (void)_appendKeyWithoutModifiersToDescriptionTarget:(id)a3 keyCodeString:(id)a4;
- (void)_appendPropertiesCommon:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSHIDEventKeyCommand

- (int64_t)describes:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (!v6)
  {
    v9 = 0;
    goto LABEL_34;
  }

  if ([v6 isModifierOnlyCommand])
  {
    v8 = [(BKSHIDEventKeyCommand *)self modifierFlags];
    v9 = ([v7 modifierFlags] & v8) != 0;
    goto LABEL_34;
  }

  if ([(BKSHIDEventKeyCommand *)self keyCode]!= -1)
  {
    v10 = [v7 keyCode];
    if (v10 == [(BKSHIDEventKeyCommand *)self keyCode])
    {
      v11 = [(BKSHIDEventKeyCommand *)self modifierFlags];
      if (v11 == [v7 modifierFlags])
      {
        goto LABEL_33;
      }
    }
  }

  v12 = [v7 unmodifiedInput];
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = v12;
  v14 = [v7 commandModifiedInput];
  if (v14)
  {
    goto LABEL_15;
  }

  v14 = [v7 unmodifiedInput];
  v15 = [(BKSHIDEventKeyCommand *)self input];
  if ([v14 caseInsensitiveCompare:v15])
  {

LABEL_15:
    goto LABEL_16;
  }

  v32 = [(BKSHIDEventKeyCommand *)self modifierFlags];
  v33 = [v7 modifierFlags];

  if (v32 == v33)
  {
    goto LABEL_33;
  }

LABEL_16:
  v16 = [v7 commandModifiedInput];
  if (v16)
  {
    v17 = v16;
    v18 = [v7 commandModifiedInput];
    v19 = [(BKSHIDEventKeyCommand *)self input];
    if ([v18 caseInsensitiveCompare:v19])
    {

      goto LABEL_20;
    }

    v20 = [(BKSHIDEventKeyCommand *)self modifierFlags];
    v21 = [v7 modifierFlags];

    if (v20 != v21)
    {
      goto LABEL_20;
    }

LABEL_33:
    v9 = 3;
    goto LABEL_34;
  }

LABEL_20:
  v22 = [(BKSHIDEventKeyCommand *)self input];
  v23 = [v22 uppercaseString];
  v24 = [(BKSHIDEventKeyCommand *)self input];
  v25 = [v24 lowercaseString];
  if ([v23 isEqualToString:v25])
  {
    v26 = [v7 shiftModifiedInput];
    v27 = [(BKSHIDEventKeyCommand *)self input];
    if ([v26 isEqualToString:v27])
    {
      v28 = [v7 shiftModifiedInput];
      v29 = [v7 unmodifiedInput];
      v36 = v28;
      v30 = v28;
      v31 = v29;
      if ([v30 isEqualToString:v29])
      {
        v9 = 0;
      }

      else
      {
        v35 = [v7 modifierFlags] & 0xFFFFFFFFFFFDFFFFLL;
        if (v35 == [(BKSHIDEventKeyCommand *)self modifierFlags])
        {
          v9 = 3;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_34:
  return v9;
}

- (BOOL)isModifierOnlyCommand
{
  v3 = [(BKSHIDEventKeyCommand *)self modifierFlags];
  if (v3)
  {
    v4 = [(BKSHIDEventKeyCommand *)self input];

    if (v4)
    {
      LOBYTE(v3) = 0;
    }

    else if ([(BKSHIDEventKeyCommand *)self keyCode]== -1)
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      v5 = objc_opt_class();
      v6 = [(BKSHIDEventKeyCommand *)self usagePage];
      v7 = [(BKSHIDEventKeyCommand *)self keyCode];

      LOBYTE(v3) = [v5 _isModifierKeyWithPage:v6 usage:v7];
    }
  }

  return v3;
}

- (id)_sanitizedInputForDescription
{
  v2 = [(BKSHIDEventKeyCommand *)self input];
  v3 = [v2 _stringRepresentation];

  return v3;
}

- (void)_appendPropertiesCommon:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__BKSHIDEventKeyCommand__appendPropertiesCommon___block_invoke;
  v6[3] = &unk_1E6F47000;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [v5 appendCustomFormatWithName:0 block:v6];
}

void __49__BKSHIDEventKeyCommand__appendPropertiesCommon___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  if (v4 && ([*(a1 + 40) style], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "clientInformation"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "containsObject:", @"skipModifiers"), v6, v5, (v7 & 1) == 0))
  {
    BSDescriptionStreamAppendBKSKeyModifierFlags(v3, v4);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = [*(a1 + 32) keyCode];
  v10 = v9;
  if ((v9 - 1) <= 0xFFFFFFFD)
  {
    if ((v9 - 4) > 0x19)
    {
      if ((v9 - 30) > 8)
      {
        if (v9 > 224)
        {
          if (v9 <= 227)
          {
            if (v9 == 225)
            {
              v15 = @"lshft";
            }

            else if (v9 == 226)
            {
              v15 = @"lopt";
            }

            else
            {
              v15 = @"lcmd";
            }
          }

          else if (v9 > 229)
          {
            if (v9 == 230)
            {
              v15 = @"ropt";
            }

            else
            {
              if (v9 != 231)
              {
                goto LABEL_37;
              }

              v15 = @"rcmd";
            }
          }

          else if (v9 == 228)
          {
            v15 = @"rctrl";
          }

          else
          {
            v15 = @"rshft";
          }
        }

        else
        {
          if (v9 <= 79)
          {
            switch(v9)
            {
              case '\'':
                v15 = @"0";
                goto LABEL_13;
              case ',':
                v15 = @"space";
                goto LABEL_13;
              case 'O':
                v15 = @"rightArrow";
                goto LABEL_13;
            }

LABEL_37:
            v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(code: %02X)", v10];
            v14 = @"-";
LABEL_38:
            if (v8)
            {
              goto LABEL_39;
            }

            goto LABEL_40;
          }

          if (v9 <= 81)
          {
            if (v9 == 80)
            {
              v15 = @"leftArrow";
            }

            else
            {
              v15 = @"downArrow";
            }

            goto LABEL_13;
          }

          if (v9 == 82)
          {
            v15 = @"upArrow";
            goto LABEL_13;
          }

          if (v9 != 224)
          {
            goto LABEL_37;
          }

          v15 = @"lctrl";
        }

        v14 = @" ";
        goto LABEL_14;
      }

      v16 = v9 + 19;
      v11 = MEMORY[0x1E696AEC0];
      v12 = &v16;
    }

    else
    {
      v17 = v9 + 93;
      v11 = MEMORY[0x1E696AEC0];
      v12 = &v17;
    }

    v15 = [v11 stringWithCharacters:v12 length:1];
    if (v15)
    {
LABEL_13:
      v14 = @"-";
LABEL_14:
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%02X:%@)", v10, v15];

      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v13 = 0;
  if (v8)
  {
    v14 = @"-";
LABEL_39:
    [v3 appendString:v14];
  }

LABEL_40:
  [*(a1 + 32) _appendKeyWithoutModifiersToDescriptionTarget:v3 keyCodeString:v13];
}

- (void)_appendKeyWithoutModifiersToDescriptionTarget:(id)a3 keyCodeString:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(BKSHIDEventKeyCommand *)self _sanitizedInputForDescription];
  if (v7)
  {
    [v8 appendString:v7];
    if (!v6)
    {
      goto LABEL_6;
    }

    [v8 appendString:@" "];
  }

  else if (!v6)
  {
    goto LABEL_6;
  }

  [v8 appendString:v6];
LABEL_6:
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __36__BKSHIDEventKeyCommand_description__block_invoke;
  v10 = &unk_1E6F47C78;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 input];
    v7 = [(BKSHIDEventKeyCommand *)self input];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [v5 input];
      v10 = [(BKSHIDEventKeyCommand *)self input];
      v11 = [v9 isEqualToString:v10];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v13 = [v5 keyCode];
    if (v13 == [(BKSHIDEventKeyCommand *)self keyCode])
    {
      v14 = [v5 modifierFlags];
      v12 = v14 == [(BKSHIDEventKeyCommand *)self modifierFlags];
LABEL_10:

      goto LABEL_11;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (unint64_t)hash
{
  keyCode = self->_keyCode;
  if (keyCode == -1)
  {
    return [(NSString *)self->_input hash]& 0xFFFFFFFFFF40FFFFLL | self->_modifierFlags;
  }

  else
  {
    return self->_modifierFlags | keyCode & 0xFFFFFFFFFF40FFFFLL;
  }
}

- (BKSHIDEventKeyCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"input"];
  v6 = [v4 decodeIntegerForKey:@"keyCode"];
  v7 = [v4 decodeIntegerForKey:@"modifierFlags"];

  v8 = [(BKSHIDEventKeyCommand *)self _initWithInput:v5 keyCode:v6 modifierFlags:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  input = self->_input;
  v5 = a3;
  [v5 encodeObject:input forKey:@"input"];
  [v5 encodeInteger:self->_keyCode forKey:@"keyCode"];
  [v5 encodeInteger:self->_modifierFlags forKey:@"modifierFlags"];
}

- (id)_initWithInput:(id)a3 keyCode:(int64_t)a4 modifierFlags:(int64_t)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = BKSHIDEventKeyCommand;
  v9 = [(BKSHIDEventKeyCommand *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    input = v9->_input;
    v9->_input = v10;

    objc_storeStrong(&v9->_unmodifiedInput, v9->_input);
    v9->_keyCode = a4;
    v9->_modifierFlags = a5;
    v9->_usagePage = 7;
  }

  return v9;
}

- (BKSHIDEventKeyCommand)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BKSHIDEventKeyCommand"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"BKSHIDEventKeyCommand.m";
    v17 = 1024;
    v18 = 110;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (BOOL)_shouldMatchKeyCommandsForEvent:(__IOHIDEvent *)a3 gsKeyboard:(__GSKeyboard *)a4
{
  if (!a4)
  {
    return 0;
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  return ([a1 _isModifierKeyWithPage:IntegerValue usage:IOHIDEventGetIntegerValue()] & 1) != 0 || (GSKeyboardGetModifierState() & 0x5910000) != 0;
}

+ (BOOL)_isModifierKeyWithPage:(int64_t)a3 usage:(int64_t)a4
{
  if (a3 != 7)
  {
    return GSKeyboardIsGlobeKeyUsagePair() != 0;
  }

  return (a4 - 224) < 8 || a4 == 83 || a4 == 57;
}

+ (id)keyCommandForEvent:(__IOHIDEvent *)a3 gsKeyboard:(__GSKeyboard *)a4 activeModifiers:(int64_t *)a5
{
  v43 = *MEMORY[0x1E69E9840];
  IntegerValue = IOHIDEventGetIntegerValue();
  v8 = IOHIDEventGetIntegerValue();
  v9 = IOHIDEventGetIntegerValue();
  [objc_opt_class() _isModifierKeyWithPage:v9 usage:IntegerValue];
  if ((IntegerValue - 83) < 0x11 || IntegerValue == 133 || IntegerValue == 103)
  {
    v12 = 0x200000;
  }

  else
  {
    v12 = 0;
  }

  if (!MEMORY[0x1EEE89690] || !a4)
  {
    if (a5)
    {
      *a5 = v12;
    }

    v42[0] = 0;
    if (IntegerValue - 4 <= 0x19)
    {
      v15 = IntegerValue + 93;
LABEL_57:
      LOBYTE(v42[0]) = v15;
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v42];
      v21 = [objc_opt_class() keyCommandWithInput:v25 modifierFlags:v12];
      v21[2] = IntegerValue;
      [v21 setUnmodifiedInput:v25];

      goto LABEL_58;
    }

    if (IntegerValue - 30 <= 9)
    {
      v15 = IntegerValue + 18;
      goto LABEL_57;
    }

    if (IntegerValue - 89 <= 9)
    {
      v15 = IntegerValue - 41;
      goto LABEL_57;
    }

    if (IntegerValue > 0x57u)
    {
      if (IntegerValue != 88)
      {
        if (IntegerValue != 133)
        {
          goto LABEL_52;
        }

        goto LABEL_55;
      }
    }

    else if (IntegerValue != 40)
    {
      if (IntegerValue != 54)
      {
LABEL_52:
        v21 = [objc_opt_class() keyCommandWithKeyCode:IntegerValue modifierFlags:v12];
        goto LABEL_58;
      }

LABEL_55:
      v15 = 44;
      goto LABEL_57;
    }

    v15 = 13;
    goto LABEL_57;
  }

  v37 = 0;
  v38 = 0;
  v36 = 0;
  LiveModifierState = GSKeyboardGetLiveModifierState();
  v33 = 0;
  v34 = v9;
  v32 = &v36;
  v30 = &v37;
  v31 = v39;
  v28 = &v37 + 2;
  v29 = v40;
  GSKeyboardTranslateKeyExtendedCommandWithUsagePage();
  if (v8)
  {
    v14 = v12;
    LiveModifierState = GSKeyboardGetLiveModifierState();
  }

  else
  {
    v14 = v12;
  }

  if ((LiveModifierState & 0x480000) != 0)
  {
    v16 = (((LiveModifierState & 0x1010000) != 0) << 20) | 0x80000;
  }

  else
  {
    v16 = ((LiveModifierState & 0x1010000) != 0) << 20;
  }

  if ((LiveModifierState & 0x900000) != 0)
  {
    v16 |= 0x40000uLL;
  }

  if ((LiveModifierState & 0x220000) != 0)
  {
    v16 |= 0x20000uLL;
  }

  v35 = v16;
  v17 = (LiveModifierState >> 3) & 0x800000 | (LiveModifierState >> 2) & 0x10000;
  if (a5)
  {
    v18 = GSKeyboardGetLiveModifierState();
    if ((v18 & 0x480000) != 0)
    {
      v19 = (((v18 & 0x1010000) != 0) << 20) | 0x80000;
    }

    else
    {
      v19 = ((v18 & 0x1010000) != 0) << 20;
    }

    if ((v18 & 0x900000) != 0)
    {
      v19 |= 0x40000uLL;
    }

    if ((v18 & 0x220000) != 0)
    {
      v19 |= 0x20000uLL;
    }

    *a5 = v19 | (v18 >> 3) & 0x800000 | (v18 >> 2) & 0x10000;
  }

  if (HIWORD(v38))
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithCharacters:v42 length:{&v37 + 2, v40, &v37, v39, &v36, 0, v9}];
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_opt_class() keyCommandWithInput:v20 modifierFlags:v35 | v17 | v14];
  v21[2] = IntegerValue;
  if (v38)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithCharacters:v41 length:?];
    [v21 setUnmodifiedInput:v22];
  }

  if (HIWORD(v37))
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithCharacters:v40 length:?];
    [v21 setShiftModifiedInput:v23];
  }

  if (v37)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithCharacters:v39 length:?];
    [v21 setCommandModifiedInput:v24];
  }

  [v21 setUsagePage:{v9, v28, v29, v30, v31, v32, v33, v34}];

LABEL_58:
  v26 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)_descriptionForKeyCommandCollection:(id)a3
{
  v4 = MEMORY[0x1E698E688];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [a1 _appendDescriptionOfKeyCommandCollection:v5 toStream:v6];

  v7 = [v6 description];

  return v7;
}

+ (void)_appendDescriptionOfKeyCommandCollection:(id)a3 toStream:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"collection must be an NSSet, NSArray, or NSOrderedSet"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138544642;
      v22 = v15;
      v23 = 2114;
      v24 = v17;
      v25 = 2048;
      v26 = a1;
      v27 = 2114;
      v28 = @"BKSHIDEventKeyCommand.m";
      v29 = 1024;
      v30 = 328;
      v31 = 2114;
      v32 = v14;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186359038);
  }

  v9 = [v7 bs_dictionaryByPartitioning:&__block_literal_global_357];
  v10 = [MEMORY[0x1E698E690] build:&__block_literal_global_62];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__BKSHIDEventKeyCommand__appendDescriptionOfKeyCommandCollection_toStream___block_invoke_3;
  v18[3] = &unk_1E6F466A0;
  v19 = v8;
  v20 = v10;
  v11 = v10;
  v12 = v8;
  [v12 appendDictionary:v9 withName:0 itemBlock:v18];

  v13 = *MEMORY[0x1E69E9840];
}

void __75__BKSHIDEventKeyCommand__appendDescriptionOfKeyCommandCollection_toStream___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__BKSHIDEventKeyCommand__appendDescriptionOfKeyCommandCollection_toStream___block_invoke_4;
  v12[3] = &unk_1E6F46678;
  v13 = v7;
  v14 = *(a1 + 40);
  v15 = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__BKSHIDEventKeyCommand__appendDescriptionOfKeyCommandCollection_toStream___block_invoke_7;
  v10[3] = &unk_1E6F477E8;
  v11 = v5;
  v8 = v5;
  v9 = v6;
  [v13 appendCustomFormatForValue:v12 withCustomFormatForName:v10];
}

void __75__BKSHIDEventKeyCommand__appendDescriptionOfKeyCommandCollection_toStream___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__BKSHIDEventKeyCommand__appendDescriptionOfKeyCommandCollection_toStream___block_invoke_5;
  v4[3] = &unk_1E6F47C78;
  v5 = v2;
  v6 = *(a1 + 48);
  [v5 overlayStyle:v3 block:v4];
}

void __75__BKSHIDEventKeyCommand__appendDescriptionOfKeyCommandCollection_toStream___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  BSDescriptionStreamAppendBKSKeyModifierFlags(v3, [v2 unsignedIntValue]);
}

void __75__BKSHIDEventKeyCommand__appendDescriptionOfKeyCommandCollection_toStream___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __75__BKSHIDEventKeyCommand__appendDescriptionOfKeyCommandCollection_toStream___block_invoke_6;
  v3[3] = &unk_1E6F46650;
  v4 = v1;
  [v4 appendCollection:v2 withName:0 itemBlock:v3];
}

void __75__BKSHIDEventKeyCommand__appendDescriptionOfKeyCommandCollection_toStream___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setCollectionLineBreak:2];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:@"skipModifiers"];
  [v2 setClientInformation:v3];
}

uint64_t __75__BKSHIDEventKeyCommand__appendDescriptionOfKeyCommandCollection_toStream___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 modifierFlags];

  return [v2 numberWithInteger:v3];
}

+ (id)keyCommandWithKeyCode:(int64_t)a3 modifierFlags:(int64_t)a4
{
  v4 = [[BKSHIDEventKeyCommand alloc] _initWithInput:0 keyCode:a3 modifierFlags:a4];

  return v4;
}

+ (id)keyCommandWithInput:(id)a3 modifierFlags:(int64_t)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E695DFB0] null];
  v7 = [v5 isEqual:v6];

  if (v7)
  {

    v5 = 0;
  }

  v8 = [[BKSHIDEventKeyCommand alloc] _initWithInput:v5 keyCode:-1 modifierFlags:a4];

  return v8;
}

@end