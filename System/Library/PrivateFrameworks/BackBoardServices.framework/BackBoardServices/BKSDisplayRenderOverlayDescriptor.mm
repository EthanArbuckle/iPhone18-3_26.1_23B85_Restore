@interface BKSDisplayRenderOverlayDescriptor
+ (BKSDisplayRenderOverlayDescriptor)descriptorWithName:(id)name display:(id)display;
+ (id)_classesRequiredToDecode;
- (BKSDisplayRenderOverlayDescriptor)initWithCoder:(id)coder;
- (BKSDisplayRenderOverlayDescriptor)initWithName:(id)name display:(id)display;
- (BOOL)isEqual:(id)equal;
- (CADisplay)display;
- (id)_initWithName:(id)name displayUUID:(id)d;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)_appendDescriptionToFormatterCore:(id)core;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSDisplayRenderOverlayDescriptor

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BKSDisplayRenderOverlayDescriptor *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [(BKSDisplayRenderOverlayDescriptor *)self _appendDescriptionToFormatterCore:v3];

  return v3;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BKSDisplayRenderOverlayDescriptor *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v5 = objc_opt_class();
  v6 = formatterCopy;
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
  display = [(BKSDisplayRenderOverlayDescriptor *)self display];
  name = [display name];
  v6 = [name hash] + self->_interfaceOrientation;

  return v6 + v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v25 = [MEMORY[0x1E698E6A0] builderWithObject:self ofExpectedClass:objc_opt_class()];
  name = self->_name;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __45__BKSDisplayRenderOverlayDescriptor_isEqual___block_invoke;
  v36[3] = &unk_1E6F470D8;
  v6 = equalCopy;
  v37 = v6;
  v24 = [v25 appendString:name counterpart:v36];
  display = [(BKSDisplayRenderOverlayDescriptor *)self display];
  name = [display name];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __45__BKSDisplayRenderOverlayDescriptor_isEqual___block_invoke_2;
  v34[3] = &unk_1E6F470D8;
  v9 = v6;
  v35 = v9;
  v10 = [v24 appendString:name counterpart:v34];
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

- (BKSDisplayRenderOverlayDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayUUID"];
  v7 = [(BKSDisplayRenderOverlayDescriptor *)self _initWithName:v5 displayUUID:v6];
  if (v7)
  {
    v8 = [coderCopy decodeIntegerForKey:@"interfaceOrientation"];
    if (BSInterfaceOrientationIsValid())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    [(BKSDisplayRenderOverlayDescriptor *)v7 setInterfaceOrientation:v9];
    -[BKSDisplayRenderOverlayDescriptor setLockBacklight:](v7, "setLockBacklight:", [coderCopy decodeBoolForKey:@"lockBacklight"]);
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"progressIndicatorProperties"];
    [(BKSDisplayRenderOverlayDescriptor *)v7 setProgressIndicatorProperties:v10];

    -[BKSDisplayRenderOverlayDescriptor _setInterstitial:](v7, "_setInterstitial:", [coderCopy decodeBoolForKey:@"interstitial"]);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_displayUUID forKey:@"displayUUID"];
  [coderCopy encodeInteger:self->_interfaceOrientation forKey:@"interfaceOrientation"];
  [coderCopy encodeBool:self->_lockBacklight forKey:@"lockBacklight"];
  [coderCopy encodeObject:self->_progressIndicatorProperties forKey:@"progressIndicatorProperties"];
  [coderCopy encodeBool:self->_interstitial forKey:@"interstitial"];
}

- (void)_appendDescriptionToFormatterCore:(id)core
{
  coreCopy = core;
  v4 = [coreCopy appendObject:self->_name withName:@"name"];
  display = [(BKSDisplayRenderOverlayDescriptor *)self display];
  name = [display name];

  if (name)
  {
    v7 = [coreCopy appendObject:name withName:@"displayName"];
  }

  displayUUID = self->_displayUUID;
  if (displayUUID)
  {
    v9 = [coreCopy appendObject:displayUUID withName:@"displayUUID"];
  }

  interfaceOrientation = self->_interfaceOrientation;
  if (interfaceOrientation)
  {
    v11 = [coreCopy appendInteger:interfaceOrientation withName:@"interfaceOrientation"];
  }

  if (self->_lockBacklight)
  {
    [coreCopy appendString:@"lockBacklight" withName:0];
  }

  if (self->_interstitial)
  {
    [coreCopy appendString:@"interstitial" withName:0];
  }

  progressIndicatorProperties = self->_progressIndicatorProperties;
  if (progressIndicatorProperties)
  {
    v13 = [coreCopy appendObject:progressIndicatorProperties withName:@"progressIndicatorProperties"];
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
    mainDisplay = display;
    goto LABEL_15;
  }

  if (self->_displayUUID)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    displays = [getCADisplayClass_8958() displays];
    v6 = [displays countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(displays);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          displayUUID = self->_displayUUID;
          uniqueId = [v10 uniqueId];
          LODWORD(displayUUID) = BSEqualStrings();

          if (displayUUID)
          {
            objc_storeStrong(p_display, v10);
            goto LABEL_13;
          }
        }

        v7 = [displays countByEnumeratingWithState:&v16 objects:v20 count:16];
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

  mainDisplay = [getCADisplayClass_8958() mainDisplay];
LABEL_15:
  v14 = *MEMORY[0x1E69E9840];

  return mainDisplay;
}

- (BKSDisplayRenderOverlayDescriptor)initWithName:(id)name display:(id)display
{
  nameCopy = name;
  displayCopy = display;
  v9 = displayCopy;
  if (nameCopy)
  {
    if (displayCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BKSDisplayRenderOverlayDescriptor.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"BKSDisplayRenderOverlayDescriptor.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"display"}];

LABEL_3:
  uniqueId = [v9 uniqueId];
  v11 = [(BKSDisplayRenderOverlayDescriptor *)self _initWithName:nameCopy displayUUID:uniqueId];

  if (v11)
  {
    objc_storeStrong(&v11->_display, display);
  }

  return v11;
}

- (id)_initWithName:(id)name displayUUID:(id)d
{
  nameCopy = name;
  dCopy = d;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BKSDisplayRenderOverlayDescriptor.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v16.receiver = self;
  v16.super_class = BKSDisplayRenderOverlayDescriptor;
  v9 = [(BKSDisplayRenderOverlayDescriptor *)&v16 init];
  if (v9)
  {
    v10 = [nameCopy copy];
    name = v9->_name;
    v9->_name = v10;

    v12 = [dCopy copy];
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

+ (BKSDisplayRenderOverlayDescriptor)descriptorWithName:(id)name display:(id)display
{
  displayCopy = display;
  nameCopy = name;
  v7 = [objc_alloc(objc_opt_class()) initWithName:nameCopy display:displayCopy];

  return v7;
}

@end