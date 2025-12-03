@interface _CNContactVCardNameSummzarizationScope
- (_CNContactVCardNameSummzarizationScope)initWithContact:(id)contact fullName:(id)name;
@end

@implementation _CNContactVCardNameSummzarizationScope

- (_CNContactVCardNameSummzarizationScope)initWithContact:(id)contact fullName:(id)name
{
  contactCopy = contact;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = _CNContactVCardNameSummzarizationScope;
  v9 = [(_CNContactVCardNameSummzarizationScope *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contact, contact);
    v11 = [nameCopy copy];
    fullName = v10->_fullName;
    v10->_fullName = v11;

    v13 = v10;
  }

  return v10;
}

@end