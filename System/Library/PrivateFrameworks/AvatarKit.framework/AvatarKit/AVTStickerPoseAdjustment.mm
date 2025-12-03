@interface AVTStickerPoseAdjustment
- (id)description;
- (id)poseByApplyingToPose:(id)pose forAvatar:(id)avatar;
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

- (id)poseByApplyingToPose:(id)pose forAvatar:(id)avatar
{
  poseCopy = pose;
  avatarCopy = avatar;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [avatarCopy presetForCategory:self->_presetCategory];
    identifier = [v8 identifier];
    v10 = [identifier isEqualToString:self->_presetIdentifier];

    if (v10)
    {
      v11 = [poseCopy poseByMergingPose:self->_pose];

      goto LABEL_6;
    }
  }

  v11 = poseCopy;
LABEL_6:

  return v11;
}

@end