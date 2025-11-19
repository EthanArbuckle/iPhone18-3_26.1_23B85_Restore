@interface AVTStickerPoseAdjustment
- (id)description;
- (id)poseByApplyingToPose:(id)a3 forAvatar:(id)a4;
@end

@implementation AVTStickerPoseAdjustment

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = AVTPresetCategoryToString(self->_presetCategory);
  v6 = [v3 stringWithFormat:@"<%@ %p | %@ %@ → %@>", v4, self, v5, self->_presetIdentifier, self->_pose];

  return v6;
}

- (id)poseByApplyingToPose:(id)a3 forAvatar:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 presetForCategory:self->_presetCategory];
    v9 = [v8 identifier];
    v10 = [v9 isEqualToString:self->_presetIdentifier];

    if (v10)
    {
      v11 = [v6 poseByMergingPose:self->_pose];

      goto LABEL_6;
    }
  }

  v11 = v6;
LABEL_6:

  return v11;
}

@end