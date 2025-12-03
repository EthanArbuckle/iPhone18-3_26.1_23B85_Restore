@interface CNPhotoPickerAnimojiPosePreviewView
- (void)layoutSubviews;
- (void)setupPreview;
- (void)updatePoseWithConfiguration:(id)configuration;
- (void)updatePreviewWithItem:(id)item;
@end

@implementation CNPhotoPickerAnimojiPosePreviewView

- (void)updatePoseWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [configurationCopy loadIfNeeded];
  avtView = [(CNPhotoPickerAnimojiPosePreviewView *)self avtView];
  avatar = [avtView avatar];

  [avatar stopTransitionAnimation];
  poseAnimation = [configurationCopy poseAnimation];

  staticPose = [poseAnimation staticPose];

  pose = [avatar pose];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__CNPhotoPickerAnimojiPosePreviewView_updatePoseWithConfiguration___block_invoke;
  v11[3] = &unk_1E74E77C0;
  v11[4] = self;
  v12 = staticPose;
  v10 = staticPose;
  [avatar transitionFromPose:pose toPose:v10 duration:v11 delay:0.25 completionHandler:0.0];
}

void __67__CNPhotoPickerAnimojiPosePreviewView_updatePoseWithConfiguration___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) avtView];
  v2 = [v3 avatar];
  [v2 setPose:*(a1 + 40)];
}

- (void)updatePreviewWithItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v5 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    avtView = [(CNPhotoPickerAnimojiPosePreviewView *)self avtView];
    avatar = [avtView avatar];

    if (avatar)
    {
      poseConfiguration = [v7 poseConfiguration];
      [(CNPhotoPickerAnimojiPosePreviewView *)self updatePoseWithConfiguration:poseConfiguration];
    }

    else
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2050000000;
      v11 = getAVTAvatarRecordRenderingClass_softClass_55455;
      v20 = getAVTAvatarRecordRenderingClass_softClass_55455;
      if (!getAVTAvatarRecordRenderingClass_softClass_55455)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __getAVTAvatarRecordRenderingClass_block_invoke_55456;
        v16[3] = &unk_1E74E7518;
        v16[4] = &v17;
        __getAVTAvatarRecordRenderingClass_block_invoke_55456(v16);
        v11 = v18[3];
      }

      v12 = v11;
      _Block_object_dispose(&v17, 8);
      avatarRecord = [v7 avatarRecord];
      v14 = [v11 avatarForRecord:avatarRecord];
      avtView2 = [(CNPhotoPickerAnimojiPosePreviewView *)self avtView];
      [avtView2 setAvatar:v14];
    }
  }
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = CNPhotoPickerAnimojiPosePreviewView;
  [(CNPhotoPickerPreviewView *)&v8 layoutSubviews];
  v3 = MEMORY[0x1E69DC728];
  avtView = [(CNPhotoPickerAnimojiPosePreviewView *)self avtView];
  [avtView bounds];
  v5 = [v3 bezierPathWithOvalInRect:?];
  cGPath = [v5 CGPath];
  clippingLayer = [(CNPhotoPickerAnimojiPosePreviewView *)self clippingLayer];
  [clippingLayer setPath:cGPath];
}

- (void)setupPreview
{
  [(CNPhotoPickerAnimojiPosePreviewView *)self frame];
  v4 = v3;
  [(CNPhotoPickerAnimojiPosePreviewView *)self frame];
  v6 = v5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v7 = getAVTViewClass_softClass_55477;
  v20 = getAVTViewClass_softClass_55477;
  if (!getAVTViewClass_softClass_55477)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __getAVTViewClass_block_invoke_55478;
    v16[3] = &unk_1E74E7518;
    v16[4] = &v17;
    __getAVTViewClass_block_invoke_55478(v16);
    v7 = v18[3];
  }

  v8 = v7;
  _Block_object_dispose(&v17, 8);
  v9 = [[v7 alloc] initWithFrame:{0.0, 0.0, v4, v6}];
  avtView = self->_avtView;
  self->_avtView = v9;

  [(AVTView *)self->_avtView setEnableFaceTracking:0];
  [(AVTView *)self->_avtView setAutoresizingMask:18];
  v11 = +[CNUIColorRepository photoPickerAvatarBackgroundDefaultColor];
  [(AVTView *)self->_avtView setBackgroundColor:v11];

  [(CNPhotoPickerAnimojiPosePreviewView *)self addSubview:self->_avtView];
  v12 = objc_alloc_init(MEMORY[0x1E69794A0]);
  clippingLayer = self->_clippingLayer;
  self->_clippingLayer = v12;

  v14 = self->_clippingLayer;
  layer = [(AVTView *)self->_avtView layer];
  [layer setMask:v14];
}

@end