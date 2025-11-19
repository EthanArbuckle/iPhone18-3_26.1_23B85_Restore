@interface WFOverlayImageEditorProcessingView
- (WFOverlayImageEditorProcessingView)initWithEffect:(id)a3;
@end

@implementation WFOverlayImageEditorProcessingView

- (WFOverlayImageEditorProcessingView)initWithEffect:(id)a3
{
  v25.receiver = self;
  v25.super_class = WFOverlayImageEditorProcessingView;
  v3 = [(WFOverlayImageEditorProcessingView *)&v25 initWithEffect:a3];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v4 startAnimating];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [(WFOverlayImageEditorProcessingView *)v3 contentView];
    [v5 addSubview:v4];

    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    v7 = [MEMORY[0x277D74300] systemFontOfSize:15.0];
    [v6 setFont:v7];

    v8 = [MEMORY[0x277D75348] whiteColor];
    [v6 setTextColor:v8];

    v9 = WFLocalizedString(@"Processing Image…");
    [v6 setText:v9];

    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [(WFOverlayImageEditorProcessingView *)v3 contentView];
    [v10 addSubview:v6];

    v11 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [(WFOverlayImageEditorProcessingView *)v3 contentView];
    [v12 addSubview:v11];

    v13 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [(WFOverlayImageEditorProcessingView *)v3 contentView];
    [v14 addSubview:v13];

    v15 = [(WFOverlayImageEditorProcessingView *)v3 contentView];
    v16 = MEMORY[0x277CCAAD0];
    v17 = _NSDictionaryOfVariableBindings(&cfstr_Spacer1Spacer2.isa, v11, v13, v6, v4, 0);
    v18 = [v16 constraintsWithVisualFormat:@"H:|[spacer1][processingIndicatorView]-4-[processingLabel][spacer2(==spacer1)]|" options:1024 metrics:0 views:v17];
    [v15 addConstraints:v18];

    v19 = [(WFOverlayImageEditorProcessingView *)v3 contentView];
    v20 = MEMORY[0x277CCAAD0];
    v21 = [(WFOverlayImageEditorProcessingView *)v3 contentView];
    v22 = [v20 constraintWithItem:v21 attribute:10 relatedBy:0 toItem:v6 attribute:10 multiplier:1.0 constant:0.0];
    [v19 addConstraint:v22];

    v23 = v3;
  }

  return v3;
}

@end