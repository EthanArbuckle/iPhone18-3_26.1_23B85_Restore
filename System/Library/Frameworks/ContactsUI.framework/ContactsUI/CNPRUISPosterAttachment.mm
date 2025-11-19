@interface CNPRUISPosterAttachment
- (CNPRUISPosterAttachment)initWithAttachment:(id)a3;
@end

@implementation CNPRUISPosterAttachment

- (CNPRUISPosterAttachment)initWithAttachment:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNPRUISPosterAttachment;
  v6 = [(CNPRUISPosterAttachment *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attachment, a3);
  }

  return v7;
}

@end