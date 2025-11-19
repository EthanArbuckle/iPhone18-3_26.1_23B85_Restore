@interface _ATXCachedClipboardContents
- (_ATXCachedClipboardContents)initWithContent:(id)a3 creationDate:(id)a4 originatorBundleId:(id)a5;
@end

@implementation _ATXCachedClipboardContents

- (_ATXCachedClipboardContents)initWithContent:(id)a3 creationDate:(id)a4 originatorBundleId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = _ATXCachedClipboardContents;
  v11 = [(_ATXCachedClipboardContents *)&v18 init];
  if (v11)
  {
    v12 = [v8 copy];
    content = v11->_content;
    v11->_content = v12;

    objc_storeStrong(&v11->_creationDate, a4);
    v14 = [v10 copy];
    originatorBundleId = v11->_originatorBundleId;
    v11->_originatorBundleId = v14;

    v16 = v11;
  }

  return v11;
}

@end