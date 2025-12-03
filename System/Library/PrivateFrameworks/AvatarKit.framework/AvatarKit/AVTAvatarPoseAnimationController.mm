@interface AVTAvatarPoseAnimationController
- (AVTAvatarPoseAnimationController)initWithAvatar:(id)avatar animationKeys:(id)keys;
- (void)removeAnimationWithBlendOutDuration:(double)duration;
@end

@implementation AVTAvatarPoseAnimationController

- (AVTAvatarPoseAnimationController)initWithAvatar:(id)avatar animationKeys:(id)keys
{
  avatarCopy = avatar;
  keysCopy = keys;
  v11.receiver = self;
  v11.super_class = AVTAvatarPoseAnimationController;
  v8 = [(AVTAvatarPoseAnimationController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_avatar, avatarCopy);
    objc_storeStrong(&v9->_animationKeys, keys);
  }

  return v9;
}

- (void)removeAnimationWithBlendOutDuration:(double)duration
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_avatar);
  avatarNode = [WeakRetained avatarNode];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_animationKeys;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v16;
    durationCopy = duration;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v7);
        }

        *&v9 = durationCopy;
        [avatarNode removeAnimationForKey:*(*(&v15 + 1) + 8 * v13++) blendOutDuration:{v9, v15}];
      }

      while (v10 != v13);
      v10 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end