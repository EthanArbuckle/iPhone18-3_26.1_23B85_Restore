@interface CRLPdfTaggerListParagraphLevelResolver
- (int)levelOfCurrentParagraph:(id *)a3;
@end

@implementation CRLPdfTaggerListParagraphLevelResolver

- (int)levelOfCurrentParagraph:(id *)a3
{
  v4 = [(CRLPdfTaggerParagraphLevelResolver *)self tagger];
  v5 = [v4 topmostColumnContext];

  v6 = [v5 paragraphEnumerator];
  v7 = sub_100240898(v6, 0);
  if ([CRLPdfTagger isHeadingStyle:v7 headingIndex:0]|| !sub_100240A60(v6))
  {
    v8 = -1;
  }

  else
  {
    v8 = sub_1002409EC(v6);
    v9 = sub_1002409FC(v6);
    *a3 = v9;
  }

  return v8;
}

@end