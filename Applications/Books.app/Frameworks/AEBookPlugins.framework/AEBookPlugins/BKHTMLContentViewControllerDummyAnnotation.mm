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
    cfiString = [(BKEpubCFILocation *)dummyLocation2 cfiString];
  }

  else
  {
    cfiString = self->_cfi;
  }

  return cfiString;
}

- (NSString)redactedAnnotationLocation
{
  annotationLocation = [(BKHTMLContentViewControllerDummyAnnotation *)self annotationLocation];
  bc_redactedCFIString = [annotationLocation bc_redactedCFIString];

  return bc_redactedCFIString;
}

- (BOOL)annotationHasNote
{
  annotationNote = [(BKHTMLContentViewControllerDummyAnnotation *)self annotationNote];
  v3 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v4 = [annotationNote stringByTrimmingCharactersInSet:v3];
  v5 = [v4 length] != 0;

  return v5;
}

- (int64_t)ordinal
{
  location = [(BKHTMLContentViewControllerDummyAnnotation *)self location];
  ordinal = [location ordinal];

  return ordinal;
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