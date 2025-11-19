@interface WFAudioInputViewController
- (WFAudioInputViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
@end

@implementation WFAudioInputViewController

- (void)loadView
{
  v22 = [MEMORY[0x277D75210] effectWithStyle:2];
  v21 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v22];
  v3 = [v21 contentView];
  contentView = self->_contentView;
  self->_contentView = v3;

  [(WFAudioInputViewController *)self setView:v21];
  v20 = [MEMORY[0x277D75D00] effectForBlurEffect:v22];
  v5 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v20];
  v6 = [v5 contentView];
  [(UIView *)self->_contentView addSubview:v5];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v7) = 1148846080;
  [v6 setContentHuggingPriority:1 forAxis:v7];
  v8 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(UILabel *)v8 setTextAlignment:1];
  [(UILabel *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v8 setNumberOfLines:0];
  v9 = [MEMORY[0x277D74300] systemFontOfSize:30.0];
  [(UILabel *)v8 setFont:v9];

  [v6 addSubview:v8];
  statusLabel = self->_statusLabel;
  self->_statusLabel = v8;
  v11 = v8;

  v12 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTap];
  [(UIView *)self->_contentView addGestureRecognizer:v12];
  v13 = _NSDictionaryOfVariableBindings(&cfstr_VibrantviewSta.isa, v5, v11, 0);
  v14 = self->_contentView;
  v15 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[vibrantView]|" options:0 metrics:0 views:v13];
  [(UIView *)v14 addConstraints:v15];

  v16 = self->_contentView;
  v17 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[vibrantView]|" options:0 metrics:0 views:v13];
  [(UIView *)v16 addConstraints:v17];

  v18 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[statusLabel]|" options:0 metrics:0 views:v13];
  [v6 addConstraints:v18];

  v19 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[statusLabel]|" options:0 metrics:0 views:v13];

  [v6 addConstraints:v19];
}

- (WFAudioInputViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = WFAudioInputViewController;
  v4 = [(WFAudioInputViewController *)&v8 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(WFAudioInputViewController *)v4 setModalPresentationStyle:5];
    v6 = v5;
  }

  return v5;
}

@end