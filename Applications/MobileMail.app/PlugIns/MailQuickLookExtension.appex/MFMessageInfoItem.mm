@interface MFMessageInfoItem
- (MFMessageInfoItem)initWithAttachment:(id)a3;
- (MFMessageInfoItem)initWithEmail:(id)a3;
- (MFMessageInfoItem)initWithRichLink:(id)a3;
- (MFMessageInfoItem)initWithSubject:(id)a3;
@end

@implementation MFMessageInfoItem

- (MFMessageInfoItem)initWithEmail:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MFMessageInfoItem;
  v6 = [(MFMessageInfoItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_emailAddress, a3);
  }

  return v7;
}

- (MFMessageInfoItem)initWithSubject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MFMessageInfoItem;
  v6 = [(MFMessageInfoItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subject, a3);
  }

  return v7;
}

- (MFMessageInfoItem)initWithAttachment:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MFMessageInfoItem;
  v6 = [(MFMessageInfoItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attachment, a3);
  }

  return v7;
}

- (MFMessageInfoItem)initWithRichLink:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MFMessageInfoItem;
  v6 = [(MFMessageInfoItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_richLink, a3);
  }

  return v7;
}

@end