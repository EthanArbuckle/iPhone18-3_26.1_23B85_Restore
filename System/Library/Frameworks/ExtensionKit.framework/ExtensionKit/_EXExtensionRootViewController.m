@interface _EXExtensionRootViewController
- (void)embedViewController:(id)a3;
@end

@implementation _EXExtensionRootViewController

- (void)embedViewController:(id)a3
{
  v25[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_EXExtensionRootViewController *)self embededViewController];
  if (v4)
  {
    v6 = [v4 view];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(_EXExtensionRootViewController *)self view];
    [v7 addSubview:v6];

    v8 = [(_EXExtensionRootViewController *)self view];
    v18 = MEMORY[0x1E696ACD8];
    v23 = [v6 leftAnchor];
    v22 = [v8 leftAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v25[0] = v21;
    v20 = [v6 topAnchor];
    v19 = [v8 topAnchor];
    v17 = [v20 constraintEqualToAnchor:v19];
    v25[1] = v17;
    v16 = [v6 rightAnchor];
    v9 = [v8 rightAnchor];
    v10 = [v16 constraintEqualToAnchor:v9];
    v25[2] = v10;
    v11 = [v6 bottomAnchor];
    [v8 bottomAnchor];
    v12 = v24 = v5;
    v13 = [v11 constraintEqualToAnchor:v12];
    v25[3] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
    [v18 activateConstraints:v14];

    v5 = v24;
    [(_EXExtensionRootViewController *)self setEmbededViewController:v4];
    [(_EXExtensionRootViewController *)self addChildViewController:v4];
  }

  if (v5)
  {
    [v5 removeFromParentViewController];
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end