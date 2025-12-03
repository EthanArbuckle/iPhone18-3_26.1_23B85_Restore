@interface AAUIInheritanceAccessKeyPDFGenerator
- (AAUIInheritanceAccessKeyPDFGenerator)initWithAppleAccount:(id)account localContactInfo:(id)info;
- (double)_renderAccountDetailsWithPageRect:(CGRect)rect yPosition:(double)position;
- (double)_renderMessageWithPageRect:(CGRect)rect yPosition:(double)position;
- (double)_renderQRCodeImageWithPageRect:(CGRect)rect yPosition:(double)position;
- (double)_renderRectBoxWithPageRect:(CGRect)rect yPosition:(double)position drawContext:(CGContext *)context;
- (double)_renderTitleWithPageRect:(CGRect)rect;
- (id)_attributedStringWithField:(id)field value:(id)value;
- (id)_pdfMetaData;
- (id)createPDFDocumentData;
- (void)_renderAccessKeyWithPageRect:(CGRect)rect yPosition:(double)position;
- (void)_renderFooterWithPageRect:(CGRect)rect yPosition:(double)position;
- (void)_renderLogoImageWithPageRect:(CGRect)rect;
@end

@implementation AAUIInheritanceAccessKeyPDFGenerator

- (AAUIInheritanceAccessKeyPDFGenerator)initWithAppleAccount:(id)account localContactInfo:(id)info
{
  accountCopy = account;
  infoCopy = info;
  v28.receiver = self;
  v28.super_class = AAUIInheritanceAccessKeyPDFGenerator;
  v8 = [(AAUIInheritanceAccessKeyPDFGenerator *)&v28 init];
  if (v8)
  {
    if (([infoCopy contactType] & 4) != 0)
    {
      aa_fullName = [accountCopy aa_fullName];
      ownerDisplayName = v8->_ownerDisplayName;
      v8->_ownerDisplayName = aa_fullName;

      aa_firstName = [accountCopy aa_firstName];
      ownerFirstName = v8->_ownerFirstName;
      v8->_ownerFirstName = aa_firstName;

      aa_primaryEmail = [accountCopy aa_primaryEmail];
      ownerEmailAddress = v8->_ownerEmailAddress;
      v8->_ownerEmailAddress = aa_primaryEmail;

      displayName = [infoCopy displayName];
    }

    else
    {
      if (([infoCopy contactType] & 8) == 0)
      {
LABEL_7:
        v23 = objc_alloc(MEMORY[0x1E698B8D8]);
        inheritanceContactInfo = [infoCopy inheritanceContactInfo];
        v25 = [v23 initWithContactInfo:inheritanceContactInfo contactType:{objc_msgSend(infoCopy, "contactType")}];
        contactController = v8->_contactController;
        v8->_contactController = v25;

        goto LABEL_8;
      }

      displayName2 = [infoCopy displayName];
      v10 = v8->_ownerDisplayName;
      v8->_ownerDisplayName = displayName2;

      firstName = [infoCopy firstName];
      v12 = v8->_ownerFirstName;
      v8->_ownerFirstName = firstName;

      handle = [infoCopy handle];
      v14 = v8->_ownerEmailAddress;
      v8->_ownerEmailAddress = handle;

      displayName = [accountCopy aa_fullName];
    }

    contactDisplayName = v8->_contactDisplayName;
    v8->_contactDisplayName = displayName;

    goto LABEL_7;
  }

LABEL_8:

  return v8;
}

- (id)createPDFDocumentData
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCA90]);
  _pdfMetaData = [(AAUIInheritanceAccessKeyPDFGenerator *)self _pdfMetaData];
  [v3 setDocumentInfo:_pdfMetaData];

  v5 = [objc_alloc(MEMORY[0x1E69DCA88]) initWithBounds:v3 format:{0.0, 0.0, 612.0, 792.0}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__AAUIInheritanceAccessKeyPDFGenerator_createPDFDocumentData__block_invoke;
  v8[3] = &unk_1E820DC20;
  v8[5] = 0;
  v8[6] = 0;
  v8[4] = self;
  v9 = xmmword_1C55AD7C0;
  v6 = [v5 PDFDataWithActions:v8];

  return v6;
}

uint64_t __61__AAUIInheritanceAccessKeyPDFGenerator_createPDFDocumentData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 beginPage];
  [*(a1 + 32) _renderLogoImageWithPageRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(a1 + 32) _renderTitleWithPageRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(a1 + 32) _renderAccountDetailsWithPageRect:*(a1 + 40) yPosition:{*(a1 + 48), *(a1 + 56), *(a1 + 64), v4 + 15.0}];
  [*(a1 + 32) _renderMessageWithPageRect:*(a1 + 40) yPosition:{*(a1 + 48), *(a1 + 56), *(a1 + 64), v5 + 15.0}];
  v7 = v6;
  v8 = *(a1 + 32);
  v9 = v6 + 15.0;
  v10 = [v3 CGContext];

  [v8 _renderRectBoxWithPageRect:v10 yPosition:*(a1 + 40) drawContext:{*(a1 + 48), *(a1 + 56), *(a1 + 64), v9}];
  v12 = v11;
  [*(a1 + 32) _renderQRCodeImageWithPageRect:*(a1 + 40) yPosition:{*(a1 + 48), *(a1 + 56), *(a1 + 64), v7 + 30.0}];
  [*(a1 + 32) _renderAccessKeyWithPageRect:*(a1 + 40) yPosition:{*(a1 + 48), *(a1 + 56), *(a1 + 64), v13 + 15.0}];
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);

  return [v14 _renderFooterWithPageRect:v15 yPosition:{v16, v17, v18, v12 + 15.0}];
}

- (id)_pdfMetaData
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695F3C0];
  printAccessKeyDocumentMessage = [MEMORY[0x1E698B9B0] printAccessKeyDocumentMessage];
  v6[0] = printAccessKeyDocumentMessage;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (void)_renderLogoImageWithPageRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"applelogo"];
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v7 = CGRectGetWidth(v20) * 0.05;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v8 = CGRectGetHeight(v21) * 0.05;
  [v18 size];
  v10 = v7 / v9;
  [v18 size];
  v12 = fmin(v10, v8 / v11);
  [v18 size];
  v14 = v13 * v12;
  [v18 size];
  v16 = v15 * v12;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v17 = CGRectGetWidth(v22) * 0.08;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  [v18 drawInRect:{v17, CGRectGetHeight(v23) * 0.035, v14, v16}];
}

- (double)_renderTitleWithPageRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v21[2] = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E69DB878] systemFontOfSize:26.0 weight:*MEMORY[0x1E69DB980]];
  v8 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v8 setAlignment:1];
  [v8 setLineBreakMode:0];
  v9 = *MEMORY[0x1E69DB688];
  v20[0] = *MEMORY[0x1E69DB648];
  v20[1] = v9;
  v21[0] = v7;
  v21[1] = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v11 = objc_alloc(MEMORY[0x1E696AAB0]);
  printAccessKeyDocumentTitle = [MEMORY[0x1E698B9B0] printAccessKeyDocumentTitle];
  v13 = [v11 initWithString:printAccessKeyDocumentTitle attributes:v10];

  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v14 = CGRectGetWidth(v22) * 0.08;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v15 = CGRectGetHeight(v23) * 0.12;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v16 = CGRectGetWidth(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v17 = v16 + CGRectGetWidth(v25) * -0.16;
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v18 = CGRectGetHeight(v26) * 0.08;
  [v13 drawInRect:{v14, v15, v17, v18}];

  return v15 + v18;
}

- (double)_renderAccountDetailsWithPageRect:(CGRect)rect yPosition:(double)position
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = objc_alloc_init(MEMORY[0x1E696AD40]);
  printAccessKeyOwnerNameField = [MEMORY[0x1E698B9B0] printAccessKeyOwnerNameField];
  v12 = [(AAUIInheritanceAccessKeyPDFGenerator *)self _attributedStringWithField:printAccessKeyOwnerNameField value:self->_ownerDisplayName];
  [v10 appendAttributedString:v12];

  printAccessKeyOwnerAppleIDField = [MEMORY[0x1E698B9B0] printAccessKeyOwnerAppleIDField];
  v14 = [(AAUIInheritanceAccessKeyPDFGenerator *)self _attributedStringWithField:printAccessKeyOwnerAppleIDField value:self->_ownerEmailAddress];
  [v10 appendAttributedString:v14];

  printAccessKeyBeneficiaryNameField = [MEMORY[0x1E698B9B0] printAccessKeyBeneficiaryNameField];
  v16 = [(AAUIInheritanceAccessKeyPDFGenerator *)self _attributedStringWithField:printAccessKeyBeneficiaryNameField value:self->_contactDisplayName];
  [v10 appendAttributedString:v16];

  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v17 = CGRectGetWidth(v22) * 0.08;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v18 = CGRectGetWidth(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v19 = v18 + CGRectGetWidth(v24) * -0.16;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v20 = CGRectGetHeight(v25) * 0.07;
  [v10 drawInRect:{v17, position, v19, v20}];

  return v20 + position;
}

- (id)_attributedStringWithField:(id)field value:(id)value
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD40];
  valueCopy = value;
  fieldCopy = field;
  v8 = objc_alloc_init(v5);
  v9 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0 weight:*MEMORY[0x1E69DB980]];
  fieldCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", fieldCopy];

  v11 = objc_alloc(MEMORY[0x1E696AAB0]);
  v23 = *MEMORY[0x1E69DB648];
  v12 = v23;
  v24[0] = v9;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v14 = [v11 initWithString:fieldCopy attributes:v13];

  [v8 appendAttributedString:v14];
  v15 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0 weight:*MEMORY[0x1E69DB978]];
  valueCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", valueCopy];

  v17 = objc_alloc(MEMORY[0x1E696AAB0]);
  v21 = v12;
  v22 = v15;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v19 = [v17 initWithString:valueCopy attributes:v18];

  [v8 appendAttributedString:v19];

  return v8;
}

- (double)_renderMessageWithPageRect:(CGRect)rect yPosition:(double)position
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v23[2] = *MEMORY[0x1E69E9840];
  v10 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0 weight:*MEMORY[0x1E69DB978]];
  v11 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v11 setAlignment:4];
  [v11 setLineBreakMode:0];
  [v11 setParagraphSpacing:0.4];
  v12 = *MEMORY[0x1E69DB688];
  v22[0] = *MEMORY[0x1E69DB648];
  v22[1] = v12;
  v23[0] = v10;
  v23[1] = v11;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v14 = MEMORY[0x1E696AEC0];
  printAccessKeyDocumentMessage = [MEMORY[0x1E698B9B0] printAccessKeyDocumentMessage];
  v16 = [v14 stringWithFormat:printAccessKeyDocumentMessage, self->_ownerFirstName, self->_ownerFirstName];

  v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v16 attributes:v13];
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v18 = CGRectGetWidth(v24) * 0.08;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v19 = CGRectGetWidth(v25) + v18 * -2.0;
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v20 = CGRectGetHeight(v26) * 0.26;
  [v17 drawInRect:{v18, position, v19, v20}];

  return v20 + position;
}

- (double)_renderRectBoxWithPageRect:(CGRect)rect yPosition:(double)position drawContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CGContextSaveGState(context);
  CGContextSetLineWidth(context, 1.0);
  lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
  Components = CGColorGetComponents([lightGrayColor cgColor]);
  CGContextSetStrokeColor(context, Components);

  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v13 = CGRectGetWidth(v18) * 0.08;
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v14 = CGRectGetWidth(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v15 = v14 + CGRectGetWidth(v20) * -0.16;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v16 = CGRectGetHeight(v21) * 0.28;
  v22.origin.x = v13;
  v22.origin.y = position;
  v22.size.width = v15;
  v22.size.height = v16;
  CGContextAddRect(context, v22);
  CGContextStrokePath(context);
  CGContextRestoreGState(context);
  return v16 + position;
}

- (double)_renderQRCodeImageWithPageRect:(CGRect)rect yPosition:(double)position
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = MEMORY[0x1E69DCAB8];
  v10 = [(AAInheritanceContactController *)self->_contactController accessKeyQRCodeImageDataWithSize:CGRectGetWidth(rect) * 0.5];
  v11 = [v9 imageWithData:v10];

  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v12 = CGRectGetWidth(v23) * 0.15;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v13 = CGRectGetHeight(v24) * 0.1;
  [v11 size];
  v15 = v12 / v14;
  [v11 size];
  v17 = fmin(v15, v13 / v16);
  [v11 size];
  v19 = v18 * v17;
  [v11 size];
  v21 = v20 * v17;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  [v11 drawInRect:{(CGRectGetWidth(v25) - v19) * 0.5, position, v19, v21}];

  return v21 + position;
}

- (void)_renderAccessKeyWithPageRect:(CGRect)rect yPosition:(double)position
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v22[2] = *MEMORY[0x1E69E9840];
  v10 = [MEMORY[0x1E69DB878] systemFontOfSize:18.0 weight:*MEMORY[0x1E69DB980]];
  v11 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v11 setAlignment:1];
  [v11 setLineBreakMode:0];
  v12 = *MEMORY[0x1E69DB688];
  v21[0] = *MEMORY[0x1E69DB648];
  v21[1] = v12;
  v22[0] = v10;
  v22[1] = v11;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v14 = MEMORY[0x1E696AEC0];
  printAccessKeyPrefix = [MEMORY[0x1E698B9B0] printAccessKeyPrefix];
  accessKeyString = [(AAInheritanceContactController *)self->_contactController accessKeyString];
  v17 = [v14 stringWithFormat:@"%@: %@", printAccessKeyPrefix, accessKeyString];

  v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v17 attributes:v13];
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v19 = CGRectGetWidth(v23) * 0.14;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v20 = CGRectGetWidth(v24) + v19 * -2.0;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  [v18 drawInRect:{v19, position, v20, CGRectGetHeight(v25) * 0.12}];
}

- (void)_renderFooterWithPageRect:(CGRect)rect yPosition:(double)position
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v20[2] = *MEMORY[0x1E69E9840];
  v9 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0 weight:*MEMORY[0x1E69DB980]];
  v10 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v10 setAlignment:1];
  [v10 setLineBreakMode:0];
  v11 = *MEMORY[0x1E69DB688];
  v19[0] = *MEMORY[0x1E69DB648];
  v19[1] = v11;
  v20[0] = v9;
  v20[1] = v10;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v13 = objc_alloc(MEMORY[0x1E696AAB0]);
  printAccessKeyFooter = [MEMORY[0x1E698B9B0] printAccessKeyFooter];
  v15 = [v13 initWithString:printAccessKeyFooter attributes:v12];

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v16 = CGRectGetWidth(v21) * 0.08;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v17 = CGRectGetWidth(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v18 = v17 + CGRectGetWidth(v23) * -0.16;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  [v15 drawInRect:{v16, position, v18, CGRectGetHeight(v24) * 0.04}];
}

@end