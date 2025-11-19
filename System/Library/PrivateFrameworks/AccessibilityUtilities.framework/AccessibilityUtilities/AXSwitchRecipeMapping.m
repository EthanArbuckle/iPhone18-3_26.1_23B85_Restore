@interface AXSwitchRecipeMapping
+ (id)recipeMappingWithDictionaryRepresentation:(id)a3;
- (AXSwitchRecipeMapping)init;
- (CGPoint)holdPoint;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation AXSwitchRecipeMapping

+ (id)recipeMappingWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 objectForKeyedSubscript:@"Action"];
  [v5 setAction:v6];

  v7 = [v4 objectForKeyedSubscript:@"LongPressAction"];
  [v5 setLongPressAction:v7];

  v8 = [v4 objectForKeyedSubscript:@"Gesture"];
  if (v8)
  {
    v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:0];
    [v5 setGesture:v9];
  }

  v10 = [v4 objectForKeyedSubscript:@"LongPressGesture"];
  if (v10)
  {
    v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:0];
    [v5 setLongPressGesture:v11];
  }

  v12 = [v4 objectForKeyedSubscript:@"HoldPointX"];
  v13 = [v4 objectForKeyedSubscript:@"HoldPointY"];
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

  v18 = [v4 objectForKeyedSubscript:{@"Optional", v31, v32}];
  [v5 setOptional:{objc_msgSend(v18, "BOOLValue")}];

  v19 = [v4 objectForKeyedSubscript:@"SwitchUUID"];

  if (v19)
  {
    v20 = objc_alloc(MEMORY[0x1E696AFB0]);
    v21 = [v4 objectForKeyedSubscript:@"SwitchUUID"];
    v22 = [v20 initWithUUIDString:v21];

    [v5 setSwitchUUID:v22];
  }

  v23 = [v4 objectForKeyedSubscript:@"SwitchOriginalAction"];

  if (!v23)
  {
    _AXAssert();
  }

  v24 = [v4 objectForKeyedSubscript:@"SwitchOriginalAction"];

  if (v24)
  {
    v25 = [v4 objectForKeyedSubscript:@"SwitchOriginalAction"];
    [v5 setSwitchOriginalAction:{objc_msgSend(v25, "integerValue")}];
  }

  else
  {
    [v5 setSwitchOriginalAction:103];
  }

  v26 = [v4 objectForKeyedSubscript:@"ButtonPress"];
  if (v26)
  {
    v27 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v26 error:0];
    [v5 setGameControlButtonPress:v27];
  }

  v28 = [v4 objectForKeyedSubscript:@"LongPressButtonPress"];
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
  v4 = [(AXSwitchRecipeMapping *)self action];

  if (!v4)
  {
    _AXAssert();
  }

  v5 = [(AXSwitchRecipeMapping *)self action];

  if (v5)
  {
    v6 = [(AXSwitchRecipeMapping *)self action];
    [v3 setObject:v6 forKeyedSubscript:@"Action"];
  }

  v7 = [(AXSwitchRecipeMapping *)self longPressAction];

  if (v7)
  {
    v8 = [(AXSwitchRecipeMapping *)self longPressAction];
    [v3 setObject:v8 forKeyedSubscript:@"LongPressAction"];
  }

  v9 = [(AXSwitchRecipeMapping *)self gesture];
  if (v9)
  {
  }

  else
  {
    v10 = [(AXSwitchRecipeMapping *)self action];
    v11 = [v10 isEqualToString:@"Gesture"];

    if (v11)
    {
      _AXAssert();
    }
  }

  [(AXSwitchRecipeMapping *)self holdPoint];
  if (v13 == -1.0 && v12 == -1.0)
  {
    v14 = [(AXSwitchRecipeMapping *)self action];
    v15 = [v14 isEqualToString:@"HoldAtPoint"];

    if (v15)
    {
      _AXAssert();
    }
  }

  v16 = [(AXSwitchRecipeMapping *)self gesture];

  if (v16)
  {
    v17 = MEMORY[0x1E696ACC8];
    v18 = [(AXSwitchRecipeMapping *)self gesture];
    v55 = 0;
    v19 = [v17 archivedDataWithRootObject:v18 requiringSecureCoding:1 error:&v55];
    v16 = v55;
    [v3 setObject:v19 forKeyedSubscript:@"Gesture"];
  }

  v20 = [(AXSwitchRecipeMapping *)self longPressGesture];

  if (v20)
  {
    v21 = MEMORY[0x1E696ACC8];
    v22 = [(AXSwitchRecipeMapping *)self longPressGesture];
    v54 = v16;
    v23 = [v21 archivedDataWithRootObject:v22 requiringSecureCoding:1 error:&v54];
    v24 = v54;

    [v3 setObject:v23 forKeyedSubscript:@"LongPressGesture"];
    v16 = v24;
  }

  v25 = [(AXSwitchRecipeMapping *)self gameControlButtonPress];
  if (v25)
  {
    v53 = v16;
    v26 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v25 requiringSecureCoding:1 error:&v53];
    v27 = v53;

    [v3 setObject:v26 forKeyedSubscript:@"ButtonPress"];
    v16 = v27;
  }

  v28 = [(AXSwitchRecipeMapping *)self longPressGameControlButtonPress];
  if (v28)
  {
    v52 = v16;
    v29 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v28 requiringSecureCoding:1 error:&v52];
    v30 = v52;

    [v3 setObject:v29 forKeyedSubscript:@"LongPressButtonPress"];
    v16 = v30;
  }

  if (v16)
  {
    v31 = [MEMORY[0x1E69887F8] sharedInstance];
    v32 = [v31 ignoreLogging];

    if ((v32 & 1) == 0)
    {
      v33 = [MEMORY[0x1E69887F8] identifier];
      v34 = AXLoggerForFacility();

      v35 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = AXColorizeFormatLog();
        v51 = v16;
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

  v45 = [(AXSwitchRecipeMapping *)self switchUUID];

  if (v45)
  {
    v46 = [(AXSwitchRecipeMapping *)self switchUUID];
    v47 = [v46 UUIDString];
    [v3 setObject:v47 forKeyedSubscript:@"SwitchUUID"];
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
  v4 = [(AXSwitchRecipeMapping *)self action];
  v5 = [(AXSwitchRecipeMapping *)self gesture];
  v6 = [(AXSwitchRecipeMapping *)self switchUUID];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXSwitchRecipeMapping switchOriginalAction](self, "switchOriginalAction")}];
  v8 = [v3 stringByAppendingFormat:@"\nAction: %@\nGesture: %@\nSwitch UUID: %@\nSwitch Original Action: %@", v4, v5, v6, v7];

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