@interface AXEventKeyInfoRepresentation
+ (__GSKeyboard)_getUIKitKeyboardRef;
+ (__GSKeyboard)_getUSUIKitKeyboardRef;
+ (unsigned)_getIOHIDKeyboardTypeForGSKeyboardType:(unsigned __int8)a3;
+ (void)prepareForKeycodeTranslation;
- (AXEventKeyInfoRepresentation)initWithCoder:(id)a3;
- (__GSKeyboard)_getUIKitKeyboardRef;
- (__GSKeyboard)_getUSUIKitKeyboardRef;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)translateKeycode;
- (void)translateStringToKeycode;
@end

@implementation AXEventKeyInfoRepresentation

- (AXEventKeyInfoRepresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AXEventKeyInfoRepresentation;
  v5 = [(AXEventKeyInfoRepresentation *)&v13 init];
  if (v5)
  {
    -[AXEventKeyInfoRepresentation setKeyCode:](v5, "setKeyCode:", [v4 decodeInt32ForKey:@"keyCode"]);
    -[AXEventKeyInfoRepresentation setUsagePage:](v5, "setUsagePage:", [v4 decodeInt32ForKey:@"usagePage"]);
    -[AXEventKeyInfoRepresentation setKeyDown:](v5, "setKeyDown:", [v4 decodeBoolForKey:@"keyDown"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unmodifiedInput"];
    [(AXEventKeyInfoRepresentation *)v5 setUnmodifiedInput:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modifiedInput"];
    [(AXEventKeyInfoRepresentation *)v5 setModifiedInput:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shiftModifiedInput"];
    [(AXEventKeyInfoRepresentation *)v5 setShiftModifiedInput:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backupUnmodifiedInput"];
    [(AXEventKeyInfoRepresentation *)v5 setBackupUnmodifiedInput:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backupModifiedInput"];
    [(AXEventKeyInfoRepresentation *)v5 setBackupModifiedInput:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backupShiftModifiedInput"];
    [(AXEventKeyInfoRepresentation *)v5 setBackupShiftModifiedInput:v11];

    -[AXEventKeyInfoRepresentation setModifierState:](v5, "setModifierState:", [v4 decodeIntegerForKey:@"modifierState"]);
    -[AXEventKeyInfoRepresentation setGsModifierState:](v5, "setGsModifierState:", [v4 decodeInt32ForKey:@"gsModifierState"]);
    -[AXEventKeyInfoRepresentation setAlternativeKeyCode:](v5, "setAlternativeKeyCode:", [v4 decodeInt32ForKey:@"alternativeKeyCode"]);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(AXEventKeyInfoRepresentation);
  v5 = [(AXEventKeyInfoRepresentation *)self unmodifiedInput];
  v6 = [v5 copy];
  [(AXEventKeyInfoRepresentation *)v4 setUnmodifiedInput:v6];

  v7 = [(AXEventKeyInfoRepresentation *)self shiftModifiedInput];
  v8 = [v7 copy];
  [(AXEventKeyInfoRepresentation *)v4 setShiftModifiedInput:v8];

  [(AXEventKeyInfoRepresentation *)v4 setModifierState:[(AXEventKeyInfoRepresentation *)self modifierState]];
  [(AXEventKeyInfoRepresentation *)v4 setGsModifierState:[(AXEventKeyInfoRepresentation *)self gsModifierState]];
  v9 = [(AXEventKeyInfoRepresentation *)self modifiedInput];
  v10 = [v9 copy];
  [(AXEventKeyInfoRepresentation *)v4 setModifiedInput:v10];

  [(AXEventKeyInfoRepresentation *)v4 setKeyCode:[(AXEventKeyInfoRepresentation *)self keyCode]];
  [(AXEventKeyInfoRepresentation *)v4 setUsagePage:[(AXEventKeyInfoRepresentation *)self usagePage]];
  [(AXEventKeyInfoRepresentation *)v4 setAlternativeKeyCode:[(AXEventKeyInfoRepresentation *)self alternativeKeyCode]];
  [(AXEventKeyInfoRepresentation *)v4 setKeyDown:[(AXEventKeyInfoRepresentation *)self keyDown]];
  v11 = [(AXEventKeyInfoRepresentation *)self backupUnmodifiedInput];
  v12 = [v11 copy];
  [(AXEventKeyInfoRepresentation *)v4 setBackupUnmodifiedInput:v12];

  v13 = [(AXEventKeyInfoRepresentation *)self backupShiftModifiedInput];
  v14 = [v13 copy];
  [(AXEventKeyInfoRepresentation *)v4 setBackupShiftModifiedInput:v14];

  v15 = [(AXEventKeyInfoRepresentation *)self backupModifiedInput];
  v16 = [v15 copy];
  [(AXEventKeyInfoRepresentation *)v4 setBackupModifiedInput:v16];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:-[AXEventKeyInfoRepresentation keyCode](self forKey:{"keyCode"), @"keyCode"}];
  [v4 encodeInt32:-[AXEventKeyInfoRepresentation alternativeKeyCode](self forKey:{"alternativeKeyCode"), @"alternativeKeyCode"}];
  [v4 encodeInt32:-[AXEventKeyInfoRepresentation usagePage](self forKey:{"usagePage"), @"usagePage"}];
  [v4 encodeBool:-[AXEventKeyInfoRepresentation keyDown](self forKey:{"keyDown"), @"keyDown"}];
  v5 = [(AXEventKeyInfoRepresentation *)self unmodifiedInput];
  [v4 encodeObject:v5 forKey:@"unmodifiedInput"];

  v6 = [(AXEventKeyInfoRepresentation *)self modifiedInput];
  [v4 encodeObject:v6 forKey:@"modifiedInput"];

  v7 = [(AXEventKeyInfoRepresentation *)self shiftModifiedInput];
  [v4 encodeObject:v7 forKey:@"shiftModifiedInput"];

  [v4 encodeInt32:-[AXEventKeyInfoRepresentation modifierState](self forKey:{"modifierState"), @"modifierState"}];
  [v4 encodeInt32:-[AXEventKeyInfoRepresentation gsModifierState](self forKey:{"gsModifierState"), @"gsModifierState"}];
  v8 = [(AXEventKeyInfoRepresentation *)self backupModifiedInput];
  [v4 encodeObject:v8 forKey:@"backupModifiedInput"];

  v9 = [(AXEventKeyInfoRepresentation *)self backupUnmodifiedInput];
  [v4 encodeObject:v9 forKey:@"backupUnmodifiedInput"];

  v10 = [(AXEventKeyInfoRepresentation *)self backupShiftModifiedInput];
  [v4 encodeObject:v10 forKey:@"backupShiftModifiedInput"];
}

+ (void)prepareForKeycodeTranslation
{
  [a1 _getUIKitKeyboardRef];

  [a1 _getUSUIKitKeyboardRef];
}

- (__GSKeyboard)_getUIKitKeyboardRef
{
  v2 = objc_opt_class();

  return [v2 _getUIKitKeyboardRef];
}

- (__GSKeyboard)_getUSUIKitKeyboardRef
{
  v2 = objc_opt_class();

  return [v2 _getUSUIKitKeyboardRef];
}

+ (__GSKeyboard)_getUSUIKitKeyboardRef
{
  if (_getUSUIKitKeyboardRef_onceToken != -1)
  {
    +[AXEventKeyInfoRepresentation _getUSUIKitKeyboardRef];
  }

  result = _getUSUIKitKeyboardRef__KeyboardRef;
  if (!_getUSUIKitKeyboardRef__KeyboardRef)
  {
    AXPerformBlockSynchronouslyOnMainThread();
    return _getUSUIKitKeyboardRef__KeyboardRef;
  }

  return result;
}

void __54__AXEventKeyInfoRepresentation__getUSUIKitKeyboardRef__block_invoke()
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = *MEMORY[0x1E69D9908];
  v1 = [MEMORY[0x1E696ADC8] mainQueue];
  v2 = [v3 addObserverForName:v0 object:0 queue:v1 usingBlock:&__block_literal_global_325];
}

__GSKeyboard *__54__AXEventKeyInfoRepresentation__getUSUIKitKeyboardRef__block_invoke_3()
{
  if (_getUSUIKitKeyboardRef__KeyboardRef)
  {
    GSKeyboardRelease();
    _getUSUIKitKeyboardRef__KeyboardRef = 0;
  }

  return +[AXEventKeyInfoRepresentation _getUIKitKeyboardRef];
}

uint64_t __54__AXEventKeyInfoRepresentation__getUSUIKitKeyboardRef__block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) _getUIKitKeyboardRef];
  if (result)
  {
    GSKeyboardGetHWKeyboardType();
    result = GSKeyboardCreate();
    _getUSUIKitKeyboardRef__KeyboardRef = result;
  }

  return result;
}

+ (unsigned)_getIOHIDKeyboardTypeForGSKeyboardType:(unsigned __int8)a3
{
  if (a3 == 202)
  {
    v3 = 0;
  }

  else
  {
    v3 = a3;
  }

  if (a3 == 203)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 == 207)
  {
    return 2;
  }

  else
  {
    return v4;
  }
}

+ (__GSKeyboard)_getUIKitKeyboardRef
{
  if (_getUIKitKeyboardRef_onceToken != -1)
  {
    +[AXEventKeyInfoRepresentation _getUIKitKeyboardRef];
  }

  result = _getUIKitKeyboardRef__KeyboardRef;
  if (!_getUIKitKeyboardRef__KeyboardRef)
  {
    AXPerformBlockSynchronouslyOnMainThread();
    return _getUIKitKeyboardRef__KeyboardRef;
  }

  return result;
}

void __52__AXEventKeyInfoRepresentation__getUIKitKeyboardRef__block_invoke()
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = *MEMORY[0x1E69D9908];
  v1 = [MEMORY[0x1E696ADC8] mainQueue];
  v2 = [v3 addObserverForName:v0 object:0 queue:v1 usingBlock:&__block_literal_global_334];
}

__GSKeyboard *__52__AXEventKeyInfoRepresentation__getUIKitKeyboardRef__block_invoke_3()
{
  if (_getUIKitKeyboardRef__KeyboardRef)
  {
    GSKeyboardRelease();
    _getUIKitKeyboardRef__KeyboardRef = 0;
  }

  return +[AXEventKeyInfoRepresentation _getUIKitKeyboardRef];
}

void __52__AXEventKeyInfoRepresentation__getUIKitKeyboardRef__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _getIOHIDKeyboardTypeForGSKeyboardType:GSEventGetHardwareKeyboardType()];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v1 = getUIKeyboardInputModeControllerClass_softClass;
  v10 = getUIKeyboardInputModeControllerClass_softClass;
  if (!getUIKeyboardInputModeControllerClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getUIKeyboardInputModeControllerClass_block_invoke;
    v6[3] = &unk_1E71E9A80;
    v6[4] = &v7;
    __getUIKeyboardInputModeControllerClass_block_invoke(v6);
    v1 = v8[3];
  }

  v2 = v1;
  _Block_object_dispose(&v7, 8);
  v3 = [v1 sharedInputModeController];
  v4 = [v3 hardwareInputMode];
  v5 = [v4 automaticHardwareLayout];

  _getUIKitKeyboardRef__KeyboardRef = GSKeyboardCreate();
}

- (void)translateStringToKeycode
{
  v3 = [(AXEventKeyInfoRepresentation *)self modifiedInput];
  v4 = [v3 length];

  if (!v4)
  {
    return;
  }

  v5 = [(AXEventKeyInfoRepresentation *)self modifiedInput];
  v6 = [v5 characterAtIndex:0];

  if ((v6 - 97) <= 0x19)
  {
    v7 = v6 - 93;
LABEL_13:
    [(AXEventKeyInfoRepresentation *)self setKeyCode:v7];
    goto LABEL_14;
  }

  if ((v6 - 65) <= 0x19)
  {
    v7 = v6 - 61;
    goto LABEL_13;
  }

  if (v6 == 48)
  {
    v7 = 39;
    goto LABEL_13;
  }

  if ((v6 - 49) <= 8)
  {
    v7 = v6 - 19;
    goto LABEL_13;
  }

  if (v6 == 32)
  {
    v7 = 44;
    goto LABEL_13;
  }

LABEL_14:

  [(AXEventKeyInfoRepresentation *)self setUsagePage:7];
}

- (void)translateKeycode
{
  if ([(AXEventKeyInfoRepresentation *)self usagePage]== 7 || [(AXEventKeyInfoRepresentation *)self usagePage]== 65281 || [(AXEventKeyInfoRepresentation *)self usagePage]== 255)
  {
    v3 = malloc_type_calloc(1uLL, 0xA2uLL, 0x10000402B2F1F51uLL);
    v4 = malloc_type_calloc(1uLL, 0xA2uLL, 0x10000402B2F1F51uLL);
    [(AXEventKeyInfoRepresentation *)self keyDown];
    if ([(AXEventKeyInfoRepresentation *)self alternativeKeyCode])
    {
      v5 = [(AXEventKeyInfoRepresentation *)self alternativeKeyCode];
    }

    else
    {
      v5 = [(AXEventKeyInfoRepresentation *)self keyCode];
    }

    v6 = v5;
    v52[0] = 0;
    v52[1] = v52;
    v52[2] = 0x2020000000;
    v53 = 0;
    v50[0] = 0;
    v50[1] = v50;
    v50[2] = 0x2020000000;
    v51 = 0;
    if (v5)
    {
      v46 = 0;
      v47 = &v46;
      v48 = 0x2020000000;
      v49 = 0;
      v40 = 0;
      v41 = &v40;
      v42 = 0x3032000000;
      v43 = __Block_byref_object_copy__11;
      v44 = __Block_byref_object_dispose__11;
      v45 = 0;
      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = __Block_byref_object_copy__11;
      v38 = __Block_byref_object_dispose__11;
      v39 = 0;
      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v33 = 0;
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = 0;
      v20 = 0;
      v21 = &v20;
      v22 = 0x3032000000;
      v23 = __Block_byref_object_copy__11;
      v24 = __Block_byref_object_dispose__11;
      v25 = 0;
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      AXPerformBlockSynchronouslyOnMainThread();
      if (*(v17 + 24) == 1 && !*(v47 + 6))
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithCharacters:v3 + 5 length:v3[4]];
        [(AXEventKeyInfoRepresentation *)self setModifiedInput:v7];

        v8 = [MEMORY[0x1E696AEC0] stringWithCharacters:v3 + 30 length:v3[29]];
        [(AXEventKeyInfoRepresentation *)self setUnmodifiedInput:v8];

        [(AXEventKeyInfoRepresentation *)self setShiftModifiedInput:v41[5]];
        v9 = [MEMORY[0x1E696AEC0] stringWithCharacters:v4 + 5 length:v4[4]];
        if ([v21[5] length] && *(v27 + 6) == -1)
        {
          [(AXEventKeyInfoRepresentation *)self setBackupModifiedInput:v9];
          [(AXEventKeyInfoRepresentation *)self setBackupUnmodifiedInput:v21[5]];
          [(AXEventKeyInfoRepresentation *)self setBackupShiftModifiedInput:v35[5]];
        }

        v10 = *(v31 + 6);
        v11 = (v10 & 0x1010000) != 0;
        if ((v10 & 0x1010000) != 0)
        {
          v12 = 3;
        }

        else
        {
          v12 = 2;
        }

        if ((v10 & 0x480000) != 0)
        {
          v11 = v12;
        }

        if ((v10 & 0x900000) != 0)
        {
          v11 |= 4u;
        }

        if ((v10 & 0x220000) != 0)
        {
          v11 |= 8u;
        }

        v13 = v11 | (v10 >> 14) & 0x10;
        if ((v6 - 83) < 0x11 || v6 == 103)
        {
          v13 |= 0x20u;
        }

        if (_AXSimulatedEventKeyDown)
        {
          v15 = v13 | 0x40;
        }

        else
        {
          v15 = v13;
        }

        [(AXEventKeyInfoRepresentation *)self setModifierState:v15];
        [(AXEventKeyInfoRepresentation *)self setGsModifierState:*(v31 + 6)];
      }

      _Block_object_dispose(&v16, 8);
      _Block_object_dispose(&v20, 8);

      _Block_object_dispose(&v26, 8);
      _Block_object_dispose(&v30, 8);
      _Block_object_dispose(&v34, 8);

      _Block_object_dispose(&v40, 8);
      _Block_object_dispose(&v46, 8);
    }

    free(v3);
    free(v4);
    _Block_object_dispose(v50, 8);
    _Block_object_dispose(v52, 8);
  }
}

void __48__AXEventKeyInfoRepresentation_translateKeycode__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _getUIKitKeyboardRef];
  v3 = [*(a1 + 32) _getUSUIKitKeyboardRef];
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *(*(*(a1 + 48) + 8) + 24) = GSKeyboardTranslateKeyExtended();
    v5 = *(a1 + 120);
    v16 = v5 + 108;
    v17 = v5 + 110;
    v15 = *(*(a1 + 64) + 8) + 24;
    GSKeyboardTranslateKeyExtended();
    v6 = [MEMORY[0x1E696AEC0] stringWithCharacters:v19 length:{*(*(*(a1 + 56) + 8) + 24), v15, v18, v16, v17}];
    v7 = *(*(a1 + 72) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = [MEMORY[0x1E696AEC0] stringWithCharacters:v18 length:*(*(*(a1 + 64) + 8) + 24)];
    v10 = *(*(a1 + 80) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (!*(*(*(a1 + 48) + 8) + 24))
    {
      *(*(*(a1 + 88) + 8) + 24) = GSKeyboardGetLiveModifierState();
      v12 = [MEMORY[0x1E696AEC0] stringWithCharacters:*(a1 + 120) + 60 length:*(*(a1 + 120) + 58)];
      v13 = *(*(a1 + 96) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      if ([*(*(*(a1 + 96) + 8) + 40) length])
      {
        [*(*(*(a1 + 96) + 8) + 40) characterAtIndex:0];
        *(*(*(a1 + 104) + 8) + 24) = GSKeyboardGetKeyCodeForChar();
      }
    }
  }
}

@end