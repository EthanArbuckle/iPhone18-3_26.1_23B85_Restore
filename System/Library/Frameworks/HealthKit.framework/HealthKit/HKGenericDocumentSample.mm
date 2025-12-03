@interface HKGenericDocumentSample
+ (id)documentSampleWithTitle:(id)title fileHandle:(id)handle date:(id)date metadata:(id)metadata;
@end

@implementation HKGenericDocumentSample

+ (id)documentSampleWithTitle:(id)title fileHandle:(id)handle date:(id)date metadata:(id)metadata
{
  titleCopy = title;
  handleCopy = handle;
  v9 = objc_alloc_init(HKGenericDocumentSample);
  title = v9->_title;
  v9->_title = titleCopy;
  v11 = titleCopy;

  fileHandle = v9->_fileHandle;
  v9->_fileHandle = handleCopy;

  return v9;
}

@end