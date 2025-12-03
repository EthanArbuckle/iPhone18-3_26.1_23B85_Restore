@interface ABSAssistantManager
- (ABSAssistantManager)init;
- (ABSAssistantManager)initWithAddressBook:(id)book;
- (id)newSAPersonFromABPerson:(void *)person;
@end

@implementation ABSAssistantManager

- (ABSAssistantManager)init
{
  v3 = objc_alloc_init(ABSAddressBook);
  v4 = [(ABSAssistantManager *)self initWithAddressBook:v3];

  return v4;
}

- (ABSAssistantManager)initWithAddressBook:(id)book
{
  bookCopy = book;
  v10.receiver = self;
  v10.super_class = ABSAssistantManager;
  v6 = [(ABSAssistantManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_addressBook, book);
    v8 = v7;
  }

  return v7;
}

- (id)newSAPersonFromABPerson:(void *)person
{
  descriptorsForRequiredKeys = [(objc_class *)getCNAssistantConversionClass() descriptorsForRequiredKeys];
  v5 = [ABSPublicABCNCompatibility contactFromPublicABPerson:person keysToFetch:descriptorsForRequiredKeys];

  v6 = [(objc_class *)getCNAssistantConversionClass() createSAPersonFromCNContact:v5];

  return v6;
}

@end