@interface ABSSource
+ (void)initialize;
- (ABSAddressBook)addressBook;
- (ABSSource)initWithMutableContainer:(id)container;
- (ABSSource)source;
- (BOOL)removeProperty:(int)property withError:(id *)error;
- (BOOL)setValue:(void *)value forProperty:(int)property withError:(__CFError *)error;
- (CNMutableContainer)cnImpl;
- (NSString)CNIdentifierString;
- (NSString)compositeName;
- (int)id;
- (void)copyValueForProperty:(int)property;
- (void)replaceRecordStorageWithCNObject:(id)object;
- (void)updateAllValuesWithValuesFromContainer:(id)container;
@end

@implementation ABSSource

+ (void)initialize
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___ABSSource;
  objc_msgSendSuper2(&v2, sel_initialize);
  +[ABSAddressBook ABInitialize];
}

- (ABSSource)initWithMutableContainer:(id)container
{
  containerCopy = container;
  v7.receiver = self;
  v7.super_class = ABSSource;
  v5 = [(ABSSource *)&v7 init];
  if (v5)
  {
    if (!containerCopy)
    {
      containerCopy = objc_alloc_init(MEMORY[0x277CBDB48]);
    }

    objc_storeStrong(&v5->_cnImpl, containerCopy);
  }

  return v5;
}

- (int)id
{
  cnImpl = [(ABSSource *)self cnImpl];
  iOSLegacyIdentifier = [cnImpl iOSLegacyIdentifier];

  if (self->_cnImpl)
  {
    return iOSLegacyIdentifier;
  }

  else
  {
    return -1;
  }
}

- (CNMutableContainer)cnImpl
{
  if (!self->_cnImpl && [(ABSSource *)self revertedRecordID]!= -1)
  {
    addressBook = [(ABSSource *)self addressBook];
    v4 = [addressBook sourceWithRecordID:{-[ABSSource revertedRecordID](self, "revertedRecordID")}];
  }

  cnImpl = self->_cnImpl;

  return cnImpl;
}

- (NSString)CNIdentifierString
{
  cnImpl = [(ABSSource *)self cnImpl];
  identifier = [cnImpl identifier];

  return identifier;
}

- (NSString)compositeName
{
  cnImpl = [(ABSSource *)self cnImpl];
  name = [cnImpl name];

  return name;
}

- (ABSSource)source
{
  WeakRetained = objc_loadWeakRetained(&self->_source);

  if (!WeakRetained)
  {
    addressBook = [(ABSSource *)self addressBook];
    v5 = [addressBook sourceForRecord:self];
    objc_storeWeak(&self->_source, v5);
  }

  v6 = objc_loadWeakRetained(&self->_source);

  return v6;
}

- (void)copyValueForProperty:(int)property
{
  if (property)
  {
    if (property == 2)
    {
      cnImpl = [(ABSSource *)self cnImpl];
      type = [cnImpl type];

      v6 = +[ABSConstantsMapping CNToABSourceTypeConstantsMapping];
      v7 = [MEMORY[0x277CCABB0] numberWithInteger:type];
      compositeName = [v6 mappedConstant:v7];

      if (!compositeName || ([MEMORY[0x277CBEB68] null], v8 = objc_claimAutoreleasedReturnValue(), v8, compositeName == v8))
      {

        compositeName = &unk_2849AB438;
      }
    }

    else
    {
      compositeName = 0;
    }
  }

  else
  {
    compositeName = [(ABSSource *)self compositeName];
  }

  v9 = [compositeName copy];

  return v9;
}

- (BOOL)setValue:(void *)value forProperty:(int)property withError:(__CFError *)error
{
  if (!property)
  {
    valueCopy = value;
    cnImpl = [(ABSSource *)self cnImpl];
    [cnImpl setName:valueCopy];

    addressBook = [(ABSSource *)self addressBook];
    [addressBook recordUpdated:self];
  }

  return property == 0;
}

- (BOOL)removeProperty:(int)property withError:(id *)error
{
  if (!property)
  {
    v6 = [(ABSSource *)self cnImpl:*&property];
    [v6 setName:0];

    addressBook = [(ABSSource *)self addressBook];
    [addressBook recordUpdated:self];
  }

  return property == 0;
}

- (void)updateAllValuesWithValuesFromContainer:(id)container
{
  if (container)
  {
    containerCopy = container;
    cnImpl = [(ABSSource *)self cnImpl];
    identifier = [containerCopy identifier];
    [cnImpl setIdentifier:identifier];

    cnImpl2 = [(ABSSource *)self cnImpl];
    name = [containerCopy name];
    [cnImpl2 setName:name];

    cnImpl3 = [(ABSSource *)self cnImpl];
    [cnImpl3 setIOSLegacyIdentifier:{objc_msgSend(containerCopy, "iOSLegacyIdentifier")}];

    cnImpl4 = [(ABSSource *)self cnImpl];
    type = [containerCopy type];

    [cnImpl4 setType:type];
  }
}

- (void)replaceRecordStorageWithCNObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    v5 = objectCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [v5 mutableCopy];

      v5 = v6;
    }

    v7 = v5;
  }

  else
  {
    cnImpl = [(ABSSource *)self cnImpl];
    -[ABSSource setRevertedRecordID:](self, "setRevertedRecordID:", [cnImpl iOSLegacyIdentifier]);

    v7 = 0;
  }

  v9 = v7;
  [(ABSSource *)self setCnImpl:v7];
}

- (ABSAddressBook)addressBook
{
  WeakRetained = objc_loadWeakRetained(&self->_addressBook);

  return WeakRetained;
}

@end