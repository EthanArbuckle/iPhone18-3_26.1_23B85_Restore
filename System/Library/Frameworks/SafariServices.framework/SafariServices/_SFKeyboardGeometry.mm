@interface _SFKeyboardGeometry
+ (id)_keyboardGeometryForCurrentDeviceWithInterfaceOrientation:(int64_t)orientation;
+ (id)keyboardGeometryForInterfaceOrientation:(int64_t)orientation;
- (CGSize)sizeWithBar;
- (CGSize)sizeWithoutBar;
- (id)_initWithFallbackSizeForOrientation:(int64_t)orientation;
- (id)_initWithSizeWithoutBar:(CGSize)bar sizeWithBar:(CGSize)withBar;
@end

@implementation _SFKeyboardGeometry

- (id)_initWithSizeWithoutBar:(CGSize)bar sizeWithBar:(CGSize)withBar
{
  height = withBar.height;
  width = withBar.width;
  v6 = bar.height;
  v7 = bar.width;
  v12.receiver = self;
  v12.super_class = _SFKeyboardGeometry;
  v8 = [(_SFKeyboardGeometry *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_sizeWithoutBar.width = v7;
    v8->_sizeWithoutBar.height = v6;
    v8->_sizeWithBar.width = width;
    v8->_sizeWithBar.height = height;
    v10 = v8;
  }

  return v9;
}

- (id)_initWithFallbackSizeForOrientation:(int64_t)orientation
{
  [MEMORY[0x1E69DCBE0] defaultSizeForInterfaceOrientation:orientation];

  return [(_SFKeyboardGeometry *)self _initWithSizeWithoutBar:v4 sizeWithBar:v5, v4, v5];
}

+ (id)_keyboardGeometryForCurrentDeviceWithInterfaceOrientation:(int64_t)orientation
{
  mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v6 = MEMORY[0x1DA6DD1E0](@"en");
  firstObject = [v6 firstObject];

  if (!firstObject || ([mEMORY[0x1E69DCBF0] inputModeWithIdentifier:firstObject], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v33 = [[self alloc] _initWithFallbackSizeForOrientation:orientation];
    goto LABEL_24;
  }

  v9 = v8;
  v10 = NSClassFromString(&cfstr_Uikeyboardlayo.isa);
  if (v10)
  {
    v11 = v10;
    if (([(objc_class *)v10 isSubclassOfClass:objc_opt_class()]& 1) != 0)
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen _referenceBounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = [SFKBScreenTraits traitsWithScreen:mainScreen orientation:orientation];
      Height = v18;
      Width = v20;
      if ((orientation - 1) >= 2)
      {
        v41.origin.x = v14;
        v41.origin.y = v16;
        v41.size.width = v18;
        v41.size.height = v20;
        Width = CGRectGetWidth(v41);
        v42.origin.x = v14;
        v42.origin.y = v16;
        v42.size.width = v18;
        v42.size.height = v20;
        Height = CGRectGetHeight(v42);
      }

      [v21 setBounds:{v14, v16, Height, Width}];
      v43.origin.x = v14;
      v43.origin.y = v16;
      v43.size.width = Height;
      v43.size.height = Width;
      v24 = CGRectGetWidth(v43);
      [v21 setKeyboardWidth:?];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v44.origin.x = v14;
        v44.origin.y = v16;
        v44.size.width = v18;
        v44.size.height = v20;
        v25 = CGRectGetWidth(v44);
        v45.origin.x = v14;
        v45.origin.y = v16;
        v45.size.width = v18;
        v45.size.height = v20;
        [v21 setSf_isKeyboardMinorEdgeWidth:{v24 == fmin(v25, CGRectGetHeight(v45))}];
      }

      identifier = [v9 identifier];
      [(objc_class *)v11 keyboardSizeForInputMode:identifier screenTraits:v21 keyboardType:0];
      v28 = v27;
      v30 = v29;

      v31 = v21;
      if ([v31 idiom] == 1)
      {

        v32 = 55.0;
LABEL_19:
        v36 = v30 + v32;
        if (v18 <= 320.0)
        {
          v37 = v36 + -1.0;
        }

        else
        {
          v37 = v36;
        }

        v33 = [[self alloc] _initWithSizeWithoutBar:v28 sizeWithBar:{v30, v28, v37}];

        goto LABEL_23;
      }

      if (([v31 orientation] - 3) > 1)
      {
        [v31 bounds];
        if (v35 > 375.0)
        {

          v32 = 45.0;
          goto LABEL_19;
        }

        v39 = v35;

        if (v39 > 320.0)
        {
          *&v34 = 44.0;
          goto LABEL_16;
        }
      }

      else
      {
      }

      *&v34 = 38.0;
LABEL_16:
      v32 = *&v34;
      goto LABEL_19;
    }
  }

  v33 = [[self alloc] _initWithFallbackSizeForOrientation:orientation];
LABEL_23:

LABEL_24:

  return v33;
}

+ (id)keyboardGeometryForInterfaceOrientation:(int64_t)orientation
{
  v4 = keyboardGeometryForInterfaceOrientation__portraitKeyboardGeometry;
  v5 = keyboardGeometryForInterfaceOrientation__landscapeKeyboardGeometry;
  if (keyboardGeometryForInterfaceOrientation__portraitKeyboardGeometry)
  {
    v6 = keyboardGeometryForInterfaceOrientation__landscapeKeyboardGeometry == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v8 = [self _keyboardGeometryForCurrentDeviceWithInterfaceOrientation:1];
    v9 = keyboardGeometryForInterfaceOrientation__portraitKeyboardGeometry;
    keyboardGeometryForInterfaceOrientation__portraitKeyboardGeometry = v8;

    v10 = [self _keyboardGeometryForCurrentDeviceWithInterfaceOrientation:4];
    v11 = keyboardGeometryForInterfaceOrientation__landscapeKeyboardGeometry;
    keyboardGeometryForInterfaceOrientation__landscapeKeyboardGeometry = v10;

    v4 = keyboardGeometryForInterfaceOrientation__portraitKeyboardGeometry;
    v5 = keyboardGeometryForInterfaceOrientation__landscapeKeyboardGeometry;
  }

  if ((orientation - 1) >= 2)
  {
    v12 = v5;
  }

  else
  {
    v12 = v4;
  }

  return v12;
}

- (CGSize)sizeWithoutBar
{
  width = self->_sizeWithoutBar.width;
  height = self->_sizeWithoutBar.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)sizeWithBar
{
  width = self->_sizeWithBar.width;
  height = self->_sizeWithBar.height;
  result.height = height;
  result.width = width;
  return result;
}

@end