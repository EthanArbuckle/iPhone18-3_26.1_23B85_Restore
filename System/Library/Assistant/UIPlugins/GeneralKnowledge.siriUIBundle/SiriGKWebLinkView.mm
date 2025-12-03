@interface SiriGKWebLinkView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SiriGKWebLinkView)initWithLinkedAnswer:(id)answer safariBackURL:(id)l;
- (void)layoutSubviews;
@end

@implementation SiriGKWebLinkView

- (SiriGKWebLinkView)initWithLinkedAnswer:(id)answer safariBackURL:(id)l
{
  answerCopy = answer;
  lCopy = l;
  v26.receiver = self;
  v26.super_class = SiriGKWebLinkView;
  v8 = [(SiriGKWebLinkView *)&v26 init];
  if (v8)
  {
    sirigk_cardSection = [answerCopy sirigk_cardSection];
    v27 = sirigk_cardSection;
    v10 = [NSArray arrayWithObjects:&v27 count:1];
    v11 = [SearchUI viewsForCardSections:v10 feedbackListener:0];
    firstObject = [v11 firstObject];
    backingView = v8->_backingView;
    v8->_backingView = firstObject;

    [(SiriGKWebLinkView *)v8 addSubview:v8->_backingView];
    punchOut = [answerCopy punchOut];

    if (punchOut)
    {
      punchOut2 = [answerCopy punchOut];
      punchOutUri = [punchOut2 punchOutUri];
      punchoutURL = v8->_punchoutURL;
      v8->_punchoutURL = punchOutUri;

      if (!lCopy)
      {
LABEL_10:
        [(SiriGKView *)v8 setCommand:punchOut2];

        goto LABEL_11;
      }

      punchOutUri2 = [punchOut2 punchOutUri];
      v19 = SiriGK_safariPunchoutURL(punchOutUri2, lCopy);
      [punchOut2 setPunchOutUri:v19];

LABEL_9:
      goto LABEL_10;
    }

    link = [answerCopy link];

    if (link)
    {
      punchOut2 = objc_alloc_init(SAUIAppPunchOut);
      [punchOut2 setAppAvailableInStorefront:1];
      punchOutUri3 = [punchOut2 punchOutUri];
      v22 = v8->_punchoutURL;
      v8->_punchoutURL = punchOutUri3;

      if (lCopy)
      {
        link2 = [answerCopy link];
        v24 = SiriGK_safariPunchoutURL(link2, lCopy);
        [punchOut2 setPunchOutUri:v24];
      }

      punchOutUri2 = +[SiriUIUtilities defaultBrowserBundleIdentifier];
      [punchOut2 setBundleId:punchOutUri2];
      goto LABEL_9;
    }
  }

LABEL_11:

  return v8;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIView *)self->_backingView sizeThatFits:fits.width, fits.height];
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