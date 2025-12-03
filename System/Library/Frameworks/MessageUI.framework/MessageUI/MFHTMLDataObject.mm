@interface MFHTMLDataObject
- (MFHTMLDataObject)initWithHTMLString:(id)string otherHTMLStringsAndAttachments:(id)attachments plainTextAlternative:(id)alternative quotedAttachmentsInfo:(id)info;
@end

@implementation MFHTMLDataObject

- (MFHTMLDataObject)initWithHTMLString:(id)string otherHTMLStringsAndAttachments:(id)attachments plainTextAlternative:(id)alternative quotedAttachmentsInfo:(id)info
{
  stringCopy = string;
  attachmentsCopy = attachments;
  alternativeCopy = alternative;
  infoCopy = info;
  v18.receiver = self;
  v18.super_class = MFHTMLDataObject;
  v15 = [(MFHTMLDataObject *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_htmlString, string);
    objc_storeStrong(&v16->_otherHTMLStringsAndAttachments, attachments);
    objc_storeStrong(&v16->_plainTextAlternative, alternative);
    objc_storeStrong(&v16->_quotedAttachmentsInfo, info);
  }

  return v16;
}

@end