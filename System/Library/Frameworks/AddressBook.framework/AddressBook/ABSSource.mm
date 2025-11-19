@interface ABSSource
+ (void)initialize;
- (ABSAddressBook)addressBook;
- (ABSSource)initWithMutableContainer:(id)a3;
- (ABSSource)source;
- (BOOL)removeProperty:(int)a3 withError:(id *)a4;
- (BOOL)setValue:(void *)a3 forProperty:(int)a4 withError:(__CFError *)a5;
- (CNMutableContainer)cnImpl;
- (NSString)CNIdentifierString;
- (NSString)compositeName;
- (int)id;
- (void)copyValueForProperty:(int)a3;
- (void)replaceRecordStorageWithCNObject:(id)a3;
- (void)updateAllValuesWithValuesFromContainer:(id)a3;
@end

@implementation ABSSource

+ (void)initialize
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___ABSSource;
  objc_msgSendSuper2(&v2, sel_initialize);
  +[ABSAddressBook ABInitialize];
}

- (ABSSource)initWithMutableContainer:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ABSSource;
  v5 = [(ABSSource *)&v7 init];
  if (v5)
  {
    if (!v4)
    {
      v4 = objc_alloc_init(MEMORY[0x277CBDB48]);
    }

    objc_storeStrong(&v5->_cnImpl, v4);
  }

  return v5;
}

- (int)id
{
  v3 = [(ABSSource *)self cnImpl];
  v4 = [v3 iOSLegacyIdentifier];

  if (self->_cnImpl)
  {
    return v4;
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
    v3 = [(ABSSource *)self addressBook];
    v4 = [v3 sourceWithRecordID:{-[ABSSource revertedRecordID](self, "revertedRecordID")}];
  }

  cnImpl = self->_cnImpl;

  return cnImpl;
}

- (NSString)CNIdentifierString
{
  v2 = [(ABSSource *)self cnImpl];
  v3 = [v2 identifier];

  return v3;
}

- (NSString)compositeName
{
  v2 = [(ABSSource *)self cnImpl];
  v3 = [v2 name];

  return v3;
}

- (ABSSource)source
{
  WeakRetained = objc_loadWeakRetained(&self->_source);

  if (!WeakRetained)
  {
    v4 = [(ABSSource *)self addressBook];
    v5 = [v4 sourceForRecord:self];
    objc_storeWeak(&self->_source, v5);
  }

  v6 = objc_loadWeakRetained(&self->_source);

  return v6;
}

- (void)copyValueForProperty:(int)a3
{
  if (a3)
  {
    if (a3 == 2)
    {
      v4 = [(ABSSource *)self cnImpl];
      v5 = [v4 type];

      v6 = +[ABSConstantsMapping CNToABSourceTypeConstantsMapping];
      v7 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
      v3 = [v6 mappedConstant:v7];

      if (!v3 || ([MEMORY[0x277CBEB68] null], v8 = objc_claimAutoreleasedReturnValue(), v8, v3 == v8))
      {

        v3 = &unk_2849AB438;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = [(ABSSource *)self compositeName];
  }

  v9 = [v3 copy];

  return v9;
}

- (BOOL)setValue:(void *)a3 forProperty:(int)a4 withError:(__CFError *)a5
{
  if (!a4)
  {
    v7 = a3;
    v8 = [(ABSSource *)self cnImpl];
    [v8 setName:v7];

    v9 = [(ABSSource *)self addressBook];
    [v9 recordUpdated:self];
  }

  return a4 == 0;
}

- (BOOL)removeProperty:(int)a3 withError:(id *)a4
{
  if (!a3)
  {
    v6 = [(ABSSource *)self cnImpl:*&a3];
    [v6 setName:0];

    v7 = [(ABSSource *)self addressBook];
    [v7 recordUpdated:self];
  }

  return a3 == 0;
}

- (void)updateAllValuesWithValuesFromContainer:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(ABSSource *)self cnImpl];
    v6 = [v4 identifier];
    [v5 setIdentifier:v6];

    v7 = [(ABSSource *)self cnImpl];
    v8 = [v4 name];
    [v7 setName:v8];

    v9 = [(ABSSource *)self cnImpl];
    [v9 setIOSLegacyIdentifier:{objc_msgSend(v4, "iOSLegacyIdentifier")}];

    v11 = [(ABSSource *)self cnImpl];
    v10 = [v4 type];

    [v11 setType:v10];
  }
}

- (void)replaceRecordStorageWithCNObject:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
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
    v8 = [(ABSSource *)self cnImpl];
    -[ABSSource setRevertedRecordID:](self, "setRevertedRecordID:", [v8 iOSLegacyIdentifier]);

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