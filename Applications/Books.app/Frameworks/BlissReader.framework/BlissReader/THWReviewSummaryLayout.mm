@interface THWReviewSummaryLayout
- (CGPoint)stackedControlContainerOrigin:(id)origin;
- (THWReviewSummaryLayout)initWithDelegate:(id)delegate;
- (UIEdgeInsets)stackedControlContainerInsets:(id)insets;
- (double)stackedControlContainerWidth:(id)width;
- (id)checkingLayout;
- (id)checkingWPLayout;
- (id)controlContainerChildInfosForLayout:(id)layout;
- (id)dependentLayouts;
- (id)instructionalWPLayout;
- (id)resultsLayout;
- (id)storageWithStyle:(id)style string:(id)string;
- (id)summaryWPLayout;
- (void)dealloc;
- (void)invalidateSize;
- (void)p_updateStorages;
- (void)validate;
@end

@implementation THWReviewSummaryLayout

- (THWReviewSummaryLayout)initWithDelegate:(id)delegate
{
  v9.receiver = self;
  v9.super_class = THWReviewSummaryLayout;
  v4 = [(THWReviewSummaryLayout *)&v9 initWithInfo:0];
  v5 = v4;
  if (v4)
  {
    v4->_delegate = delegate;
    v6 = [[THWStackedControlContainer alloc] initWithDelegate:v4];
    v5->_resultStack = v6;
    [(THWControlContainer *)v6 setTag:7];
    v7 = [[THWStackedControlContainer alloc] initWithDelegate:v5];
    v5->_checkingStack = v7;
    [(THWControlContainer *)v7 setTag:6];
    [(THWReviewSummaryLayout *)v5 p_updateStorages];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWReviewSummaryLayout;
  [(THWContainerLayout *)&v3 dealloc];
}

- (id)checkingLayout
{
  layoutController = [(THWReviewSummaryLayout *)self layoutController];
  checkingStack = self->_checkingStack;

  return [layoutController layoutForInfo:checkingStack childOfLayout:self];
}

- (id)resultsLayout
{
  layoutController = [(THWReviewSummaryLayout *)self layoutController];
  resultStack = self->_resultStack;

  return [layoutController layoutForInfo:resultStack childOfLayout:self];
}

- (id)checkingWPLayout
{
  objc_opt_class();
  [-[THWReviewSummaryLayout layoutController](self "layoutController")];

  return TSUDynamicCast();
}

- (id)summaryWPLayout
{
  objc_opt_class();
  [-[THWReviewSummaryLayout layoutController](self "layoutController")];

  return TSUDynamicCast();
}

- (id)instructionalWPLayout
{
  objc_opt_class();
  [-[THWReviewSummaryLayout layoutController](self "layoutController")];

  return TSUDynamicCast();
}

- (id)dependentLayouts
{
  v3 = +[NSMutableArray array];
  v5.receiver = self;
  v5.super_class = THWReviewSummaryLayout;
  [v3 addObjectsFromArray:{-[THWReviewSummaryLayout dependentLayouts](&v5, "dependentLayouts")}];
  [(THWReviewSummaryLayout *)self addDescendentLayoutsToArray:v3];
  return v3;
}

- (void)validate
{
  [(THWReviewSummaryLayout *)self invalidateFrame];
  v3.receiver = self;
  v3.super_class = THWReviewSummaryLayout;
  [(THWReviewSummaryLayout *)&v3 validate];
}

- (void)invalidateSize
{
  v3.receiver = self;
  v3.super_class = THWReviewSummaryLayout;
  [(THWReviewSummaryLayout *)&v3 invalidateSize];
  [-[THWReviewSummaryLayout summaryWPLayout](self "summaryWPLayout")];
  [-[THWReviewSummaryLayout instructionalWPLayout](self "instructionalWPLayout")];
  [-[THWReviewSummaryLayout checkingWPLayout](self "checkingWPLayout")];
}

- (id)storageWithStyle:(id)style string:(id)string
{
  reviewSummaryContext = [(THWReviewSummaryLayoutDelegate *)self->_delegate reviewSummaryContext];
  v7 = [[TSSStylesheet alloc] initWithContext:reviewSummaryContext];
  v8 = [THWPStorage alloc];
  if (!string)
  {
    string = @" ";
  }

  v9 = [(THWPStorage *)v8 initWithContext:reviewSummaryContext string:string kind:3 stylesheet:v7 paragraphStyle:style listStyle:[TSWPListStyle defaultStyleWithContext:?], 0, 0];

  return v9;
}

- (void)p_updateStorages
{
  if (!self->_summaryStorage)
  {
    self->_summaryStorage = [(THWReviewSummaryLayout *)self storageWithStyle:[(THWReviewSummaryLayoutDelegate *)self->_delegate reviewSummaryResultsParagraphStyle] string:0];
  }

  if (!self->_instructionalStorage)
  {
    self->_instructionalStorage = [(THWReviewSummaryLayout *)self storageWithStyle:[(THWReviewSummaryLayoutDelegate *)self->_delegate reviewSummaryInstructionalParagraphStyle] string:0];
  }

  if (!self->_checkingAnswerStorage)
  {
    self->_checkingAnswerStorage = -[THWReviewSummaryLayout storageWithStyle:string:](self, "storageWithStyle:string:", -[THWReviewSummaryLayoutDelegate reviewSummaryCheckingParagraphStyleWithIndent:](self->_delegate, "reviewSummaryCheckingParagraphStyleWithIndent:", 40.0), [THBundle() localizedStringForKey:@"Checking Answers…" value:&stru_471858 table:0]);
  }

  reviewSummaryQuestionCount = [(THWReviewSummaryLayoutDelegate *)self->_delegate reviewSummaryQuestionCount];
  reviewSummaryCorrectCount = [(THWReviewSummaryLayoutDelegate *)self->_delegate reviewSummaryCorrectCount];
  -[TSWPStorage replaceCharactersInRange:withString:undoTransaction:](self->_summaryStorage, "replaceCharactersInRange:withString:undoTransaction:", 0, -[TSWPStorage length](self->_summaryStorage, "length"), +[NSString stringWithFormat:](NSString, "stringWithFormat:", [THBundle() localizedStringForKey:@"%lu out of %lu Answers Correct" value:&stru_471858 table:0], reviewSummaryCorrectCount, reviewSummaryQuestionCount), 0);
  if (reviewSummaryCorrectCount == reviewSummaryQuestionCount)
  {
    v5 = @"Congratulations!\nYou’ve successfully completed this review.";
  }

  else
  {
    v5 = @"Go back to review incorrect answers and try again, or start over and clear all answers.";
  }

  -[TSWPStorage replaceCharactersInRange:withString:undoTransaction:](self->_instructionalStorage, "replaceCharactersInRange:withString:undoTransaction:", 0, -[TSWPStorage length](self->_instructionalStorage, "length"), [THBundle() localizedStringForKey:v5 value:&stru_471858 table:0], 0);

  [(THWReviewSummaryLayout *)self invalidateChildren];
}

- (id)controlContainerChildInfosForLayout:(id)layout
{
  if ([layout tag] == &dword_4 + 2)
  {
    checkingAnswerStorage = self->_checkingAnswerStorage;

    return [NSArray arrayWithObject:checkingAnswerStorage];
  }

  else if ([layout tag] == &dword_4 + 3)
  {
    return [NSArray arrayWithObjects:self->_summaryStorage, self->_instructionalStorage, 0];
  }

  else
  {
    return 0;
  }
}

- (double)stackedControlContainerWidth:(id)width
{
  geometry = [(THWReviewSummaryLayout *)self geometry];

  [geometry size];
  return result;
}

- (CGPoint)stackedControlContainerOrigin:(id)origin
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIEdgeInsets)stackedControlContainerInsets:(id)insets
{
  v3 = 13.0;
  v4 = 15.0;
  v5 = 13.0;
  v6 = 15.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

@end