@interface PKPencilSqueezeUserDefaults
- (PKPencilSqueezeUserDefaults)init;
- (id)loadLastPaletteHoverLocation;
- (id)loadLastPaletteViewStartAngle;
- (void)saveLastPaletteHoverLocation:(CGFloat)location;
- (void)saveLastPaletteViewStartAngle:(uint64_t)angle;
@end

@implementation PKPencilSqueezeUserDefaults

- (PKPencilSqueezeUserDefaults)init
{
  v6.receiver = self;
  v6.super_class = PKPencilSqueezeUserDefaults;
  v2 = [(PKPencilSqueezeUserDefaults *)&v6 init];
  if (v2)
  {
    v3 = PKUserDefaults();
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v3;
  }

  return v2;
}

- (void)saveLastPaletteViewStartAngle:(uint64_t)angle
{
  v9 = *MEMORY[0x1E69E9840];
  if (angle)
  {
    v4 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134283521;
      v8 = a2;
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Save last palette view start angle: %{private}f", &v7, 0xCu);
    }

    v5 = *(angle + 8);
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
    [v5 setObject:v6 forKey:@"PKPencilSqueezeLastPaletteViewStartAngle"];
  }
}

- (id)loadLastPaletteViewStartAngle
{
  v6 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v1 = [*(self + 8) objectForKey:@"PKPencilSqueezeLastPaletteViewStartAngle"];
    v2 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138477827;
      v5 = v1;
      _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "Load last palette view start angle: %{private}@", &v4, 0xCu);
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (void)saveLastPaletteHoverLocation:(CGFloat)location
{
  v12 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v6 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13.x = a2;
      v13.y = location;
      v7 = NSStringFromCGPoint(v13);
      v10 = 138477827;
      v11 = v7;
      _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "Save last palette hover location: %{private}@", &v10, 0xCu);
    }

    v8 = *(self + 8);
    v14.x = a2;
    v14.y = location;
    v9 = NSStringFromCGPoint(v14);
    [v8 setObject:v9 forKey:@"PKPencilSqueezeLastPaletteHoverLocation"];
  }
}

- (id)loadLastPaletteHoverLocation
{
  v8 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v1 = [*(self + 8) objectForKey:@"PKPencilSqueezeLastPaletteHoverLocation"];
    v2 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138477827;
      v7 = v1;
      _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "Load last palette hover location: %{private}@", &v6, 0xCu);
    }

    if (v1)
    {
      v3 = CGPointFromString(v1);
      v4 = [MEMORY[0x1E696B098] valueWithCGPoint:{v3.x, v3.y}];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end