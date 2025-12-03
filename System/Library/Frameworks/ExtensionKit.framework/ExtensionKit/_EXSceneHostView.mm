@interface _EXSceneHostView
- (_EXSceneHostView)initWithExtensionProcess:(id)process sessionUUID:(id)d role:(id)role;
- (void)creatScene;
- (void)layoutSubviews;
- (void)setScene:(id)scene;
@end

@implementation _EXSceneHostView

- (_EXSceneHostView)initWithExtensionProcess:(id)process sessionUUID:(id)d role:(id)role
{
  processCopy = process;
  dCopy = d;
  roleCopy = role;
  v16.receiver = self;
  v16.super_class = _EXSceneHostView;
  v12 = [(_EXSceneHostView *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionUUID, d);
    objc_storeStrong(&v13->_role, role);
    objc_storeStrong(&v13->_extensionProcess, process);
    lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
    [(_EXSceneHostView *)v13 setBackgroundColor:lightGrayColor];
  }

  return v13;
}

- (void)creatScene
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(self + 424);
  v3 = *(self + 432);
  v5 = 138543618;
  v6 = v2;
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_1D29CC000, a2, OS_LOG_TYPE_ERROR, "Failed to register FBProcess for: %{public}@ for session: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)setScene:(id)scene
{
  v32[4] = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  scenePresenter = [(_EXSceneHostView *)self scenePresenter];
  presentationView = [scenePresenter presentationView];
  [presentationView removeFromSuperview];

  scenePresenter2 = [(_EXSceneHostView *)self scenePresenter];
  [scenePresenter2 invalidate];

  scene = self->_scene;
  self->_scene = sceneCopy;
  v29 = sceneCopy;

  uiPresentationManager = [(FBScene *)v29 uiPresentationManager];
  sessionUUID = [(_EXSceneHostView *)self sessionUUID];
  uUIDString = [sessionUUID UUIDString];
  v11 = [uiPresentationManager createPresenterWithIdentifier:uUIDString];

  v30 = v11;
  [(_EXSceneHostView *)self setScenePresenter:v11];
  presentationView2 = [v11 presentationView];
  [(_EXSceneHostView *)self bounds];
  [presentationView2 setFrame:?];
  darkGrayColor = [MEMORY[0x1E69DC888] darkGrayColor];
  [presentationView2 setBackgroundColor:darkGrayColor];

  [(_EXSceneHostView *)self addSubview:presentationView2];
  v24 = MEMORY[0x1E696ACD8];
  leftAnchor = [(_EXSceneHostView *)self leftAnchor];
  leftAnchor2 = [presentationView2 leftAnchor];
  v26 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v32[0] = v26;
  topAnchor = [(_EXSceneHostView *)self topAnchor];
  topAnchor2 = [presentationView2 topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v32[1] = v15;
  rightAnchor = [(_EXSceneHostView *)self rightAnchor];
  rightAnchor2 = [presentationView2 rightAnchor];
  v18 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v32[2] = v18;
  bottomAnchor = [(_EXSceneHostView *)self bottomAnchor];
  bottomAnchor2 = [presentationView2 bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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