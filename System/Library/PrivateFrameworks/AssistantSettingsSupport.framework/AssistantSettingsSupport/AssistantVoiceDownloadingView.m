@interface AssistantVoiceDownloadingView
- (AssistantVoiceDownloadingView)initWithActivityIndicatorStyle:(int64_t)a3;
- (void)layoutSubviews;
- (void)sizeToFit;
@end

@implementation AssistantVoiceDownloadingView

- (AssistantVoiceDownloadingView)initWithActivityIndicatorStyle:(int64_t)a3
{
  v19.receiver = self;
  v19.super_class = AssistantVoiceDownloadingView;
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [(AssistantVoiceDownloadingView *)&v19 initWithFrame:*MEMORY[0x277CBF3A0], v5, v6, v7];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:a3];
    indicator = v8->_indicator;
    v8->_indicator = v9;

    [(UIActivityIndicatorView *)v8->_indicator startAnimating];
    v11 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
    downloadLabel = v8->_downloadLabel;
    v8->_downloadLabel = v11;

    v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v8->_downloadLabel setFont:v13];

    [(UILabel *)v8->_downloadLabel setAdjustsFontForContentSizeCategory:1];
    v14 = [MEMORY[0x277D75348] lightGrayColor];
    [(UILabel *)v8->_downloadLabel setTextColor:v14];

    v15 = +[AssistantVoiceController bundle];
    v16 = SFLocalizableWAPIStringKeyForKey();
    v17 = [v15 localizedStringForKey:v16 value:&stru_285317CF0 table:@"AssistantSettings"];
    [(UILabel *)v8->_downloadLabel setText:v17];

    [(AssistantVoiceDownloadingView *)v8 addSubview:v8->_indicator];
    [(AssistantVoiceDownloadingView *)v8 addSubview:v8->_downloadLabel];
  }

  return v8;
}

- (void)sizeToFit
{
  [(UILabel *)self->_downloadLabel sizeToFit];
  [(UILabel *)self->_downloadLabel frame];
  Width = CGRectGetWidth(v9);
  [(UIActivityIndicatorView *)self->_indicator frame];
  v4 = Width + CGRectGetWidth(v10) + 8.0;
  [(UILabel *)self->_downloadLabel frame];
  Height = CGRectGetHeight(v11);
  [(UIActivityIndicatorView *)self->_indicator frame];
  v6 = CGRectGetHeight(v12);
  if (Height >= v6)
  {
    v7 = Height;
  }

  else
  {
    v7 = v6;
  }

  [(AssistantVoiceDownloadingView *)self setFrame:0.0, 0.0, v4, v7];
}

- (void)layoutSubviews
{
  [(UILabel *)self->_downloadLabel sizeToFit];
  [(UILabel *)self->_downloadLabel frame];
  v3 = CGRectGetMaxX(v10) + 8.0;
  [(AssistantVoiceDownloadingView *)self frame];
  Height = CGRectGetHeight(v11);
  [(UIActivityIndicatorView *)self->_indicator frame];
  v5 = (Height - CGRectGetHeight(v12)) * 0.5;
  [(UIActivityIndicatorView *)self->_indicator frame];
  Width = CGRectGetWidth(v13);
  [(UIActivityIndicatorView *)self->_indicator frame];
  v7 = CGRectGetHeight(v14);
  indicator = self->_indicator;

  [(UIActivityIndicatorView *)indicator setFrame:v3, v5, Width, v7];
}

@end