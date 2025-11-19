@interface MFCaptionLabel
+ (EFLazyCache)attributedStringsCache;
- (MFCaptionLabel)initWithFrame:(CGRect)a3;
- (MFCaptionLabelDataSource)dataSource;
- (double)_maxWidthForRecipientList;
- (id)_attributedStringForImage:(id)a3;
- (id)_chevronAttributedString;
- (id)_chevronImage;
- (id)_concatenateStringForRecipientList:(id)a3 recipientCount:(unint64_t)a4 prefixGenerationBlock:(id)a5 listSuffix:(id)a6;
- (id)_formattedAttributedString;
- (id)_formattedReplyToString;
- (id)_questionMarkAttributedString;
- (id)_questionMarkImage;
- (id)_stringAtIndexForCombinedRecipientLists:(unint64_t)a3;
- (id)_whitespaceStringWithWidth:(double)a3;
- (id)_whitespaceTextAttachment;
- (id)lengthValidationBlock;
- (void)_setNeedsLabelUpdate;
- (void)layoutSubviews;
- (void)setBccRecipients:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCcRecipients:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setFromSenders:(id)a3;
- (void)setHasDifferentReplyToAddress:(BOOL)a3;
- (void)setOtherSigners:(id)a3;
- (void)setPreventAutoUpdatingLabel:(BOOL)a3;
- (void)setReplyToSenders:(id)a3;
- (void)setToRecipients:(id)a3;
- (void)updateLabelNow;
@end

@implementation MFCaptionLabel

- (MFCaptionLabel)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MFCaptionLabel;
  v3 = [(MFCaptionLabel *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MFCaptionLabel *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MFCaptionLabel *)v4 setNumberOfLines:0];
  }

  return v4;
}

+ (EFLazyCache)attributedStringsCache
{
  if (attributedStringsCache_onceToken != -1)
  {
    +[MFCaptionLabel attributedStringsCache];
  }

  v3 = attributedStringsCache_sAttributedStringsCache;

  return v3;
}

void __40__MFCaptionLabel_attributedStringsCache__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E699B7E0]) initWithCountLimit:10];
  v1 = attributedStringsCache_sAttributedStringsCache;
  attributedStringsCache_sAttributedStringsCache = v0;
}

- (void)setToRecipients:(id)a3
{
  v5 = a3;
  if (self->_toRecipients != v5)
  {
    objc_storeStrong(&self->_toRecipients, a3);
    [(MFCaptionLabel *)self _setNeedsLabelUpdate];
  }
}

- (void)setCcRecipients:(id)a3
{
  v5 = a3;
  if (self->_ccRecipients != v5)
  {
    objc_storeStrong(&self->_ccRecipients, a3);
    [(MFCaptionLabel *)self _setNeedsLabelUpdate];
  }
}

- (void)setBccRecipients:(id)a3
{
  v5 = a3;
  if (self->_bccRecipients != v5)
  {
    objc_storeStrong(&self->_bccRecipients, a3);
    [(MFCaptionLabel *)self _setNeedsLabelUpdate];
  }
}

- (void)setFromSenders:(id)a3
{
  v5 = a3;
  if (self->_fromSenders != v5)
  {
    objc_storeStrong(&self->_fromSenders, a3);
    [(MFCaptionLabel *)self _setNeedsLabelUpdate];
  }
}

- (void)setOtherSigners:(id)a3
{
  v5 = a3;
  if (self->_otherSigners != v5)
  {
    objc_storeStrong(&self->_otherSigners, a3);
    [(MFCaptionLabel *)self _setNeedsLabelUpdate];
  }
}

- (void)setReplyToSenders:(id)a3
{
  v5 = a3;
  if (self->_replyToSenders != v5)
  {
    objc_storeStrong(&self->_replyToSenders, a3);
    [(MFCaptionLabel *)self _setNeedsLabelUpdate];
  }
}

- (void)setHasDifferentReplyToAddress:(BOOL)a3
{
  if (self->_hasDifferentReplyToAddress != a3)
  {
    self->_hasDifferentReplyToAddress = a3;
    [(MFCaptionLabel *)self _setNeedsLabelUpdate];
  }
}

- (void)setPreventAutoUpdatingLabel:(BOOL)a3
{
  if (self->_preventAutoUpdatingLabel != a3)
  {
    self->_preventAutoUpdatingLabel = a3;
    if (!a3)
    {
      [(MFCaptionLabel *)self _setNeedsLabelUpdate];
    }
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = CGRectGetWidth(a3);
  [(MFCaptionLabel *)self bounds];
  v9 = v8 - CGRectGetWidth(v11);
  if (v9 < 0.0)
  {
    v9 = -v9;
  }

  if (v9 > 0.00000011920929)
  {
    [(MFCaptionLabel *)self _setNeedsLabelUpdate];
  }

  v10.receiver = self;
  v10.super_class = MFCaptionLabel;
  [(MFCaptionLabel *)&v10 setBounds:x, y, width, height];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = CGRectGetWidth(a3);
  [(MFCaptionLabel *)self frame];
  v9 = v8 - CGRectGetWidth(v11);
  if (v9 < 0.0)
  {
    v9 = -v9;
  }

  if (v9 > 0.00000011920929)
  {
    [(MFCaptionLabel *)self _setNeedsLabelUpdate];
  }

  v10.receiver = self;
  v10.super_class = MFCaptionLabel;
  [(MFCaptionLabel *)&v10 setFrame:x, y, width, height];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MFCaptionLabel;
  [(MFCaptionLabel *)&v3 layoutSubviews];
  if (self->_needsLabelUpdate)
  {
    [(MFCaptionLabel *)self updateLabelNow];
  }
}

- (void)_setNeedsLabelUpdate
{
  if (![(MFCaptionLabel *)self preventAutoUpdatingLabel])
  {
    self->_needsLabelUpdate = 1;

    [(MFCaptionLabel *)self setNeedsLayout];
  }
}

- (id)_stringAtIndexForCombinedRecipientLists:(unint64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = self->_toRecipients;
  v12 = self->_ccRecipients;
  v13 = self->_bccRecipients;
  v14 = self->_fromSenders;
  v15 = self->_otherSigners;
  v5 = v11;
  v6 = 0;
  while (a3 >= [(NSArray *)v5 count:v11])
  {
    a3 -= [(NSArray *)v5 count];
    if (++v6 <= 4)
    {
      v7 = (&v11)[v6];

      v5 = v7;
    }
  }

  if (a3 >= [(NSArray *)v5 count])
  {
    v8 = 0;
  }

  else
  {
    v8 = [(NSArray *)v5 objectAtIndexedSubscript:a3];
  }

  for (i = 4; i != -1; --i)
  {
  }

  return v8;
}

- (id)_whitespaceTextAttachment
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 24);
  +[MFModernLabelledAtomList spaceBetweenColonAndFirstAtomNaturalEdge];
  v6 = v5;
  v7 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  [v7 setBounds:{v2, v3, v6, v4}];

  return v7;
}

- (void)updateLabelNow
{
  if (pthread_main_np() != 1)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"MFCaptionLabel.m" lineNumber:188 description:@"Current thread must be main"];
  }

  v4 = MEMORY[0x1E696AEC0];
  [(MFCaptionLabel *)self bounds];
  Width = CGRectGetWidth(v27);
  v6 = [(NSArray *)self->_toRecipients componentsJoinedByString:@", "];
  v7 = [(NSArray *)self->_ccRecipients componentsJoinedByString:@", "];
  v8 = [(NSArray *)self->_bccRecipients componentsJoinedByString:@", "];
  v9 = [(NSArray *)self->_fromSenders componentsJoinedByString:@", "];
  v10 = [(NSArray *)self->_otherSigners componentsJoinedByString:@", "];
  v11 = [v4 stringWithFormat:@"%fTo:%@Cc:%@Bcc:%@From:%@Other:%@", *&Width, v6, v7, v8, v9, v10];

  v12 = [objc_opt_class() attributedStringsCache];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __32__MFCaptionLabel_updateLabelNow__block_invoke;
  v26[3] = &unk_1E806CB78;
  v26[4] = self;
  v13 = [v12 objectForKey:v11 generator:v26];

  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E696AD40]);
    [v14 appendAttributedString:v13];
    v15 = [(MFCaptionLabel *)self _whitespaceStringWithWidth:4.0];
    [v14 appendAttributedString:v15];

    v16 = [(MFCaptionLabel *)self _chevronAttributedString];
    [v14 appendAttributedString:v16];

    if ([(NSArray *)self->_replyToSenders count])
    {
      v17 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:@"\n"];
      [v14 appendAttributedString:v17];

      v18 = [(MFCaptionLabel *)self _formattedReplyToString];
      [v14 appendAttributedString:v18];

      if ([(MFCaptionLabel *)self hasDifferentReplyToAddress])
      {
        v19 = MEMORY[0x1E696AAB0];
        v20 = [(MFCaptionLabel *)self _whitespaceTextAttachment];
        v21 = [v19 attributedStringWithAttachment:v20];
        [v14 appendAttributedString:v21];

        v22 = [(MFCaptionLabel *)self _questionMarkAttributedString];
        [v14 appendAttributedString:v22];
      }

      v23 = [(MFCaptionLabel *)self _whitespaceStringWithWidth:4.0];
      [v14 appendAttributedString:v23];

      v24 = [(MFCaptionLabel *)self _chevronAttributedString];
      [v14 appendAttributedString:v24];
    }

    [(MFCaptionLabel *)self setAttributedText:v14];
  }

  else
  {
    [(MFCaptionLabel *)self setAttributedText:0];
  }

  self->_needsLabelUpdate = 0;
}

- (id)_attributedStringForImage:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  [v5 setImage:v4];
  [v4 size];
  v7 = v6;
  v9 = v8;
  v10 = [(MFCaptionLabel *)self font];
  [v10 capHeight];

  UIRoundToViewScale();
  [v5 setBounds:{0.0, v11, v7, v9}];
  v12 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v5];

  return v12;
}

- (id)_chevronImage
{
  v2 = +[MFFontMetricCache sharedFontMetricCache];
  v3 = [v2 cachedImage:&__block_literal_global_42 forKey:@"captionLabel.chevronImage"];

  return v3;
}

id __31__MFCaptionLabel__chevronImage__block_invoke()
{
  v0 = [MEMORY[0x1E69DCAB8] mf_systemImageNamed:@"chevron.forward" forView:20];
  v1 = [MEMORY[0x1E69DC888] mailSubtitleGrayColor];
  v2 = [v0 imageWithTintColor:v1];

  return v2;
}

- (id)_chevronAttributedString
{
  v3 = [(MFCaptionLabel *)self _chevronImage];
  v4 = [(MFCaptionLabel *)self _attributedStringForImage:v3];

  return v4;
}

- (id)_questionMarkImage
{
  v2 = +[MFFontMetricCache sharedFontMetricCache];
  v3 = [v2 cachedImage:&__block_literal_global_49 forKey:@"captionLabel.questionMark"];

  return v3;
}

id __36__MFCaptionLabel__questionMarkImage__block_invoke()
{
  v0 = [MEMORY[0x1E69DCAB8] mf_systemImageNamed:@"questionmark.circle.fill" forView:20];
  v1 = [MEMORY[0x1E69DC888] mailSubtitleGrayColor];
  v2 = [v0 imageWithTintColor:v1];

  return v2;
}

- (id)_questionMarkAttributedString
{
  v3 = [(MFCaptionLabel *)self _questionMarkImage];
  v4 = [(MFCaptionLabel *)self _attributedStringForImage:v3];

  return v4;
}

- (id)_whitespaceStringWithWidth:(double)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  [v4 setBounds:{0.0, 0.0, a3, 0.0}];
  v5 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v4];

  return v5;
}

- (double)_maxWidthForRecipientList
{
  v3 = [(MFCaptionLabel *)self _chevronImage];
  [(MFCaptionLabel *)self bounds];
  Width = CGRectGetWidth(v13);
  [v3 size];
  v6 = Width - v5 + -4.0;
  if ([(MFCaptionLabel *)self hasDifferentReplyToAddress])
  {
    v7 = [(MFCaptionLabel *)self _questionMarkImage];
    [v7 size];
    v9 = v8;
    v10 = [(MFCaptionLabel *)self _whitespaceTextAttachment];
    [v10 bounds];
    v6 = v6 - v9 - v11;
  }

  return v6;
}

- (id)lengthValidationBlock
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__MFCaptionLabel_lengthValidationBlock__block_invoke;
  aBlock[3] = &unk_1E806CBC0;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

BOOL __39__MFCaptionLabel_lengthValidationBlock__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [v5 stringByAppendingString:v6];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;
  v16 = *MEMORY[0x1E69DB648];
  v9 = [*(a1 + 32) font];
  v17[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  [v8 sizeWithAttributes:v10];
  v12 = v11;

  [*(a1 + 32) _maxWidthForRecipientList];
  v14 = ceil(v12) < v13;

  return v14;
}

- (id)_concatenateStringForRecipientList:(id)a3 recipientCount:(unint64_t)a4 prefixGenerationBlock:(id)a5 listSuffix:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if ([v9 length])
  {
    if (v11)
    {
      v12 = [v9 stringByAppendingString:v11];

      v9 = v12;
    }

    v13 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v9];
    if (a4)
    {
      v30 = v11;
      v14 = 0;
      v15 = *MEMORY[0x1E69DB650];
      do
      {
        v16 = v10[2](v10, v14);
        if ([v16 length])
        {
          v17 = [v13 string];
          v18 = [v17 rangeOfString:v16];
          v20 = v19;

          if (v18 != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (v14)
            {
              v21 = [MEMORY[0x1E69DC888] mailModernLabelledAtomDefaultTextColor];
              [v13 addAttribute:v15 value:v21 range:{v18, v20}];
            }

            else
            {
              [v13 deleteCharactersInRange:{v18, v20}];
              v22 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
              v23 = [v16 stringByTrimmingCharactersInSet:v22];

              v21 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v23];
              v24 = MEMORY[0x1E696AAB0];
              v25 = [(MFCaptionLabel *)self _whitespaceTextAttachment];
              v26 = [v24 attributedStringWithAttachment:v25];
              [v21 insertAttributedString:v26 atIndex:{objc_msgSend(v21, "length")}];

              v27 = [v21 length];
              v28 = [MEMORY[0x1E69DC888] mailModernLabelledAtomDefaultTextColor];
              [v21 addAttribute:v15 value:v28 range:{0, v27}];

              [v13 insertAttributedString:v21 atIndex:0];
              v16 = v23;
            }
          }
        }

        ++v14;
      }

      while (a4 != v14);
      v11 = v30;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_formattedReplyToString
{
  v3 = [(NSArray *)self->_replyToSenders count];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__MFCaptionLabel__formattedReplyToString__block_invoke_2;
  aBlock[3] = &unk_1E806CC08;
  aBlock[4] = self;
  v14 = v3 > 1;
  v4 = _Block_copy(aBlock);
  v5 = +[MFAddressConcatenator defaultRecipientListConcatenator];
  v11 = 0;
  v12 = 0;
  v6 = [(MFCaptionLabel *)self lengthValidationBlock];
  [v5 getCommaSeparatedAddressList:&v12 andListSuffix:&v11 withAddressCount:v3 prefixForAddressAtIndex:&__block_literal_global_58 stringForAddressAtIndex:v4 lengthValidationBlock:v6];
  v7 = v12;
  v8 = v11;

  v9 = [(MFCaptionLabel *)self _concatenateStringForRecipientList:v7 recipientCount:v3 prefixGenerationBlock:&__block_literal_global_58 listSuffix:v8];

  return v9;
}

id __41__MFCaptionLabel__formattedReplyToString__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 || (_EFLocalizedString(), (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v2 = 0;
  }

  else
  {
    v4 = v3;
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@ ", &stru_1F3CF3758, v3];
  }

  return v2;
}

id __41__MFCaptionLabel__formattedReplyToString__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 816));
  v5 = *(a1 + 32);
  v6 = [v5 replyToSenders];
  v7 = [v6 objectAtIndexedSubscript:a2];
  v8 = [v7 stringValue];
  v9 = [WeakRetained captionLabel:v5 displayNameForEmailAddress:v8 abbreviated:*(a1 + 40)];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [*(a1 + 32) replyToSenders];
    v13 = [v12 objectAtIndexedSubscript:a2];
    v11 = [v13 stringValue];
  }

  return v11;
}

- (id)_formattedAttributedString
{
  v3 = [(NSArray *)self->_toRecipients count];
  v4 = [(NSArray *)self->_ccRecipients count]+ v3;
  v5 = [(NSArray *)self->_bccRecipients count];
  v6 = v4 + v5 + [(NSArray *)self->_fromSenders count];
  v7 = v6 + [(NSArray *)self->_otherSigners count];
  v8 = [MEMORY[0x1E695DF58] ef_directionalMarkForCurrentLocale];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__MFCaptionLabel__formattedAttributedString__block_invoke;
  aBlock[3] = &unk_1E806CC30;
  aBlock[4] = self;
  v9 = v8;
  v23 = v9;
  v10 = _Block_copy(aBlock);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __44__MFCaptionLabel__formattedAttributedString__block_invoke_2;
  v20[3] = &unk_1E806CC08;
  v20[4] = self;
  v21 = v7 > 1;
  v11 = _Block_copy(v20);
  v12 = +[MFAddressConcatenator defaultRecipientListConcatenator];
  v18 = 0;
  v19 = 0;
  v13 = [(MFCaptionLabel *)self lengthValidationBlock];
  [v12 getCommaSeparatedAddressList:&v19 andListSuffix:&v18 withAddressCount:v7 prefixForAddressAtIndex:v10 stringForAddressAtIndex:v11 lengthValidationBlock:v13];
  v14 = v19;
  v15 = v18;

  v16 = [(MFCaptionLabel *)self _concatenateStringForRecipientList:v14 recipientCount:v7 prefixGenerationBlock:v10 listSuffix:v15];

  return v16;
}

id __44__MFCaptionLabel__formattedAttributedString__block_invoke(uint64_t a1, char *a2)
{
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v4 = [v5 localizedStringForKey:@"TO" value:&stru_1F3CF3758 table:@"Main"];
  }

  if ([*(*(a1 + 32) + 824) count] == a2)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"CC" value:&stru_1F3CF3758 table:@"Main"];

    v4 = v7;
  }

  v8 = [*(*(a1 + 32) + 824) count];
  if (([*(*(a1 + 32) + 832) count] + v8) == a2)
  {
    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"BCC" value:&stru_1F3CF3758 table:@"Main"];

    v4 = v10;
  }

  v11 = [*(*(a1 + 32) + 824) count];
  v12 = [*(*(a1 + 32) + 832) count];
  if ((v12 + v11 + [*(*(a1 + 32) + 840) count]) == a2)
  {
    v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"FROM" value:&stru_1F3CF3758 table:@"Main"];

    v4 = v14;
  }

  v15 = [*(*(a1 + 32) + 824) count];
  v16 = [*(*(a1 + 32) + 832) count];
  v17 = [*(*(a1 + 32) + 840) count];
  if (&v15[v16 + v17 + [*(*(a1 + 32) + 856) count]] == a2)
  {
    v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v18 = [v15 localizedStringForKey:@"OTHER_SIGNERS" value:&stru_1F3CF3758 table:@"Main"];

    v4 = v18;
  }

  if (v4)
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = *(a1 + 40);
    if (a2)
    {
      v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v21 = [v15 localizedStringForKey:@"RECIPIENT_TYPES_SEPARATOR" value:&stru_1F3CF3758 table:@"Main"];
    }

    else
    {
      v21 = &stru_1F3CF3758;
    }

    v22 = [v19 stringWithFormat:@"%@%@%@ ", v20, v21, v4];
    if (a2)
    {
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

id __44__MFCaptionLabel__formattedAttributedString__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _stringAtIndexForCombinedRecipientLists:a2];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 816));
  v5 = [WeakRetained captionLabel:*(a1 + 32) displayNameForEmailAddress:v3 abbreviated:*(a1 + 40)];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"⁨%@⁩", v8];

  return v9;
}

- (MFCaptionLabelDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end