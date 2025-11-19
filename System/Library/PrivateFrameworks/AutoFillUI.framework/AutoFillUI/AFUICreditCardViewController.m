@interface AFUICreditCardViewController
+ (id)dateStringTextContentType:(id)a3 date:(id)a4 placeholderHint:(id)a5;
- (AFUICreditCardViewController)initWithDocumentTraits:(id)a3 documentState:(id)a4 textOperationsHandler:(id)a5 modalUIDelegate:(id)a6 suggestions:(id)a7;
- (AFUIModalUIDelegate)modalUIDelegate;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)createSectionHeaderViewWithTitle:(id)a3 icon:(CGImage *)a4;
- (id)processSuggestions:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_openSettings;
- (void)handleTextInsertion:(id)a3;
- (void)manageCreditCardsButtonTapped:(id)a3;
- (void)setModalPresentationStyleForDevice;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)viewDidLoad;
@end

@implementation AFUICreditCardViewController

- (AFUICreditCardViewController)initWithDocumentTraits:(id)a3 documentState:(id)a4 textOperationsHandler:(id)a5 modalUIDelegate:(id)a6 suggestions:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v25.receiver = self;
  v25.super_class = AFUICreditCardViewController;
  v18 = [(AFUICreditCardViewController *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_documentState, a4);
    objc_storeStrong(&v19->_documentTraits, a3);
    v20 = MEMORY[0x1D38AFC90](v15);
    performTextOperations = v19->_performTextOperations;
    v19->_performTextOperations = v20;

    objc_storeWeak(&v19->_modalUIDelegate, v16);
    v22 = [v17 copy];
    suggestions = v19->_suggestions;
    v19->_suggestions = v22;
  }

  return v19;
}

- (id)processSuggestions:(id)a3
{
  v21 = a3;
  v3 = [v21 count];
  [MEMORY[0x1E695DF70] array];
  v20 = v19 = v3;
  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = [v21 objectAtIndex:v4];
      v6 = [v5 creditCardPayload];
      v7 = [v6 mutableCopy];

      v24 = [v7 objectForKey:@"cc-name"];
      v23 = [v7 objectForKey:@"cc-number"];
      v8 = [v7 objectForKey:@"cc-exp"];
      if (v8)
      {
        v9 = [AFUICreditCardViewController dateStringTextContentType:@"cc-exp" date:v8 placeholderHint:0];
        [v7 setObject:v9 forKey:@"cc-exp"];
      }

      v10 = [v7 objectForKey:@"cc-exp"];
      v11 = [v7 objectForKey:@"cc-csc"];
      [v7 objectForKey:@"cc-type"];
      v12 = v22 = v8;
      v13 = [v7 objectForKey:@"cc-art"];
      v14 = [v5 title];
      v15 = [v5 subTitle];
      v16 = [[AFCreditCard alloc] initWithName:v24 number:v23 expiration:v10 securityCode:v11 type:v12 icon:v13 nickname:v14 suffix:v15];
      [v20 addObject:v16];

      ++v4;
    }

    while (v4 < v19);
  }

  [(AFUICreditCardViewController *)self setHasSuggestions:v19 != 0];

  return v20;
}

+ (id)dateStringTextContentType:(id)a3 date:(id)a4 placeholderHint:(id)a5
{
  v6 = a3;
  v7 = MEMORY[0x1E695DEE8];
  v8 = a4;
  v9 = [v7 alloc];
  v10 = [v9 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v11 = [v10 components:12 fromDate:v8];

  if ([v6 isEqualToString:@"cc-exp"])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%02ld/%02ld", objc_msgSend(v11, "month"), objc_msgSend(v11, "year") % 100];
    v14 = LABEL_8:;
    goto LABEL_9;
  }

  if ([v6 isEqualToString:@"cc-exp-month"])
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = [v11 month];
LABEL_7:
    [v12 stringWithFormat:@"%02ld", v13, v16];
    goto LABEL_8;
  }

  if ([v6 isEqualToString:@"cc-exp-year"])
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = [v11 year];
    goto LABEL_7;
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)setModalPresentationStyleForDevice
{
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [v3 keyWindow];
  v5 = [v4 traitCollection];

  if ([v5 userInterfaceIdiom] != 1)
  {
    [(AFUICreditCardViewController *)self setModalPresentationStyle:0];
  }
}

- (void)viewDidLoad
{
  v84[4] = *MEMORY[0x1E69E9840];
  v82.receiver = self;
  v82.super_class = AFUICreditCardViewController;
  [(AFUICreditCardViewController *)&v82 viewDidLoad];
  [(AFUICreditCardViewController *)self setModalPresentationStyleForDevice];
  v3 = objc_initWeak(&location, self);
  v4 = [(AFUICreditCardViewController *)self processSuggestions:self->_suggestions];
  [(AFUICreditCardViewController *)self setCreditCards:v4];

  v80 = [(AFUICreditCardViewController *)self navigationItem];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"AutoFill Card Information" value:&stru_1F4E9A028 table:@"Localizable"];
  [v80 setTitle:v6];

  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"Choose a Credit or Debit Card to AutoFill." value:&stru_1F4E9A028 table:@"Localizable"];
  [v80 setPrompt:v8];

  v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped_];
  [v80 setLeftBarButtonItem:v9];
  v52 = v9;
  v10 = objc_alloc(MEMORY[0x1E69DD020]);
  v11 = [v10 initWithFrame:2 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(AFUICreditCardViewController *)self setTableView:v11];

  v12 = [(AFUICreditCardViewController *)self tableView];
  [v12 setDataSource:self];

  v13 = [(AFUICreditCardViewController *)self tableView];
  [v13 setDelegate:self];

  v14 = [(AFUICreditCardViewController *)self tableView];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [(AFUICreditCardViewController *)self view];
  v16 = [(AFUICreditCardViewController *)self tableView];
  [v15 addSubview:v16];

  v17 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(AFUICreditCardViewController *)self setSelectedCellLabel:v17];

  v18 = [(AFUICreditCardViewController *)self selectedCellLabel];
  [v18 setTextAlignment:1];

  v19 = [MEMORY[0x1E69DC888] blackColor];
  v20 = [(AFUICreditCardViewController *)self selectedCellLabel];
  [v20 setTextColor:v19];

  v21 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] maximumContentSizeCategory:*MEMORY[0x1E69DDC60]];
  v22 = [(AFUICreditCardViewController *)self selectedCellLabel];
  [v22 setFont:v21];

  v23 = [(AFUICreditCardViewController *)self selectedCellLabel];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = [(AFUICreditCardViewController *)self view];
  v25 = [(AFUICreditCardViewController *)self selectedCellLabel];
  [v24 addSubview:v25];

  v26 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = [(AFUICreditCardViewController *)self view];
  [v27 addSubview:v26];

  v28 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  [v26 setBackgroundColor:v28];

  v60 = MEMORY[0x1E696ACD8];
  v76 = [v26 topAnchor];
  v78 = [(AFUICreditCardViewController *)self view];
  v74 = [v78 topAnchor];
  v72 = [v76 constraintEqualToAnchor:v74];
  v84[0] = v72;
  v68 = [v26 leadingAnchor];
  v70 = [(AFUICreditCardViewController *)self view];
  v66 = [v70 leadingAnchor];
  v64 = [v68 constraintEqualToAnchor:v66];
  v84[1] = v64;
  v62 = [v26 trailingAnchor];
  v29 = [(AFUICreditCardViewController *)self view];
  v30 = [v29 trailingAnchor];
  v31 = [v62 constraintEqualToAnchor:v30];
  v84[2] = v31;
  v32 = [v26 bottomAnchor];
  v33 = [(AFUICreditCardViewController *)self view];
  v34 = [v33 bottomAnchor];
  v35 = [v32 constraintEqualToAnchor:v34];
  v84[3] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:4];
  [v60 activateConstraints:v36];

  v37 = [v26 layer];
  [v37 setCornerRadius:10.0];

  v38 = [v26 layer];
  [v38 setMasksToBounds:1];

  v39 = [(AFUICreditCardViewController *)self tableView];
  [v26 addSubview:v39];

  v40 = [(AFUICreditCardViewController *)self selectedCellLabel];
  [v26 addSubview:v40];

  v51 = MEMORY[0x1E696ACD8];
  v79 = [(AFUICreditCardViewController *)self tableView];
  v77 = [v79 topAnchor];
  v75 = [v26 topAnchor];
  v73 = [v77 constraintEqualToAnchor:v75];
  v83[0] = v73;
  v71 = [(AFUICreditCardViewController *)self tableView];
  v69 = [v71 leadingAnchor];
  v67 = [v26 leadingAnchor];
  v65 = [v69 constraintEqualToAnchor:v67];
  v83[1] = v65;
  v63 = [(AFUICreditCardViewController *)self tableView];
  v61 = [v63 trailingAnchor];
  v59 = [v26 trailingAnchor];
  v58 = [v61 constraintEqualToAnchor:v59];
  v83[2] = v58;
  v57 = [(AFUICreditCardViewController *)self tableView];
  v56 = [v57 bottomAnchor];
  v55 = [v26 bottomAnchor];
  v54 = [v56 constraintEqualToAnchor:v55];
  v83[3] = v54;
  v53 = [(AFUICreditCardViewController *)self selectedCellLabel];
  v41 = [v53 topAnchor];
  v42 = [(AFUICreditCardViewController *)self tableView];
  v43 = [v42 bottomAnchor];
  v44 = [v41 constraintEqualToAnchor:v43 constant:10.0];
  v83[4] = v44;
  v45 = [(AFUICreditCardViewController *)self selectedCellLabel];
  v46 = [v45 centerXAnchor];
  v47 = [v26 centerXAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];
  v83[5] = v48;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:6];
  [v51 activateConstraints:v49];

  objc_destroyWeak(&location);
  v50 = *MEMORY[0x1E69E9840];
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = [(AFUICreditCardViewController *)self creditCards];
  v7 = [v6 count];

  if (v7 == a4)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(AFUICreditCardViewController *)self creditCards];
    v10 = [v9 objectAtIndexedSubscript:a4];

    v8 = [v10 nickname];
  }

  return v8;
}

- (id)createSectionHeaderViewWithTitle:(id)a3 icon:(CGImage *)a4
{
  v46[7] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69DD250];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = [(AFUICreditCardViewController *)self tableView];
  [v9 bounds];
  v10 = [v8 initWithFrame:{0.0, 0.0}];

  v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v12 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD40] maximumContentSizeCategory:*MEMORY[0x1E69DDC60]];
  [v11 setFont:v12];

  v13 = [MEMORY[0x1E69DC888] labelColor];
  [v11 setTextColor:v13];

  [v11 setText:v7];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 setLineBreakMode:4];
  [v10 addSubview:v11];
  v14 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  v15 = [MEMORY[0x1E69DCAB8] imageWithCGImage:a4];
  [v14 setImage:v15];

  [v14 setContentMode:1];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [v14 layer];
  [v16 setCornerRadius:4.0];

  v17 = [v14 layer];
  [v17 setMasksToBounds:1];

  [v10 addSubview:v14];
  Width = CGImageGetWidth(a4);
  Height = CGImageGetHeight(a4);
  v37 = MEMORY[0x1E696ACD8];
  v45 = [v11 leadingAnchor];
  v44 = [v10 leadingAnchor];
  v43 = [v45 constraintEqualToAnchor:v44 constant:16.0];
  v46[0] = v43;
  v42 = [v11 trailingAnchor];
  v41 = [v14 leadingAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v46[1] = v40;
  v39 = [v11 heightAnchor];
  v38 = [v10 heightAnchor];
  v36 = [v39 constraintEqualToAnchor:v38];
  v46[2] = v36;
  v35 = [v14 trailingAnchor];
  v34 = [v10 trailingAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v46[3] = v33;
  v20 = [v14 topAnchor];
  v32 = v10;
  v21 = [v10 topAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:6.0];
  v46[4] = v22;
  v23 = [v14 heightAnchor];
  v24 = [v23 constraintEqualToConstant:30.0];
  v46[5] = v24;
  v25 = [v14 widthAnchor];
  v26 = v25;
  v27 = 36.0;
  if (Width == Height)
  {
    v27 = 30.0;
  }

  v28 = [v25 constraintEqualToConstant:v27];
  v46[6] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:7];
  [v37 activateConstraints:v29];

  v30 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = [(AFUICreditCardViewController *)self creditCards];
  v7 = [v6 count];

  if (v7 == a4)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(AFUICreditCardViewController *)self creditCards];
    v10 = [v9 objectAtIndexedSubscript:a4];

    v11 = [v10 nickname];
    v8 = -[AFUICreditCardViewController createSectionHeaderViewWithTitle:icon:](self, "createSectionHeaderViewWithTitle:icon:", v11, [v10 image]);
  }

  return v8;
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v11 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x1E69DC888];
    v6 = v11;
    v7 = [v5 labelColor];
    v8 = [v6 textLabel];
    [v8 setTextColor:v7];

    v9 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD40] maximumContentSizeCategory:*MEMORY[0x1E69DDC60]];
    v10 = [v6 textLabel];

    [v10 setFont:v9];
  }
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v5 = [(AFUICreditCardViewController *)self creditCards];
  v6 = [v5 count];

  result = 44.0;
  if (v6 == a4)
  {
    return 0.0;
  }

  return result;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13 = a4;
  v5 = [v13 section];
  v6 = [(AFUICreditCardViewController *)self creditCards];
  v7 = [v6 count];

  if (v5 == v7)
  {
    [(AFUICreditCardViewController *)self manageCreditCardsButtonTapped:0];
    goto LABEL_14;
  }

  v8 = [(AFUICreditCardViewController *)self creditCards];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v13, "section")}];

  v10 = [v13 row];
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = [v9 expiration];
      goto LABEL_12;
    }

    if (v10 == 3)
    {
      v11 = [v9 securityCode];
      goto LABEL_12;
    }
  }

  else
  {
    if (!v10)
    {
      v11 = [v9 name];
      goto LABEL_12;
    }

    if (v10 == 1)
    {
      v11 = [v9 number];
LABEL_12:
      v12 = v11;
      [(AFUICreditCardViewController *)self handleTextInsertion:v11];
    }
  }

LABEL_14:
}

- (void)handleTextInsertion:(id)a3
{
  v4 = MEMORY[0x1E69C6FA8];
  v5 = a3;
  v10 = objc_alloc_init(v4);
  v6 = [MEMORY[0x1E695DF90] dictionaryWithObject:v5 forKey:@"textToAssert"];
  v7 = [v10 keyboardOutput];
  [v7 setCustomInfo:v6];

  v8 = [(AFUICreditCardViewController *)self documentTraits];
  [v10 _assertOrInsertText:v5 documentTraits:v8];

  v9 = [(AFUICreditCardViewController *)self performTextOperations];
  (v9)[2](v9, v10);
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(AFUICreditCardViewController *)self creditCards];
  v4 = [v3 count];

  return v4 + 1;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(AFUICreditCardViewController *)self creditCards];
  v6 = [v5 count];

  if (v6 == a4)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 section];
  v9 = [(AFUICreditCardViewController *)self creditCards];
  v10 = [v9 count];

  if (v8 != v10)
  {
    v11 = [v7 dequeueReusableCellWithIdentifier:@"CreditCardCell"];

    if (!v11)
    {
      v11 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"CreditCardCell"];
      [v11 setSelectionStyle:0];
    }

    v17 = [(AFUICreditCardViewController *)self creditCards];
    v15 = [v17 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];

    v18 = [v6 row];
    if (v18 > 1)
    {
      if (v18 != 2)
      {
        if (v18 == 3)
        {
          v26 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          v27 = [v26 localizedStringForKey:@"Security Code" value:&stru_1F4E9A028 table:@"Localizable"];
          v28 = [v11 textLabel];
          [v28 setText:v27];

          v23 = [v11 detailTextLabel];
          [v23 setText:@"•••"];
LABEL_17:

          goto LABEL_18;
        }

        goto LABEL_18;
      }

      v33 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v34 = [v33 localizedStringForKey:@"Expiration" value:&stru_1F4E9A028 table:@"Localizable"];
      v35 = [v11 textLabel];
      [v35 setText:v34];

      v32 = [v15 expiration];
    }

    else
    {
      if (v18)
      {
        if (v18 == 1)
        {
          v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          v20 = [v19 localizedStringForKey:@"Card Number" value:&stru_1F4E9A028 table:@"Localizable"];
          v21 = [v11 textLabel];
          [v21 setText:v20];

          v22 = MEMORY[0x1E696AEC0];
          v23 = [v15 suffix];
          v24 = [v22 stringWithFormat:@"•••• •••• •••• %@", v23];
          v25 = [v11 detailTextLabel];
          [v25 setText:v24];

LABEL_16:
          goto LABEL_17;
        }

LABEL_18:
        v36 = [MEMORY[0x1E69DC888] labelColor];
        v37 = [v11 textLabel];
        [v37 setTextColor:v36];

        v16 = [MEMORY[0x1E69DC888] systemBlueColor];
        v38 = [v11 detailTextLabel];
        [v38 setTextColor:v16];

        goto LABEL_19;
      }

      v29 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v30 = [v29 localizedStringForKey:@"Name on Card" value:&stru_1F4E9A028 table:@"Localizable"];
      v31 = [v11 textLabel];
      [v31 setText:v30];

      v32 = [v15 name];
    }

    v23 = v32;
    v24 = [v11 detailTextLabel];
    [v24 setText:v23];
    goto LABEL_16;
  }

  v11 = [v7 dequeueReusableCellWithIdentifier:@"ButtonCell"];

  if (v11)
  {
    goto LABEL_20;
  }

  v11 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"ButtonCell"];
  v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"Manage Cards" value:&stru_1F4E9A028 table:@"Localizable"];
  v14 = [v11 textLabel];
  [v14 setText:v13];

  v15 = [MEMORY[0x1E69DC888] systemBlueColor];
  v16 = [v11 textLabel];
  [v16 setTextColor:v15];
LABEL_19:

LABEL_20:

  return v11;
}

- (void)_openSettings
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v2 = getPKAutoFillCardManagerClass_softClass;
  v11 = getPKAutoFillCardManagerClass_softClass;
  if (!getPKAutoFillCardManagerClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getPKAutoFillCardManagerClass_block_invoke;
    v7[3] = &unk_1E84248A0;
    v7[4] = &v8;
    __getPKAutoFillCardManagerClass_block_invoke(v7);
    v2 = v9[3];
  }

  v3 = v2;
  _Block_object_dispose(&v8, 8);
  v4 = objc_alloc_init(v2);
  v5 = [MEMORY[0x1E6963608] defaultWorkspace];
  v6 = [v4 urlToListOfCards];
  [v5 openSensitiveURL:v6 withOptions:0];
}

- (void)manageCreditCardsButtonTapped:(id)a3
{
  [(AFUICreditCardViewController *)self _openSettings];

  [(AFUICreditCardViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (AFUIModalUIDelegate)modalUIDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_modalUIDelegate);

  return WeakRetained;
}

@end