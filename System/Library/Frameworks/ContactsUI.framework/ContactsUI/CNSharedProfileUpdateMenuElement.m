@interface CNSharedProfileUpdateMenuElement
+ (id)elementWithTitle:(id)a3 subtitle:(id)a4 avatarImage:(id)a5 selected:(BOOL)a6;
@end

@implementation CNSharedProfileUpdateMenuElement

+ (id)elementWithTitle:(id)a3 subtitle:(id)a4 avatarImage:(id)a5 selected:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __83__CNSharedProfileUpdateMenuElement_elementWithTitle_subtitle_avatarImage_selected___block_invoke;
  v19[3] = &unk_1E74E26F8;
  v20 = v12;
  v21 = v10;
  v22 = v11;
  v23 = a6;
  v18.receiver = a1;
  v18.super_class = &OBJC_METACLASS___CNSharedProfileUpdateMenuElement;
  v13 = v11;
  v14 = v10;
  v15 = v12;
  v16 = objc_msgSendSuper2(&v18, sel_elementWithViewProvider_, v19);

  return v16;
}

id __83__CNSharedProfileUpdateMenuElement_elementWithTitle_subtitle_avatarImage_selected___block_invoke(uint64_t a1)
{
  v56[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:*(a1 + 32)];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x1E695F058], v5, v6, v7}];
  [v8 setText:*(a1 + 40)];
  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v55 = v8;
  [v8 setFont:v9];

  v10 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  [v10 setText:*(a1 + 48)];
  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD78]];
  [v10 setFont:v11];

  v12 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v10 setTextColor:v12];

  v54 = v10;
  [v10 setNumberOfLines:2];
  v13 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithFrame:{v4, v5, v6, v7}];
  [v13 setAxis:1];
  [v13 setAlignment:1];
  [v13 addArrangedSubview:v8];
  v51 = v13;
  [v13 addArrangedSubview:v10];
  v14 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithFrame:{v4, v5, v6, v7}];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 setAxis:0];
  [v14 setAlignment:3];
  v15 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v4, v5, v6, v7}];
  v53 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD40] scale:1];
  v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark" withConfiguration:v53];
  v17 = [MEMORY[0x1E69DC888] labelColor];
  v18 = [v16 imageWithTintColor:v17];

  v52 = [v18 imageWithRenderingMode:1];

  [v15 setImage:v52];
  v19 = 0.0;
  if (*(a1 + 56))
  {
    v19 = 1.0;
  }

  [v15 setAlpha:v19];
  [v15 setContentMode:1];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 addArrangedSubview:v15];
  v38 = v15;
  [v14 setCustomSpacing:v15 afterView:6.0];
  [v14 addArrangedSubview:v13];
  v50 = v2;
  [v14 addArrangedSubview:v2];
  v20 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v5, v6, v7}];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v20 addSubview:v14];
  v49 = [v2 widthAnchor];
  v48 = [v49 constraintEqualToConstant:28.0];
  v56[0] = v48;
  v47 = [v2 heightAnchor];
  v46 = [v2 widthAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v56[1] = v45;
  v44 = [v2 centerYAnchor];
  v43 = [v20 centerYAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v56[2] = v42;
  v41 = [v14 trailingAnchor];
  v40 = [v20 trailingAnchor];
  v39 = [v41 constraintEqualToAnchor:v40 constant:-16.0];
  v56[3] = v39;
  v37 = [v14 topAnchor];
  v36 = [v20 topAnchor];
  v35 = [v37 constraintEqualToAnchor:v36 constant:12.0];
  v56[4] = v35;
  v34 = [v14 bottomAnchor];
  v33 = [v20 bottomAnchor];
  v31 = [v34 constraintEqualToAnchor:v33 constant:-12.0];
  v56[5] = v31;
  v30 = [v14 centerYAnchor];
  v21 = [v20 centerYAnchor];
  v22 = [v30 constraintEqualToAnchor:v21];
  v56[6] = v22;
  v23 = [v14 leadingAnchor];
  v24 = [v20 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:12.0];
  v56[7] = v25;
  v26 = [v15 centerYAnchor];
  v27 = [v20 centerYAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  v56[8] = v28;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:9];

  [MEMORY[0x1E696ACD8] activateConstraints:v32];

  return v20;
}

@end