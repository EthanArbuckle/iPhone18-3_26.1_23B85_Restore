@interface _CNContactVCardNameSummzarizationScope
- (_CNContactVCardNameSummzarizationScope)initWithContact:(id)a3 fullName:(id)a4;
@end

@implementation _CNContactVCardNameSummzarizationScope

- (_CNContactVCardNameSummzarizationScope)initWithContact:(id)a3 fullName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = _CNContactVCardNameSummzarizationScope;
  v9 = [(_CNContactVCardNameSummzarizationScope *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contact, a3);
    v11 = [v8 copy];
    fullName = v10->_fullName;
    v10->_fullName = v11;

    v13 = v10;
  }

  return v10;
}

@end