@interface VOTUIBrailleViewController
- (VOTUIBrailleViewController)initWithOrientation:(int64_t)a3 dotNumberPositions:(id)a4 typingMode:(int64_t)a5;
- (unint64_t)supportedInterfaceOrientations;
- (void)displayDotNumbersWithReversed:(id)a3;
- (void)flashInsertedText:(id)a3;
- (void)highlightBrailleDots:(id)a3;
- (void)loadView;
- (void)setOrientation:(int64_t)a3 dotNumberPositions:(id)a4 typingMode:(int64_t)a5;
@end

@implementation VOTUIBrailleViewController

- (VOTUIBrailleViewController)initWithOrientation:(int64_t)a3 dotNumberPositions:(id)a4 typingMode:(int64_t)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = VOTUIBrailleViewController;
  v10 = [(VOTUIBrailleViewController *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_orientation = a3;
    objc_storeStrong(&v10->_dotNumberPositions, a4);
    v11->_typingMode = a5;
  }

  return v11;
}

- (void)loadView
{
  v3 = [VOTUIBrailleView alloc];
  v5 = [(VOTUIBrailleViewController *)self dotNumberPositions];
  v4 = [(VOTUIBrailleView *)v3 initWithDotNumberPositions:v5 typingMode:[(VOTUIBrailleViewController *)self typingMode]];
  [(VOTUIBrailleViewController *)self setView:v4];
}

- (void)highlightBrailleDots:(id)a3
{
  v4 = a3;
  v5 = [(VOTUIBrailleViewController *)self view];
  [v5 highlightBrailleDots:v4];
}

- (void)displayDotNumbersWithReversed:(id)a3
{
  v4 = a3;
  v6 = [(VOTUIBrailleViewController *)self view];
  v5 = [v4 BOOLValue];

  [v6 displayDotNumbersWithReversed:v5];
}

- (void)flashInsertedText:(id)a3
{
  v4 = a3;
  v5 = [(VOTUIBrailleViewController *)self view];
  [v5 flashInsertedText:v4];
}

- (void)setOrientation:(int64_t)a3 dotNumberPositions:(id)a4 typingMode:(int64_t)a5
{
  self->_orientation = a3;
  objc_storeStrong(&self->_dotNumberPositions, a4);
  v8 = a4;
  self->_typingMode = a5;
  v9 = [(VOTUIBrailleViewController *)self view];
  [v9 setDotNumberPositions:v8 typingMode:a5];

  [(VOTUIBrailleViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(VOTUIBrailleViewController *)self orientation];
  if ((v2 - 2) > 2)
  {
    return 2;
  }

  else
  {
    return qword_2D060[v2 - 2];
  }
}

@end