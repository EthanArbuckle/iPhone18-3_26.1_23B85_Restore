@interface _ATXCachedClipboardContents
- (_ATXCachedClipboardContents)initWithContent:(id)content creationDate:(id)date originatorBundleId:(id)id;
@end

@implementation _ATXCachedClipboardContents

- (_ATXCachedClipboardContents)initWithContent:(id)content creationDate:(id)date originatorBundleId:(id)id
{
  contentCopy = content;
  dateCopy = date;
  idCopy = id;
  v18.receiver = self;
  v18.super_class = _ATXCachedClipboardContents;
  v11 = [(_ATXCachedClipboardContents *)&v18 init];
  if (v11)
  {
    v12 = [contentCopy copy];
    content = v11->_content;
    v11->_content = v12;

    objc_storeStrong(&v11->_creationDate, date);
    v14 = [idCopy copy];
    originatorBundleId = v11->_originatorBundleId;
    v11->_originatorBundleId = v14;

    v16 = v11;
  }

  return v11;
}

@end