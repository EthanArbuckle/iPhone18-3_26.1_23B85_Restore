@interface BKSDisplayRenderOverlayDescriptor
+ (BKSDisplayRenderOverlayDescriptor)descriptorWithName:(id)a3 display:(id)a4;
+ (id)_classesRequiredToDecode;
- (BKSDisplayRenderOverlayDescriptor)initWithCoder:(id)a3;
- (BKSDisplayRenderOverlayDescriptor)initWithName:(id)a3 display:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CADisplay)display;
- (id)_initWithName:(id)a3 displayUUID:(id)a4;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)_appendDescriptionToFormatterCore:(id)a3;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSDisplayRenderOverlayDescriptor

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BKSDisplayRenderOverlayDescriptor *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [(BKSDisplayRenderOverlayDescriptor *)self _appendDescriptionToFormatterCore:v3];

  return v3;
}

- (id)succinctDescription
{
  v2 = [(BKSDisplayRenderOverlayDescriptor *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__BKSDisplayRenderOverlayDescriptor_appendDescriptionToFormatter___block_invoke;
    v9[3] = &unk_1E6F47C78;
    v9[4] = self;
    v10 = v8;
    [v10 appendProem:self block:v9];
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(BKSDisplayRenderOverlayDescriptor *)self display];
  v5 = [v4 name];
  v6 = [v5 hash] + self->_interfaceOrientation;

  return v6 + v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v25 = [MEMORY[0x1E698E6A0] builderWithObject:self ofExpectedClass:objc_opt_class()];
  name = self->_name;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __45__BKSDisplayRenderOverlayDescriptor_isEqual___block_invoke;
  v36[3] = &unk_1E6F470D8;
  v6 = v4;
  v37 = v6;
  v24 = [v25 appendString:name counterpart:v36];
  v7 = [(BKSDisplayRenderOverlayDescriptor *)self display];
  v8 = [v7 name];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __45__BKSDisplayRenderOverlayDescriptor_isEqual___block_invoke_2;
  v34[3] = &unk_1E6F470D8;
  v9 = v6;
  v35 = v9;
  v10 = [v24 appendString:v8 counterpart:v34];
  interfaceOrientation = self->_interfaceOrientation;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __45__BKSDisplayRenderOverlayDescriptor_isEqual___block_invoke_3;
  v32[3] = &unk_1E6F47100;
  v12 = v9;
  v33 = v12;
  v13 = [v10 appendInteger:interfaceOrientation counterpart:v32];
  lockBacklight = self->_lockBacklight;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __45__BKSDisplayRenderOverlayDescriptor_isEqual___block_invoke_4;
  v30[3] = &unk_1E6F47128;
  v15 = v12;
  v31 = v15;
  v16 = [v13 appendBool:lockBacklight counterpart:v30];
  progressIndicatorProperties = self->_progressIndicatorProperties;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __45__BKSDisplayRenderOverlayDescriptor_isEqual___block_invoke_5;
  v28[3] = &unk_1E6F47150;
  v18 = v15;
  v29 = v18;
  v19 = [v16 appendObject:progressIndicatorProperties counterpart:v28];
  interstitial = self->_interstitial;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __45__BKSDisplayRenderOverlayDescriptor_isEqual___block_invoke_6;
  v26[3] = &unk_1E6F47128;
  v27 = v18;
  v21 = v18;
  v22 = [v19 appendBool:interstitial counterpart:v26];
  LOBYTE(v18) = [v22 isEqual];

  return v18;
}

id __45__BKSDisplayRenderOverlayDescriptor_isEqual___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) display];
  v2 = [v1 name];

  return v2;
}

- (BKSDisplayRenderOverlayDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayUUID"];
  v7 = [(BKSDisplayRenderOverlayDescriptor *)self _initWithName:v5 displayUUID:v6];
  if (v7)
  {
    v8 = [v4 decodeIntegerForKey:@"interfaceOrientation"];
    if (BSInterfaceOrientationIsValid())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    [(BKSDisplayRenderOverlayDescriptor *)v7 setInterfaceOrientation:v9];
    -[BKSDisplayRenderOverlayDescriptor setLockBacklight:](v7, "setLockBacklight:", [v4 decodeBoolForKey:@"lockBacklight"]);
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"progressIndicatorProperties"];
    [(BKSDisplayRenderOverlayDescriptor *)v7 setProgressIndicatorProperties:v10];

    -[BKSDisplayRenderOverlayDescriptor _setInterstitial:](v7, "_setInterstitial:", [v4 decodeBoolForKey:@"interstitial"]);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_displayUUID forKey:@"displayUUID"];
  [v5 encodeInteger:self->_interfaceOrientation forKey:@"interfaceOrientation"];
  [v5 encodeBool:self->_lockBacklight forKey:@"lockBacklight"];
  [v5 encodeObject:self->_progressIndicatorProperties forKey:@"progressIndicatorProperties"];
  [v5 encodeBool:self->_interstitial forKey:@"interstitial"];
}

- (void)_appendDescriptionToFormatterCore:(id)a3
{
  v14 = a3;
  v4 = [v14 appendObject:self->_name withName:@"name"];
  v5 = [(BKSDisplayRenderOverlayDescriptor *)self display];
  v6 = [v5 name];

  if (v6)
  {
    v7 = [v14 appendObject:v6 withName:@"displayName"];
  }

  displayUUID = self->_displayUUID;
  if (displayUUID)
  {
    v9 = [v14 appendObject:displayUUID withName:@"displayUUID"];
  }

  interfaceOrientation = self->_interfaceOrientation;
  if (interfaceOrientation)
  {
    v11 = [v14 appendInteger:interfaceOrientation withName:@"interfaceOrientation"];
  }

  if (self->_lockBacklight)
  {
    [v14 appendString:@"lockBacklight" withName:0];
  }

  if (self->_interstitial)
  {
    [v14 appendString:@"interstitial" withName:0];
  }

  progressIndicatorProperties = self->_progressIndicatorProperties;
  if (progressIndicatorProperties)
  {
    v13 = [v14 appendObject:progressIndicatorProperties withName:@"progressIndicatorProperties"];
  }
}

- (CADisplay)display
{
  v21 = *MEMORY[0x1E69E9840];
  p_display = &self->_display;
  display = self->_display;
  if (display)
  {
LABEL_14:
    v13 = display;
    goto LABEL_15;
  }

  if (self->_displayUUID)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [getCADisplayClass_8958() displays];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          displayUUID = self->_displayUUID;
          v12 = [v10 uniqueId];
          LODWORD(displayUUID) = BSEqualStrings();

          if (displayUUID)
          {
            objc_storeStrong(p_display, v10);
            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    display = *p_display;
    goto LABEL_14;
  }

  v13 = [getCADisplayClass_8958() mainDisplay];
LABEL_15:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BKSDisplayRenderOverlayDescriptor)initWithName:(id)a3 display:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"BKSDisplayRenderOverlayDescriptor.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  [v14 handleFailureInMethod:a2 object:self file:@"BKSDisplayRenderOverlayDescriptor.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"display"}];

LABEL_3:
  v10 = [v9 uniqueId];
  v11 = [(BKSDisplayRenderOverlayDescriptor *)self _initWithName:v7 displayUUID:v10];

  if (v11)
  {
    objc_storeStrong(&v11->_display, a4);
  }

  return v11;
}

- (id)_initWithName:(id)a3 displayUUID:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"BKSDisplayRenderOverlayDescriptor.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v16.receiver = self;
  v16.super_class = BKSDisplayRenderOverlayDescriptor;
  v9 = [(BKSDisplayRenderOverlayDescriptor *)&v16 init];
  if (v9)
  {
    v10 = [v7 copy];
    name = v9->_name;
    v9->_name = v10;

    v12 = [v8 copy];
    displayUUID = v9->_displayUUID;
    v9->_displayUUID = v12;

    *&v9->_lockBacklight = 1;
  }

  return v9;
}

+ (id)_classesRequiredToDecode
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

+ (BKSDisplayRenderOverlayDescriptor)descriptorWithName:(id)a3 display:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithName:v6 display:v5];

  return v7;
}

@end