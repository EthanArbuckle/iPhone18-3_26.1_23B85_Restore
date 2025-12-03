@interface AXSwitchRecipeMapping
+ (id)recipeMappingWithDictionaryRepresentation:(id)representation;
- (AXSwitchRecipeMapping)init;
- (CGPoint)holdPoint;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation AXSwitchRecipeMapping

+ (id)recipeMappingWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = objc_alloc_init(self);
  v6 = [representationCopy objectForKeyedSubscript:@"Action"];
  [v5 setAction:v6];

  v7 = [representationCopy objectForKeyedSubscript:@"LongPressAction"];
  [v5 setLongPressAction:v7];

  v8 = [representationCopy objectForKeyedSubscript:@"Gesture"];
  if (v8)
  {
    v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:0];
    [v5 setGesture:v9];
  }

  v10 = [representationCopy objectForKeyedSubscript:@"LongPressGesture"];
  if (v10)
  {
    v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:0];
    [v5 setLongPressGesture:v11];
  }

  v12 = [representationCopy objectForKeyedSubscript:@"HoldPointX"];
  v13 = [representationCopy objectForKeyedSubscript:@"HoldPointY"];
  v14 = v13;
  if (v12 | v13)
  {
    if (v12 && v13)
    {
      [v12 doubleValue];
      v16 = v15;
      [v14 doubleValue];
      [v5 setHoldPoint:{v16, v17}];
    }

    else
    {
      v31 = v12;
      v32 = v13;
      _AXAssert();
    }
  }

  v18 = [representationCopy objectForKeyedSubscript:{@"Optional", v31, v32}];
  [v5 setOptional:{objc_msgSend(v18, "BOOLValue")}];

  v19 = [representationCopy objectForKeyedSubscript:@"SwitchUUID"];

  if (v19)
  {
    v20 = objc_alloc(MEMORY[0x1E696AFB0]);
    v21 = [representationCopy objectForKeyedSubscript:@"SwitchUUID"];
    v22 = [v20 initWithUUIDString:v21];

    [v5 setSwitchUUID:v22];
  }

  v23 = [representationCopy objectForKeyedSubscript:@"SwitchOriginalAction"];

  if (!v23)
  {
    _AXAssert();
  }

  v24 = [representationCopy objectForKeyedSubscript:@"SwitchOriginalAction"];

  if (v24)
  {
    v25 = [representationCopy objectForKeyedSubscript:@"SwitchOriginalAction"];
    [v5 setSwitchOriginalAction:{objc_msgSend(v25, "integerValue")}];
  }

  else
  {
    [v5 setSwitchOriginalAction:103];
  }

  v26 = [representationCopy objectForKeyedSubscript:@"ButtonPress"];
  if (v26)
  {
    v27 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v26 error:0];
    [v5 setGameControlButtonPress:v27];
  }

  v28 = [representationCopy objectForKeyedSubscript:@"LongPressButtonPress"];
  if (v28)
  {
    v29 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v28 error:0];
    [v5 setLongPressGameControlButtonPress:v29];
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  action = [(AXSwitchRecipeMapping *)self action];

  if (!action)
  {
    _AXAssert();
  }

  action2 = [(AXSwitchRecipeMapping *)self action];

  if (action2)
  {
    action3 = [(AXSwitchRecipeMapping *)self action];
    [v3 setObject:action3 forKeyedSubscript:@"Action"];
  }

  longPressAction = [(AXSwitchRecipeMapping *)self longPressAction];

  if (longPressAction)
  {
    longPressAction2 = [(AXSwitchRecipeMapping *)self longPressAction];
    [v3 setObject:longPressAction2 forKeyedSubscript:@"LongPressAction"];
  }

  gesture = [(AXSwitchRecipeMapping *)self gesture];
  if (gesture)
  {
  }

  else
  {
    action4 = [(AXSwitchRecipeMapping *)self action];
    v11 = [action4 isEqualToString:@"Gesture"];

    if (v11)
    {
      _AXAssert();
    }
  }

  [(AXSwitchRecipeMapping *)self holdPoint];
  if (v13 == -1.0 && v12 == -1.0)
  {
    action5 = [(AXSwitchRecipeMapping *)self action];
    v15 = [action5 isEqualToString:@"HoldAtPoint"];

    if (v15)
    {
      _AXAssert();
    }
  }

  gesture2 = [(AXSwitchRecipeMapping *)self gesture];

  if (gesture2)
  {
    v17 = MEMORY[0x1E696ACC8];
    gesture3 = [(AXSwitchRecipeMapping *)self gesture];
    v55 = 0;
    v19 = [v17 archivedDataWithRootObject:gesture3 requiringSecureCoding:1 error:&v55];
    gesture2 = v55;
    [v3 setObject:v19 forKeyedSubscript:@"Gesture"];
  }

  longPressGesture = [(AXSwitchRecipeMapping *)self longPressGesture];

  if (longPressGesture)
  {
    v21 = MEMORY[0x1E696ACC8];
    longPressGesture2 = [(AXSwitchRecipeMapping *)self longPressGesture];
    v54 = gesture2;
    v23 = [v21 archivedDataWithRootObject:longPressGesture2 requiringSecureCoding:1 error:&v54];
    v24 = v54;

    [v3 setObject:v23 forKeyedSubscript:@"LongPressGesture"];
    gesture2 = v24;
  }

  gameControlButtonPress = [(AXSwitchRecipeMapping *)self gameControlButtonPress];
  if (gameControlButtonPress)
  {
    v53 = gesture2;
    v26 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:gameControlButtonPress requiringSecureCoding:1 error:&v53];
    v27 = v53;

    [v3 setObject:v26 forKeyedSubscript:@"ButtonPress"];
    gesture2 = v27;
  }

  longPressGameControlButtonPress = [(AXSwitchRecipeMapping *)self longPressGameControlButtonPress];
  if (longPressGameControlButtonPress)
  {
    v52 = gesture2;
    v29 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:longPressGameControlButtonPress requiringSecureCoding:1 error:&v52];
    v30 = v52;

    [v3 setObject:v29 forKeyedSubscript:@"LongPressButtonPress"];
    gesture2 = v30;
  }

  if (gesture2)
  {
    mEMORY[0x1E69887F8] = [MEMORY[0x1E69887F8] sharedInstance];
    ignoreLogging = [mEMORY[0x1E69887F8] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x1E69887F8] identifier];
      v34 = AXLoggerForFacility();

      v35 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = AXColorizeFormatLog();
        v51 = gesture2;
        v37 = _AXStringForArgs();
        if (os_log_type_enabled(v34, v35))
        {
          *buf = 138543362;
          v57 = v37;
          _os_log_impl(&dword_18B15E000, v34, v35, "%{public}@", buf, 0xCu);
        }
      }
    }
  }

  [(AXSwitchRecipeMapping *)self holdPoint];
  if (v39 != -1.0 || v38 != -1.0)
  {
    v40 = MEMORY[0x1E696AD98];
    [(AXSwitchRecipeMapping *)self holdPoint];
    v41 = [v40 numberWithDouble:?];
    [v3 setObject:v41 forKeyedSubscript:@"HoldPointX"];

    v42 = MEMORY[0x1E696AD98];
    [(AXSwitchRecipeMapping *)self holdPoint];
    v44 = [v42 numberWithDouble:v43];
    [v3 setObject:v44 forKeyedSubscript:@"HoldPointY"];
  }

  switchUUID = [(AXSwitchRecipeMapping *)self switchUUID];

  if (switchUUID)
  {
    switchUUID2 = [(AXSwitchRecipeMapping *)self switchUUID];
    uUIDString = [switchUUID2 UUIDString];
    [v3 setObject:uUIDString forKeyedSubscript:@"SwitchUUID"];
  }

  v48 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXSwitchRecipeMapping isOptional](self, "isOptional")}];
  [v3 setObject:v48 forKeyedSubscript:@"Optional"];

  v49 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXSwitchRecipeMapping switchOriginalAction](self, "switchOriginalAction")}];
  [v3 setObject:v49 forKeyedSubscript:@"SwitchOriginalAction"];

  return v3;
}

- (AXSwitchRecipeMapping)init
{
  v3.receiver = self;
  v3.super_class = AXSwitchRecipeMapping;
  result = [(AXSwitchRecipeMapping *)&v3 init];
  if (result)
  {
    result->_holdPoint = AXSwitchRecipeHoldPointNone;
  }

  return result;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = AXSwitchRecipeMapping;
  v3 = [(AXSwitchRecipeMapping *)&v10 description];
  action = [(AXSwitchRecipeMapping *)self action];
  gesture = [(AXSwitchRecipeMapping *)self gesture];
  switchUUID = [(AXSwitchRecipeMapping *)self switchUUID];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXSwitchRecipeMapping switchOriginalAction](self, "switchOriginalAction")}];
  v8 = [v3 stringByAppendingFormat:@"\nAction: %@\nGesture: %@\nSwitch UUID: %@\nSwitch Original Action: %@", action, gesture, switchUUID, v7];

  return v8;
}

- (CGPoint)holdPoint
{
  x = self->_holdPoint.x;
  y = self->_holdPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end