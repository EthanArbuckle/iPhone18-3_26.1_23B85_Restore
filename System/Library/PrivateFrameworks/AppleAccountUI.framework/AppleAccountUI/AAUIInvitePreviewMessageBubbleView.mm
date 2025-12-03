@interface AAUIInvitePreviewMessageBubbleView
- (AAUIInvitePreviewMessageBubbleView)initWithURLComponents:(id)components;
- (id)_inviteBalloonView:(id)view;
- (void)_setupContentViewWithURLComponents:(id)components;
@end

@implementation AAUIInvitePreviewMessageBubbleView

- (AAUIInvitePreviewMessageBubbleView)initWithURLComponents:(id)components
{
  componentsCopy = components;
  v9.receiver = self;
  v9.super_class = AAUIInvitePreviewMessageBubbleView;
  v6 = [(AAUIInvitePreviewMessageBubbleView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_urlComponents, components);
    [(AAUIInvitePreviewMessageBubbleView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(AAUIInvitePreviewMessageBubbleView *)v7 _setupContentViewWithURLComponents:componentsCopy];
  }

  return v7;
}

- (void)_setupContentViewWithURLComponents:(id)components
{
  v18[3] = *MEMORY[0x1E69E9840];
  v17 = [AAUIInviteMessageViewFactory createInviteMessageViewUIWithUrlComponents:components];
  view = [v17 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(AAUIInvitePreviewMessageBubbleView *)self _inviteBalloonView:view];
  [(AAUIInvitePreviewMessageBubbleView *)self addSubview:v4];
  [v4 prepareForDisplay];
  v14 = MEMORY[0x1E696ACD8];
  topAnchor = [v4 topAnchor];
  topAnchor2 = [(AAUIInvitePreviewMessageBubbleView *)self topAnchor];
  v6 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  v18[0] = v6;
  bottomAnchor = [v4 bottomAnchor];
  bottomAnchor2 = [(AAUIInvitePreviewMessageBubbleView *)self bottomAnchor];
  v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v18[1] = v9;
  centerXAnchor = [v4 centerXAnchor];
  centerXAnchor2 = [(AAUIInvitePreviewMessageBubbleView *)self centerXAnchor];
  v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v18[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  [v14 activateConstraints:v13];
}

- (id)_inviteBalloonView:(id)view
{
  v27[4] = *MEMORY[0x1E69E9840];
  gotLoadHelper_x8__OBJC_CLASS___CKColoredBalloonView(v3);
  v5 = v4;
  objc_opt_class();
  v7 = CKBalloonViewForClass_delayInitStub(v6);
  [v7 addSubview:v5];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = MEMORY[0x1E696ACD8];
  topAnchor = [v5 topAnchor];
  topAnchor2 = [v7 topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v27[0] = v24;
  leftAnchor = [v5 leftAnchor];
  leftAnchor2 = [v7 leftAnchor];
  v9 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v27[1] = v9;
  rightAnchor = [v5 rightAnchor];
  rightAnchor2 = [v7 rightAnchor];
  v12 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v27[2] = v12;
  bottomAnchor = [v5 bottomAnchor];

  bottomAnchor2 = [v7 bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v27[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  [v22 activateConstraints:v16];

  [v7 setHasTail:1];
  [v7 setBalloonCorners:-1];
  [v7 setColor:0xFFFFFFFFLL];
  Helper_x8__OBJC_CLASS___CKUIBehavior = gotLoadHelper_x8__OBJC_CLASS___CKUIBehavior(v17);
  sharedBehaviors = [*(v19 + 3208) sharedBehaviors];
  [sharedBehaviors balloonCornerRadius];
  [v7 setCornerRadius:?];

  [v7 setOrientation:0];

  return v7;
}

@end