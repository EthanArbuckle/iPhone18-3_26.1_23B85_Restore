@interface MFSecureMIMEContactHeaderViewModel
- (id)contactsCustomViewConfiguration;
@end

@implementation MFSecureMIMEContactHeaderViewModel

- (id)contactsCustomViewConfiguration
{
  v39[1] = *MEMORY[0x1E69E9840];
  mailInteractiveColor = [MEMORY[0x1E69DC888] mailInteractiveColor];
  warningLabelText = [(MFSecureMIMEContactHeaderViewModel *)self warningLabelText];
  v5 = [warningLabelText length];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E696AAB0]);
    warningLabelText2 = [(MFSecureMIMEContactHeaderViewModel *)self warningLabelText];
    v38 = *MEMORY[0x1E69DB650];
    mailSecureMIMEWarningColor = [MEMORY[0x1E69DC888] mailSecureMIMEWarningColor];
    v39[0] = mailSecureMIMEWarningColor;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v10 = [v6 initWithString:warningLabelText2 attributes:v9];

    v11 = @"questionmark.circle.fill";
    mailSecureMIMEWarningColor2 = [MEMORY[0x1E69DC888] mailSecureMIMEWarningColor];

    mailInteractiveColor = mailSecureMIMEWarningColor2;
    goto LABEL_8;
  }

  secureLabelText = [(MFSecureMIMEContactHeaderViewModel *)self secureLabelText];
  v14 = [secureLabelText length];

  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x1E696AAB0]);
    secureLabelText2 = [(MFSecureMIMEContactHeaderViewModel *)self secureLabelText];
    v36 = *MEMORY[0x1E69DB650];
    mailSecureMIMERegularTextColor = [MEMORY[0x1E69DC888] mailSecureMIMERegularTextColor];
    v37 = mailSecureMIMERegularTextColor;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v10 = [v15 initWithString:secureLabelText2 attributes:v18];

    v19 = MFImageGlyphLock;
LABEL_7:
    v11 = *v19;
    goto LABEL_8;
  }

  signedLabelText = [(MFSecureMIMEContactHeaderViewModel *)self signedLabelText];
  v10 = [signedLabelText length];

  if (v10)
  {
    v21 = objc_alloc(MEMORY[0x1E696AAB0]);
    signedLabelText2 = [(MFSecureMIMEContactHeaderViewModel *)self signedLabelText];
    v34 = *MEMORY[0x1E69DB650];
    mailSecureMIMERegularTextColor2 = [MEMORY[0x1E69DC888] mailSecureMIMERegularTextColor];
    v35 = mailSecureMIMERegularTextColor2;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v10 = [v21 initWithString:signedLabelText2 attributes:v24];

    v19 = MFImageGlyphSigned;
    goto LABEL_7;
  }

  v11 = 0;
LABEL_8:
  v25 = [objc_alloc(MEMORY[0x1E695D110]) initWithAttributedTitle:v10];
  [v25 setTitleIconSymbolName:v11];
  [v25 setTitleIconColor:mailInteractiveColor];
  v26 = objc_alloc(MEMORY[0x1E696AAB0]);
  explanationText = [(MFSecureMIMEContactHeaderViewModel *)self explanationText];
  v28 = [v26 initWithString:explanationText];
  [v25 setBody:v28];

  actions = [(MFSecureMIMEContactHeaderViewModel *)self actions];
  v30 = [actions count];

  if (v30)
  {
    actions2 = [(MFSecureMIMEContactHeaderViewModel *)self actions];
    v32 = [actions2 ef_map:&__block_literal_global_33];
    [v25 setActions:v32];
  }

  return v25;
}

id __69__MFSecureMIMEContactHeaderViewModel_contactsCustomViewConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x1E695D100];
  v4 = [v2 title];
  v5 = [v2 target];
  v6 = [v3 contactActionWithTitle:v4 target:v5 selector:{objc_msgSend(v2, "actionSelector")}];

  return v6;
}

@end