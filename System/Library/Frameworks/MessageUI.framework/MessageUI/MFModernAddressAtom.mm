@interface MFModernAddressAtom
+ (id)copyDisplayStringForAddress:(id)a3 usingAddressBook:(void *)a4 useAbbreviatedName:(BOOL)a5;
- (BOOL)respondsToSelector:(SEL)a3;
- (CGPoint)baselinePoint;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MFModernAddressAtom)initWithAddress:(id)a3 isPhoneNumber:(BOOL)a4 maxWidth:(double)a5 addressBook:(void *)a6;
- (NSString)description;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)emailAddress;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)presentationOptionsDescription;
- (int)ABPropertyType;
- (int64_t)numberOfLines;
- (void)ABPerson;
- (void)_displayStringDidChange;
- (void)_updateABPerson;
- (void)_updateDisplayStringIncludingABPerson:(BOOL)a3;
- (void)addressBookDidChange:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAddress:(id)a3;
- (void)setAtomFont:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setIsPrimaryAddressAtom:(BOOL)a3;
- (void)setLabelAlpha:(double)a3;
- (void)setOpaque:(BOOL)a3;
- (void)setPresentationOptions:(unint64_t)a3;
- (void)setScale:(double)a3;
@end

@implementation MFModernAddressAtom

+ (id)copyDisplayStringForAddress:(id)a3 usingAddressBook:(void *)a4 useAbbreviatedName:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = [v7 emailAddressValue];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 em_displayableString];
    [v9 simpleAddress];
    if (v5)
      v11 = {;
      MFPreferredAbbreviatedNameForAddressAndDisplayName(a4, v11, v10, 0);
    }

    else
      v11 = {;
      MFPreferredCompositeNameForAddressAndDisplayName(a4, v11, v10, 0);
    }
    v13 = ;
  }

  else
  {
    v10 = [v7 stringValue];
    if ([v10 containsString:&stru_1F3CFAD78])
    {
      v12 = [v10 stringByReplacingOccurrencesOfString:&stru_1F3CFAD78 withString:&stru_1F3CF3758];
    }

    else
    {
      v12 = v10;
      v10 = v12;
    }

    v13 = v12;
  }

  return v13;
}

- (MFModernAddressAtom)initWithAddress:(id)a3 isPhoneNumber:(BOOL)a4 maxWidth:(double)a5 addressBook:(void *)a6
{
  v12 = a3;
  [MEMORY[0x1E6996398] defaultHeight];
  v14 = v13;
  if (pthread_main_np() != 1)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"MFModernAddressAtom.m" lineNumber:118 description:@"Current thread must be main"];
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
    v17->_maxWidth = a5;
    [(MFModernAddressAtom *)v17 setOpaque:0];
    [(MFModernAddressAtom *)v19 setAutoresizesSubviews:1];
    if (MFSolariumFeatureEnabled())
    {
      v20 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:v19];
      [(MFModernAddressAtom *)v19 addInteraction:v20];
      [(MFModernAddressAtom *)v19 setContextMenuInteractionEnabled:1];
      [(MFModernAddressAtom *)v19 setShowsMenuAsPrimaryAction:1];
    }

    *(v19 + 504) = *(v19 + 504) & 0xFE | a4;
    objc_storeStrong(&v18->_fullAddress, a3);
    if (a6)
    {
      v21 = CFRetain(a6);
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
    v25 = [MEMORY[0x1E69DC888] clearColor];
    [(CNAtomView *)v19->_atomView setBackgroundColor:v25];

    [(MFModernAddressAtom *)v19 addSubview:v19->_atomView];
    [(MFModernAddressAtom *)v19 _displayStringDidChange];
  }

  return v19;
}

- (int64_t)numberOfLines
{
  v3 = [(CNAtomView *)self->_atomView titleLabel];
  [v3 bounds];
  v5 = v4;
  v6 = [(CNAtomView *)self->_atomView titleLabel];
  v7 = [v6 font];
  [v7 lineHeight];
  v9 = v5 / v8;

  v10 = floor(v9);
  v11 = ceil(v9);
  if (v9 - v10 >= 0.25)
  {
    return v11;
  }

  return v10;
}

- (BOOL)respondsToSelector:(SEL)a3
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

- (id)methodSignatureForSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = MFModernAddressAtom;
  v5 = [(MFModernAddressAtom *)&v7 methodSignatureForSelector:?];
  if (!v5)
  {
    v5 = [(CNAtomView *)self->_atomView methodSignatureForSelector:a3];
  }

  return v5;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = MFModernAddressAtom;
  [(MFModernAddressAtom *)&v6 setEnabled:?];
  if (v3)
  {
    [(CNAtomView *)self->_atomView setTintColor:0];
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] mailModernLabelledAddressAtomDefaultTextColor];
    [(CNAtomView *)self->_atomView setTintColor:v5];
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
  v7 = [(MFModernAddressAtom *)self presentationOptionsDescription];
  v8 = [v6 stringWithFormat:@" presentation = %@", v7];
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
    v12 = [(MFModernAddressAtom *)self displayString];
    v13 = [v11 stringWithFormat:@" name = “%@”", v12];

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
  v2 = [(MFModernAddressAtom *)self presentationOptions];
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x1E695DF70] array];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __53__MFModernAddressAtom_presentationOptionsDescription__block_invoke;
    v12 = &unk_1E80703F8;
    v14 = v3;
    v5 = v4;
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

- (void)addressBookDidChange:(id)a3
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

- (void)setFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = MFModernAddressAtom;
  [(MFModernAddressAtom *)&v5 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setPresentationOptions:(unint64_t)a3
{
  [(CNAtomView *)self->_atomView setPresentationOptions:a3];

  [(MFModernAddressAtom *)self sizeToFit];
}

- (void)setScale:(double)a3
{
  [(CNAtomView *)self->_atomView setScale:?];
  [(MFModernAddressAtom *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [MEMORY[0x1E6996398] defaultHeight];
  [(MFModernAddressAtom *)self setFrame:v6, v8, v10, v11 * a3];

  [(MFModernAddressAtom *)self sizeToFit];
}

- (void)setIsPrimaryAddressAtom:(BOOL)a3
{
  [(CNAtomView *)self->_atomView setIsPrimaryAddressAtom:a3];

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

- (void)setAtomFont:(id)a3
{
  v4 = a3;
  [(CNAtomView *)self->_atomView setTitleFont:?];
  [(MFModernAddressAtom *)self sizeToFit];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  atomView = self->_atomView;
  if (IsAccessibilityCategory)
  {
    LODWORD(v6) = self->_maxWidth;
    v8 = v6;

    [(CNAtomView *)atomView sizeThatFits:v8, 1.79769313e308];
  }

  else
  {
    v11 = [(CNAtomView *)atomView titleFont];
    [v11 lineHeight];
    v13 = v12;
    v14 = [(CNAtomView *)self->_atomView titleFont];
    [v14 descender];
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
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MFModernAddressAtom.m" lineNumber:345 description:@"Current thread must be main"];
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
      v7 = [(ECEmailAddressConvertible *)fullAddress stringValue];
      if ([v7 length])
      {
        v8 = ABCFindPersonMatchingPhoneNumber();
        goto LABEL_11;
      }
    }

    else
    {
      v6 = [(ECEmailAddressConvertible *)fullAddress emailAddressValue];
      v7 = [v6 simpleAddress];

      if ([v7 length])
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
  v2 = [(ECEmailAddressConvertible *)self->_fullAddress emailAddressValue];
  v3 = [v2 simpleAddress];

  return v3;
}

- (void)setAddress:(id)a3
{
  v5 = a3;
  if (self->_fullAddress != v5)
  {
    objc_storeStrong(&self->_fullAddress, a3);
    *(self + 504) &= ~1u;
    [(MFModernAddressAtom *)self _updateDisplayStringIncludingABPerson:0];
    *(self + 504) |= 2u;
    [(MFModernAddressAtom *)self _displayStringDidChange];
  }
}

- (void)_displayStringDidChange
{
  atomView = self->_atomView;
  v5 = [(MFModernAddressAtom *)self displayString];
  [(CNAtomView *)atomView setTitle:?];

  [(CNAtomView *)self->_atomView layoutSubviews];
  [(MFModernAddressAtom *)self sizeToFit];
  [(MFModernAddressAtom *)self setNeedsDisplay];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [(MFModernAddressAtom *)self displayString];
    [WeakRetained addressAtom:self displayStringDidChange:v4];
  }
}

- (void)_updateDisplayStringIncludingABPerson:(BOOL)a3
{
  v3 = a3;
  if (pthread_main_np() != 1)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MFModernAddressAtom.m" lineNumber:416 description:@"Current thread must be main"];
  }

  displayString = self->_displayString;
  self->_displayString = 0;

  *(self + 504) &= ~4u;
  if (v3)
  {
    [(MFModernAddressAtom *)self _updateABPerson];
  }

  if (!self->_displayString)
  {
    v16 = [(ECEmailAddressConvertible *)self->_fullAddress emailAddressValue];
    v7 = [v16 displayName];
    if ([v7 isEqualToString:@"Hide My Email"])
    {
      v8 = [v16 domain];
      v9 = [v8 isEqualToString:@"icloud.com"];

      if (v9)
      {
        v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.messageui"];
        v11 = [v10 localizedStringForKey:@"HIDE_MY_EMAIL_TITLE" value:&stru_1F3CF3758 table:@"Main"];
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
      v10 = [(ECEmailAddressConvertible *)self->_fullAddress stringValue];
      v14 = CPPhoneNumberCopyFormattedStringForTextMessage();
      v15 = self->_displayString;
      self->_displayString = v14;

      if (!self->_displayString)
      {
        objc_storeStrong(&self->_displayString, v10);
      }
    }

    else
    {
      v13 = [objc_opt_class() copyDisplayStringForAddress:self->_fullAddress usingAddressBook:0 useAbbreviatedName:0];
      v10 = self->_displayString;
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

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(MFModernAddressAtom *)self isHighlighted]!= a3)
  {
    v8.receiver = self;
    v8.super_class = MFModernAddressAtom;
    [(MFModernAddressAtom *)&v8 setHighlighted:v3];
    atomView = self->_atomView;
    if (v3)
    {
      [(CNAtomView *)atomView setSelected:1 animated:1];
    }

    else
    {
      v6 = [MEMORY[0x1E699B978] __mui_nextRunLoopMainThreadScheduler];
      v7 = [(CNAtomView *)atomView ef_onScheduler:v6];
      [v7 setSelected:0 animated:1];
    }
  }
}

- (void)setOpaque:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = MFModernAddressAtom;
  [(MFModernAddressAtom *)&v6 setOpaque:?];
  if (v3)
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

- (void)setLabelAlpha:(double)a3
{
  v4 = [(CNAtomView *)self->_atomView titleLabel];
  [v4 setAlpha:a3];
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
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