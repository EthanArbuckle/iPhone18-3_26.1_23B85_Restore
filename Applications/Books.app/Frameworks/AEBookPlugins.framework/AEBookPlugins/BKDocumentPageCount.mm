@interface BKDocumentPageCount
+ (id)newEmptyDocumentPageCount:(id)count;
@end

@implementation BKDocumentPageCount

+ (id)newEmptyDocumentPageCount:(id)count
{
  countCopy = count;
  v4 = [countCopy newByClass:objc_opt_class()];

  return v4;
}

@end