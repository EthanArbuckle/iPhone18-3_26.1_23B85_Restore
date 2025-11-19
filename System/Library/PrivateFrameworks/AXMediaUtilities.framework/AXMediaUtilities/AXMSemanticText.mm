@interface AXMSemanticText
- (AXMSemanticText)initWithText:(id)a3 locale:(id)a4;
- (BOOL)isSemanticallyComplete;
- (_NSRange)textRange;
- (id)makeCursor;
- (id)substringWithRange:(_NSRange)a3;
- (int64_t)tokenizedLength;
- (void)addIsInLexionMarker:(BOOL)a3 withRange:(_NSRange)a4;
- (void)enumerateCustomPatterns:(id)a3;
- (void)enumerateDataDetectors:(id)a3;
- (void)enumerateLexiconMarkers:(id)a3;
- (void)enumerateNLPTokens:(id)a3;
- (void)enumerateNumericTokens:(id)a3;
- (void)enumerateSemanticErrors:(id)a3;
@end

@implementation AXMSemanticText

- (AXMSemanticText)initWithText:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = AXMSemanticText;
  v8 = [(AXMSemanticText *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v6];
    text = v8->_text;
    v8->_text = v9;

    objc_storeStrong(&v8->_locale, a4);
  }

  return v8;
}

- (int64_t)tokenizedLength
{
  if (![(NSMutableAttributedString *)self->_text length])
  {
    return 0;
  }

  v3 = [objc_alloc(MEMORY[0x1E6977A88]) initWithUnit:0];
  v4 = [(NSMutableAttributedString *)self->_text string];
  [v3 setString:v4];

  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(NSMutableAttributedString *)self->_text length];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __34__AXMSemanticText_tokenizedLength__block_invoke;
  v13 = &unk_1E7A1DDA0;
  v14 = self;
  v15 = v5;
  v7 = v5;
  [v3 enumerateTokensInRange:0 usingBlock:{v6, &v10}];
  v8 = [v7 count];
  self->_tokenizedLength = v8;

  return v8;
}

void __34__AXMSemanticText_tokenizedLength__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(*(a1 + 32) + 8) string];
  v7 = [v6 substringWithRange:{a2, a3}];

  [*(a1 + 40) addObject:v7];
}

- (void)enumerateNLPTokens:(id)a3
{
  v4 = a3;
  text = self->_text;
  v6 = [(AXMSemanticText *)self textRange];
  v8 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__AXMSemanticText_enumerateNLPTokens___block_invoke;
  v10[3] = &unk_1E7A1DDC8;
  v11 = v4;
  v9 = v4;
  [(NSMutableAttributedString *)text enumerateAttribute:@"NLPToken" inRange:v6 options:v8 usingBlock:0, v10];
}

uint64_t __38__AXMSemanticText_enumerateNLPTokens___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)enumerateLexiconMarkers:(id)a3
{
  v4 = a3;
  text = self->_text;
  v6 = [(AXMSemanticText *)self textRange];
  v8 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__AXMSemanticText_enumerateLexiconMarkers___block_invoke;
  v10[3] = &unk_1E7A1DDC8;
  v11 = v4;
  v9 = v4;
  [(NSMutableAttributedString *)text enumerateAttribute:@"IsInLexicon" inRange:v6 options:v8 usingBlock:0, v10];
}

uint64_t __43__AXMSemanticText_enumerateLexiconMarkers___block_invoke(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = *(result + 32);
    v7 = [a2 BOOLValue];
    v8 = *(v6 + 16);

    return v8(v6, v7, a3, a4);
  }

  return result;
}

- (void)enumerateNumericTokens:(id)a3
{
  v4 = a3;
  text = self->_text;
  v6 = [(AXMSemanticText *)self textRange];
  v8 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__AXMSemanticText_enumerateNumericTokens___block_invoke;
  v10[3] = &unk_1E7A1DDC8;
  v11 = v4;
  v9 = v4;
  [(NSMutableAttributedString *)text enumerateAttribute:@"NumericToken" inRange:v6 options:v8 usingBlock:0, v10];
}

uint64_t __42__AXMSemanticText_enumerateNumericTokens___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)enumerateDataDetectors:(id)a3
{
  v4 = a3;
  text = self->_text;
  v6 = [(AXMSemanticText *)self textRange];
  v8 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__AXMSemanticText_enumerateDataDetectors___block_invoke;
  v10[3] = &unk_1E7A1DDC8;
  v11 = v4;
  v9 = v4;
  [(NSMutableAttributedString *)text enumerateAttribute:@"DataDetector" inRange:v6 options:v8 usingBlock:0, v10];
}

uint64_t __42__AXMSemanticText_enumerateDataDetectors___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)enumerateCustomPatterns:(id)a3
{
  v4 = a3;
  text = self->_text;
  v6 = [(AXMSemanticText *)self textRange];
  v8 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__AXMSemanticText_enumerateCustomPatterns___block_invoke;
  v10[3] = &unk_1E7A1DDC8;
  v11 = v4;
  v9 = v4;
  [(NSMutableAttributedString *)text enumerateAttribute:@"CustomPattern" inRange:v6 options:v8 usingBlock:0, v10];
}

uint64_t __43__AXMSemanticText_enumerateCustomPatterns___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)enumerateSemanticErrors:(id)a3
{
  v4 = a3;
  text = self->_text;
  v6 = [(AXMSemanticText *)self textRange];
  v8 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__AXMSemanticText_enumerateSemanticErrors___block_invoke;
  v10[3] = &unk_1E7A1DDC8;
  v11 = v4;
  v9 = v4;
  [(NSMutableAttributedString *)text enumerateAttribute:@"SemanticError" inRange:v6 options:v8 usingBlock:0, v10];
}

uint64_t __43__AXMSemanticText_enumerateSemanticErrors___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 BOOLValue];
  if (result)
  {
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

- (BOOL)isSemanticallyComplete
{
  if ([(NSMutableAttributedString *)self->_text length])
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    text = self->_text;
    v4 = [(AXMSemanticText *)self textRange];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __41__AXMSemanticText_isSemanticallyComplete__block_invoke;
    v8[3] = &unk_1E7A1DDF0;
    v8[4] = &v9;
    [(NSMutableAttributedString *)text enumerateAttribute:@"SemanticError" inRange:v4 options:v5 usingBlock:0, v8];
    v6 = *(v10 + 24) ^ 1;
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t __41__AXMSemanticText_isSemanticallyComplete__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 BOOLValue];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

- (_NSRange)textRange
{
  v2 = [(NSMutableAttributedString *)self->_text string];
  v3 = [v2 length];

  v4 = 0;
  v5 = v3;
  result.length = v5;
  result.location = v4;
  return result;
}

- (id)substringWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(NSMutableAttributedString *)self->_text string];
  v6 = [v5 substringWithRange:{location, length}];

  return v6;
}

- (void)addIsInLexionMarker:(BOOL)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  text = self->_text;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(NSMutableAttributedString *)text addAttribute:@"IsInLexicon" value:v7 range:location, length];
}

- (id)makeCursor
{
  v2 = [[_AXMSemanticTextCursor alloc] initWithText:self->_text semanticText:self];

  return v2;
}

@end