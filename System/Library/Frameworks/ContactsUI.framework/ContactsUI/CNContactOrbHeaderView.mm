@interface CNContactOrbHeaderView
+ (id)descriptorForRequiredKeysForContactFormatter:(id)formatter includingAvatarViewDescriptors:(BOOL)descriptors;
+ (id)descriptorForRequiredKeysIncludingAvatarViewDescriptors:(BOOL)descriptors;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (CNContactOrbHeaderView)initWithContact:(id)contact frame:(CGRect)frame;
- (UIEdgeInsets)contentMargins;
- (id)_headerStringForContacts:(id)contacts;
- (id)_taglineStringForContacts:(id)contacts;
- (void)copy:(id)copy;
- (void)dealloc;
- (void)handleNameLabelLongPress:(id)press;
- (void)menuWillHide:(id)hide;
- (void)reloadData;
- (void)setContentMargins:(UIEdgeInsets)margins;
- (void)setMessage:(id)message;
- (void)setNameTextAttributes:(id)attributes;
- (void)setTaglineTextAttributes:(id)attributes;
- (void)tintColorDidChange;
- (void)updateConstraints;
- (void)updateFontSizes;
- (void)updateWithContacts:(id)contacts;
@end

@implementation CNContactOrbHeaderView

- (UIEdgeInsets)contentMargins
{
  top = self->_contentMargins.top;
  left = self->_contentMargins.left;
  bottom = self->_contentMargins.bottom;
  right = self->_contentMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)menuWillHide:(id)hide
{
  [(UILabel *)self->_nameLabel setHighlighted:0];
  taglineLabel = self->_taglineLabel;

  [(UILabel *)taglineLabel setHighlighted:0];
}

- (void)handleNameLabelLongPress:(id)press
{
  if ([(CNContactOrbHeaderView *)self becomeFirstResponder])
  {
    mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
    nameLabel = self->_nameLabel;
    [(UILabel *)nameLabel bounds];
    [(UILabel *)nameLabel textRectForBounds:[(UILabel *)self->_nameLabel numberOfLines] limitedToNumberOfLines:v5, v6, v7, v8];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    text = [(UILabel *)self->_taglineLabel text];

    if (text)
    {
      [(UILabel *)self->_taglineLabel bounds];
      v16 = v16 + v18;
    }

    [mEMORY[0x1E69DCC68] setTargetRect:self->_nameLabel inView:{v10, v12, v14, v16}];
    [mEMORY[0x1E69DCC68] setMenuVisible:1 animated:1];
    [(UILabel *)self->_nameLabel setHighlighted:1];
    [(UILabel *)self->_taglineLabel setHighlighted:1];
  }
}

- (id)_taglineStringForContacts:(id)contacts
{
  contactsCopy = contacts;
  if ([contactsCopy count] != 1)
  {
    v8 = [contactsCopy count];

    firstObject = [CNNumberFormatting localizedStringWithInteger:v8];
    v9 = MEMORY[0x1E696AEC0];
    v10 = CNContactsUIBundle();
    organizationName3 = [v10 localizedStringForKey:@"CARD_NAME_GROUP_MEMBERS_COUNT-%@" value:&stru_1F0CE7398 table:@"Localized"];
    organizationName = [v9 stringWithFormat:organizationName3, firstObject];
    goto LABEL_6;
  }

  firstObject = [contactsCopy firstObject];

  if ([firstObject contactType] == 1)
  {
    organizationName = [firstObject organizationName];

    if (!organizationName)
    {
      goto LABEL_12;
    }

    personName = [firstObject personName];
    goto LABEL_11;
  }

  personName2 = [firstObject personName];
  if (![personName2 length])
  {

    goto LABEL_21;
  }

  alternateName = [(CNContactOrbHeaderView *)self alternateName];

  if (!alternateName)
  {
LABEL_21:
    organizationName = [MEMORY[0x1E696AD60] string];
    v10 = [MEMORY[0x1E695CD80] stringFromContact:firstObject style:1];
    if ([v10 length])
    {
      [organizationName appendString:v10];
    }

    nickname = [firstObject nickname];
    v21 = [nickname length];

    if (v21)
    {
      if ([organizationName length])
      {
        [organizationName appendString:@"\n"];
      }

      v22 = CNContactsUIBundle();
      v23 = [v22 localizedStringForKey:@"CARD_NAME_NICKNAME_FORMAT-%@" value:&stru_1F0CE7398 table:@"Localized"];
      nickname2 = [firstObject nickname];
      [organizationName appendFormat:v23, nickname2];
    }

    previousFamilyName = [firstObject previousFamilyName];
    v26 = [previousFamilyName length];

    if (v26)
    {
      if ([organizationName length])
      {
        [organizationName appendString:@"\n"];
      }

      previousFamilyName2 = [firstObject previousFamilyName];
      [organizationName appendString:previousFamilyName2];
    }

    jobTitle = [firstObject jobTitle];
    v29 = [jobTitle length];

    if (v29)
    {
      if ([organizationName length])
      {
        [organizationName appendString:@"\n"];
      }

      jobTitle2 = [firstObject jobTitle];
      [organizationName appendString:jobTitle2];
    }

    departmentName = [firstObject departmentName];
    v32 = [departmentName length];

    if (v32)
    {
      jobTitle3 = [firstObject jobTitle];
      v34 = [jobTitle3 length];

      if (v34)
      {
        v35 = CNContactsUIBundle();
        v36 = [v35 localizedStringForKey:@"CARD_NAME_JOB_TITLE_DEPARTMENT_SEPARATOR" value:&stru_1F0CE7398 table:@"Localized"];

        [organizationName appendString:v36];
      }

      else if ([organizationName length])
      {
        [organizationName appendString:@"\n"];
      }

      departmentName2 = [firstObject departmentName];
      [organizationName appendString:departmentName2];
    }

    organizationName2 = [firstObject organizationName];
    v39 = [organizationName2 length];

    if (!v39)
    {
      goto LABEL_7;
    }

    if ([organizationName length])
    {
      [organizationName appendString:@"\n"];
    }

    organizationName3 = [firstObject organizationName];
    [organizationName appendString:organizationName3];
LABEL_6:

LABEL_7:
    goto LABEL_12;
  }

  personName = [(CNContactOrbHeaderView *)self alternateName];
LABEL_11:
  organizationName = personName;
LABEL_12:

  message = [(CNContactOrbHeaderView *)self message];
  v15 = [message length];

  if (v15)
  {
    if ([organizationName length])
    {
      v16 = MEMORY[0x1E696AEC0];
      message2 = [(CNContactOrbHeaderView *)self message];
      message3 = [v16 stringWithFormat:@"%@\n%@", organizationName, message2];

      organizationName = message2;
    }

    else
    {
      message3 = [(CNContactOrbHeaderView *)self message];
    }

    organizationName = message3;
  }

  return organizationName;
}

- (id)_headerStringForContacts:(id)contacts
{
  contactsCopy = contacts;
  if ([contactsCopy count] == 1)
  {
    contactFormatter = [(CNContactOrbHeaderView *)self contactFormatter];
    firstObject = [contactsCopy firstObject];
    v7 = [contactFormatter stringFromContact:firstObject];
  }

  else
  {
    v7 = 0;
  }

  if (![v7 length])
  {
    alternateName = [(CNContactOrbHeaderView *)self alternateName];

    v7 = alternateName;
  }

  return v7;
}

- (void)copy:(id)copy
{
  text = [(UILabel *)self->_nameLabel text];
  v8 = [text mutableCopy];

  text2 = [(UILabel *)self->_taglineLabel text];

  if (text2)
  {
    text3 = [(UILabel *)self->_taglineLabel text];
    [v8 appendFormat:@"\n%@", text3];
  }

  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  [generalPasteboard setString:v8];
}

- (void)setNameTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (self->_nameTextAttributes != attributesCopy)
  {
    v6 = attributesCopy;
    objc_storeStrong(&self->_nameTextAttributes, attributes);
    [(UILabel *)self->_nameLabel setAb_textAttributes:v6];
    attributesCopy = v6;
  }
}

- (void)setTaglineTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (self->_taglineTextAttributes != attributesCopy)
  {
    v6 = attributesCopy;
    objc_storeStrong(&self->_taglineTextAttributes, attributes);
    [(UILabel *)self->_taglineLabel setAb_textAttributes:v6];
    attributesCopy = [(UILabel *)self->_fakeTaglineAlignmentLabel setAb_textAttributes:v6];
  }

  MEMORY[0x1EEE66BE0](attributesCopy);
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = CNContactOrbHeaderView;
  [(CNContactOrbHeaderView *)&v5 tintColorDidChange];
  tintColor = [(CNContactOrbHeaderView *)self tintColor];
  [(UILabel *)self->_nameLabel setHighlightedTextColor:tintColor];

  tintColor2 = [(CNContactOrbHeaderView *)self tintColor];
  [(UILabel *)self->_taglineLabel setHighlightedTextColor:tintColor2];
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  if (self->_message != messageCopy)
  {
    v6 = messageCopy;
    objc_storeStrong(&self->_message, message);
    [(CNContactOrbHeaderView *)self reloadData];
    messageCopy = v6;
  }
}

- (void)reloadData
{
  [(CNContactPhotoView *)self->_photoView resetPhoto];
  contacts = [(CNContactOrbHeaderView *)self contacts];
  v17 = [(CNContactOrbHeaderView *)self _headerStringForContacts:contacts];

  contacts2 = [(CNContactOrbHeaderView *)self contacts];
  v5 = [(CNContactOrbHeaderView *)self _taglineStringForContacts:contacts2];

  message = [(CNContactOrbHeaderView *)self message];
  if ([v5 isEqualToString:message])
  {
    v7 = [v17 length];

    if (v7)
    {
      goto LABEL_5;
    }

    message = v17;
    v17 = v5;
    v5 = 0;
  }

LABEL_5:
  if (![v5 length])
  {

    v5 = 0;
  }

  text = [(UILabel *)self->_nameLabel text];
  if (v17)
  {
    if (!text)
    {
      goto LABEL_17;
    }
  }

  else if (text)
  {

    goto LABEL_17;
  }

  text2 = [(UILabel *)self->_taglineLabel text];

  if (v5)
  {
    v10 = text2 == 0;
  }

  else
  {
    v10 = text2 != 0;
  }

  if (v17)
  {

    if (!v10)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v10)
  {
LABEL_17:
    [(CNContactOrbHeaderView *)self setNeedsUpdateConstraints];
  }

LABEL_18:
  [(UILabel *)self->_nameLabel setAb_text:v17];
  [(UILabel *)self->_taglineLabel setAb_text:v5];
  photoView = [(CNContactOrbHeaderView *)self photoView];
  isHidden = [photoView isHidden];
  contacts3 = [(CNContactOrbHeaderView *)self contacts];
  if ([contacts3 count] > 1)
  {
    [photoView setHidden:0];
  }

  else
  {
    contacts4 = [(CNContactOrbHeaderView *)self contacts];
    firstObject = [contacts4 firstObject];
    if ([firstObject imageDataAvailable])
    {
      v16 = 0;
    }

    else
    {
      v16 = [(CNContactOrbHeaderView *)self alwaysShowsMonogram]^ 1;
    }

    [photoView setHidden:v16];
  }

  if (isHidden != [photoView isHidden])
  {
    [(CNContactOrbHeaderView *)self setNeedsUpdateConstraints];
  }
}

- (void)setContentMargins:(UIEdgeInsets)margins
{
  v3.f64[0] = margins.top;
  v3.f64[1] = margins.left;
  v4.f64[0] = margins.bottom;
  v4.f64[1] = margins.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentMargins.top, v3), vceqq_f64(*&self->_contentMargins.bottom, v4)))) & 1) == 0)
  {
    self->_contentMargins = margins;
    [(CNContactOrbHeaderView *)self setNeedsUpdateConstraints];
  }
}

- (void)updateFontSizes
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = *MEMORY[0x1E69DB648];
  v3 = v14;
  v4 = MEMORY[0x1E69DB878];
  nameTextAttributes = [(CNContactOrbHeaderView *)self nameTextAttributes];
  v6 = [nameTextAttributes objectForKeyedSubscript:@"ABTextStyleAttributeName"];
  v7 = [v4 ab_preferredRowFontForTextStyle:v6];
  v15[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  [self cn_updateDictionaryForKey:@"nameTextAttributes" withChanges:v8];

  v9 = *MEMORY[0x1E69DDD80];
  v12[1] = v3;
  v13[0] = v9;
  v12[0] = @"ABTextStyleAttributeName";
  v10 = [MEMORY[0x1E69DB878] ab_preferredFontForTextStyle:?];
  v13[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [self cn_updateDictionaryForKey:@"taglineTextAttributes" withChanges:v11];
}

- (void)updateWithContacts:(id)contacts
{
  v22 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  if (([(NSArray *)self->_contacts isEqual:contactsCopy]& 1) == 0)
  {
    v14 = 448;
    contactsCopy2 = contacts;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = contactsCopy;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [objc_opt_class() descriptorForRequiredKeysIncludingAvatarViewDescriptors:1];
          v20 = v12;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
          [v11 assertKeysAreAvailable:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v8);
    }

    objc_storeStrong(&self->_contacts, contacts);
    [(CNContactPhotoView *)self->_photoView setContacts:v6];
    -[CNContactOrbHeaderView setHidden:](self, "setHidden:", [v6 count] == 0);
  }

  [(CNContactOrbHeaderView *)self reloadData:v14];
}

- (void)updateConstraints
{
  v105[2] = *MEMORY[0x1E69E9840];
  [(CNContactOrbHeaderView *)self reloadData];
  v95.receiver = self;
  v95.super_class = CNContactOrbHeaderView;
  [(CNContactOrbHeaderView *)&v95 updateConstraints];
  headerConstraints = [(CNContactOrbHeaderView *)self headerConstraints];

  if (headerConstraints)
  {
    v4 = MEMORY[0x1E696ACD8];
    headerConstraints2 = [(CNContactOrbHeaderView *)self headerConstraints];
    [v4 deactivateConstraints:headerConstraints2];

    headerConstraints3 = [(CNContactOrbHeaderView *)self headerConstraints];
    [headerConstraints3 removeAllObjects];
  }

  else
  {
    headerConstraints3 = [MEMORY[0x1E695DF70] array];
    [(CNContactOrbHeaderView *)self setHeaderConstraints:headerConstraints3];
  }

  nameLabel = self->_nameLabel;
  v104[0] = @"name";
  v104[1] = @"photo";
  v105[0] = nameLabel;
  photoView = [(CNContactOrbHeaderView *)self photoView];
  v105[1] = photoView;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:2];

  array = [MEMORY[0x1E695DF70] array];
  photoView2 = [(CNContactOrbHeaderView *)self photoView];
  isHidden = [photoView2 isHidden];

  v13 = MEMORY[0x1E696ACD8];
  if (isHidden)
  {
    v96[0] = @"leftMargin";
    v14 = MEMORY[0x1E696AD98];
    [(CNContactOrbHeaderView *)self contentMargins];
    v16 = [v14 numberWithDouble:v15];
    v96[1] = @"rightMargin";
    v97[0] = v16;
    v17 = MEMORY[0x1E696AD98];
    [(CNContactOrbHeaderView *)self contentMargins];
    v19 = [v17 numberWithDouble:v18];
    v97[1] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:v96 count:2];
    v21 = [v13 constraintsWithVisualFormat:@"H:|-(leftMargin)-[name]-(rightMargin)-|" options:0 metrics:v20 views:v9];
    [array addObjectsFromArray:v21];
  }

  else
  {
    v102[0] = @"topMargin";
    v22 = MEMORY[0x1E696AD98];
    [(CNContactOrbHeaderView *)self contentMargins];
    v23 = [v22 numberWithDouble:?];
    v103[0] = v23;
    v102[1] = @"bottomMargin";
    v24 = MEMORY[0x1E696AD98];
    [(CNContactOrbHeaderView *)self contentMargins];
    v26 = [v24 numberWithDouble:v25];
    v102[2] = @"photoSize";
    v103[1] = v26;
    v103[2] = &unk_1F0D4B348;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v102 count:3];
    v100 = @"photo";
    photoView3 = [(CNContactOrbHeaderView *)self photoView];
    v101 = photoView3;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
    v30 = [v13 constraintsWithVisualFormat:@"V:|-(>=topMargin)-[photo(photoSize)]-(>=bottomMargin)-|" options:0 metrics:v27 views:v29];
    [array addObjectsFromArray:v30];

    v31 = MEMORY[0x1E696ACD8];
    v98[0] = @"leftMargin";
    v32 = MEMORY[0x1E696AD98];
    [(CNContactOrbHeaderView *)self contentMargins];
    v16 = [v32 numberWithDouble:v33];
    v99[0] = v16;
    v98[1] = @"photoLabelSpacing";
    v34 = MEMORY[0x1E696AD98];
    [(CNContactOrbHeaderView *)self photoLabelSpacing];
    v19 = [v34 numberWithDouble:?];
    v99[1] = v19;
    v98[2] = @"rightMargin";
    v35 = MEMORY[0x1E696AD98];
    [(CNContactOrbHeaderView *)self contentMargins];
    v20 = [v35 numberWithDouble:v36];
    v99[2] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v99 forKeys:v98 count:3];
    v37 = [v31 constraintsWithVisualFormat:@"H:|-(leftMargin)-[photo]-(photoLabelSpacing)-[name]-(rightMargin)-|" options:0 metrics:v21 views:v9];
    [array addObjectsFromArray:v37];
  }

  p_taglineLabel = &self->_taglineLabel;
  text = [(UILabel *)self->_taglineLabel text];

  v40 = MEMORY[0x1E696ACD8];
  if (text)
  {
    v41 = *p_taglineLabel;
    [(CNContactOrbHeaderView *)self contentMargins];
    nameLabel = [v40 constraintWithItem:self attribute:4 relatedBy:1 toItem:v41 attribute:4 multiplier:1.0 constant:v42];
    [array addObject:nameLabel];
    font = [*p_taglineLabel font];
    [font _scaledValueForValue:20.0];
    v46 = v45;

    v47 = [MEMORY[0x1E696ACD8] constraintWithItem:*p_taglineLabel attribute:12 relatedBy:0 toItem:self->_nameLabel attribute:11 multiplier:1.0 constant:v46];
    [array addObject:v47];

    v48 = [MEMORY[0x1E696ACD8] constraintWithItem:*p_taglineLabel attribute:5 relatedBy:0 toItem:self->_nameLabel attribute:5 multiplier:1.0 constant:0.0];
    [array addObject:v48];

    v49 = [MEMORY[0x1E696ACD8] constraintWithItem:*p_taglineLabel attribute:6 relatedBy:0 toItem:self->_nameLabel attribute:6 multiplier:1.0 constant:0.0];
    [array addObject:v49];

    photoView4 = [(CNContactOrbHeaderView *)self photoView];
    isHidden2 = [photoView4 isHidden];

    font2 = [(UILabel *)self->_nameLabel font];
    v53 = font2;
    if (isHidden2)
    {
      [font2 _scaledValueForValue:40.0];
      v55 = v54;

      v56 = MEMORY[0x1E696ACD8];
      fakeTaglineAlignmentLabel = self->_nameLabel;
      v58 = 1.0;
      v59 = 12;
      selfCopy2 = self;
      v61 = 3;
      v62 = v55;
    }

    else
    {
      [font2 _scaledValueForValue:24.0];
      v74 = v73;

      v75 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_nameLabel attribute:12 relatedBy:1 toItem:self attribute:3 multiplier:1.0 constant:v74];
      [array addObject:v75];

      lastObject = [array lastObject];
      LODWORD(v77) = 1148829696;
      [lastObject setPriority:v77];

      v78 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_markerView attribute:3 relatedBy:0 toItem:self->_nameLabel attribute:3 multiplier:1.0 constant:0.0];
      [array addObject:v78];

      centersPhotoAndLabels = [(CNContactOrbHeaderView *)self centersPhotoAndLabels];
      p_fakeTaglineAlignmentLabel = &self->_taglineLabel;
      if (!centersPhotoAndLabels)
      {
        p_fakeTaglineAlignmentLabel = &self->_fakeTaglineAlignmentLabel;
      }

      v81 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_markerView attribute:4 relatedBy:0 toItem:*p_fakeTaglineAlignmentLabel attribute:4 multiplier:1.0 constant:0.0];
      [array addObject:v81];

      v82 = MEMORY[0x1E696ACD8];
      markerView = self->_markerView;
      photoView5 = [(CNContactOrbHeaderView *)self photoView];
      v85 = [v82 constraintWithItem:markerView attribute:10 relatedBy:0 toItem:photoView5 attribute:10 multiplier:1.0 constant:0.0];
      [array addObject:v85];

      lastObject2 = [array lastObject];
      LODWORD(v87) = 1148813312;
      [lastObject2 setPriority:v87];

      v88 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_fakeTaglineAlignmentLabel attribute:5 relatedBy:0 toItem:*p_taglineLabel attribute:5 multiplier:1.0 constant:0.0];
      [array addObject:v88];

      v89 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_fakeTaglineAlignmentLabel attribute:6 relatedBy:0 toItem:*p_taglineLabel attribute:6 multiplier:1.0 constant:0.0];
      [array addObject:v89];

      v56 = MEMORY[0x1E696ACD8];
      fakeTaglineAlignmentLabel = self->_fakeTaglineAlignmentLabel;
      selfCopy2 = *p_taglineLabel;
      v58 = 1.0;
      v62 = 0.0;
      v59 = 3;
      v61 = 3;
    }
  }

  else
  {
    v63 = self->_nameLabel;
    [(CNContactOrbHeaderView *)self contentMargins];
    v65 = [v40 constraintWithItem:self attribute:4 relatedBy:1 toItem:v63 attribute:4 multiplier:1.0 constant:v64];
    [array addObject:v65];

    photoView6 = [(CNContactOrbHeaderView *)self photoView];
    isHidden3 = [photoView6 isHidden];

    v68 = MEMORY[0x1E696ACD8];
    v69 = self->_nameLabel;
    if (isHidden3)
    {
      v70 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_nameLabel attribute:12 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:40.0];
      [array addObject:v70];

      v71 = MEMORY[0x1E696ACD8];
      nameLabel = [(CNContactOrbHeaderView *)self nameLabel];
      [(CNContactOrbHeaderView *)self contentMargins];
      v62 = v72;
    }

    else
    {
      photoView7 = [(CNContactOrbHeaderView *)self photoView];
      v91 = [v68 constraintWithItem:v69 attribute:10 relatedBy:0 toItem:photoView7 attribute:10 multiplier:1.0 constant:0.0];
      [array addObject:v91];

      v71 = MEMORY[0x1E696ACD8];
      nameLabel = [(CNContactOrbHeaderView *)self photoView];
      [(CNContactOrbHeaderView *)self contentMargins];
      v62 = -v92;
    }

    v58 = 1.0;
    v56 = v71;
    fakeTaglineAlignmentLabel = nameLabel;
    v59 = 4;
    selfCopy2 = self;
    v61 = 4;
  }

  v93 = [v56 constraintWithItem:fakeTaglineAlignmentLabel attribute:v59 relatedBy:0 toItem:selfCopy2 attribute:v61 multiplier:v58 constant:v62];
  [array addObject:v93];

  headerConstraints4 = [(CNContactOrbHeaderView *)self headerConstraints];
  [headerConstraints4 addObjectsFromArray:array];

  [MEMORY[0x1E696ACD8] activateConstraints:array];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  [(CNContactOrbHeaderView *)self reloadData];
  v14.receiver = self;
  v14.super_class = CNContactOrbHeaderView;
  *&v10 = priority;
  *&v11 = fittingPriority;
  [(CNContactOrbHeaderView *)&v14 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v10, v11];
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNContactOrbHeaderView;
  [(CNContactOrbHeaderView *)&v4 dealloc];
}

- (CNContactOrbHeaderView)initWithContact:(id)contact frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v53[2] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v48.receiver = self;
  v48.super_class = CNContactOrbHeaderView;
  height = [(CNContactOrbHeaderView *)&v48 initWithFrame:x, y, width, height];
  *&height->_contentMargins.top = xmmword_199E43D60;
  *&height->_contentMargins.bottom = xmmword_199E43D70;
  v11 = [CNContactPhotoView alloc];
  v12 = +[CNUIContactsEnvironment currentEnvironment];
  cachingLikenessRenderer = [v12 cachingLikenessRenderer];
  height2 = [(CNContactPhotoView *)v11 initWithFrame:0 shouldAllowTakePhotoAction:0 threeDTouchEnabled:0 contactStore:0 allowsImageDrops:cachingLikenessRenderer imageRenderer:x, y, width, height];
  photoView = height->_photoView;
  height->_photoView = height2;

  [(CNContactPhotoView *)height->_photoView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNContactOrbHeaderView *)height addSubview:height->_photoView];
  v16 = *MEMORY[0x1E69DDD40];
  v17 = *MEMORY[0x1E69DB650];
  v52[0] = @"ABTextStyleAttributeName";
  v52[1] = v17;
  v53[0] = v16;
  v18 = +[CNUIColorRepository contactStyleDefaultTextColor];
  v53[1] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
  nameTextAttributes = height->_nameTextAttributes;
  height->_nameTextAttributes = v19;

  v21 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:height action:sel_handleNameLabelLongPress_];
  v22 = objc_alloc(MEMORY[0x1E69DCC10]);
  v23 = *MEMORY[0x1E695F058];
  v24 = *(MEMORY[0x1E695F058] + 8);
  v25 = *(MEMORY[0x1E695F058] + 16);
  v26 = *(MEMORY[0x1E695F058] + 24);
  v27 = [v22 initWithFrame:{*MEMORY[0x1E695F058], v24, v25, v26}];
  nameLabel = height->_nameLabel;
  height->_nameLabel = v27;

  [(UILabel *)height->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)height->_nameLabel setTextAlignment:4];
  [(UILabel *)height->_nameLabel setNumberOfLines:2];
  [(UILabel *)height->_nameLabel setUserInteractionEnabled:1];
  tintColor = [(CNContactOrbHeaderView *)height tintColor];
  [(UILabel *)height->_nameLabel setHighlightedTextColor:tintColor];

  LODWORD(v30) = 1148829696;
  [(UILabel *)height->_nameLabel setContentHuggingPriority:1 forAxis:v30];
  LODWORD(v31) = 1148829696;
  [(UILabel *)height->_nameLabel setContentCompressionResistancePriority:1 forAxis:v31];
  [(UILabel *)height->_nameLabel addGestureRecognizer:v21];
  [(UILabel *)height->_nameLabel _cnui_applyContactStyle];
  [(UILabel *)height->_nameLabel setAb_textAttributes:height->_nameTextAttributes];
  [(CNContactOrbHeaderView *)height addSubview:height->_nameLabel];
  v32 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:height action:sel_handleNameLabelLongPress_];
  v33 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v23, v24, v25, v26}];
  taglineLabel = height->_taglineLabel;
  height->_taglineLabel = v33;

  [(UILabel *)height->_taglineLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)height->_taglineLabel setTextAlignment:4];
  [(UILabel *)height->_taglineLabel setNumberOfLines:0];
  [(UILabel *)height->_taglineLabel setUserInteractionEnabled:1];
  tintColor2 = [(CNContactOrbHeaderView *)height tintColor];
  [(UILabel *)height->_taglineLabel setHighlightedTextColor:tintColor2];

  LODWORD(v36) = 1148829696;
  [(UILabel *)height->_taglineLabel setContentCompressionResistancePriority:1 forAxis:v36];
  [(UILabel *)height->_taglineLabel addGestureRecognizer:v32];
  [(UILabel *)height->_taglineLabel _cnui_applyContactStyle];
  [(CNContactOrbHeaderView *)height addSubview:height->_taglineLabel];
  v37 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v23, v24, v25, v26}];
  fakeTaglineAlignmentLabel = height->_fakeTaglineAlignmentLabel;
  height->_fakeTaglineAlignmentLabel = v37;

  [(UILabel *)height->_fakeTaglineAlignmentLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)height->_fakeTaglineAlignmentLabel setTextAlignment:4];
  [(UILabel *)height->_fakeTaglineAlignmentLabel setText:@"X"];
  [(UILabel *)height->_fakeTaglineAlignmentLabel setHidden:1];
  LODWORD(v39) = 1148829696;
  [(UILabel *)height->_fakeTaglineAlignmentLabel setContentHuggingPriority:1 forAxis:v39];
  [(CNContactOrbHeaderView *)height addSubview:height->_fakeTaglineAlignmentLabel];
  v40 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v23, v24, v25, v26}];
  markerView = height->_markerView;
  height->_markerView = v40;

  [(UIView *)height->_markerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNContactOrbHeaderView *)height addSubview:height->_markerView];
  v42 = *MEMORY[0x1E69DDD80];
  v50[1] = v17;
  v51[0] = v42;
  v50[0] = @"ABTextStyleAttributeName";
  v43 = +[CNUIColorRepository contactStyleDefaultTextColor];
  v51[1] = v43;
  v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];
  [(CNContactOrbHeaderView *)height setTaglineTextAttributes:v44];

  [(CNContactOrbHeaderView *)height updateFontSizes];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:height selector:sel_menuWillHide_ name:*MEMORY[0x1E69DE0E8] object:0];

  [(CNContactOrbHeaderView *)height setNeedsUpdateConstraints];
  if (contactCopy)
  {
    v49 = contactCopy;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
    [(CNContactOrbHeaderView *)height updateWithContacts:v46];
  }

  else
  {
    [(CNContactOrbHeaderView *)height updateWithContacts:MEMORY[0x1E695E0F0]];
  }

  return height;
}

+ (id)descriptorForRequiredKeysForContactFormatter:(id)formatter includingAvatarViewDescriptors:(BOOL)descriptors
{
  v5 = MEMORY[0x1E695DF70];
  v6 = [self descriptorForRequiredKeysIncludingAvatarViewDescriptors:descriptors];
  v7 = [v5 arrayWithObject:v6];

  if (formatter)
  {
    v8 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
    [v7 addObject:v8];
  }

  v9 = MEMORY[0x1E695CD58];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactOrbHeaderView descriptorForRequiredKeysForContactFormatter:includingAvatarViewDescriptors:]"];
  v11 = [v9 descriptorWithKeyDescriptors:v7 description:v10];

  return v11;
}

+ (id)descriptorForRequiredKeysIncludingAvatarViewDescriptors:(BOOL)descriptors
{
  descriptorsCopy = descriptors;
  v23[21] = *MEMORY[0x1E69E9840];
  v4 = [CNMonogrammer descriptorForRequiredKeysIncludingImage:1];
  v5 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:{1, v4}];
  v6 = *MEMORY[0x1E695C300];
  v23[1] = v5;
  v23[2] = v6;
  v7 = *MEMORY[0x1E695C2F0];
  v23[3] = *MEMORY[0x1E695C240];
  v23[4] = v7;
  v8 = *MEMORY[0x1E695C390];
  v23[5] = *MEMORY[0x1E695C230];
  v23[6] = v8;
  v9 = *MEMORY[0x1E695C310];
  v23[7] = *MEMORY[0x1E695C308];
  v23[8] = v9;
  v10 = *MEMORY[0x1E695C350];
  v23[9] = *MEMORY[0x1E695C348];
  v23[10] = v10;
  v11 = *MEMORY[0x1E695C398];
  v23[11] = *MEMORY[0x1E695C340];
  v23[12] = v11;
  v12 = *MEMORY[0x1E695C328];
  v23[13] = *MEMORY[0x1E695C3A0];
  v23[14] = v12;
  v13 = *MEMORY[0x1E695C410];
  v23[15] = *MEMORY[0x1E695C358];
  v23[16] = v13;
  v14 = *MEMORY[0x1E695C2C8];
  v23[17] = *MEMORY[0x1E695C1F8];
  v23[18] = v14;
  v15 = *MEMORY[0x1E695C400];
  v23[19] = *MEMORY[0x1E695C270];
  v23[20] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:21];

  if (descriptorsCopy)
  {
    v17 = [CNAvatarView descriptorForRequiredKeysWithThreeDTouchEnabled:0];
    v18 = [v16 arrayByAddingObject:v17];

    v16 = v18;
  }

  v19 = MEMORY[0x1E695CD58];
  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactOrbHeaderView descriptorForRequiredKeysIncludingAvatarViewDescriptors:]"];
  v21 = [v19 descriptorWithKeyDescriptors:v16 description:v20];

  return v21;
}

@end