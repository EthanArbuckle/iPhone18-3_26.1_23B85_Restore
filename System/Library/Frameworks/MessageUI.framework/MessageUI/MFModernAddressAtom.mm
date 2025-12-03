@interface MFModernAddressAtom
+ (id)copyDisplayStringForAddress:(id)address usingAddressBook:(void *)book useAbbreviatedName:(BOOL)name;
- (BOOL)respondsToSelector:(SEL)selector;
- (CGPoint)baselinePoint;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MFModernAddressAtom)initWithAddress:(id)address isPhoneNumber:(BOOL)number maxWidth:(double)width addressBook:(void *)book;
- (NSString)description;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)emailAddress;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)presentationOptionsDescription;
- (int)ABPropertyType;
- (int64_t)numberOfLines;
- (void)ABPerson;
- (void)_displayStringDidChange;
- (void)_updateABPerson;
- (void)_updateDisplayStringIncludingABPerson:(BOOL)person;
- (void)addressBookDidChange:(id)change;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAddress:(id)address;
- (void)setAtomFont:(id)font;
- (void)setEnabled:(BOOL)enabled;
- (void)setFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIsPrimaryAddressAtom:(BOOL)atom;
- (void)setLabelAlpha:(double)alpha;
- (void)setOpaque:(BOOL)opaque;
- (void)setPresentationOptions:(unint64_t)options;
- (void)setScale:(double)scale;
@end

@implementation MFModernAddressAtom

+ (id)copyDisplayStringForAddress:(id)address usingAddressBook:(void *)book useAbbreviatedName:(BOOL)name
{
  nameCopy = name;
  addressCopy = address;
  emailAddressValue = [addressCopy emailAddressValue];
  v9 = emailAddressValue;
  if (emailAddressValue)
  {
    em_displayableString = [emailAddressValue em_displayableString];
    [v9 simpleAddress];
    if (nameCopy)
      v11 = {;
      MFPreferredAbbreviatedNameForAddressAndDisplayName(book, v11, em_displayableString, 0);
    }

    else
      v11 = {;
      MFPreferredCompositeNameForAddressAndDisplayName(book, v11, em_displayableString, 0);
    }
    v13 = ;
  }

  else
  {
    em_displayableString = [addressCopy stringValue];
    if ([em_displayableString containsString:&stru_1F3CFAD78])
    {
      v12 = [em_displayableString stringByReplacingOccurrencesOfString:&stru_1F3CFAD78 withString:&stru_1F3CF3758];
    }

    else
    {
      v12 = em_displayableString;
      em_displayableString = v12;
    }

    v13 = v12;
  }

  return v13;
}

- (MFModernAddressAtom)initWithAddress:(id)address isPhoneNumber:(BOOL)number maxWidth:(double)width addressBook:(void *)book
{
  addressCopy = address;
  [MEMORY[0x1E6996398] defaultHeight];
  v14 = v13;
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFModernAddressAtom.m" lineNumber:118 description:@"Current thread must be main"];
  }

  v15 = *MEMORY[0x1E695EFF8];
  v16 = *(MEMORY[0x1E695EFF8] + 8);
  v28.receiver = self;
  v28.super_class = MFModernAddressAtom;
  v17 = [(MFModernAddressAtom *)&v28 initWithFrame:v15, v16, 30.0, v14];
  v18 = v17;
  v19 = v17;
  if (v17)
  {
    v17->_maxWidth = width;
    [(MFModernAddressAtom *)v17 setOpaque:0];
    [(MFModernAddressAtom *)v19 setAutoresizesSubviews:1];
    if (MFSolariumFeatureEnabled())
    {
      v20 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:v19];
      [(MFModernAddressAtom *)v19 addInteraction:v20];
      [(MFModernAddressAtom *)v19 setContextMenuInteractionEnabled:1];
      [(MFModernAddressAtom *)v19 setShowsMenuAsPrimaryAction:1];
    }

    *(v19 + 504) = *(v19 + 504) & 0xFE | number;
    objc_storeStrong(&v18->_fullAddress, address);
    if (book)
    {
      v21 = CFRetain(book);
    }

    else
    {
      v21 = 0;
    }

    v19->_addressBook = v21;
    [(MFModernAddressAtom *)v19 _updateDisplayStringIncludingABPerson:1];
    v22 = objc_alloc(MEMORY[0x1E6996398]);
    [(MFModernAddressAtom *)v19 bounds];
    v23 = [v22 initWithFrame:0 presentationOptions:1 separatorStyle:1 wrappingSupported:?];
    atomView = v19->_atomView;
    v19->_atomView = v23;

    [(CNAtomView *)v19->_atomView setUserInteractionEnabled:0];
    [(CNAtomView *)v19->_atomView setAutoresizingMask:2];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(CNAtomView *)v19->_atomView setBackgroundColor:clearColor];

    [(MFModernAddressAtom *)v19 addSubview:v19->_atomView];
    [(MFModernAddressAtom *)v19 _displayStringDidChange];
  }

  return v19;
}

- (int64_t)numberOfLines
{
  titleLabel = [(CNAtomView *)self->_atomView titleLabel];
  [titleLabel bounds];
  v5 = v4;
  titleLabel2 = [(CNAtomView *)self->_atomView titleLabel];
  font = [titleLabel2 font];
  [font lineHeight];
  v9 = v5 / v8;

  v10 = floor(v9);
  v11 = ceil(v9);
  if (v9 - v10 >= 0.25)
  {
    return v11;
  }

  return v10;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v5.receiver = self;
  v5.super_class = MFModernAddressAtom;
  if ([(MFModernAddressAtom *)&v5 respondsToSelector:?])
  {
    v3 = 1;
  }

  else
  {
    v3 = objc_opt_respondsToSelector();
  }

  return v3 & 1;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = MFModernAddressAtom;
  v5 = [(MFModernAddressAtom *)&v7 methodSignatureForSelector:?];
  if (!v5)
  {
    v5 = [(CNAtomView *)self->_atomView methodSignatureForSelector:selector];
  }

  return v5;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = MFModernAddressAtom;
  [(MFModernAddressAtom *)&v6 setEnabled:?];
  if (enabledCopy)
  {
    [(CNAtomView *)self->_atomView setTintColor:0];
  }

  else
  {
    mailModernLabelledAddressAtomDefaultTextColor = [MEMORY[0x1E69DC888] mailModernLabelledAddressAtomDefaultTextColor];
    [(CNAtomView *)self->_atomView setTintColor:mailModernLabelledAddressAtomDefaultTextColor];
  }
}

- (NSString)description
{
  v16.receiver = self;
  v16.super_class = MFModernAddressAtom;
  v3 = [(MFModernAddressAtom *)&v16 description];
  v4 = [v3 componentsSeparatedByString:@""];;
  v5 = [v4 mutableCopy];

  v6 = MEMORY[0x1E696AEC0];
  presentationOptionsDescription = [(MFModernAddressAtom *)self presentationOptionsDescription];
  v8 = [v6 stringWithFormat:@" presentation = %@", presentationOptionsDescription];
  [v5 insertObject:v8 atIndex:1];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@" address = “%@”", self->_fullAddress];
  [v5 insertObject:v9 atIndex:1];

  if (self->_identifier >= 1)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@" person = %d", self->_identifier];
    [v5 insertObject:v10 atIndex:1];
  }

  if ([(NSString *)self->_displayString length])
  {
    v11 = MEMORY[0x1E696AEC0];
    displayString = [(MFModernAddressAtom *)self displayString];
    v13 = [v11 stringWithFormat:@" name = “%@”", displayString];

    [v5 insertObject:v13 atIndex:1];
  }

  else
  {
    [v5 insertObject:@" name = nil" atIndex:1];
  }

  v14 = [v5 componentsJoinedByString:@""];;

  return v14;
}

- (id)presentationOptionsDescription
{
  presentationOptions = [(MFModernAddressAtom *)self presentationOptions];
  if (presentationOptions)
  {
    v3 = presentationOptions;
    array = [MEMORY[0x1E695DF70] array];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __53__MFModernAddressAtom_presentationOptionsDescription__block_invoke;
    v12 = &unk_1E80703F8;
    v14 = v3;
    v5 = array;
    v13 = v5;
    v6 = _Block_copy(&v9);
    v6[2](v6, 1, @"failure");
    v6[2](v6, 2, @"sms");
    v6[2](v6, 8, @"disabled");
    v6[2](v6, 16, @"VIP");
    v6[2](v6, 32, @"signed");
    v6[2](v6, 64, @"insecure");
    v6[2](v6, 128, @"secure");
    v6[2](v6, 256, @"unverified");
    v6[2](v6, 512, @"pending (leading)");
    v6[2](v6, 4, @"pending (trailing)");
    v6[2](v6, 1024, @"available");
    v6[2](v6, 2048, @"unavailable");
    v6[2](v6, 4096, @"unknown availability");
    v7 = [v5 componentsJoinedByString:{@" + ", v9, v10, v11, v12}];
  }

  else
  {
    v7 = @"none";
  }

  return v7;
}

void __53__MFModernAddressAtom_presentationOptionsDescription__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((*(a1 + 40) & a2) != 0)
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (void)addressBookDidChange:(id)change
{
  [(MFModernAddressAtom *)self _updateDisplayStringIncludingABPerson:1];

  [(MFModernAddressAtom *)self _displayStringDidChange];
}

- (void)dealloc
{
  addressBook = self->_addressBook;
  if (addressBook)
  {
    CFRelease(addressBook);
  }

  person = self->_person;
  if (person)
  {
    CFRelease(person);
  }

  v5.receiver = self;
  v5.super_class = MFModernAddressAtom;
  [(MFModernAddressAtom *)&v5 dealloc];
}

- (void)setFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = MFModernAddressAtom;
  [(MFModernAddressAtom *)&v5 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  atomView = self->_atomView;
  [(MFModernAddressAtom *)self bounds];
  [(CNAtomView *)atomView setFrame:?];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MFModernAddressAtom;
  [(MFModernAddressAtom *)&v3 layoutSubviews];
  [(CNAtomView *)self->_atomView sizeToFit];
  [(MFModernAddressAtom *)self sizeToFit];
}

- (void)setPresentationOptions:(unint64_t)options
{
  [(CNAtomView *)self->_atomView setPresentationOptions:options];

  [(MFModernAddressAtom *)self sizeToFit];
}

- (void)setScale:(double)scale
{
  [(CNAtomView *)self->_atomView setScale:?];
  [(MFModernAddressAtom *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [MEMORY[0x1E6996398] defaultHeight];
  [(MFModernAddressAtom *)self setFrame:v6, v8, v10, v11 * scale];

  [(MFModernAddressAtom *)self sizeToFit];
}

- (void)setIsPrimaryAddressAtom:(BOOL)atom
{
  [(CNAtomView *)self->_atomView setIsPrimaryAddressAtom:atom];

  [(MFModernAddressAtom *)self sizeToFit];
}

- (CGPoint)baselinePoint
{
  [(CNAtomView *)self->_atomView baselinePoint];
  atomView = self->_atomView;

  [(MFModernAddressAtom *)self convertPoint:atomView fromView:?];
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)setAtomFont:(id)font
{
  fontCopy = font;
  [(CNAtomView *)self->_atomView setTitleFont:?];
  [(MFModernAddressAtom *)self sizeToFit];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  atomView = self->_atomView;
  if (IsAccessibilityCategory)
  {
    LODWORD(v6) = self->_maxWidth;
    v8 = v6;

    [(CNAtomView *)atomView sizeThatFits:v8, 1.79769313e308];
  }

  else
  {
    titleFont = [(CNAtomView *)atomView titleFont];
    [titleFont lineHeight];
    v13 = v12;
    titleFont2 = [(CNAtomView *)self->_atomView titleFont];
    [titleFont2 descender];
    v16 = round(v13 - v15);

    v17 = self->_atomView;
    LODWORD(v18) = self->_maxWidth;
    v19 = v18;
    [(CNAtomView *)v17 frame];
    [(CNAtomView *)v17 preferredWidthWithSizeConstraints:v19, v20];
    v10 = v16;
  }

  result.height = v10;
  result.width = v9;
  return result;
}

- (void)_updateABPerson
{
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFModernAddressAtom.m" lineNumber:345 description:@"Current thread must be main"];
  }

  person = self->_person;
  if (person)
  {
    CFRelease(person);
  }

  if (self->_addressBook)
  {
    fullAddress = self->_fullAddress;
    if (*(self + 504))
    {
      stringValue = [(ECEmailAddressConvertible *)fullAddress stringValue];
      if ([stringValue length])
      {
        v8 = ABCFindPersonMatchingPhoneNumber();
        goto LABEL_11;
      }
    }

    else
    {
      emailAddressValue = [(ECEmailAddressConvertible *)fullAddress emailAddressValue];
      stringValue = [emailAddressValue simpleAddress];

      if ([stringValue length])
      {
        v8 = ABCFindPersonMatchingEmailAddress();
LABEL_11:
        self->_person = v8;
      }
    }
  }

  self->_person = 0;
  self->_identifier = 0;
  *(self + 504) |= 2u;
}

- (id)emailAddress
{
  emailAddressValue = [(ECEmailAddressConvertible *)self->_fullAddress emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];

  return simpleAddress;
}

- (void)setAddress:(id)address
{
  addressCopy = address;
  if (self->_fullAddress != addressCopy)
  {
    objc_storeStrong(&self->_fullAddress, address);
    *(self + 504) &= ~1u;
    [(MFModernAddressAtom *)self _updateDisplayStringIncludingABPerson:0];
    *(self + 504) |= 2u;
    [(MFModernAddressAtom *)self _displayStringDidChange];
  }
}

- (void)_displayStringDidChange
{
  atomView = self->_atomView;
  displayString = [(MFModernAddressAtom *)self displayString];
  [(CNAtomView *)atomView setTitle:?];

  [(CNAtomView *)self->_atomView layoutSubviews];
  [(MFModernAddressAtom *)self sizeToFit];
  [(MFModernAddressAtom *)self setNeedsDisplay];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    displayString2 = [(MFModernAddressAtom *)self displayString];
    [WeakRetained addressAtom:self displayStringDidChange:displayString2];
  }
}

- (void)_updateDisplayStringIncludingABPerson:(BOOL)person
{
  personCopy = person;
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFModernAddressAtom.m" lineNumber:416 description:@"Current thread must be main"];
  }

  displayString = self->_displayString;
  self->_displayString = 0;

  *(self + 504) &= ~4u;
  if (personCopy)
  {
    [(MFModernAddressAtom *)self _updateABPerson];
  }

  if (!self->_displayString)
  {
    emailAddressValue = [(ECEmailAddressConvertible *)self->_fullAddress emailAddressValue];
    displayName = [emailAddressValue displayName];
    if ([displayName isEqualToString:@"Hide My Email"])
    {
      domain = [emailAddressValue domain];
      v9 = [domain isEqualToString:@"icloud.com"];

      if (v9)
      {
        stringValue = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.messageui"];
        v11 = [stringValue localizedStringForKey:@"HIDE_MY_EMAIL_TITLE" value:&stru_1F3CF3758 table:@"Main"];
        v12 = self->_displayString;
        self->_displayString = v11;

LABEL_14:

        return;
      }
    }

    else
    {
    }

    if (*(self + 504))
    {
      stringValue = [(ECEmailAddressConvertible *)self->_fullAddress stringValue];
      v14 = CPPhoneNumberCopyFormattedStringForTextMessage();
      v15 = self->_displayString;
      self->_displayString = v14;

      if (!self->_displayString)
      {
        objc_storeStrong(&self->_displayString, stringValue);
      }
    }

    else
    {
      v13 = [objc_opt_class() copyDisplayStringForAddress:self->_fullAddress usingAddressBook:0 useAbbreviatedName:0];
      stringValue = self->_displayString;
      self->_displayString = v13;
    }

    goto LABEL_14;
  }
}

- (void)ABPerson
{
  if ((*(self + 504) & 2) == 0)
  {
    [(MFModernAddressAtom *)self _updateABPerson];
  }

  return self->_person;
}

- (int)ABPropertyType
{
  if (*(self + 504))
  {
    v2 = MEMORY[0x1E698A198];
  }

  else
  {
    v2 = MEMORY[0x1E698A148];
  }

  return *v2;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(MFModernAddressAtom *)self isHighlighted]!= highlighted)
  {
    v8.receiver = self;
    v8.super_class = MFModernAddressAtom;
    [(MFModernAddressAtom *)&v8 setHighlighted:highlightedCopy];
    atomView = self->_atomView;
    if (highlightedCopy)
    {
      [(CNAtomView *)atomView setSelected:1 animated:1];
    }

    else
    {
      __mui_nextRunLoopMainThreadScheduler = [MEMORY[0x1E699B978] __mui_nextRunLoopMainThreadScheduler];
      v7 = [(CNAtomView *)atomView ef_onScheduler:__mui_nextRunLoopMainThreadScheduler];
      [v7 setSelected:0 animated:1];
    }
  }
}

- (void)setOpaque:(BOOL)opaque
{
  opaqueCopy = opaque;
  v6.receiver = self;
  v6.super_class = MFModernAddressAtom;
  [(MFModernAddressAtom *)&v6 setOpaque:?];
  if (opaqueCopy)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] clearColor];
  }
  v5 = ;
  [(MFModernAddressAtom *)self setBackgroundColor:v5];
}

- (void)setLabelAlpha:(double)alpha
{
  titleLabel = [(CNAtomView *)self->_atomView titleLabel];
  [titleLabel setAlpha:alpha];
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__MFModernAddressAtom_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v6[3] = &unk_1E8070440;
  v6[4] = self;
  v4 = [MEMORY[0x1E69DC8D8] configurationWithIdentifier:0 previewProvider:0 actionProvider:v6];

  return v4;
}

id __77__MFModernAddressAtom_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  objc_initWeak(&location, *(a1 + 32));
  v3 = MEMORY[0x1E69DC628];
  v4 = [*v2 displayString];
  v32 = [v3 actionWithTitle:v4 image:0 identifier:0 handler:&__block_literal_global_28];

  v5 = [*(a1 + 32) emailAddress];
  [v32 setSubtitle:v5];

  v6 = MEMORY[0x1E69DCC60];
  v41[0] = v32;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
  v30 = [v6 menuWithTitle:&stru_1F3CF3758 image:0 identifier:0 options:1 children:v7];

  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.messageui"];
  v31 = [v8 localizedStringForKey:@"CopyAddress" value:&stru_1F3CF3758 table:@"Main"];

  v9 = MEMORY[0x1E69DC628];
  v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"document.on.document"];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __77__MFModernAddressAtom_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_3;
  v37[3] = &unk_1E806D678;
  objc_copyWeak(&v38, &location);
  v11 = [v9 actionWithTitle:v31 image:v10 identifier:0 handler:v37];

  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.messageui"];
  v13 = [v12 localizedStringForKey:@"SearchForPersonFormat%1$@" value:&stru_1F3CF3758 table:@"Main"];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [*(a1 + 32) displayString];
  v16 = v15;
  if (!v15)
  {
    v16 = [*(a1 + 32) emailAddress];
  }

  v17 = [v14 localizedStringWithFormat:v13, v16];
  if (!v15)
  {
  }

  v18 = MEMORY[0x1E69DC628];
  v19 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"magnifyingglass"];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __77__MFModernAddressAtom_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_4;
  v35[3] = &unk_1E806D678;
  objc_copyWeak(&v36, &location);
  v20 = [v18 actionWithTitle:v17 image:v19 identifier:0 handler:v35];

  v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.messageui"];
  v22 = [v21 localizedStringForKey:@"ViewContactCard" value:&stru_1F3CF3758 table:@"Main"];

  v23 = MEMORY[0x1E69DC628];
  v24 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.circle"];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __77__MFModernAddressAtom_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_5;
  v33[3] = &unk_1E806D678;
  objc_copyWeak(&v34, &location);
  v25 = [v23 actionWithTitle:v22 image:v24 identifier:0 handler:v33];

  v26 = MEMORY[0x1E69DCC60];
  v40[0] = v30;
  v40[1] = v11;
  v40[2] = v20;
  v40[3] = v25;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
  v28 = [v26 menuWithChildren:v27];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&v36);

  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);

  return v28;
}

void __77__MFModernAddressAtom_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained emailAddress];
    v3 = [MEMORY[0x1E69DCD50] generalPasteboard];
    [v3 setString:v2];

    WeakRetained = v4;
  }
}

void __77__MFModernAddressAtom_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = objc_opt_new();
    v3 = [v6 emailAddress];
    [v2 ef_addOptionalObject:v3];

    v4 = objc_loadWeakRetained(v6 + 57);
    v5 = [v6 displayString];
    [v4 addressAtom:v6 searchForDisplayName:v5 emailAddresses:v2];

    WeakRetained = v6;
  }
}

void __77__MFModernAddressAtom_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 57);
    [v2 displayContactCardForAddressAtom:v3];

    WeakRetained = v3;
  }
}

@end