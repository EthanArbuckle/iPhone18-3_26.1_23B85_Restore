@interface VOTUIBrailleViewController
- (VOTUIBrailleViewController)initWithOrientation:(int64_t)orientation dotNumberPositions:(id)positions typingMode:(int64_t)mode;
- (unint64_t)supportedInterfaceOrientations;
- (void)displayDotNumbersWithReversed:(id)reversed;
- (void)flashInsertedText:(id)text;
- (void)highlightBrailleDots:(id)dots;
- (void)loadView;
- (void)setOrientation:(int64_t)orientation dotNumberPositions:(id)positions typingMode:(int64_t)mode;
@end

@implementation VOTUIBrailleViewController

- (VOTUIBrailleViewController)initWithOrientation:(int64_t)orientation dotNumberPositions:(id)positions typingMode:(int64_t)mode
{
  positionsCopy = positions;
  v13.receiver = self;
  v13.super_class = VOTUIBrailleViewController;
  v10 = [(VOTUIBrailleViewController *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_orientation = orientation;
    objc_storeStrong(&v10->_dotNumberPositions, positions);
    v11->_typingMode = mode;
  }

  return v11;
}

- (void)loadView
{
  v3 = [VOTUIBrailleView alloc];
  dotNumberPositions = [(VOTUIBrailleViewController *)self dotNumberPositions];
  v4 = [(VOTUIBrailleView *)v3 initWithDotNumberPositions:dotNumberPositions typingMode:[(VOTUIBrailleViewController *)self typingMode]];
  [(VOTUIBrailleViewController *)self setView:v4];
}

- (void)highlightBrailleDots:(id)dots
{
  dotsCopy = dots;
  view = [(VOTUIBrailleViewController *)self view];
  [view highlightBrailleDots:dotsCopy];
}

- (void)displayDotNumbersWithReversed:(id)reversed
{
  reversedCopy = reversed;
  view = [(VOTUIBrailleViewController *)self view];
  bOOLValue = [reversedCopy BOOLValue];

  [view displayDotNumbersWithReversed:bOOLValue];
}

- (void)flashInsertedText:(id)text
{
  textCopy = text;
  view = [(VOTUIBrailleViewController *)self view];
  [view flashInsertedText:textCopy];
}

- (void)setOrientation:(int64_t)orientation dotNumberPositions:(id)positions typingMode:(int64_t)mode
{
  self->_orientation = orientation;
  objc_storeStrong(&self->_dotNumberPositions, positions);
  positionsCopy = positions;
  self->_typingMode = mode;
  view = [(VOTUIBrailleViewController *)self view];
  [view setDotNumberPositions:positionsCopy typingMode:mode];

  [(VOTUIBrailleViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (unint64_t)supportedInterfaceOrientations
{
  orientation = [(VOTUIBrailleViewController *)self orientation];
  if ((orientation - 2) > 2)
  {
    return 2;
  }

  else
  {
    return qword_2D060[orientation - 2];
  }
}

@end