@interface THWReviewControlsRep
- (BOOL)control:(id)control isInteractionEnabledForRep:(id)rep;
- (THWReviewControlsRep)initWithLayout:(id)layout canvas:(id)canvas;
- (id)buttonControl:(id)control imageForState:(int)state highlighted:(BOOL)highlighted;
- (void)buttonControl:(id)control didUpdateLayer:(id)layer;
- (void)buttonControlWasPressed:(id)pressed;
- (void)control:(id)control repWasAdded:(id)added;
- (void)dealloc;
- (void)p_animateButtonLayer:(id)layer hide:(BOOL)hide;
- (void)setCheckAnswerButtonDisabled:(BOOL)disabled;
- (void)setCheckAnswerButtonState:(int)state;
- (void)setNextButtonHidden:(BOOL)hidden;
- (void)setPrevButtonHidden:(BOOL)hidden;
@end

@implementation THWReviewControlsRep

- (THWReviewControlsRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v5.receiver = self;
  v5.super_class = THWReviewControlsRep;
  result = [(THWReviewControlsRep *)&v5 initWithLayout:layout canvas:canvas];
  if (result)
  {
    result->_checkAnswerButtonDisabled = 1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWReviewControlsRep;
  [(THWReviewControlsRep *)&v3 dealloc];
}

- (void)setPrevButtonHidden:(BOOL)hidden
{
  if (self->_prevButtonHidden != hidden)
  {
    self->_prevButtonHidden = hidden;
    self->_prevButtonHiddenStateChanged = 1;
    canvas = [(THWReviewControlsRep *)self canvas];

    [canvas invalidateLayers];
  }
}

- (void)setNextButtonHidden:(BOOL)hidden
{
  if (self->_nextButtonHidden != hidden)
  {
    self->_nextButtonHidden = hidden;
    self->_nextButtonHiddenStateChanged = 1;
    canvas = [(THWReviewControlsRep *)self canvas];

    [canvas invalidateLayers];
  }
}

- (void)setCheckAnswerButtonDisabled:(BOOL)disabled
{
  if (self->_checkAnswerButtonDisabled != disabled)
  {
    self->_checkAnswerButtonDisabled = disabled;
    canvas = [(THWReviewControlsRep *)self canvas];

    [canvas invalidateLayers];
  }
}

- (void)setCheckAnswerButtonState:(int)state
{
  if (self->_checkAnswerButtonState != state)
  {
    self->_checkAnswerButtonState = state;
    canvas = [(THWReviewControlsRep *)self canvas];

    [canvas invalidateLayers];
  }
}

- (BOOL)control:(id)control isInteractionEnabledForRep:(id)rep
{
  v6 = [(THWControlContainerRep *)self controlHostRep:control];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v6 control:control isInteractionEnabledForRep:self])
  {
    v8 = 0;
  }

  else
  {
    v7 = [control tag];
    if (v7 > 2)
    {
      v8 = 1;
    }

    else
    {
      v8 = self->super.TSDContainerRep_opaque[*off_45E6E0[v7]] ^ 1;
    }
  }

  return v8 & 1;
}

- (void)control:(id)control repWasAdded:(id)added
{
  if ([control tag] <= 2)
  {
    objc_opt_class();
    v5 = TSUDynamicCast();

    [v5 setDelegate:self];
  }
}

- (void)buttonControlWasPressed:(id)pressed
{
  layout = [pressed layout];
  v5 = [layout tag];
  if (v5 == &dword_0 + 2)
  {
    if (self->_checkAnswerButtonDisabled)
    {
      return;
    }

    delegate = self->_delegate;
    selfCopy2 = self;
    v8 = &dword_0 + 2;
    goto LABEL_11;
  }

  if (v5 == &dword_0 + 1)
  {
    v6 = 297;
  }

  else
  {
    if (v5)
    {
      return;
    }

    v6 = 296;
  }

  if ((self->super.TSDContainerRep_opaque[v6] & 1) == 0)
  {
    v7 = self->_delegate;
    v8 = [layout tag];
    delegate = v7;
    selfCopy2 = self;
LABEL_11:

    [(THWReviewControlsDelegate *)delegate reviewControls:selfCopy2 buttonPressed:v8];
  }
}

- (id)buttonControl:(id)control imageForState:(int)state highlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  layout = [control layout];
  v9 = [-[THWReviewControlsRep layout](self "layout")];
  if ([layout tag])
  {
    if ([layout tag] != &dword_0 + 1)
    {
      return 0;
    }

    [-[THWReviewControlsRep layout](self "layout")];
    v11 = v10;
    v13 = v12;
    [objc_msgSend(control "canvas")];
    v15 = v14;
    v16 = v11;
    v17 = v13;
    v18 = 2;
  }

  else
  {
    [-[THWReviewControlsRep layout](self "layout")];
    v20 = v19;
    v22 = v21;
    [objc_msgSend(control "canvas")];
    v15 = v23;
    v16 = v20;
    v17 = v22;
    v18 = 4;
  }

  return [THWButtonUtilities navigationArrowImageWithSize:v18 direction:v9 color:highlightedCopy highlighted:v16 contentsScale:v17, v15];
}

- (void)p_animateButtonLayer:(id)layer hide:(BOOL)hide
{
  hideCopy = hide;
  v6 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  if (hideCopy)
  {
    *&v7 = 1.0;
  }

  else
  {
    *&v7 = 0.0;
  }

  if (hideCopy)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  [(CABasicAnimation *)v6 setFromValue:[NSNumber numberWithFloat:v7]];
  *&v9 = v8;
  [(CABasicAnimation *)v6 setToValue:[NSNumber numberWithFloat:v9]];
  [(CABasicAnimation *)v6 setDuration:0.15];
  [(CABasicAnimation *)v6 setRemovedOnCompletion:0];
  [(CABasicAnimation *)v6 setFillMode:kCAFillModeForwards];

  [layer addAnimation:v6 forKey:@"opacity"];
}

- (void)buttonControl:(id)control didUpdateLayer:(id)layer
{
  layout = [control layout];
  [-[THWReviewControlsRep canvas](self "canvas")];
  v9 = v8;
  layout2 = [(THWReviewControlsRep *)self layout];
  [layer setContentsGravity:kCAGravityResize];
  if (![layout tag])
  {
    if (self->_prevButtonHiddenStateChanged)
    {
      self->_prevButtonHiddenStateChanged = 0;
      v12 = 301;
      animatePrevButton = self->_animatePrevButton;
      v14 = 296;
      goto LABEL_7;
    }

LABEL_19:
    v19 = [objc_msgSend(layout2 "primaryColor")];

    [layer setBorderColor:v19];
    return;
  }

  if ([layout tag] == &dword_0 + 1)
  {
    if (self->_nextButtonHiddenStateChanged)
    {
      self->_nextButtonHiddenStateChanged = 0;
      v12 = 302;
      animatePrevButton = self->_animateNextButton;
      v14 = 297;
LABEL_7:
      if (animatePrevButton)
      {
        [(THWReviewControlsRep *)self p_animateButtonLayer:layer hide:self->super.TSDContainerRep_opaque[v14]];
      }

      else
      {
        LODWORD(v11) = 1.0;
        if (self->super.TSDContainerRep_opaque[v14])
        {
          *&v11 = 0.0;
        }

        [layer setOpacity:v11];
      }

      self->super.TSDContainerRep_opaque[v12] = 1;
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if ([layout tag] != &dword_0 + 2)
  {
    return;
  }

  LODWORD(v15) = 1.0;
  if ((self->_checkAnswerButtonState - 1) <= 2)
  {
    highlighted = [control highlighted];
    LODWORD(v15) = 1.0;
    if (highlighted)
    {
      *&v15 = 0.5;
    }
  }

  [layer setOpacity:v15];
  [layout2 buttonCornerRadius];
  [layer setCornerRadius:v9 * v17];
  if (self->_checkAnswerButtonState)
  {
    [layer setBackgroundColor:0];
    layout3 = layout2;
LABEL_24:
    [layer setBorderColor:{objc_msgSend(objc_msgSend(objc_msgSend(layout3, "primaryColor"), "colorWithAlphaComponent:", 0.4), "CGColor")}];
    [layout2 buttonStrokeWidth];
    [layer setBorderWidth:v9 * v20];
    goto LABEL_25;
  }

  if (self->_checkAnswerButtonDisabled)
  {
    [layer setBackgroundColor:0];
    layout3 = [(THWReviewControlsRep *)self layout];
    goto LABEL_24;
  }

  [layer setBorderWidth:0.0];
  if ([control highlighted])
  {
    v27 = 0.5;
  }

  else
  {
    v27 = 1.0;
  }

  [layer setBackgroundColor:{-[TSUColor CGColor](+[TSUColor colorWithRed:green:blue:alpha:](TSUColor, "colorWithRed:green:blue:alpha:", 0.09, 0.49, 0.98, v27), "CGColor")}];
  [layer setBorderColor:0];
LABEL_25:
  if (!self->_checkAnswerButtonLabel)
  {
    self->_checkAnswerButtonLabel = objc_alloc_init(THWLabelLayer);
    [(THWLabelLayer *)self->_checkAnswerButtonLabel setDelegate:+[THNoAnimationLayerDelegate sharedInstance]];
    -[THWLabelLayer setFontName:](self->_checkAnswerButtonLabel, "setFontName:", [layout2 buttonFontName]);
    [(THWLabelLayer *)self->_checkAnswerButtonLabel setHorizontalAlignment:1];
    [(THWLabelLayer *)self->_checkAnswerButtonLabel setVerticalAlignment:1];
    if (!self->_checkAnswerButtonLabel)
    {
      return;
    }
  }

  [objc_msgSend(control "canvas")];
  v22 = v21;
  [(THWLabelLayer *)self->_checkAnswerButtonLabel contentsScale];
  if (v23 != v22)
  {
    [(THWLabelLayer *)self->_checkAnswerButtonLabel setContentsScale:v22];
  }

  checkAnswerButtonState = self->_checkAnswerButtonState;
  if (checkAnswerButtonState > 1)
  {
    if (checkAnswerButtonState == 2)
    {
      v25 = THBundle();
      v26 = @"Clear Answer";
    }

    else
    {
      if (checkAnswerButtonState != 3)
      {
        goto LABEL_45;
      }

      v25 = THBundle();
      v26 = @"Start Over";
    }
  }

  else
  {
    if (!checkAnswerButtonState)
    {
      -[THWLabelLayer setString:](self->_checkAnswerButtonLabel, "setString:", [THBundle() localizedStringForKey:@"Check Answer" value:&stru_471858 table:0]);
      if (self->_checkAnswerButtonDisabled)
      {
        disabledPrimaryColor = [layout2 disabledPrimaryColor];
      }

      else
      {
        disabledPrimaryColor = [TSUColor colorWithWhite:1.0 alpha:1.0];
      }

      goto LABEL_44;
    }

    if (checkAnswerButtonState != 1)
    {
      goto LABEL_45;
    }

    v25 = THBundle();
    v26 = @"Try Again";
  }

  -[THWLabelLayer setString:](self->_checkAnswerButtonLabel, "setString:", [v25 localizedStringForKey:v26 value:&stru_471858 table:0]);
  disabledPrimaryColor = [layout2 primaryColor];
LABEL_44:
  [(THWLabelLayer *)self->_checkAnswerButtonLabel setTextColor:disabledPrimaryColor];
LABEL_45:
  [layout2 buttonFontSize];
  v30 = v29;
  [-[THWReviewControlsRep canvas](self "canvas")];
  [(THWLabelLayer *)self->_checkAnswerButtonLabel setFontSize:v30 * v31];
  [layer bounds];
  [(THWLabelLayer *)self->_checkAnswerButtonLabel setFrame:?];
  if ([(THWLabelLayer *)self->_checkAnswerButtonLabel superlayer]!= layer)
  {
    checkAnswerButtonLabel = self->_checkAnswerButtonLabel;

    [layer addSublayer:checkAnswerButtonLabel];
  }
}

@end