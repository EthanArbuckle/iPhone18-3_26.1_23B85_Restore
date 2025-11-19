@interface AXSSLanguageTag
- (AXSSLanguageTag)initWithDialect:(id)a3 range:(_NSRange)a4 content:(id)a5 createdFromNewline:(BOOL)a6;
- (_NSRange)taggedRange;
- (id)description;
- (void)addPredictedSecondaryDialects:(id)a3;
@end

@implementation AXSSLanguageTag

- (AXSSLanguageTag)initWithDialect:(id)a3 range:(_NSRange)a4 content:(id)a5 createdFromNewline:(BOOL)a6
{
  length = a4.length;
  location = a4.location;
  v12 = a3;
  v13 = a5;
  v20.receiver = self;
  v20.super_class = AXSSLanguageTag;
  v14 = [(AXSSLanguageTag *)&v20 init];
  v15 = v14;
  if (v14)
  {
    v14->_taggedRange.location = location;
    v14->_taggedRange.length = length;
    v16 = [v13 substringWithRange:{location, length}];
    v17 = [v16 copy];
    taggedString = v15->_taggedString;
    v15->_taggedString = v17;

    objc_storeStrong(&v15->_content, a5);
    objc_storeStrong(&v15->_dialect, a3);
    v15->_createdFromNewline = a6;
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AXSSLanguageTag *)self dialect];
  v5 = [(AXSSLanguageTag *)self taggedString];
  v10.location = [(AXSSLanguageTag *)self taggedRange];
  v6 = NSStringFromRange(v10);
  v7 = [v3 stringWithFormat:@"AXSSLanguageTag <%p>. dialect:%@ content:%@ range:-%@- createdFromNewline:(%d)", self, v4, v5, v6, -[AXSSLanguageTag createdFromNewline](self, "createdFromNewline")];

  return v7;
}

- (void)addPredictedSecondaryDialects:(id)a3
{
  v4 = a3;
  v5 = [(AXSSLanguageTag *)self predictedSecondaryDialects];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    [(AXSSLanguageTag *)self setPredictedSecondaryDialects:v6];
  }

  v7 = [(AXSSLanguageTag *)self predictedSecondaryDialects];
  [v7 unionOrderedSet:v4];
}

- (_NSRange)taggedRange
{
  length = self->_taggedRange.length;
  location = self->_taggedRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end