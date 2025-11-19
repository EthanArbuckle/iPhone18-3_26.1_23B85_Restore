@interface AAUIInvitePreviewMessageBubbleView
- (AAUIInvitePreviewMessageBubbleView)initWithURLComponents:(id)a3;
- (id)_inviteBalloonView:(id)a3;
- (void)_setupContentViewWithURLComponents:(id)a3;
@end

@implementation AAUIInvitePreviewMessageBubbleView

- (AAUIInvitePreviewMessageBubbleView)initWithURLComponents:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AAUIInvitePreviewMessageBubbleView;
  v6 = [(AAUIInvitePreviewMessageBubbleView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_urlComponents, a3);
    [(AAUIInvitePreviewMessageBubbleView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(AAUIInvitePreviewMessageBubbleView *)v7 _setupContentViewWithURLComponents:v5];
  }

  return v7;
}

- (void)_setupContentViewWithURLComponents:(id)a3
{
  v18[3] = *MEMORY[0x1E69E9840];
  v17 = [AAUIInviteMessageViewFactory createInviteMessageViewUIWithUrlComponents:a3];
  v16 = [v17 view];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(AAUIInvitePreviewMessageBubbleView *)self _inviteBalloonView:v16];
  [(AAUIInvitePreviewMessageBubbleView *)self addSubview:v4];
  [v4 prepareForDisplay];
  v14 = MEMORY[0x1E696ACD8];
  v15 = [v4 topAnchor];
  v5 = [(AAUIInvitePreviewMessageBubbleView *)self topAnchor];
  v6 = [v15 constraintEqualToAnchor:v5 constant:20.0];
  v18[0] = v6;
  v7 = [v4 bottomAnchor];
  v8 = [(AAUIInvitePreviewMessageBubbleView *)self bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v18[1] = v9;
  v10 = [v4 centerXAnchor];
  v11 = [(AAUIInvitePreviewMessageBubbleView *)self centerXAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v18[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  [v14 activateConstraints:v13];
}

- (id)_inviteBalloonView:(id)a3
{
  v27[4] = *MEMORY[0x1E69E9840];
  gotLoadHelper_x8__OBJC_CLASS___CKColoredBalloonView(v3);
  v5 = v4;
  objc_opt_class();
  v7 = CKBalloonViewForClass_delayInitStub(v6);
  [v7 addSubview:v5];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = MEMORY[0x1E696ACD8];
  v26 = [v5 topAnchor];
  v25 = [v7 topAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v27[0] = v24;
  v23 = [v5 leftAnchor];
  v8 = [v7 leftAnchor];
  v9 = [v23 constraintEqualToAnchor:v8];
  v27[1] = v9;
  v10 = [v5 rightAnchor];
  v11 = [v7 rightAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v27[2] = v12;
  v13 = [v5 bottomAnchor];

  v14 = [v7 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v27[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  [v22 activateConstraints:v16];

  [v7 setHasTail:1];
  [v7 setBalloonCorners:-1];
  [v7 setColor:0xFFFFFFFFLL];
  Helper_x8__OBJC_CLASS___CKUIBehavior = gotLoadHelper_x8__OBJC_CLASS___CKUIBehavior(v17);
  v20 = [*(v19 + 3208) sharedBehaviors];
  [v20 balloonCornerRadius];
  [v7 setCornerRadius:?];

  [v7 setOrientation:0];

  return v7;
}

@end