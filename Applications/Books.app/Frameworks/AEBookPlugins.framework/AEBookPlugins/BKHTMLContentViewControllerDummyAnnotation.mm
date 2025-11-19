@interface BKHTMLContentViewControllerDummyAnnotation
- (BKHTMLContentViewControllerDummyAnnotation)init;
- (BOOL)annotationHasNote;
- (NSString)annotationLocation;
- (NSString)redactedAnnotationLocation;
- (_NSRange)annotationSelectedTextRange;
- (int64_t)ordinal;
@end

@implementation BKHTMLContentViewControllerDummyAnnotation

- (BKHTMLContentViewControllerDummyAnnotation)init
{
  v6.receiver = self;
  v6.super_class = BKHTMLContentViewControllerDummyAnnotation;
  v2 = [(BKHTMLContentViewControllerDummyAnnotation *)&v6 init];
  if (v2)
  {
    v3 = +[NSDate date];
    date = v2->_date;
    v2->_date = v3;

    v2->_annotationStyle = 3;
    v2->_annotationIsUnderline = 0;
  }

  return v2;
}

- (NSString)annotationLocation
{
  dummyLocation2 = self->_dummyLocation2;
  if (dummyLocation2)
  {
    v4 = [(BKEpubCFILocation *)dummyLocation2 cfiString];
  }

  else
  {
    v4 = self->_cfi;
  }

  return v4;
}

- (NSString)redactedAnnotationLocation
{
  v2 = [(BKHTMLContentViewControllerDummyAnnotation *)self annotationLocation];
  v3 = [v2 bc_redactedCFIString];

  return v3;
}

- (BOOL)annotationHasNote
{
  v2 = [(BKHTMLContentViewControllerDummyAnnotation *)self annotationNote];
  v3 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];
  v5 = [v4 length] != 0;

  return v5;
}

- (int64_t)ordinal
{
  v2 = [(BKHTMLContentViewControllerDummyAnnotation *)self location];
  v3 = [v2 ordinal];

  return v3;
}

- (_NSRange)annotationSelectedTextRange
{
  length = self->_annotationSelectedTextRange.length;
  location = self->_annotationSelectedTextRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end