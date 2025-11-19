@interface MFHTMLDataObject
- (MFHTMLDataObject)initWithHTMLString:(id)a3 otherHTMLStringsAndAttachments:(id)a4 plainTextAlternative:(id)a5 quotedAttachmentsInfo:(id)a6;
@end

@implementation MFHTMLDataObject

- (MFHTMLDataObject)initWithHTMLString:(id)a3 otherHTMLStringsAndAttachments:(id)a4 plainTextAlternative:(id)a5 quotedAttachmentsInfo:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = MFHTMLDataObject;
  v15 = [(MFHTMLDataObject *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_htmlString, a3);
    objc_storeStrong(&v16->_otherHTMLStringsAndAttachments, a4);
    objc_storeStrong(&v16->_plainTextAlternative, a5);
    objc_storeStrong(&v16->_quotedAttachmentsInfo, a6);
  }

  return v16;
}

@end