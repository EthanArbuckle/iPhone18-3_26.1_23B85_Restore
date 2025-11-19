@interface CNContactOrbHeaderView
+ (id)descriptorForRequiredKeysForContactFormatter:(id)a3 includingAvatarViewDescriptors:(BOOL)a4;
+ (id)descriptorForRequiredKeysIncludingAvatarViewDescriptors:(BOOL)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (CNContactOrbHeaderView)initWithContact:(id)a3 frame:(CGRect)a4;
- (UIEdgeInsets)contentMargins;
- (id)_headerStringForContacts:(id)a3;
- (id)_taglineStringForContacts:(id)a3;
- (void)copy:(id)a3;
- (void)dealloc;
- (void)handleNameLabelLongPress:(id)a3;
- (void)menuWillHide:(id)a3;
- (void)reloadData;
- (void)setContentMargins:(UIEdgeInsets)a3;
- (void)setMessage:(id)a3;
- (void)setNameTextAttributes:(id)a3;
- (void)setTaglineTextAttributes:(id)a3;
- (void)tintColorDidChange;
- (void)updateConstraints;
- (void)updateFontSizes;
- (void)updateWithContacts:(id)a3;
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

- (void)menuWillHide:(id)a3
{
  [(UILabel *)self->_nameLabel setHighlighted:0];
  taglineLabel = self->_taglineLabel;

  [(UILabel *)taglineLabel setHighlighted:0];
}

- (void)handleNameLabelLongPress:(id)a3
{
  if ([(CNContactOrbHeaderView *)self becomeFirstResponder])
  {
    v19 = [MEMORY[0x1E69DCC68] sharedMenuController];
    nameLabel = self->_nameLabel;
    [(UILabel *)nameLabel bounds];
    [(UILabel *)nameLabel textRectForBounds:[(UILabel *)self->_nameLabel numberOfLines] limitedToNumberOfLines:v5, v6, v7, v8];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(UILabel *)self->_taglineLabel text];

    if (v17)
    {
      [(UILabel *)self->_taglineLabel bounds];
      v16 = v16 + v18;
    }

    [v19 setTargetRect:self->_nameLabel inView:{v10, v12, v14, v16}];
    [v19 setMenuVisible:1 animated:1];
    [(UILabel *)self->_nameLabel setHighlighted:1];
    [(UILabel *)self->_taglineLabel setHighlighted:1];
  }
}

- (id)_taglineStringForContacts:(id)a3
{
  v4 = a3;
  if ([v4 count] != 1)
  {
    v8 = [v4 count];

    v5 = [CNNumberFormatting localizedStringWithInteger:v8];
    v9 = MEMORY[0x1E696AEC0];
    v10 = CNContactsUIBundle();
    v11 = [v10 localizedStringForKey:@"CARD_NAME_GROUP_MEMBERS_COUNT-%@" value:&stru_1F0CE7398 table:@"Localized"];
    v6 = [v9 stringWithFormat:v11, v5];
    goto LABEL_6;
  }

  v5 = [v4 firstObject];

  if ([v5 contactType] == 1)
  {
    v6 = [v5 organizationName];

    if (!v6)
    {
      goto LABEL_12;
    }

    v7 = [v5 personName];
    goto LABEL_11;
  }

  v12 = [v5 personName];
  if (![v12 length])
  {

    goto LABEL_21;
  }

  v13 = [(CNContactOrbHeaderView *)self alternateName];

  if (!v13)
  {
LABEL_21:
    v6 = [MEMORY[0x1E696AD60] string];
    v10 = [MEMORY[0x1E695CD80] stringFromContact:v5 style:1];
    if ([v10 length])
    {
      [v6 appendString:v10];
    }

    v20 = [v5 nickname];
    v21 = [v20 length];

    if (v21)
    {
      if ([v6 length])
      {
        [v6 appendString:@"\n"];
      }

      v22 = CNContactsUIBundle();
      v23 = [v22 localizedStringForKey:@"CARD_NAME_NICKNAME_FORMAT-%@" value:&stru_1F0CE7398 table:@"Localized"];
      v24 = [v5 nickname];
      [v6 appendFormat:v23, v24];
    }

    v25 = [v5 previousFamilyName];
    v26 = [v25 length];

    if (v26)
    {
      if ([v6 length])
      {
        [v6 appendString:@"\n"];
      }

      v27 = [v5 previousFamilyName];
      [v6 appendString:v27];
    }

    v28 = [v5 jobTitle];
    v29 = [v28 length];

    if (v29)
    {
      if ([v6 length])
      {
        [v6 appendString:@"\n"];
      }

      v30 = [v5 jobTitle];
      [v6 appendString:v30];
    }

    v31 = [v5 departmentName];
    v32 = [v31 length];

    if (v32)
    {
      v33 = [v5 jobTitle];
      v34 = [v33 length];

      if (v34)
      {
        v35 = CNContactsUIBundle();
        v36 = [v35 localizedStringForKey:@"CARD_NAME_JOB_TITLE_DEPARTMENT_SEPARATOR" value:&stru_1F0CE7398 table:@"Localized"];

        [v6 appendString:v36];
      }

      else if ([v6 length])
      {
        [v6 appendString:@"\n"];
      }

      v37 = [v5 departmentName];
      [v6 appendString:v37];
    }

    v38 = [v5 organizationName];
    v39 = [v38 length];

    if (!v39)
    {
      goto LABEL_7;
    }

    if ([v6 length])
    {
      [v6 appendString:@"\n"];
    }

    v11 = [v5 organizationName];
    [v6 appendString:v11];
LABEL_6:

LABEL_7:
    goto LABEL_12;
  }

  v7 = [(CNContactOrbHeaderView *)self alternateName];
LABEL_11:
  v6 = v7;
LABEL_12:

  v14 = [(CNContactOrbHeaderView *)self message];
  v15 = [v14 length];

  if (v15)
  {
    if ([v6 length])
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = [(CNContactOrbHeaderView *)self message];
      v18 = [v16 stringWithFormat:@"%@\n%@", v6, v17];

      v6 = v17;
    }

    else
    {
      v18 = [(CNContactOrbHeaderView *)self message];
    }

    v6 = v18;
  }

  return v6;
}

- (id)_headerStringForContacts:(id)a3
{
  v4 = a3;
  if ([v4 count] == 1)
  {
    v5 = [(CNContactOrbHeaderView *)self contactFormatter];
    v6 = [v4 firstObject];
    v7 = [v5 stringFromContact:v6];
  }

  else
  {
    v7 = 0;
  }

  if (![v7 length])
  {
    v8 = [(CNContactOrbHeaderView *)self alternateName];

    v7 = v8;
  }

  return v7;
}

- (void)copy:(id)a3
{
  v4 = [(UILabel *)self->_nameLabel text];
  v8 = [v4 mutableCopy];

  v5 = [(UILabel *)self->_taglineLabel text];

  if (v5)
  {
    v6 = [(UILabel *)self->_taglineLabel text];
    [v8 appendFormat:@"\n%@", v6];
  }

  v7 = [MEMORY[0x1E69DCD50] generalPasteboard];
  [v7 setString:v8];
}

- (void)setNameTextAttributes:(id)a3
{
  v5 = a3;
  if (self->_nameTextAttributes != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_nameTextAttributes, a3);
    [(UILabel *)self->_nameLabel setAb_textAttributes:v6];
    v5 = v6;
  }
}

- (void)setTaglineTextAttributes:(id)a3
{
  v5 = a3;
  if (self->_taglineTextAttributes != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_taglineTextAttributes, a3);
    [(UILabel *)self->_taglineLabel setAb_textAttributes:v6];
    v5 = [(UILabel *)self->_fakeTaglineAlignmentLabel setAb_textAttributes:v6];
  }

  MEMORY[0x1EEE66BE0](v5);
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = CNContactOrbHeaderView;
  [(CNContactOrbHeaderView *)&v5 tintColorDidChange];
  v3 = [(CNContactOrbHeaderView *)self tintColor];
  [(UILabel *)self->_nameLabel setHighlightedTextColor:v3];

  v4 = [(CNContactOrbHeaderView *)self tintColor];
  [(UILabel *)self->_taglineLabel setHighlightedTextColor:v4];
}

- (void)setMessage:(id)a3
{
  v5 = a3;
  if (self->_message != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_message, a3);
    [(CNContactOrbHeaderView *)self reloadData];
    v5 = v6;
  }
}

- (void)reloadData
{
  [(CNContactPhotoView *)self->_photoView resetPhoto];
  v3 = [(CNContactOrbHeaderView *)self contacts];
  v17 = [(CNContactOrbHeaderView *)self _headerStringForContacts:v3];

  v4 = [(CNContactOrbHeaderView *)self contacts];
  v5 = [(CNContactOrbHeaderView *)self _taglineStringForContacts:v4];

  v6 = [(CNContactOrbHeaderView *)self message];
  if ([v5 isEqualToString:v6])
  {
    v7 = [v17 length];

    if (v7)
    {
      goto LABEL_5;
    }

    v6 = v17;
    v17 = v5;
    v5 = 0;
  }

LABEL_5:
  if (![v5 length])
  {

    v5 = 0;
  }

  v8 = [(UILabel *)self->_nameLabel text];
  if (v17)
  {
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  else if (v8)
  {

    goto LABEL_17;
  }

  v9 = [(UILabel *)self->_taglineLabel text];

  if (v5)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = v9 != 0;
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
  v11 = [(CNContactOrbHeaderView *)self photoView];
  v12 = [v11 isHidden];
  v13 = [(CNContactOrbHeaderView *)self contacts];
  if ([v13 count] > 1)
  {
    [v11 setHidden:0];
  }

  else
  {
    v14 = [(CNContactOrbHeaderView *)self contacts];
    v15 = [v14 firstObject];
    if ([v15 imageDataAvailable])
    {
      v16 = 0;
    }

    else
    {
      v16 = [(CNContactOrbHeaderView *)self alwaysShowsMonogram]^ 1;
    }

    [v11 setHidden:v16];
  }

  if (v12 != [v11 isHidden])
  {
    [(CNContactOrbHeaderView *)self setNeedsUpdateConstraints];
  }
}

- (void)setContentMargins:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentMargins.top, v3), vceqq_f64(*&self->_contentMargins.bottom, v4)))) & 1) == 0)
  {
    self->_contentMargins = a3;
    [(CNContactOrbHeaderView *)self setNeedsUpdateConstraints];
  }
}

- (void)updateFontSizes
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = *MEMORY[0x1E69DB648];
  v3 = v14;
  v4 = MEMORY[0x1E69DB878];
  v5 = [(CNContactOrbHeaderView *)self nameTextAttributes];
  v6 = [v5 objectForKeyedSubscript:@"ABTextStyleAttributeName"];
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

- (void)updateWithContacts:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (([(NSArray *)self->_contacts isEqual:v5]& 1) == 0)
  {
    v14 = 448;
    v15 = a3;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v5;
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

    objc_storeStrong(&self->_contacts, a3);
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
  v3 = [(CNContactOrbHeaderView *)self headerConstraints];

  if (v3)
  {
    v4 = MEMORY[0x1E696ACD8];
    v5 = [(CNContactOrbHeaderView *)self headerConstraints];
    [v4 deactivateConstraints:v5];

    v6 = [(CNContactOrbHeaderView *)self headerConstraints];
    [v6 removeAllObjects];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF70] array];
    [(CNContactOrbHeaderView *)self setHeaderConstraints:v6];
  }

  nameLabel = self->_nameLabel;
  v104[0] = @"name";
  v104[1] = @"photo";
  v105[0] = nameLabel;
  v8 = [(CNContactOrbHeaderView *)self photoView];
  v105[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:2];

  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [(CNContactOrbHeaderView *)self photoView];
  v12 = [v11 isHidden];

  v13 = MEMORY[0x1E696ACD8];
  if (v12)
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
    [v10 addObjectsFromArray:v21];
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
    v28 = [(CNContactOrbHeaderView *)self photoView];
    v101 = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
    v30 = [v13 constraintsWithVisualFormat:@"V:|-(>=topMargin)-[photo(photoSize)]-(>=bottomMargin)-|" options:0 metrics:v27 views:v29];
    [v10 addObjectsFromArray:v30];

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
    [v10 addObjectsFromArray:v37];
  }

  p_taglineLabel = &self->_taglineLabel;
  v39 = [(UILabel *)self->_taglineLabel text];

  v40 = MEMORY[0x1E696ACD8];
  if (v39)
  {
    v41 = *p_taglineLabel;
    [(CNContactOrbHeaderView *)self contentMargins];
    v43 = [v40 constraintWithItem:self attribute:4 relatedBy:1 toItem:v41 attribute:4 multiplier:1.0 constant:v42];
    [v10 addObject:v43];
    v44 = [*p_taglineLabel font];
    [v44 _scaledValueForValue:20.0];
    v46 = v45;

    v47 = [MEMORY[0x1E696ACD8] constraintWithItem:*p_taglineLabel attribute:12 relatedBy:0 toItem:self->_nameLabel attribute:11 multiplier:1.0 constant:v46];
    [v10 addObject:v47];

    v48 = [MEMORY[0x1E696ACD8] constraintWithItem:*p_taglineLabel attribute:5 relatedBy:0 toItem:self->_nameLabel attribute:5 multiplier:1.0 constant:0.0];
    [v10 addObject:v48];

    v49 = [MEMORY[0x1E696ACD8] constraintWithItem:*p_taglineLabel attribute:6 relatedBy:0 toItem:self->_nameLabel attribute:6 multiplier:1.0 constant:0.0];
    [v10 addObject:v49];

    v50 = [(CNContactOrbHeaderView *)self photoView];
    v51 = [v50 isHidden];

    v52 = [(UILabel *)self->_nameLabel font];
    v53 = v52;
    if (v51)
    {
      [v52 _scaledValueForValue:40.0];
      v55 = v54;

      v56 = MEMORY[0x1E696ACD8];
      fakeTaglineAlignmentLabel = self->_nameLabel;
      v58 = 1.0;
      v59 = 12;
      v60 = self;
      v61 = 3;
      v62 = v55;
    }

    else
    {
      [v52 _scaledValueForValue:24.0];
      v74 = v73;

      v75 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_nameLabel attribute:12 relatedBy:1 toItem:self attribute:3 multiplier:1.0 constant:v74];
      [v10 addObject:v75];

      v76 = [v10 lastObject];
      LODWORD(v77) = 1148829696;
      [v76 setPriority:v77];

      v78 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_markerView attribute:3 relatedBy:0 toItem:self->_nameLabel attribute:3 multiplier:1.0 constant:0.0];
      [v10 addObject:v78];

      v79 = [(CNContactOrbHeaderView *)self centersPhotoAndLabels];
      p_fakeTaglineAlignmentLabel = &self->_taglineLabel;
      if (!v79)
      {
        p_fakeTaglineAlignmentLabel = &self->_fakeTaglineAlignmentLabel;
      }

      v81 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_markerView attribute:4 relatedBy:0 toItem:*p_fakeTaglineAlignmentLabel attribute:4 multiplier:1.0 constant:0.0];
      [v10 addObject:v81];

      v82 = MEMORY[0x1E696ACD8];
      markerView = self->_markerView;
      v84 = [(CNContactOrbHeaderView *)self photoView];
      v85 = [v82 constraintWithItem:markerView attribute:10 relatedBy:0 toItem:v84 attribute:10 multiplier:1.0 constant:0.0];
      [v10 addObject:v85];

      v86 = [v10 lastObject];
      LODWORD(v87) = 1148813312;
      [v86 setPriority:v87];

      v88 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_fakeTaglineAlignmentLabel attribute:5 relatedBy:0 toItem:*p_taglineLabel attribute:5 multiplier:1.0 constant:0.0];
      [v10 addObject:v88];

      v89 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_fakeTaglineAlignmentLabel attribute:6 relatedBy:0 toItem:*p_taglineLabel attribute:6 multiplier:1.0 constant:0.0];
      [v10 addObject:v89];

      v56 = MEMORY[0x1E696ACD8];
      fakeTaglineAlignmentLabel = self->_fakeTaglineAlignmentLabel;
      v60 = *p_taglineLabel;
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
    [v10 addObject:v65];

    v66 = [(CNContactOrbHeaderView *)self photoView];
    v67 = [v66 isHidden];

    v68 = MEMORY[0x1E696ACD8];
    v69 = self->_nameLabel;
    if (v67)
    {
      v70 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_nameLabel attribute:12 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:40.0];
      [v10 addObject:v70];

      v71 = MEMORY[0x1E696ACD8];
      v43 = [(CNContactOrbHeaderView *)self nameLabel];
      [(CNContactOrbHeaderView *)self contentMargins];
      v62 = v72;
    }

    else
    {
      v90 = [(CNContactOrbHeaderView *)self photoView];
      v91 = [v68 constraintWithItem:v69 attribute:10 relatedBy:0 toItem:v90 attribute:10 multiplier:1.0 constant:0.0];
      [v10 addObject:v91];

      v71 = MEMORY[0x1E696ACD8];
      v43 = [(CNContactOrbHeaderView *)self photoView];
      [(CNContactOrbHeaderView *)self contentMargins];
      v62 = -v92;
    }

    v58 = 1.0;
    v56 = v71;
    fakeTaglineAlignmentLabel = v43;
    v59 = 4;
    v60 = self;
    v61 = 4;
  }

  v93 = [v56 constraintWithItem:fakeTaglineAlignmentLabel attribute:v59 relatedBy:0 toItem:v60 attribute:v61 multiplier:v58 constant:v62];
  [v10 addObject:v93];

  v94 = [(CNContactOrbHeaderView *)self headerConstraints];
  [v94 addObjectsFromArray:v10];

  [MEMORY[0x1E696ACD8] activateConstraints:v10];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  [(CNContactOrbHeaderView *)self reloadData];
  v14.receiver = self;
  v14.super_class = CNContactOrbHeaderView;
  *&v10 = a4;
  *&v11 = a5;
  [(CNContactOrbHeaderView *)&v14 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v10, v11];
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNContactOrbHeaderView;
  [(CNContactOrbHeaderView *)&v4 dealloc];
}

- (CNContactOrbHeaderView)initWithContact:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v53[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v48.receiver = self;
  v48.super_class = CNContactOrbHeaderView;
  v10 = [(CNContactOrbHeaderView *)&v48 initWithFrame:x, y, width, height];
  *&v10->_contentMargins.top = xmmword_199E43D60;
  *&v10->_contentMargins.bottom = xmmword_199E43D70;
  v11 = [CNContactPhotoView alloc];
  v12 = +[CNUIContactsEnvironment currentEnvironment];
  v13 = [v12 cachingLikenessRenderer];
  v14 = [(CNContactPhotoView *)v11 initWithFrame:0 shouldAllowTakePhotoAction:0 threeDTouchEnabled:0 contactStore:0 allowsImageDrops:v13 imageRenderer:x, y, width, height];
  photoView = v10->_photoView;
  v10->_photoView = v14;

  [(CNContactPhotoView *)v10->_photoView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNContactOrbHeaderView *)v10 addSubview:v10->_photoView];
  v16 = *MEMORY[0x1E69DDD40];
  v17 = *MEMORY[0x1E69DB650];
  v52[0] = @"ABTextStyleAttributeName";
  v52[1] = v17;
  v53[0] = v16;
  v18 = +[CNUIColorRepository contactStyleDefaultTextColor];
  v53[1] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
  nameTextAttributes = v10->_nameTextAttributes;
  v10->_nameTextAttributes = v19;

  v21 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v10 action:sel_handleNameLabelLongPress_];
  v22 = objc_alloc(MEMORY[0x1E69DCC10]);
  v23 = *MEMORY[0x1E695F058];
  v24 = *(MEMORY[0x1E695F058] + 8);
  v25 = *(MEMORY[0x1E695F058] + 16);
  v26 = *(MEMORY[0x1E695F058] + 24);
  v27 = [v22 initWithFrame:{*MEMORY[0x1E695F058], v24, v25, v26}];
  nameLabel = v10->_nameLabel;
  v10->_nameLabel = v27;

  [(UILabel *)v10->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v10->_nameLabel setTextAlignment:4];
  [(UILabel *)v10->_nameLabel setNumberOfLines:2];
  [(UILabel *)v10->_nameLabel setUserInteractionEnabled:1];
  v29 = [(CNContactOrbHeaderView *)v10 tintColor];
  [(UILabel *)v10->_nameLabel setHighlightedTextColor:v29];

  LODWORD(v30) = 1148829696;
  [(UILabel *)v10->_nameLabel setContentHuggingPriority:1 forAxis:v30];
  LODWORD(v31) = 1148829696;
  [(UILabel *)v10->_nameLabel setContentCompressionResistancePriority:1 forAxis:v31];
  [(UILabel *)v10->_nameLabel addGestureRecognizer:v21];
  [(UILabel *)v10->_nameLabel _cnui_applyContactStyle];
  [(UILabel *)v10->_nameLabel setAb_textAttributes:v10->_nameTextAttributes];
  [(CNContactOrbHeaderView *)v10 addSubview:v10->_nameLabel];
  v32 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v10 action:sel_handleNameLabelLongPress_];
  v33 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v23, v24, v25, v26}];
  taglineLabel = v10->_taglineLabel;
  v10->_taglineLabel = v33;

  [(UILabel *)v10->_taglineLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v10->_taglineLabel setTextAlignment:4];
  [(UILabel *)v10->_taglineLabel setNumberOfLines:0];
  [(UILabel *)v10->_taglineLabel setUserInteractionEnabled:1];
  v35 = [(CNContactOrbHeaderView *)v10 tintColor];
  [(UILabel *)v10->_taglineLabel setHighlightedTextColor:v35];

  LODWORD(v36) = 1148829696;
  [(UILabel *)v10->_taglineLabel setContentCompressionResistancePriority:1 forAxis:v36];
  [(UILabel *)v10->_taglineLabel addGestureRecognizer:v32];
  [(UILabel *)v10->_taglineLabel _cnui_applyContactStyle];
  [(CNContactOrbHeaderView *)v10 addSubview:v10->_taglineLabel];
  v37 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v23, v24, v25, v26}];
  fakeTaglineAlignmentLabel = v10->_fakeTaglineAlignmentLabel;
  v10->_fakeTaglineAlignmentLabel = v37;

  [(UILabel *)v10->_fakeTaglineAlignmentLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v10->_fakeTaglineAlignmentLabel setTextAlignment:4];
  [(UILabel *)v10->_fakeTaglineAlignmentLabel setText:@"X"];
  [(UILabel *)v10->_fakeTaglineAlignmentLabel setHidden:1];
  LODWORD(v39) = 1148829696;
  [(UILabel *)v10->_fakeTaglineAlignmentLabel setContentHuggingPriority:1 forAxis:v39];
  [(CNContactOrbHeaderView *)v10 addSubview:v10->_fakeTaglineAlignmentLabel];
  v40 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v23, v24, v25, v26}];
  markerView = v10->_markerView;
  v10->_markerView = v40;

  [(UIView *)v10->_markerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNContactOrbHeaderView *)v10 addSubview:v10->_markerView];
  v42 = *MEMORY[0x1E69DDD80];
  v50[1] = v17;
  v51[0] = v42;
  v50[0] = @"ABTextStyleAttributeName";
  v43 = +[CNUIColorRepository contactStyleDefaultTextColor];
  v51[1] = v43;
  v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];
  [(CNContactOrbHeaderView *)v10 setTaglineTextAttributes:v44];

  [(CNContactOrbHeaderView *)v10 updateFontSizes];
  v45 = [MEMORY[0x1E696AD88] defaultCenter];
  [v45 addObserver:v10 selector:sel_menuWillHide_ name:*MEMORY[0x1E69DE0E8] object:0];

  [(CNContactOrbHeaderView *)v10 setNeedsUpdateConstraints];
  if (v9)
  {
    v49 = v9;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
    [(CNContactOrbHeaderView *)v10 updateWithContacts:v46];
  }

  else
  {
    [(CNContactOrbHeaderView *)v10 updateWithContacts:MEMORY[0x1E695E0F0]];
  }

  return v10;
}

+ (id)descriptorForRequiredKeysForContactFormatter:(id)a3 includingAvatarViewDescriptors:(BOOL)a4
{
  v5 = MEMORY[0x1E695DF70];
  v6 = [a1 descriptorForRequiredKeysIncludingAvatarViewDescriptors:a4];
  v7 = [v5 arrayWithObject:v6];

  if (a3)
  {
    v8 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
    [v7 addObject:v8];
  }

  v9 = MEMORY[0x1E695CD58];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactOrbHeaderView descriptorForRequiredKeysForContactFormatter:includingAvatarViewDescriptors:]"];
  v11 = [v9 descriptorWithKeyDescriptors:v7 description:v10];

  return v11;
}

+ (id)descriptorForRequiredKeysIncludingAvatarViewDescriptors:(BOOL)a3
{
  v3 = a3;
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

  if (v3)
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