@interface AFUICreditCardViewController
+ (id)dateStringTextContentType:(id)type date:(id)date placeholderHint:(id)hint;
- (AFUICreditCardViewController)initWithDocumentTraits:(id)traits documentState:(id)state textOperationsHandler:(id)handler modalUIDelegate:(id)delegate suggestions:(id)suggestions;
- (AFUIModalUIDelegate)modalUIDelegate;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)createSectionHeaderViewWithTitle:(id)title icon:(CGImage *)icon;
- (id)processSuggestions:(id)suggestions;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_openSettings;
- (void)handleTextInsertion:(id)insertion;
- (void)manageCreditCardsButtonTapped:(id)tapped;
- (void)setModalPresentationStyleForDevice;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation AFUICreditCardViewController

- (AFUICreditCardViewController)initWithDocumentTraits:(id)traits documentState:(id)state textOperationsHandler:(id)handler modalUIDelegate:(id)delegate suggestions:(id)suggestions
{
  traitsCopy = traits;
  stateCopy = state;
  handlerCopy = handler;
  delegateCopy = delegate;
  suggestionsCopy = suggestions;
  v25.receiver = self;
  v25.super_class = AFUICreditCardViewController;
  v18 = [(AFUICreditCardViewController *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_documentState, state);
    objc_storeStrong(&v19->_documentTraits, traits);
    v20 = MEMORY[0x1D38AFC90](handlerCopy);
    performTextOperations = v19->_performTextOperations;
    v19->_performTextOperations = v20;

    objc_storeWeak(&v19->_modalUIDelegate, delegateCopy);
    v22 = [suggestionsCopy copy];
    suggestions = v19->_suggestions;
    v19->_suggestions = v22;
  }

  return v19;
}

- (id)processSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v3 = [suggestionsCopy count];
  [MEMORY[0x1E695DF70] array];
  v20 = v19 = v3;
  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = [suggestionsCopy objectAtIndex:v4];
      creditCardPayload = [v5 creditCardPayload];
      v7 = [creditCardPayload mutableCopy];

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
      title = [v5 title];
      subTitle = [v5 subTitle];
      v16 = [[AFCreditCard alloc] initWithName:v24 number:v23 expiration:v10 securityCode:v11 type:v12 icon:v13 nickname:title suffix:subTitle];
      [v20 addObject:v16];

      ++v4;
    }

    while (v4 < v19);
  }

  [(AFUICreditCardViewController *)self setHasSuggestions:v19 != 0];

  return v20;
}

+ (id)dateStringTextContentType:(id)type date:(id)date placeholderHint:(id)hint
{
  typeCopy = type;
  v7 = MEMORY[0x1E695DEE8];
  dateCopy = date;
  v9 = [v7 alloc];
  v10 = [v9 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v11 = [v10 components:12 fromDate:dateCopy];

  if ([typeCopy isEqualToString:@"cc-exp"])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%02ld/%02ld", objc_msgSend(v11, "month"), objc_msgSend(v11, "year") % 100];
    v14 = LABEL_8:;
    goto LABEL_9;
  }

  if ([typeCopy isEqualToString:@"cc-exp-month"])
  {
    v12 = MEMORY[0x1E696AEC0];
    month = [v11 month];
LABEL_7:
    [v12 stringWithFormat:@"%02ld", month, v16];
    goto LABEL_8;
  }

  if ([typeCopy isEqualToString:@"cc-exp-year"])
  {
    v12 = MEMORY[0x1E696AEC0];
    month = [v11 year];
    goto LABEL_7;
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)setModalPresentationStyleForDevice
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  keyWindow = [mEMORY[0x1E69DC668] keyWindow];
  traitCollection = [keyWindow traitCollection];

  if ([traitCollection userInterfaceIdiom] != 1)
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

  navigationItem = [(AFUICreditCardViewController *)self navigationItem];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"AutoFill Card Information" value:&stru_1F4E9A028 table:@"Localizable"];
  [navigationItem setTitle:v6];

  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"Choose a Credit or Debit Card to AutoFill." value:&stru_1F4E9A028 table:@"Localizable"];
  [navigationItem setPrompt:v8];

  v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped_];
  [navigationItem setLeftBarButtonItem:v9];
  v52 = v9;
  v10 = objc_alloc(MEMORY[0x1E69DD020]);
  v11 = [v10 initWithFrame:2 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(AFUICreditCardViewController *)self setTableView:v11];

  tableView = [(AFUICreditCardViewController *)self tableView];
  [tableView setDataSource:self];

  tableView2 = [(AFUICreditCardViewController *)self tableView];
  [tableView2 setDelegate:self];

  tableView3 = [(AFUICreditCardViewController *)self tableView];
  [tableView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(AFUICreditCardViewController *)self view];
  tableView4 = [(AFUICreditCardViewController *)self tableView];
  [view addSubview:tableView4];

  v17 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(AFUICreditCardViewController *)self setSelectedCellLabel:v17];

  selectedCellLabel = [(AFUICreditCardViewController *)self selectedCellLabel];
  [selectedCellLabel setTextAlignment:1];

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  selectedCellLabel2 = [(AFUICreditCardViewController *)self selectedCellLabel];
  [selectedCellLabel2 setTextColor:blackColor];

  v21 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] maximumContentSizeCategory:*MEMORY[0x1E69DDC60]];
  selectedCellLabel3 = [(AFUICreditCardViewController *)self selectedCellLabel];
  [selectedCellLabel3 setFont:v21];

  selectedCellLabel4 = [(AFUICreditCardViewController *)self selectedCellLabel];
  [selectedCellLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(AFUICreditCardViewController *)self view];
  selectedCellLabel5 = [(AFUICreditCardViewController *)self selectedCellLabel];
  [view2 addSubview:selectedCellLabel5];

  v26 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  view3 = [(AFUICreditCardViewController *)self view];
  [view3 addSubview:v26];

  systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  [v26 setBackgroundColor:systemGroupedBackgroundColor];

  v60 = MEMORY[0x1E696ACD8];
  topAnchor = [v26 topAnchor];
  view4 = [(AFUICreditCardViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v72 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v84[0] = v72;
  leadingAnchor = [v26 leadingAnchor];
  view5 = [(AFUICreditCardViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v64 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v84[1] = v64;
  trailingAnchor = [v26 trailingAnchor];
  view6 = [(AFUICreditCardViewController *)self view];
  trailingAnchor2 = [view6 trailingAnchor];
  v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v84[2] = v31;
  bottomAnchor = [v26 bottomAnchor];
  view7 = [(AFUICreditCardViewController *)self view];
  bottomAnchor2 = [view7 bottomAnchor];
  v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v84[3] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:4];
  [v60 activateConstraints:v36];

  layer = [v26 layer];
  [layer setCornerRadius:10.0];

  layer2 = [v26 layer];
  [layer2 setMasksToBounds:1];

  tableView5 = [(AFUICreditCardViewController *)self tableView];
  [v26 addSubview:tableView5];

  selectedCellLabel6 = [(AFUICreditCardViewController *)self selectedCellLabel];
  [v26 addSubview:selectedCellLabel6];

  v51 = MEMORY[0x1E696ACD8];
  tableView6 = [(AFUICreditCardViewController *)self tableView];
  topAnchor3 = [tableView6 topAnchor];
  topAnchor4 = [v26 topAnchor];
  v73 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v83[0] = v73;
  tableView7 = [(AFUICreditCardViewController *)self tableView];
  leadingAnchor3 = [tableView7 leadingAnchor];
  leadingAnchor4 = [v26 leadingAnchor];
  v65 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v83[1] = v65;
  tableView8 = [(AFUICreditCardViewController *)self tableView];
  trailingAnchor3 = [tableView8 trailingAnchor];
  trailingAnchor4 = [v26 trailingAnchor];
  v58 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v83[2] = v58;
  tableView9 = [(AFUICreditCardViewController *)self tableView];
  bottomAnchor3 = [tableView9 bottomAnchor];
  bottomAnchor4 = [v26 bottomAnchor];
  v54 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v83[3] = v54;
  selectedCellLabel7 = [(AFUICreditCardViewController *)self selectedCellLabel];
  topAnchor5 = [selectedCellLabel7 topAnchor];
  tableView10 = [(AFUICreditCardViewController *)self tableView];
  bottomAnchor5 = [tableView10 bottomAnchor];
  v44 = [topAnchor5 constraintEqualToAnchor:bottomAnchor5 constant:10.0];
  v83[4] = v44;
  selectedCellLabel8 = [(AFUICreditCardViewController *)self selectedCellLabel];
  centerXAnchor = [selectedCellLabel8 centerXAnchor];
  centerXAnchor2 = [v26 centerXAnchor];
  v48 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v83[5] = v48;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:6];
  [v51 activateConstraints:v49];

  objc_destroyWeak(&location);
  v50 = *MEMORY[0x1E69E9840];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  creditCards = [(AFUICreditCardViewController *)self creditCards];
  v7 = [creditCards count];

  if (v7 == section)
  {
    nickname = 0;
  }

  else
  {
    creditCards2 = [(AFUICreditCardViewController *)self creditCards];
    v10 = [creditCards2 objectAtIndexedSubscript:section];

    nickname = [v10 nickname];
  }

  return nickname;
}

- (id)createSectionHeaderViewWithTitle:(id)title icon:(CGImage *)icon
{
  v46[7] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69DD250];
  titleCopy = title;
  v8 = [v6 alloc];
  tableView = [(AFUICreditCardViewController *)self tableView];
  [tableView bounds];
  v10 = [v8 initWithFrame:{0.0, 0.0}];

  v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v12 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD40] maximumContentSizeCategory:*MEMORY[0x1E69DDC60]];
  [v11 setFont:v12];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [v11 setTextColor:labelColor];

  [v11 setText:titleCopy];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 setLineBreakMode:4];
  [v10 addSubview:v11];
  v14 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  v15 = [MEMORY[0x1E69DCAB8] imageWithCGImage:icon];
  [v14 setImage:v15];

  [v14 setContentMode:1];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  layer = [v14 layer];
  [layer setCornerRadius:4.0];

  layer2 = [v14 layer];
  [layer2 setMasksToBounds:1];

  [v10 addSubview:v14];
  Width = CGImageGetWidth(icon);
  Height = CGImageGetHeight(icon);
  v37 = MEMORY[0x1E696ACD8];
  leadingAnchor = [v11 leadingAnchor];
  leadingAnchor2 = [v10 leadingAnchor];
  v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v46[0] = v43;
  trailingAnchor = [v11 trailingAnchor];
  leadingAnchor3 = [v14 leadingAnchor];
  v40 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3];
  v46[1] = v40;
  heightAnchor = [v11 heightAnchor];
  heightAnchor2 = [v10 heightAnchor];
  v36 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v46[2] = v36;
  trailingAnchor2 = [v14 trailingAnchor];
  trailingAnchor3 = [v10 trailingAnchor];
  v33 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v46[3] = v33;
  topAnchor = [v14 topAnchor];
  v32 = v10;
  topAnchor2 = [v10 topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:6.0];
  v46[4] = v22;
  heightAnchor3 = [v14 heightAnchor];
  v24 = [heightAnchor3 constraintEqualToConstant:30.0];
  v46[5] = v24;
  widthAnchor = [v14 widthAnchor];
  v26 = widthAnchor;
  v27 = 36.0;
  if (Width == Height)
  {
    v27 = 30.0;
  }

  v28 = [widthAnchor constraintEqualToConstant:v27];
  v46[6] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:7];
  [v37 activateConstraints:v29];

  v30 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  creditCards = [(AFUICreditCardViewController *)self creditCards];
  v7 = [creditCards count];

  if (v7 == section)
  {
    v8 = 0;
  }

  else
  {
    creditCards2 = [(AFUICreditCardViewController *)self creditCards];
    v10 = [creditCards2 objectAtIndexedSubscript:section];

    nickname = [v10 nickname];
    v8 = -[AFUICreditCardViewController createSectionHeaderViewWithTitle:icon:](self, "createSectionHeaderViewWithTitle:icon:", nickname, [v10 image]);
  }

  return v8;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  headerViewCopy = headerView;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x1E69DC888];
    v6 = headerViewCopy;
    labelColor = [v5 labelColor];
    textLabel = [v6 textLabel];
    [textLabel setTextColor:labelColor];

    v9 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD40] maximumContentSizeCategory:*MEMORY[0x1E69DDC60]];
    textLabel2 = [v6 textLabel];

    [textLabel2 setFont:v9];
  }
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  creditCards = [(AFUICreditCardViewController *)self creditCards];
  v6 = [creditCards count];

  result = 44.0;
  if (v6 == section)
  {
    return 0.0;
  }

  return result;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  creditCards = [(AFUICreditCardViewController *)self creditCards];
  v7 = [creditCards count];

  if (section == v7)
  {
    [(AFUICreditCardViewController *)self manageCreditCardsButtonTapped:0];
    goto LABEL_14;
  }

  creditCards2 = [(AFUICreditCardViewController *)self creditCards];
  v9 = [creditCards2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  v10 = [pathCopy row];
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      expiration = [v9 expiration];
      goto LABEL_12;
    }

    if (v10 == 3)
    {
      expiration = [v9 securityCode];
      goto LABEL_12;
    }
  }

  else
  {
    if (!v10)
    {
      expiration = [v9 name];
      goto LABEL_12;
    }

    if (v10 == 1)
    {
      expiration = [v9 number];
LABEL_12:
      v12 = expiration;
      [(AFUICreditCardViewController *)self handleTextInsertion:expiration];
    }
  }

LABEL_14:
}

- (void)handleTextInsertion:(id)insertion
{
  v4 = MEMORY[0x1E69C6FA8];
  insertionCopy = insertion;
  v10 = objc_alloc_init(v4);
  v6 = [MEMORY[0x1E695DF90] dictionaryWithObject:insertionCopy forKey:@"textToAssert"];
  keyboardOutput = [v10 keyboardOutput];
  [keyboardOutput setCustomInfo:v6];

  documentTraits = [(AFUICreditCardViewController *)self documentTraits];
  [v10 _assertOrInsertText:insertionCopy documentTraits:documentTraits];

  performTextOperations = [(AFUICreditCardViewController *)self performTextOperations];
  (performTextOperations)[2](performTextOperations, v10);
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  creditCards = [(AFUICreditCardViewController *)self creditCards];
  v4 = [creditCards count];

  return v4 + 1;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  creditCards = [(AFUICreditCardViewController *)self creditCards];
  v6 = [creditCards count];

  if (v6 == section)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  section = [pathCopy section];
  creditCards = [(AFUICreditCardViewController *)self creditCards];
  v10 = [creditCards count];

  if (section != v10)
  {
    v11 = [viewCopy dequeueReusableCellWithIdentifier:@"CreditCardCell"];

    if (!v11)
    {
      v11 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"CreditCardCell"];
      [v11 setSelectionStyle:0];
    }

    creditCards2 = [(AFUICreditCardViewController *)self creditCards];
    systemBlueColor2 = [creditCards2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

    v18 = [pathCopy row];
    if (v18 > 1)
    {
      if (v18 != 2)
      {
        if (v18 == 3)
        {
          v26 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          v27 = [v26 localizedStringForKey:@"Security Code" value:&stru_1F4E9A028 table:@"Localizable"];
          textLabel = [v11 textLabel];
          [textLabel setText:v27];

          detailTextLabel = [v11 detailTextLabel];
          [detailTextLabel setText:@"•••"];
LABEL_17:

          goto LABEL_18;
        }

        goto LABEL_18;
      }

      v33 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v34 = [v33 localizedStringForKey:@"Expiration" value:&stru_1F4E9A028 table:@"Localizable"];
      textLabel2 = [v11 textLabel];
      [textLabel2 setText:v34];

      expiration = [systemBlueColor2 expiration];
    }

    else
    {
      if (v18)
      {
        if (v18 == 1)
        {
          v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          v20 = [v19 localizedStringForKey:@"Card Number" value:&stru_1F4E9A028 table:@"Localizable"];
          textLabel3 = [v11 textLabel];
          [textLabel3 setText:v20];

          v22 = MEMORY[0x1E696AEC0];
          detailTextLabel = [systemBlueColor2 suffix];
          detailTextLabel4 = [v22 stringWithFormat:@"•••• •••• •••• %@", detailTextLabel];
          detailTextLabel2 = [v11 detailTextLabel];
          [detailTextLabel2 setText:detailTextLabel4];

LABEL_16:
          goto LABEL_17;
        }

LABEL_18:
        labelColor = [MEMORY[0x1E69DC888] labelColor];
        textLabel4 = [v11 textLabel];
        [textLabel4 setTextColor:labelColor];

        systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
        detailTextLabel3 = [v11 detailTextLabel];
        [detailTextLabel3 setTextColor:systemBlueColor];

        goto LABEL_19;
      }

      v29 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v30 = [v29 localizedStringForKey:@"Name on Card" value:&stru_1F4E9A028 table:@"Localizable"];
      textLabel5 = [v11 textLabel];
      [textLabel5 setText:v30];

      expiration = [systemBlueColor2 name];
    }

    detailTextLabel = expiration;
    detailTextLabel4 = [v11 detailTextLabel];
    [detailTextLabel4 setText:detailTextLabel];
    goto LABEL_16;
  }

  v11 = [viewCopy dequeueReusableCellWithIdentifier:@"ButtonCell"];

  if (v11)
  {
    goto LABEL_20;
  }

  v11 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"ButtonCell"];
  v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"Manage Cards" value:&stru_1F4E9A028 table:@"Localizable"];
  textLabel6 = [v11 textLabel];
  [textLabel6 setText:v13];

  systemBlueColor2 = [MEMORY[0x1E69DC888] systemBlueColor];
  systemBlueColor = [v11 textLabel];
  [systemBlueColor setTextColor:systemBlueColor2];
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
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  urlToListOfCards = [v4 urlToListOfCards];
  [defaultWorkspace openSensitiveURL:urlToListOfCards withOptions:0];
}

- (void)manageCreditCardsButtonTapped:(id)tapped
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