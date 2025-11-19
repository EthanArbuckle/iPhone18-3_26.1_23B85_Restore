@interface AVTAvatarPoseAnimationController
- (AVTAvatarPoseAnimationController)initWithAvatar:(id)a3 animationKeys:(id)a4;
- (void)removeAnimationWithBlendOutDuration:(double)a3;
@end

@implementation AVTAvatarPoseAnimationController

- (AVTAvatarPoseAnimationController)initWithAvatar:(id)a3 animationKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AVTAvatarPoseAnimationController;
  v8 = [(AVTAvatarPoseAnimationController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_avatar, v6);
    objc_storeStrong(&v9->_animationKeys, a4);
  }

  return v9;
}

- (void)removeAnimationWithBlendOutDuration:(double)a3
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_avatar);
  v6 = [WeakRetained avatarNode];

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
    v12 = a3;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v7);
        }

        *&v9 = v12;
        [v6 removeAnimationForKey:*(*(&v15 + 1) + 8 * v13++) blendOutDuration:{v9, v15}];
      }

      while (v10 != v13);
      v10 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end