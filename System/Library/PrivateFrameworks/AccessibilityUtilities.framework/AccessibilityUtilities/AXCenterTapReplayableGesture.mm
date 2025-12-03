@interface AXCenterTapReplayableGesture
- (AXCenterTapReplayableGesture)init;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation AXCenterTapReplayableGesture

- (AXCenterTapReplayableGesture)init
{
  v27[2] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = AXCenterTapReplayableGesture;
  v2 = [(AXCenterTapReplayableGesture *)&v18 init];
  if (v2)
  {
    v28.origin.x = AXDeviceGetMainScreenBounds();
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
    MidX = CGRectGetMidX(v28);
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    *v17 = MidX;
    v17[1] = CGRectGetMidY(v29);
    v8 = [MEMORY[0x1E696B098] valueWithBytes:v17 objCType:"{CGPoint=dd}"];
    v9 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
    v26[0] = &unk_1EFE97650;
    v25[0] = @"Time";
    v25[1] = @"Fingers";
    v23 = &unk_1EFE96BB0;
    v24 = v8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v26[1] = v10;
    v25[2] = @"Forces";
    v21 = &unk_1EFE96BB0;
    v22 = v9;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v26[2] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
    v27[0] = v12;
    v19[0] = @"Time";
    v19[1] = @"Fingers";
    v20[0] = &unk_1EFE97660;
    v20[1] = MEMORY[0x1E695E0F8];
    v19[2] = @"Forces";
    v20[2] = MEMORY[0x1E695E0F8];
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
    v27[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    allEvents = v2->super._allEvents;
    v2->super._allEvents = v14;

    [(AXReplayableGesture *)v2 setArePointsDeviceRelative:1];
  }

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

@end