@interface _EXSceneHostView
- (_EXSceneHostView)initWithExtensionProcess:(id)a3 sessionUUID:(id)a4 role:(id)a5;
- (void)creatScene;
- (void)layoutSubviews;
- (void)setScene:(id)a3;
@end

@implementation _EXSceneHostView

- (_EXSceneHostView)initWithExtensionProcess:(id)a3 sessionUUID:(id)a4 role:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = _EXSceneHostView;
  v12 = [(_EXSceneHostView *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionUUID, a4);
    objc_storeStrong(&v13->_role, a5);
    objc_storeStrong(&v13->_extensionProcess, a3);
    v14 = [MEMORY[0x1E69DC888] lightGrayColor];
    [(_EXSceneHostView *)v13 setBackgroundColor:v14];
  }

  return v13;
}

- (void)creatScene
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 424);
  v3 = *(a1 + 432);
  v5 = 138543618;
  v6 = v2;
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_1D29CC000, a2, OS_LOG_TYPE_ERROR, "Failed to register FBProcess for: %{public}@ for session: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)setScene:(id)a3
{
  v32[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_EXSceneHostView *)self scenePresenter];
  v6 = [v5 presentationView];
  [v6 removeFromSuperview];

  v7 = [(_EXSceneHostView *)self scenePresenter];
  [v7 invalidate];

  scene = self->_scene;
  self->_scene = v4;
  v29 = v4;

  v31 = [(FBScene *)v29 uiPresentationManager];
  v9 = [(_EXSceneHostView *)self sessionUUID];
  v10 = [v9 UUIDString];
  v11 = [v31 createPresenterWithIdentifier:v10];

  v30 = v11;
  [(_EXSceneHostView *)self setScenePresenter:v11];
  v12 = [v11 presentationView];
  [(_EXSceneHostView *)self bounds];
  [v12 setFrame:?];
  v13 = [MEMORY[0x1E69DC888] darkGrayColor];
  [v12 setBackgroundColor:v13];

  [(_EXSceneHostView *)self addSubview:v12];
  v24 = MEMORY[0x1E696ACD8];
  v28 = [(_EXSceneHostView *)self leftAnchor];
  v27 = [v12 leftAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v32[0] = v26;
  v25 = [(_EXSceneHostView *)self topAnchor];
  v14 = [v12 topAnchor];
  v15 = [v25 constraintEqualToAnchor:v14];
  v32[1] = v15;
  v16 = [(_EXSceneHostView *)self rightAnchor];
  v17 = [v12 rightAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v32[2] = v18;
  v19 = [(_EXSceneHostView *)self bottomAnchor];
  v20 = [v12 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v32[3] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
  [v24 activateConstraints:v22];

  [v30 activate];
  v23 = *MEMORY[0x1E69E9840];
}

- (void)layoutSubviews
{
  scene = self->_scene;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34___EXSceneHostView_layoutSubviews__block_invoke;
  v3[3] = &unk_1E8401B58;
  v3[4] = self;
  [(FBScene *)scene updateSettingsWithBlock:v3];
}

@end