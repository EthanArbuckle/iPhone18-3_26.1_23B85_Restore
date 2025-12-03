@interface AXSSLanguageTag
- (AXSSLanguageTag)initWithDialect:(id)dialect range:(_NSRange)range content:(id)content createdFromNewline:(BOOL)newline;
- (_NSRange)taggedRange;
- (id)description;
- (void)addPredictedSecondaryDialects:(id)dialects;
@end

@implementation AXSSLanguageTag

- (AXSSLanguageTag)initWithDialect:(id)dialect range:(_NSRange)range content:(id)content createdFromNewline:(BOOL)newline
{
  length = range.length;
  location = range.location;
  dialectCopy = dialect;
  contentCopy = content;
  v20.receiver = self;
  v20.super_class = AXSSLanguageTag;
  v14 = [(AXSSLanguageTag *)&v20 init];
  v15 = v14;
  if (v14)
  {
    v14->_taggedRange.location = location;
    v14->_taggedRange.length = length;
    v16 = [contentCopy substringWithRange:{location, length}];
    v17 = [v16 copy];
    taggedString = v15->_taggedString;
    v15->_taggedString = v17;

    objc_storeStrong(&v15->_content, content);
    objc_storeStrong(&v15->_dialect, dialect);
    v15->_createdFromNewline = newline;
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  dialect = [(AXSSLanguageTag *)self dialect];
  taggedString = [(AXSSLanguageTag *)self taggedString];
  v10.location = [(AXSSLanguageTag *)self taggedRange];
  v6 = NSStringFromRange(v10);
  v7 = [v3 stringWithFormat:@"AXSSLanguageTag <%p>. dialect:%@ content:%@ range:-%@- createdFromNewline:(%d)", self, dialect, taggedString, v6, -[AXSSLanguageTag createdFromNewline](self, "createdFromNewline")];

  return v7;
}

- (void)addPredictedSecondaryDialects:(id)dialects
{
  dialectsCopy = dialects;
  predictedSecondaryDialects = [(AXSSLanguageTag *)self predictedSecondaryDialects];

  if (!predictedSecondaryDialects)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    [(AXSSLanguageTag *)self setPredictedSecondaryDialects:v6];
  }

  predictedSecondaryDialects2 = [(AXSSLanguageTag *)self predictedSecondaryDialects];
  [predictedSecondaryDialects2 unionOrderedSet:dialectsCopy];
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