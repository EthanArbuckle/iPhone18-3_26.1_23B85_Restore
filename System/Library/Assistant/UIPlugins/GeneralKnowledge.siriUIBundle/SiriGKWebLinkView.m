@interface SiriGKWebLinkView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SiriGKWebLinkView)initWithLinkedAnswer:(id)a3 safariBackURL:(id)a4;
- (void)layoutSubviews;
@end

@implementation SiriGKWebLinkView

- (SiriGKWebLinkView)initWithLinkedAnswer:(id)a3 safariBackURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = SiriGKWebLinkView;
  v8 = [(SiriGKWebLinkView *)&v26 init];
  if (v8)
  {
    v9 = [v6 sirigk_cardSection];
    v27 = v9;
    v10 = [NSArray arrayWithObjects:&v27 count:1];
    v11 = [SearchUI viewsForCardSections:v10 feedbackListener:0];
    v12 = [v11 firstObject];
    backingView = v8->_backingView;
    v8->_backingView = v12;

    [(SiriGKWebLinkView *)v8 addSubview:v8->_backingView];
    v14 = [v6 punchOut];

    if (v14)
    {
      v15 = [v6 punchOut];
      v16 = [v15 punchOutUri];
      punchoutURL = v8->_punchoutURL;
      v8->_punchoutURL = v16;

      if (!v7)
      {
LABEL_10:
        [(SiriGKView *)v8 setCommand:v15];

        goto LABEL_11;
      }

      v18 = [v15 punchOutUri];
      v19 = SiriGK_safariPunchoutURL(v18, v7);
      [v15 setPunchOutUri:v19];

LABEL_9:
      goto LABEL_10;
    }

    v20 = [v6 link];

    if (v20)
    {
      v15 = objc_alloc_init(SAUIAppPunchOut);
      [v15 setAppAvailableInStorefront:1];
      v21 = [v15 punchOutUri];
      v22 = v8->_punchoutURL;
      v8->_punchoutURL = v21;

      if (v7)
      {
        v23 = [v6 link];
        v24 = SiriGK_safariPunchoutURL(v23, v7);
        [v15 setPunchOutUri:v24];
      }

      v18 = +[SiriUIUtilities defaultBrowserBundleIdentifier];
      [v15 setBundleId:v18];
      goto LABEL_9;
    }
  }

LABEL_11:

  return v8;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIView *)self->_backingView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SiriGKWebLinkView;
  [(SiriGKWebLinkView *)&v4 layoutSubviews];
  backingView = self->_backingView;
  [(SiriGKWebLinkView *)self bounds];
  [(UIView *)backingView setFrame:?];
}

@end