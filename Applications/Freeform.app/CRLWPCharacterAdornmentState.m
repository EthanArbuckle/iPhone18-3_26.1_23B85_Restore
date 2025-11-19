@interface CRLWPCharacterAdornmentState
+ (id)p_deepCopyPathArray:(id)a3;
- (CGRect)currentFillRect;
- (CGRect)currentStrokeRect;
- (CRLWPCharacterAdornmentState)init;
- (_NSRange)currentFillRange;
- (_NSRange)currentStrokeRange;
- (void)resetFillState;
- (void)resetStrokeState;
- (void)setStateWithFill:(id)a3 range:(_NSRange)a4 rect:(CGRect)a5 paths:(id)a6 rubyPaths:(id)a7 shadow:(id)a8 fillsCurrentTextContainer:(BOOL)a9;
- (void)setStateWithStroke:(id)a3 range:(_NSRange)a4 rect:(CGRect)a5 paths:(id)a6 rubyPaths:(id)a7 shadow:(id)a8;
@end

@implementation CRLWPCharacterAdornmentState

- (CRLWPCharacterAdornmentState)init
{
  v5.receiver = self;
  v5.super_class = CRLWPCharacterAdornmentState;
  v2 = [(CRLWPCharacterAdornmentState *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CRLWPCharacterAdornmentState *)v2 resetFillState];
    [(CRLWPCharacterAdornmentState *)v3 resetStrokeState];
  }

  return v3;
}

- (void)setStateWithStroke:(id)a3 range:(_NSRange)a4 rect:(CGRect)a5 paths:(id)a6 rubyPaths:(id)a7 shadow:(id)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  length = a4.length;
  location = a4.location;
  v18 = a3;
  v19 = a8;
  self->_hasValidStrokeState = 1;
  currentAdornmentStroke = self->_currentAdornmentStroke;
  self->_currentAdornmentStroke = v18;
  v28 = v18;
  v21 = a7;
  v22 = a6;

  self->_currentStrokeRange.location = location;
  self->_currentStrokeRange.length = length;
  self->_currentStrokeRect.origin.x = x;
  self->_currentStrokeRect.origin.y = y;
  self->_currentStrokeRect.size.width = width;
  self->_currentStrokeRect.size.height = height;
  v23 = [objc_opt_class() p_deepCopyPathArray:v22];

  currentStrokePaths = self->_currentStrokePaths;
  self->_currentStrokePaths = v23;

  v25 = [objc_opt_class() p_deepCopyPathArray:v21];

  currentRubyStrokePaths = self->_currentRubyStrokePaths;
  self->_currentRubyStrokePaths = v25;

  currentStrokeShadow = self->_currentStrokeShadow;
  self->_currentStrokeShadow = v19;
}

- (void)resetStrokeState
{
  self->_hasValidStrokeState = 0;
  currentAdornmentStroke = self->_currentAdornmentStroke;
  self->_currentAdornmentStroke = 0;

  self->_currentStrokeRange = xmmword_101464828;
  size = CGRectNull.size;
  self->_currentStrokeRect.origin = CGRectNull.origin;
  self->_currentStrokeRect.size = size;
  v5 = +[TSUSparseArray array];
  currentStrokePaths = self->_currentStrokePaths;
  self->_currentStrokePaths = v5;

  v7 = +[TSUSparseArray array];
  currentRubyStrokePaths = self->_currentRubyStrokePaths;
  self->_currentRubyStrokePaths = v7;

  currentStrokeShadow = self->_currentStrokeShadow;
  self->_currentStrokeShadow = 0;
}

- (void)setStateWithFill:(id)a3 range:(_NSRange)a4 rect:(CGRect)a5 paths:(id)a6 rubyPaths:(id)a7 shadow:(id)a8 fillsCurrentTextContainer:(BOOL)a9
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  length = a4.length;
  location = a4.location;
  v19 = a3;
  v20 = a8;
  self->_hasValidFillState = 1;
  currentAdornmentFill = self->_currentAdornmentFill;
  self->_currentAdornmentFill = v19;
  v22 = v19;
  v23 = a7;
  v24 = a6;

  self->_currentFillRange.location = location;
  self->_currentFillRange.length = length;
  self->_currentFillRect.origin.x = x;
  self->_currentFillRect.origin.y = y;
  self->_currentFillRect.size.width = width;
  self->_currentFillRect.size.height = height;
  v25 = [objc_opt_class() p_deepCopyPathArray:v24];

  currentFillPaths = self->_currentFillPaths;
  self->_currentFillPaths = v25;

  v27 = [objc_opt_class() p_deepCopyPathArray:v23];

  currentRubyFillPaths = self->_currentRubyFillPaths;
  self->_currentRubyFillPaths = v27;

  currentFillShadow = self->_currentFillShadow;
  self->_currentFillShadow = v20;

  self->_fillsCurrentTextContainer = a9;
}

- (void)resetFillState
{
  self->_hasValidFillState = 0;
  currentAdornmentFill = self->_currentAdornmentFill;
  self->_currentAdornmentFill = 0;

  self->_currentFillRange = xmmword_101464828;
  size = CGRectNull.size;
  self->_currentFillRect.origin = CGRectNull.origin;
  self->_currentFillRect.size = size;
  v5 = +[TSUSparseArray array];
  currentFillPaths = self->_currentFillPaths;
  self->_currentFillPaths = v5;

  v7 = +[TSUSparseArray array];
  currentRubyFillPaths = self->_currentRubyFillPaths;
  self->_currentRubyFillPaths = v7;

  currentFillShadow = self->_currentFillShadow;
  self->_currentFillShadow = 0;

  self->_fillsCurrentTextContainer = 0;
  v10 = +[NSMutableSet set];
  currentDropCapAdornments = self->_currentDropCapAdornments;
  self->_currentDropCapAdornments = v10;
}

+ (id)p_deepCopyPathArray:(id)a3
{
  v3 = a3;
  v4 = +[TSUSparseArray array];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10055ECE8;
  v6[3] = &unk_10184FF28;
  v6[4] = v4;
  [v3 foreach:v6];

  return v4;
}

- (_NSRange)currentFillRange
{
  length = self->_currentFillRange.length;
  location = self->_currentFillRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (CGRect)currentFillRect
{
  x = self->_currentFillRect.origin.x;
  y = self->_currentFillRect.origin.y;
  width = self->_currentFillRect.size.width;
  height = self->_currentFillRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (_NSRange)currentStrokeRange
{
  length = self->_currentStrokeRange.length;
  location = self->_currentStrokeRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (CGRect)currentStrokeRect
{
  x = self->_currentStrokeRect.origin.x;
  y = self->_currentStrokeRect.origin.y;
  width = self->_currentStrokeRect.size.width;
  height = self->_currentStrokeRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end