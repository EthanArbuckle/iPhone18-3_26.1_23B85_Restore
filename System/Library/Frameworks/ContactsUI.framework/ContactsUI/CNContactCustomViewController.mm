@interface CNContactCustomViewController
- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4;
- (CNContactCustomViewController)initWithConfiguration:(id)a3;
- (void)copy:(id)a3;
- (void)didLongPressWithGestureRecognizer:(id)a3;
- (void)performActionWithSender:(id)a3;
- (void)performDisclosureAction;
- (void)viewDidLoad;
@end

@implementation CNContactCustomViewController

- (void)copy:(id)a3
{
  v6 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v4 = [(CNContactCustomViewConfiguration *)self->_configuration body];
  v5 = [v4 string];
  [v6 setString:v5];
}

- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4
{
  v4 = [(CNContactCustomViewController *)self view:a3];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)didLongPressWithGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(CNContactCustomViewController *)self view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [MEMORY[0x1E69DC9D8] configurationWithIdentifier:0 sourcePoint:{v7, v9}];
  [(UIEditMenuInteraction *)self->_editMenuInteraction presentEditMenuWithConfiguration:v10];
}

- (void)performActionWithSender:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
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

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = self;
  v8 = [(CNContactCustomViewConfiguration *)self->_configuration actions];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v7 currentTitle];
        v15 = [v13 title];
        v16 = [v14 isEqualToString:v15];

        if (v16)
        {
          [v13 performActionWithSender:v17];
          goto LABEL_14;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (void)performDisclosureAction
{
  v3 = [(CNContactCustomViewConfiguration *)self->_configuration trailingDisclosureAction];
  [v3 performActionWithSender:self];
}

- (void)viewDidLoad
{
  v2 = self;
  v96[1] = *MEMORY[0x1E69E9840];
  v89.receiver = self;
  v89.super_class = CNContactCustomViewController;
  [(CNContactCustomViewController *)&v89 viewDidLoad];
  v74 = [(CNContactCustomViewController *)v2 view];
  v3 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [v3 setAxis:0];
  [v3 setAlignment:3];
  [v3 setDistribution:0];
  [v3 setSpacing:8.0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(CNContactCustomViewConfiguration *)v2->_configuration titleIconSymbolName];

  v78 = v2;
  if (v4)
  {
    v5 = MEMORY[0x1E69DCAB8];
    v6 = [(CNContactCustomViewConfiguration *)v2->_configuration titleIconSymbolName];
    v7 = MEMORY[0x1E69DCAD8];
    v8 = MEMORY[0x1E69DB878];
    [MEMORY[0x1E69DB878] systemFontSize];
    v9 = [v8 systemFontOfSize:?];
    v10 = [v7 configurationWithFont:v9];
    v11 = [v5 systemImageNamed:v6 withConfiguration:v10];

    v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v11];
    v13 = [(CNContactCustomViewConfiguration *)v2->_configuration titleIconColor];

    if (v13)
    {
      v14 = [(CNContactCustomViewConfiguration *)v2->_configuration titleIconColor];
      [v12 setTintColor:v14];
    }

    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 addArrangedSubview:v12];
    v15 = MEMORY[0x1E696ACD8];
    v16 = [v12 widthAnchor];
    v17 = [v12 heightAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v96[0] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:1];
    [v15 activateConstraints:v19];

    v2 = v78;
  }

  v20 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v21 = [(CNContactCustomViewConfiguration *)v2->_configuration title];
  [v20 setAttributedText:v21];

  [v20 setNumberOfLines:0];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v72 = v20;
  [v3 addArrangedSubview:v20];
  v22 = objc_alloc(MEMORY[0x1E69DCF90]);
  v95 = v3;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v95 count:1];
  v24 = [v22 initWithArrangedSubviews:v23];

  [v24 setAxis:1];
  [v24 setAlignment:1];
  [v24 setSpacing:8.0];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = [(CNContactCustomViewConfiguration *)v2->_configuration body];

  if (v25)
  {
    v26 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v27 = [(CNContactCustomViewConfiguration *)v2->_configuration body];
    [v26 setAttributedText:v27];

    [v26 setNumberOfLines:0];
    [v24 addArrangedSubview:v26];
  }

  v28 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v29 = objc_alloc(MEMORY[0x1E69DCF90]);
  v94[0] = v24;
  v94[1] = v28;
  v70 = v28;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:2];
  v31 = [v29 initWithArrangedSubviews:v30];

  [v31 setAxis:0];
  [v31 setAlignment:3];
  [v31 setDistribution:0];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = [(CNContactCustomViewConfiguration *)v2->_configuration trailingDisclosureSystemImageName];

  if (v32)
  {
    v33 = objc_alloc_init(MEMORY[0x1E69DC738]);
    v34 = [MEMORY[0x1E69DC888] systemBlueColor];
    [v33 setTintColor:v34];

    v35 = MEMORY[0x1E69DCAB8];
    v36 = [(CNContactCustomViewConfiguration *)v2->_configuration trailingDisclosureSystemImageName];
    v37 = [v35 systemImageNamed:v36];
    [v33 setImage:v37 forState:0];

    [v33 addTarget:v2 action:sel_performDisclosureAction forControlEvents:64];
    [v31 addArrangedSubview:v33];
  }

  v71 = v24;
  v73 = v3;
  v38 = objc_alloc(MEMORY[0x1E69DCF90]);
  v39 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v93[0] = v39;
  v93[1] = v31;
  v69 = v31;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
  v41 = [v38 initWithArrangedSubviews:v40];

  [v41 setAxis:1];
  [v41 setAlignment:0];
  [v41 setSpacing:8.0];
  v79 = v41;
  [v41 setTranslatesAutoresizingMaskIntoConstraints:0];
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = [(CNContactCustomViewConfiguration *)v2->_configuration actions];
  v81 = [obj countByEnumeratingWithState:&v85 objects:v92 count:16];
  if (v81)
  {
    v76 = *v86;
    do
    {
      for (i = 0; i != v81; ++i)
      {
        if (*v86 != v76)
        {
          objc_enumerationMutation(obj);
        }

        v43 = *(*(&v85 + 1) + 8 * i);
        v44 = objc_alloc_init(MEMORY[0x1E69DC738]);
        v45 = [v43 title];
        [v44 setTitle:v45 forState:0];

        v46 = [MEMORY[0x1E69DC888] systemBlueColor];
        [v44 setTitleColor:v46 forState:0];

        [v44 addTarget:v78 action:sel_performActionWithSender_ forControlEvents:64];
        v47 = objc_alloc_init(MEMORY[0x1E69DD250]);
        [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
        v48 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
        [v47 setBackgroundColor:v48];

        [v79 addArrangedSubview:v47];
        v83 = MEMORY[0x1E696ACD8];
        v49 = [v47 heightAnchor];
        v50 = [v49 constraintEqualToConstant:1.0];
        v91[0] = v50;
        v51 = [v47 widthAnchor];
        v52 = [v79 widthAnchor];
        v53 = [v51 constraintEqualToAnchor:v52];
        v91[1] = v53;
        v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
        [v83 activateConstraints:v54];

        [v79 addArrangedSubview:v44];
      }

      v81 = [obj countByEnumeratingWithState:&v85 objects:v92 count:16];
    }

    while (v81);
  }

  v55 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v79 addArrangedSubview:v55];

  [v74 addSubview:v79];
  v77 = MEMORY[0x1E696ACD8];
  v56 = [v79 leadingAnchor];
  v84 = [v74 leadingAnchor];
  v82 = [v56 constraintEqualToAnchor:v84];
  v90[0] = v82;
  v80 = [v79 trailingAnchor];
  v57 = [v74 trailingAnchor];
  v58 = [v80 constraintEqualToAnchor:v57];
  v90[1] = v58;
  v59 = [v79 topAnchor];
  v60 = [v74 topAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];
  v90[2] = v61;
  v62 = [v79 bottomAnchor];
  v63 = [v74 bottomAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];
  v90[3] = v64;
  v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:4];
  [v77 activateConstraints:v65];

  if ([(CNContactCustomViewConfiguration *)v78->_configuration allowsCopy])
  {
    v66 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v78 action:sel_didLongPressWithGestureRecognizer_];
    [v66 setAllowedTouchTypes:&unk_1F0D4BA48];
    [v69 addGestureRecognizer:v66];
    v67 = [objc_alloc(MEMORY[0x1E69DC9E0]) initWithDelegate:v78];
    editMenuInteraction = v78->_editMenuInteraction;
    v78->_editMenuInteraction = v67;

    [v69 addInteraction:v78->_editMenuInteraction];
  }
}

- (CNContactCustomViewController)initWithConfiguration:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNContactCustomViewController;
  v6 = [(CNContactCustomViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = v7;
  }

  return v7;
}

@end