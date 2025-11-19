@interface CNPhotoPickerAnimojiPosePreviewView
- (void)layoutSubviews;
- (void)setupPreview;
- (void)updatePoseWithConfiguration:(id)a3;
- (void)updatePreviewWithItem:(id)a3;
@end

@implementation CNPhotoPickerAnimojiPosePreviewView

- (void)updatePoseWithConfiguration:(id)a3
{
  v4 = a3;
  [v4 loadIfNeeded];
  v5 = [(CNPhotoPickerAnimojiPosePreviewView *)self avtView];
  v6 = [v5 avatar];

  [v6 stopTransitionAnimation];
  v7 = [v4 poseAnimation];

  v8 = [v7 staticPose];

  v9 = [v6 pose];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__CNPhotoPickerAnimojiPosePreviewView_updatePoseWithConfiguration___block_invoke;
  v11[3] = &unk_1E74E77C0;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v6 transitionFromPose:v9 toPose:v10 duration:v11 delay:0.25 completionHandler:0.0];
}

void __67__CNPhotoPickerAnimojiPosePreviewView_updatePoseWithConfiguration___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) avtView];
  v2 = [v3 avatar];
  [v2 setPose:*(a1 + 40)];
}

- (void)updatePreviewWithItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
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
    v8 = [(CNPhotoPickerAnimojiPosePreviewView *)self avtView];
    v9 = [v8 avatar];

    if (v9)
    {
      v10 = [v7 poseConfiguration];
      [(CNPhotoPickerAnimojiPosePreviewView *)self updatePoseWithConfiguration:v10];
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
      v13 = [v7 avatarRecord];
      v14 = [v11 avatarForRecord:v13];
      v15 = [(CNPhotoPickerAnimojiPosePreviewView *)self avtView];
      [v15 setAvatar:v14];
    }
  }
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = CNPhotoPickerAnimojiPosePreviewView;
  [(CNPhotoPickerPreviewView *)&v8 layoutSubviews];
  v3 = MEMORY[0x1E69DC728];
  v4 = [(CNPhotoPickerAnimojiPosePreviewView *)self avtView];
  [v4 bounds];
  v5 = [v3 bezierPathWithOvalInRect:?];
  v6 = [v5 CGPath];
  v7 = [(CNPhotoPickerAnimojiPosePreviewView *)self clippingLayer];
  [v7 setPath:v6];
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
  v15 = [(AVTView *)self->_avtView layer];
  [v15 setMask:v14];
}

@end