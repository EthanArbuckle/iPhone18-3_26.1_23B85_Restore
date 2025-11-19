@interface THWReviewControlsRep
- (BOOL)control:(id)a3 isInteractionEnabledForRep:(id)a4;
- (THWReviewControlsRep)initWithLayout:(id)a3 canvas:(id)a4;
- (id)buttonControl:(id)a3 imageForState:(int)a4 highlighted:(BOOL)a5;
- (void)buttonControl:(id)a3 didUpdateLayer:(id)a4;
- (void)buttonControlWasPressed:(id)a3;
- (void)control:(id)a3 repWasAdded:(id)a4;
- (void)dealloc;
- (void)p_animateButtonLayer:(id)a3 hide:(BOOL)a4;
- (void)setCheckAnswerButtonDisabled:(BOOL)a3;
- (void)setCheckAnswerButtonState:(int)a3;
- (void)setNextButtonHidden:(BOOL)a3;
- (void)setPrevButtonHidden:(BOOL)a3;
@end

@implementation THWReviewControlsRep

- (THWReviewControlsRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v5.receiver = self;
  v5.super_class = THWReviewControlsRep;
  result = [(THWReviewControlsRep *)&v5 initWithLayout:a3 canvas:a4];
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

- (void)setPrevButtonHidden:(BOOL)a3
{
  if (self->_prevButtonHidden != a3)
  {
    self->_prevButtonHidden = a3;
    self->_prevButtonHiddenStateChanged = 1;
    v5 = [(THWReviewControlsRep *)self canvas];

    [v5 invalidateLayers];
  }
}

- (void)setNextButtonHidden:(BOOL)a3
{
  if (self->_nextButtonHidden != a3)
  {
    self->_nextButtonHidden = a3;
    self->_nextButtonHiddenStateChanged = 1;
    v5 = [(THWReviewControlsRep *)self canvas];

    [v5 invalidateLayers];
  }
}

- (void)setCheckAnswerButtonDisabled:(BOOL)a3
{
  if (self->_checkAnswerButtonDisabled != a3)
  {
    self->_checkAnswerButtonDisabled = a3;
    v5 = [(THWReviewControlsRep *)self canvas];

    [v5 invalidateLayers];
  }
}

- (void)setCheckAnswerButtonState:(int)a3
{
  if (self->_checkAnswerButtonState != a3)
  {
    self->_checkAnswerButtonState = a3;
    v5 = [(THWReviewControlsRep *)self canvas];

    [v5 invalidateLayers];
  }
}

- (BOOL)control:(id)a3 isInteractionEnabledForRep:(id)a4
{
  v6 = [(THWControlContainerRep *)self controlHostRep:a3];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v6 control:a3 isInteractionEnabledForRep:self])
  {
    v8 = 0;
  }

  else
  {
    v7 = [a3 tag];
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

- (void)control:(id)a3 repWasAdded:(id)a4
{
  if ([a3 tag] <= 2)
  {
    objc_opt_class();
    v5 = TSUDynamicCast();

    [v5 setDelegate:self];
  }
}

- (void)buttonControlWasPressed:(id)a3
{
  v4 = [a3 layout];
  v5 = [v4 tag];
  if (v5 == &dword_0 + 2)
  {
    if (self->_checkAnswerButtonDisabled)
    {
      return;
    }

    delegate = self->_delegate;
    v10 = self;
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
    v8 = [v4 tag];
    delegate = v7;
    v10 = self;
LABEL_11:

    [(THWReviewControlsDelegate *)delegate reviewControls:v10 buttonPressed:v8];
  }
}

- (id)buttonControl:(id)a3 imageForState:(int)a4 highlighted:(BOOL)a5
{
  v5 = a5;
  v8 = [a3 layout];
  v9 = [-[THWReviewControlsRep layout](self "layout")];
  if ([v8 tag])
  {
    if ([v8 tag] != &dword_0 + 1)
    {
      return 0;
    }

    [-[THWReviewControlsRep layout](self "layout")];
    v11 = v10;
    v13 = v12;
    [objc_msgSend(a3 "canvas")];
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
    [objc_msgSend(a3 "canvas")];
    v15 = v23;
    v16 = v20;
    v17 = v22;
    v18 = 4;
  }

  return [THWButtonUtilities navigationArrowImageWithSize:v18 direction:v9 color:v5 highlighted:v16 contentsScale:v17, v15];
}

- (void)p_animateButtonLayer:(id)a3 hide:(BOOL)a4
{
  v4 = a4;
  v6 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  if (v4)
  {
    *&v7 = 1.0;
  }

  else
  {
    *&v7 = 0.0;
  }

  if (v4)
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

  [a3 addAnimation:v6 forKey:@"opacity"];
}

- (void)buttonControl:(id)a3 didUpdateLayer:(id)a4
{
  v7 = [a3 layout];
  [-[THWReviewControlsRep canvas](self "canvas")];
  v9 = v8;
  v10 = [(THWReviewControlsRep *)self layout];
  [a4 setContentsGravity:kCAGravityResize];
  if (![v7 tag])
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
    v19 = [objc_msgSend(v10 "primaryColor")];

    [a4 setBorderColor:v19];
    return;
  }

  if ([v7 tag] == &dword_0 + 1)
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
        [(THWReviewControlsRep *)self p_animateButtonLayer:a4 hide:self->super.TSDContainerRep_opaque[v14]];
      }

      else
      {
        LODWORD(v11) = 1.0;
        if (self->super.TSDContainerRep_opaque[v14])
        {
          *&v11 = 0.0;
        }

        [a4 setOpacity:v11];
      }

      self->super.TSDContainerRep_opaque[v12] = 1;
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if ([v7 tag] != &dword_0 + 2)
  {
    return;
  }

  LODWORD(v15) = 1.0;
  if ((self->_checkAnswerButtonState - 1) <= 2)
  {
    v16 = [a3 highlighted];
    LODWORD(v15) = 1.0;
    if (v16)
    {
      *&v15 = 0.5;
    }
  }

  [a4 setOpacity:v15];
  [v10 buttonCornerRadius];
  [a4 setCornerRadius:v9 * v17];
  if (self->_checkAnswerButtonState)
  {
    [a4 setBackgroundColor:0];
    v18 = v10;
LABEL_24:
    [a4 setBorderColor:{objc_msgSend(objc_msgSend(objc_msgSend(v18, "primaryColor"), "colorWithAlphaComponent:", 0.4), "CGColor")}];
    [v10 buttonStrokeWidth];
    [a4 setBorderWidth:v9 * v20];
    goto LABEL_25;
  }

  if (self->_checkAnswerButtonDisabled)
  {
    [a4 setBackgroundColor:0];
    v18 = [(THWReviewControlsRep *)self layout];
    goto LABEL_24;
  }

  [a4 setBorderWidth:0.0];
  if ([a3 highlighted])
  {
    v27 = 0.5;
  }

  else
  {
    v27 = 1.0;
  }

  [a4 setBackgroundColor:{-[TSUColor CGColor](+[TSUColor colorWithRed:green:blue:alpha:](TSUColor, "colorWithRed:green:blue:alpha:", 0.09, 0.49, 0.98, v27), "CGColor")}];
  [a4 setBorderColor:0];
LABEL_25:
  if (!self->_checkAnswerButtonLabel)
  {
    self->_checkAnswerButtonLabel = objc_alloc_init(THWLabelLayer);
    [(THWLabelLayer *)self->_checkAnswerButtonLabel setDelegate:+[THNoAnimationLayerDelegate sharedInstance]];
    -[THWLabelLayer setFontName:](self->_checkAnswerButtonLabel, "setFontName:", [v10 buttonFontName]);
    [(THWLabelLayer *)self->_checkAnswerButtonLabel setHorizontalAlignment:1];
    [(THWLabelLayer *)self->_checkAnswerButtonLabel setVerticalAlignment:1];
    if (!self->_checkAnswerButtonLabel)
    {
      return;
    }
  }

  [objc_msgSend(a3 "canvas")];
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
        v28 = [v10 disabledPrimaryColor];
      }

      else
      {
        v28 = [TSUColor colorWithWhite:1.0 alpha:1.0];
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
  v28 = [v10 primaryColor];
LABEL_44:
  [(THWLabelLayer *)self->_checkAnswerButtonLabel setTextColor:v28];
LABEL_45:
  [v10 buttonFontSize];
  v30 = v29;
  [-[THWReviewControlsRep canvas](self "canvas")];
  [(THWLabelLayer *)self->_checkAnswerButtonLabel setFontSize:v30 * v31];
  [a4 bounds];
  [(THWLabelLayer *)self->_checkAnswerButtonLabel setFrame:?];
  if ([(THWLabelLayer *)self->_checkAnswerButtonLabel superlayer]!= a4)
  {
    checkAnswerButtonLabel = self->_checkAnswerButtonLabel;

    [a4 addSublayer:checkAnswerButtonLabel];
  }
}

@end