@interface SRSpeechRecognizedCorrectionTextView
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)keyboardInput:(id)a3 shouldInsertText:(id)a4 isMarkedText:(BOOL)a5;
- (BOOL)resignFirstResponder;
- (SRSpeechRecognizedCorrectionTextView)initWithFrame:(CGRect)a3;
- (void)clearDictationResults;
- (void)setText:(id)a3;
@end

@implementation SRSpeechRecognizedCorrectionTextView

- (SRSpeechRecognizedCorrectionTextView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = SRSpeechRecognizedCorrectionTextView;
  v3 = [(SRSpeechRecognizedCorrectionTextView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIFont siriui_userUtteranceFont];
    [(SRSpeechRecognizedCorrectionTextView *)v3 setFont:v4];

    v5 = +[UIColor siriui_lightTextColor];
    [(SRSpeechRecognizedCorrectionTextView *)v3 setTextColor:v5];

    v6 = +[UIColor clearColor];
    [(SRSpeechRecognizedCorrectionTextView *)v3 setBackgroundColor:v6];

    [(SRSpeechRecognizedCorrectionTextView *)v3 setTextAlignment:2];
    v7 = +[UIColor siriui_lightInsertionPointColor];
    [(SRSpeechRecognizedCorrectionTextView *)v3 setInsertionPointColor:v7];

    [(SRSpeechRecognizedCorrectionTextView *)v3 setBounces:0];
    [(SRSpeechRecognizedCorrectionTextView *)v3 setClipsToBounds:0];
    [(SRSpeechRecognizedCorrectionTextView *)v3 setScrollEnabled:0];
    [(SRSpeechRecognizedCorrectionTextView *)v3 setReturnKeyType:9];
    [(SRSpeechRecognizedCorrectionTextView *)v3 setKeyboardAppearance:1];
    [(SRSpeechRecognizedCorrectionTextView *)v3 setTextDragOptions:1];
    v8 = [(SRSpeechRecognizedCorrectionTextView *)v3 textContainer];
    [v8 setLineFragmentPadding:0.0];
  }

  return v3;
}

- (void)clearDictationResults
{
  v3 = [(SRSpeechRecognizedCorrectionTextView *)self text];
  [(SRSpeechRecognizedCorrectionTextView *)self setText:v3];
}

- (void)setText:(id)a3
{
  v17.receiver = self;
  v17.super_class = SRSpeechRecognizedCorrectionTextView;
  v4 = a3;
  [(SRSpeechRecognizedCorrectionTextView *)&v17 setText:v4];
  v5 = +[AFPreferences sharedPreferences];
  v6 = [v5 languageCode];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = +[AFPreferences sharedPreferences];
    v8 = [v9 bestSupportedLanguageCodeForLanguageCode:0];
  }

  v10 = [v8 isEqualToString:@"th-TH"];
  v11 = [(SRSpeechRecognizedCorrectionTextView *)self textAlignment];
  if (v10)
  {
    [SiriUIFontScalingUtilities tallParagraphStyleForCurrentScaleWithTextAlignment:v11];
  }

  else
  {
    [SiriUIFontScalingUtilities paragraphStyleForCurrentScaleWithTextAlignment:v11];
  }
  v12 = ;
  v19[0] = v12;
  v18[0] = NSParagraphStyleAttributeName;
  v18[1] = NSFontAttributeName;
  v13 = [(SRSpeechRecognizedCorrectionTextView *)self font];
  v19[1] = v13;
  v18[2] = NSForegroundColorAttributeName;
  v14 = [(SRSpeechRecognizedCorrectionTextView *)self textColor];
  v18[3] = @"NSLanguage";
  v19[2] = v14;
  v19[3] = v8;
  v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:4];

  v16 = [[NSAttributedString alloc] initWithString:v4 attributes:v15];
  [(SRSpeechRecognizedCorrectionTextView *)self setAttributedText:v16];
}

- (BOOL)canBecomeFirstResponder
{
  v3 = [(SRSpeechRecognizedCorrectionTextView *)self isEditable];
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = SRSpeechRecognizedCorrectionTextView;
    LOBYTE(v3) = [(SRSpeechRecognizedCorrectionTextView *)&v5 canBecomeFirstResponder];
  }

  return v3;
}

- (BOOL)becomeFirstResponder
{
  v6.receiver = self;
  v6.super_class = SRSpeechRecognizedCorrectionTextView;
  v3 = [(SRSpeechRecognizedCorrectionTextView *)&v6 becomeFirstResponder];
  if (v3)
  {
    v4 = [(SRSpeechRecognizedCorrectionTextView *)self delegate];
    [v4 utteranceTextDidBecomeFirstResponder:self];
  }

  return v3;
}

- (BOOL)resignFirstResponder
{
  v3 = [(SRSpeechRecognizedCorrectionTextView *)self isFirstResponder];
  v8.receiver = self;
  v8.super_class = SRSpeechRecognizedCorrectionTextView;
  v4 = [(SRSpeechRecognizedCorrectionTextView *)&v8 resignFirstResponder];
  v5 = v4;
  if (v3 && v4)
  {
    v6 = [(SRSpeechRecognizedCorrectionTextView *)self delegate];
    [v6 utteranceTextDidResignFirstResponder:self];
  }

  return v5;
}

- (BOOL)keyboardInput:(id)a3 shouldInsertText:(id)a4 isMarkedText:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(SRSpeechRecognizedCorrectionTextView *)self delegate];
  v11 = [v10 conformsToProtocol:&OBJC_PROTOCOL___SRUtteranceCorrectionTextViewDelegate];

  if (v11)
  {
    v12 = [(SRSpeechRecognizedCorrectionTextView *)self delegate];
    if ([v9 isEqualToString:@"\n"])
    {
      [v12 utteranceTextDidReceiveReturnKey:self];
    }
  }

  v15.receiver = self;
  v15.super_class = SRSpeechRecognizedCorrectionTextView;
  v13 = [(SRSpeechRecognizedCorrectionTextView *)&v15 keyboardInput:v8 shouldInsertText:v9 isMarkedText:v5];

  return v13;
}

@end