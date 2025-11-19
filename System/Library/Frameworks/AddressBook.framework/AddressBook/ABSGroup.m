@interface ABSGroup
+ (id)propertyKeyForPropertyID:(int)a3;
+ (void)initialize;
- (ABSAddressBook)addressBook;
- (ABSGroup)initWithMutableGroup:(id)a3;
- (ABSGroup)initWithSource:(id)a3;
- (ABSSource)source;
- (BOOL)removeProperty:(int)a3 withError:(id *)a4;
- (BOOL)setValue:(void *)a3 forProperty:(int)a4 withError:(__CFError *)a5;
- (CNMutableGroup)cnImpl;
- (NSString)CNIdentifierString;
- (NSString)compositeName;
- (int)id;
- (void)copyValueForProperty:(int)a3;
- (void)replaceRecordStorageWithCNObject:(id)a3;
- (void)updateAllValuesWithValuesFromGroup:(id)a3;
@end

@implementation ABSGroup

+ (void)initialize
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___ABSGroup;
  objc_msgSendSuper2(&v2, sel_initialize);
  +[ABSAddressBook ABInitialize];
}

- (ABSGroup)initWithSource:(id)a3
{
  v4 = a3;
  v5 = [(ABSGroup *)self initWithMutableGroup:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_source, v4);
    v6->_revertedRecordID = -1;
  }

  return v6;
}

- (ABSGroup)initWithMutableGroup:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ABSGroup;
  v5 = [(ABSGroup *)&v7 init];
  if (v5)
  {
    if (!v4)
    {
      v4 = objc_alloc_init(MEMORY[0x277CBDB50]);
    }

    objc_storeStrong(&v5->_cnImpl, v4);
  }

  return v5;
}

- (int)id
{
  v2 = [(ABSGroup *)self cnImpl];
  v3 = [v2 iOSLegacyIdentifier];

  if (v3)
  {
    return v3;
  }

  else
  {
    return -1;
  }
}

- (CNMutableGroup)cnImpl
{
  if (!self->_cnImpl && [(ABSGroup *)self revertedRecordID]!= -1)
  {
    v3 = [(ABSGroup *)self addressBook];
    v4 = [v3 groupWithRecordID:{-[ABSGroup revertedRecordID](self, "revertedRecordID")}];
  }

  cnImpl = self->_cnImpl;

  return cnImpl;
}

- (NSString)CNIdentifierString
{
  v2 = [(ABSGroup *)self cnImpl];
  v3 = [v2 identifier];

  return v3;
}

- (NSString)compositeName
{
  v2 = [(ABSGroup *)self cnImpl];
  v3 = [v2 name];

  return v3;
}

- (ABSSource)source
{
  WeakRetained = objc_loadWeakRetained(&self->_source);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_source);
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (-[ABSGroup id](self, "id") == -1 || (-[ABSGroup addressBook](self, "addressBook"), v5 = objc_claimAutoreleasedReturnValue(), [v5 sourceForRecord:self], v4 = objc_claimAutoreleasedReturnValue(), v5, objc_storeWeak(&self->_source, v4), !v4))
  {
LABEL_6:
    v6 = [(ABSGroup *)self addressBook];
    v4 = [v6 defaultSource];

    objc_storeWeak(&self->_source, v4);
  }

LABEL_7:

  return v4;
}

- (void)copyValueForProperty:(int)a3
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(ABSGroup *)self compositeName];
  }

  v4 = [v3 copy];

  return v4;
}

- (BOOL)setValue:(void *)a3 forProperty:(int)a4 withError:(__CFError *)a5
{
  v7 = [ABSGroup propertyKeyForPropertyID:*&a4];
  v8 = a3;
  v9 = [(ABSGroup *)self cnImpl];
  [v9 setValue:v8 forKey:v7];

  v10 = [(ABSGroup *)self addressBook];
  [v10 recordUpdated:self];

  return 1;
}

- (BOOL)removeProperty:(int)a3 withError:(id *)a4
{
  v5 = [ABSGroup propertyKeyForPropertyID:*&a3, a4];
  v6 = [(ABSGroup *)self cnImpl];
  [v6 setValue:0 forKey:v5];

  v7 = [(ABSGroup *)self addressBook];
  [v7 recordUpdated:self];

  return 1;
}

- (void)updateAllValuesWithValuesFromGroup:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = *MEMORY[0x277CBD1D0];
    v18[0] = *MEMORY[0x277CBD1D8];
    v18[1] = v5;
    v18[2] = *MEMORY[0x277CBD1E0];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:{3, 0}];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          v12 = [(ABSGroup *)self cnImpl];
          v13 = [v4 valueForKey:v11];
          [v12 setValue:v13 forKey:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }
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
    v8 = [(ABSGroup *)self cnImpl];
    -[ABSGroup setRevertedRecordID:](self, "setRevertedRecordID:", [v8 iOSLegacyIdentifier]);

    v7 = 0;
  }

  v9 = v7;
  [(ABSGroup *)self setCnImpl:v7];
}

+ (id)propertyKeyForPropertyID:(int)a3
{
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *MEMORY[0x277CBD1E0];
  }

  return v4;
}

- (ABSAddressBook)addressBook
{
  WeakRetained = objc_loadWeakRetained(&self->_addressBook);

  return WeakRetained;
}

@end