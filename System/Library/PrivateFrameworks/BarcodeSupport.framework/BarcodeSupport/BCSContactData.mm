@interface BCSContactData
- (BCSContactData)initWithCoder:(id)coder;
- (BCSContactData)initWithContact:(id)contact;
@end

@implementation BCSContactData

- (BCSContactData)initWithContact:(id)contact
{
  contactCopy = contact;
  v10.receiver = self;
  v10.super_class = BCSContactData;
  v5 = [(BCSContactData *)&v10 init];
  if (v5)
  {
    v6 = [contactCopy copy];
    contact = v5->_contact;
    v5->_contact = v6;

    v8 = v5;
  }

  return v5;
}

- (BCSContactData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy _bcs_strictlyDecodeObjectOfClass:getCNContactClass() forKey:@"contact"];

  v6 = [(BCSContactData *)self initWithContact:v5];
  return v6;
}

@end