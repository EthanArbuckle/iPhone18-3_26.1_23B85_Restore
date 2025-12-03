@interface CNContactCustomViewController
- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration;
- (CNContactCustomViewController)initWithConfiguration:(id)configuration;
- (void)copy:(id)copy;
- (void)didLongPressWithGestureRecognizer:(id)recognizer;
- (void)performActionWithSender:(id)sender;
- (void)performDisclosureAction;
- (void)viewDidLoad;
@end

@implementation CNContactCustomViewController

- (void)copy:(id)copy
{
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  body = [(CNContactCustomViewConfiguration *)self->_configuration body];
  string = [body string];
  [generalPasteboard setString:string];
}

- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration
{
  v4 = [(CNContactCustomViewController *)self view:interaction];
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

- (void)didLongPressWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  view = [(CNContactCustomViewController *)self view];
  [recognizerCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  v10 = [MEMORY[0x1E69DC9D8] configurationWithIdentifier:0 sourcePoint:{v7, v9}];
  [(UIEditMenuInteraction *)self->_editMenuInteraction presentEditMenuWithConfiguration:v10];
}

- (void)performActionWithSender:(id)sender
{
  v23 = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  objc_opt_class();
  v5 = senderCopy;
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
  selfCopy = self;
  actions = [(CNContactCustomViewConfiguration *)self->_configuration actions];
  v9 = [actions countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(actions);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        currentTitle = [v7 currentTitle];
        title = [v13 title];
        v16 = [currentTitle isEqualToString:title];

        if (v16)
        {
          [v13 performActionWithSender:selfCopy];
          goto LABEL_14;
        }
      }

      v10 = [actions countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  trailingDisclosureAction = [(CNContactCustomViewConfiguration *)self->_configuration trailingDisclosureAction];
  [trailingDisclosureAction performActionWithSender:self];
}

- (void)viewDidLoad
{
  selfCopy = self;
  v96[1] = *MEMORY[0x1E69E9840];
  v89.receiver = self;
  v89.super_class = CNContactCustomViewController;
  [(CNContactCustomViewController *)&v89 viewDidLoad];
  view = [(CNContactCustomViewController *)selfCopy view];
  v3 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [v3 setAxis:0];
  [v3 setAlignment:3];
  [v3 setDistribution:0];
  [v3 setSpacing:8.0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  titleIconSymbolName = [(CNContactCustomViewConfiguration *)selfCopy->_configuration titleIconSymbolName];

  v78 = selfCopy;
  if (titleIconSymbolName)
  {
    v5 = MEMORY[0x1E69DCAB8];
    titleIconSymbolName2 = [(CNContactCustomViewConfiguration *)selfCopy->_configuration titleIconSymbolName];
    v7 = MEMORY[0x1E69DCAD8];
    v8 = MEMORY[0x1E69DB878];
    [MEMORY[0x1E69DB878] systemFontSize];
    v9 = [v8 systemFontOfSize:?];
    v10 = [v7 configurationWithFont:v9];
    v11 = [v5 systemImageNamed:titleIconSymbolName2 withConfiguration:v10];

    v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v11];
    titleIconColor = [(CNContactCustomViewConfiguration *)selfCopy->_configuration titleIconColor];

    if (titleIconColor)
    {
      titleIconColor2 = [(CNContactCustomViewConfiguration *)selfCopy->_configuration titleIconColor];
      [v12 setTintColor:titleIconColor2];
    }

    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 addArrangedSubview:v12];
    v15 = MEMORY[0x1E696ACD8];
    widthAnchor = [v12 widthAnchor];
    heightAnchor = [v12 heightAnchor];
    v18 = [widthAnchor constraintEqualToAnchor:heightAnchor];
    v96[0] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:1];
    [v15 activateConstraints:v19];

    selfCopy = v78;
  }

  v20 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  title = [(CNContactCustomViewConfiguration *)selfCopy->_configuration title];
  [v20 setAttributedText:title];

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
  body = [(CNContactCustomViewConfiguration *)selfCopy->_configuration body];

  if (body)
  {
    v26 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    body2 = [(CNContactCustomViewConfiguration *)selfCopy->_configuration body];
    [v26 setAttributedText:body2];

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
  trailingDisclosureSystemImageName = [(CNContactCustomViewConfiguration *)selfCopy->_configuration trailingDisclosureSystemImageName];

  if (trailingDisclosureSystemImageName)
  {
    v33 = objc_alloc_init(MEMORY[0x1E69DC738]);
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [v33 setTintColor:systemBlueColor];

    v35 = MEMORY[0x1E69DCAB8];
    trailingDisclosureSystemImageName2 = [(CNContactCustomViewConfiguration *)selfCopy->_configuration trailingDisclosureSystemImageName];
    v37 = [v35 systemImageNamed:trailingDisclosureSystemImageName2];
    [v33 setImage:v37 forState:0];

    [v33 addTarget:selfCopy action:sel_performDisclosureAction forControlEvents:64];
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
  obj = [(CNContactCustomViewConfiguration *)selfCopy->_configuration actions];
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
        title2 = [v43 title];
        [v44 setTitle:title2 forState:0];

        systemBlueColor2 = [MEMORY[0x1E69DC888] systemBlueColor];
        [v44 setTitleColor:systemBlueColor2 forState:0];

        [v44 addTarget:v78 action:sel_performActionWithSender_ forControlEvents:64];
        v47 = objc_alloc_init(MEMORY[0x1E69DD250]);
        [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
        systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
        [v47 setBackgroundColor:systemGroupedBackgroundColor];

        [v79 addArrangedSubview:v47];
        v83 = MEMORY[0x1E696ACD8];
        heightAnchor2 = [v47 heightAnchor];
        v50 = [heightAnchor2 constraintEqualToConstant:1.0];
        v91[0] = v50;
        widthAnchor2 = [v47 widthAnchor];
        widthAnchor3 = [v79 widthAnchor];
        v53 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
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

  [view addSubview:v79];
  v77 = MEMORY[0x1E696ACD8];
  leadingAnchor = [v79 leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v82 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v90[0] = v82;
  trailingAnchor = [v79 trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v58 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v90[1] = v58;
  topAnchor = [v79 topAnchor];
  topAnchor2 = [view topAnchor];
  v61 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v90[2] = v61;
  bottomAnchor = [v79 bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v64 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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

- (CNContactCustomViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = CNContactCustomViewController;
  v6 = [(CNContactCustomViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = v7;
  }

  return v7;
}

@end