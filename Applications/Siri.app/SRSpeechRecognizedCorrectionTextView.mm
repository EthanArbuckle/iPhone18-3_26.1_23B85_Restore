@interface SRSpeechRecognizedCorrectionTextView
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)keyboardInput:(id)input shouldInsertText:(id)text isMarkedText:(BOOL)markedText;
- (BOOL)resignFirstResponder;
- (SRSpeechRecognizedCorrectionTextView)initWithFrame:(CGRect)frame;
- (void)clearDictationResults;
- (void)setText:(id)text;
@end

@implementation SRSpeechRecognizedCorrectionTextView

- (SRSpeechRecognizedCorrectionTextView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = SRSpeechRecognizedCorrectionTextView;
  v3 = [(SRSpeechRecognizedCorrectionTextView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    textContainer = [(SRSpeechRecognizedCorrectionTextView *)v3 textContainer];
    [textContainer setLineFragmentPadding:0.0];
  }

  return v3;
}

- (void)clearDictationResults
{
  text = [(SRSpeechRecognizedCorrectionTextView *)self text];
  [(SRSpeechRecognizedCorrectionTextView *)self setText:text];
}

- (void)setText:(id)text
{
  v17.receiver = self;
  v17.super_class = SRSpeechRecognizedCorrectionTextView;
  textCopy = text;
  [(SRSpeechRecognizedCorrectionTextView *)&v17 setText:textCopy];
  v5 = +[AFPreferences sharedPreferences];
  languageCode = [v5 languageCode];
  v7 = languageCode;
  if (languageCode)
  {
    v8 = languageCode;
  }

  else
  {
    v9 = +[AFPreferences sharedPreferences];
    v8 = [v9 bestSupportedLanguageCodeForLanguageCode:0];
  }

  v10 = [v8 isEqualToString:@"th-TH"];
  textAlignment = [(SRSpeechRecognizedCorrectionTextView *)self textAlignment];
  if (v10)
  {
    [SiriUIFontScalingUtilities tallParagraphStyleForCurrentScaleWithTextAlignment:textAlignment];
  }

  else
  {
    [SiriUIFontScalingUtilities paragraphStyleForCurrentScaleWithTextAlignment:textAlignment];
  }
  v12 = ;
  v19[0] = v12;
  v18[0] = NSParagraphStyleAttributeName;
  v18[1] = NSFontAttributeName;
  font = [(SRSpeechRecognizedCorrectionTextView *)self font];
  v19[1] = font;
  v18[2] = NSForegroundColorAttributeName;
  textColor = [(SRSpeechRecognizedCorrectionTextView *)self textColor];
  v18[3] = @"NSLanguage";
  v19[2] = textColor;
  v19[3] = v8;
  v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:4];

  v16 = [[NSAttributedString alloc] initWithString:textCopy attributes:v15];
  [(SRSpeechRecognizedCorrectionTextView *)self setAttributedText:v16];
}

- (BOOL)canBecomeFirstResponder
{
  isEditable = [(SRSpeechRecognizedCorrectionTextView *)self isEditable];
  if (isEditable)
  {
    v5.receiver = self;
    v5.super_class = SRSpeechRecognizedCorrectionTextView;
    LOBYTE(isEditable) = [(SRSpeechRecognizedCorrectionTextView *)&v5 canBecomeFirstResponder];
  }

  return isEditable;
}

- (BOOL)becomeFirstResponder
{
  v6.receiver = self;
  v6.super_class = SRSpeechRecognizedCorrectionTextView;
  becomeFirstResponder = [(SRSpeechRecognizedCorrectionTextView *)&v6 becomeFirstResponder];
  if (becomeFirstResponder)
  {
    delegate = [(SRSpeechRecognizedCorrectionTextView *)self delegate];
    [delegate utteranceTextDidBecomeFirstResponder:self];
  }

  return becomeFirstResponder;
}

- (BOOL)resignFirstResponder
{
  isFirstResponder = [(SRSpeechRecognizedCorrectionTextView *)self isFirstResponder];
  v8.receiver = self;
  v8.super_class = SRSpeechRecognizedCorrectionTextView;
  resignFirstResponder = [(SRSpeechRecognizedCorrectionTextView *)&v8 resignFirstResponder];
  v5 = resignFirstResponder;
  if (isFirstResponder && resignFirstResponder)
  {
    delegate = [(SRSpeechRecognizedCorrectionTextView *)self delegate];
    [delegate utteranceTextDidResignFirstResponder:self];
  }

  return v5;
}

- (BOOL)keyboardInput:(id)input shouldInsertText:(id)text isMarkedText:(BOOL)markedText
{
  markedTextCopy = markedText;
  inputCopy = input;
  textCopy = text;
  delegate = [(SRSpeechRecognizedCorrectionTextView *)self delegate];
  v11 = [delegate conformsToProtocol:&OBJC_PROTOCOL___SRUtteranceCorrectionTextViewDelegate];

  if (v11)
  {
    delegate2 = [(SRSpeechRecognizedCorrectionTextView *)self delegate];
    if ([textCopy isEqualToString:@"\n"])
    {
      [delegate2 utteranceTextDidReceiveReturnKey:self];
    }
  }

  v15.receiver = self;
  v15.super_class = SRSpeechRecognizedCorrectionTextView;
  v13 = [(SRSpeechRecognizedCorrectionTextView *)&v15 keyboardInput:inputCopy shouldInsertText:textCopy isMarkedText:markedTextCopy];

  return v13;
}

@end