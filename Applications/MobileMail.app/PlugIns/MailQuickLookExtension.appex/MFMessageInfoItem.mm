@interface MFMessageInfoItem
- (MFMessageInfoItem)initWithAttachment:(id)attachment;
- (MFMessageInfoItem)initWithEmail:(id)email;
- (MFMessageInfoItem)initWithRichLink:(id)link;
- (MFMessageInfoItem)initWithSubject:(id)subject;
@end

@implementation MFMessageInfoItem

- (MFMessageInfoItem)initWithEmail:(id)email
{
  emailCopy = email;
  v9.receiver = self;
  v9.super_class = MFMessageInfoItem;
  v6 = [(MFMessageInfoItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_emailAddress, email);
  }

  return v7;
}

- (MFMessageInfoItem)initWithSubject:(id)subject
{
  subjectCopy = subject;
  v9.receiver = self;
  v9.super_class = MFMessageInfoItem;
  v6 = [(MFMessageInfoItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subject, subject);
  }

  return v7;
}

- (MFMessageInfoItem)initWithAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v9.receiver = self;
  v9.super_class = MFMessageInfoItem;
  v6 = [(MFMessageInfoItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attachment, attachment);
  }

  return v7;
}

- (MFMessageInfoItem)initWithRichLink:(id)link
{
  linkCopy = link;
  v9.receiver = self;
  v9.super_class = MFMessageInfoItem;
  v6 = [(MFMessageInfoItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_richLink, link);
  }

  return v7;
}

@end