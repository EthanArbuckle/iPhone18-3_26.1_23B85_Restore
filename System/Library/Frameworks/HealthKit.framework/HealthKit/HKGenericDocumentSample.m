@interface HKGenericDocumentSample
+ (id)documentSampleWithTitle:(id)a3 fileHandle:(id)a4 date:(id)a5 metadata:(id)a6;
@end

@implementation HKGenericDocumentSample

+ (id)documentSampleWithTitle:(id)a3 fileHandle:(id)a4 date:(id)a5 metadata:(id)a6
{
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(HKGenericDocumentSample);
  title = v9->_title;
  v9->_title = v7;
  v11 = v7;

  fileHandle = v9->_fileHandle;
  v9->_fileHandle = v8;

  return v9;
}

@end