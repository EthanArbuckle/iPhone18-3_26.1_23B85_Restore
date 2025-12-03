@interface CRLPdfTaggerListParagraphLevelResolver
- (int)levelOfCurrentParagraph:(id *)paragraph;
@end

@implementation CRLPdfTaggerListParagraphLevelResolver

- (int)levelOfCurrentParagraph:(id *)paragraph
{
  tagger = [(CRLPdfTaggerParagraphLevelResolver *)self tagger];
  topmostColumnContext = [tagger topmostColumnContext];

  paragraphEnumerator = [topmostColumnContext paragraphEnumerator];
  v7 = sub_100240898(paragraphEnumerator, 0);
  if ([CRLPdfTagger isHeadingStyle:v7 headingIndex:0]|| !sub_100240A60(paragraphEnumerator))
  {
    v8 = -1;
  }

  else
  {
    v8 = sub_1002409EC(paragraphEnumerator);
    v9 = sub_1002409FC(paragraphEnumerator);
    *paragraph = v9;
  }

  return v8;
}

@end