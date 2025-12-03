@interface ABSGroup
+ (id)propertyKeyForPropertyID:(int)d;
+ (void)initialize;
- (ABSAddressBook)addressBook;
- (ABSGroup)initWithMutableGroup:(id)group;
- (ABSGroup)initWithSource:(id)source;
- (ABSSource)source;
- (BOOL)removeProperty:(int)property withError:(id *)error;
- (BOOL)setValue:(void *)value forProperty:(int)property withError:(__CFError *)error;
- (CNMutableGroup)cnImpl;
- (NSString)CNIdentifierString;
- (NSString)compositeName;
- (int)id;
- (void)copyValueForProperty:(int)property;
- (void)replaceRecordStorageWithCNObject:(id)object;
- (void)updateAllValuesWithValuesFromGroup:(id)group;
@end

@implementation ABSGroup

+ (void)initialize
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___ABSGroup;
  objc_msgSendSuper2(&v2, sel_initialize);
  +[ABSAddressBook ABInitialize];
}

- (ABSGroup)initWithSource:(id)source
{
  sourceCopy = source;
  v5 = [(ABSGroup *)self initWithMutableGroup:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_source, sourceCopy);
    v6->_revertedRecordID = -1;
  }

  return v6;
}

- (ABSGroup)initWithMutableGroup:(id)group
{
  groupCopy = group;
  v7.receiver = self;
  v7.super_class = ABSGroup;
  v5 = [(ABSGroup *)&v7 init];
  if (v5)
  {
    if (!groupCopy)
    {
      groupCopy = objc_alloc_init(MEMORY[0x277CBDB50]);
    }

    objc_storeStrong(&v5->_cnImpl, groupCopy);
  }

  return v5;
}

- (int)id
{
  cnImpl = [(ABSGroup *)self cnImpl];
  iOSLegacyIdentifier = [cnImpl iOSLegacyIdentifier];

  if (iOSLegacyIdentifier)
  {
    return iOSLegacyIdentifier;
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
    addressBook = [(ABSGroup *)self addressBook];
    v4 = [addressBook groupWithRecordID:{-[ABSGroup revertedRecordID](self, "revertedRecordID")}];
  }

  cnImpl = self->_cnImpl;

  return cnImpl;
}

- (NSString)CNIdentifierString
{
  cnImpl = [(ABSGroup *)self cnImpl];
  identifier = [cnImpl identifier];

  return identifier;
}

- (NSString)compositeName
{
  cnImpl = [(ABSGroup *)self cnImpl];
  name = [cnImpl name];

  return name;
}

- (ABSSource)source
{
  WeakRetained = objc_loadWeakRetained(&self->_source);

  if (WeakRetained)
  {
    defaultSource = objc_loadWeakRetained(&self->_source);
    if (defaultSource)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (-[ABSGroup id](self, "id") == -1 || (-[ABSGroup addressBook](self, "addressBook"), v5 = objc_claimAutoreleasedReturnValue(), [v5 sourceForRecord:self], defaultSource = objc_claimAutoreleasedReturnValue(), v5, objc_storeWeak(&self->_source, defaultSource), !defaultSource))
  {
LABEL_6:
    addressBook = [(ABSGroup *)self addressBook];
    defaultSource = [addressBook defaultSource];

    objc_storeWeak(&self->_source, defaultSource);
  }

LABEL_7:

  return defaultSource;
}

- (void)copyValueForProperty:(int)property
{
  if (property)
  {
    compositeName = 0;
  }

  else
  {
    compositeName = [(ABSGroup *)self compositeName];
  }

  v4 = [compositeName copy];

  return v4;
}

- (BOOL)setValue:(void *)value forProperty:(int)property withError:(__CFError *)error
{
  v7 = [ABSGroup propertyKeyForPropertyID:*&property];
  valueCopy = value;
  cnImpl = [(ABSGroup *)self cnImpl];
  [cnImpl setValue:valueCopy forKey:v7];

  addressBook = [(ABSGroup *)self addressBook];
  [addressBook recordUpdated:self];

  return 1;
}

- (BOOL)removeProperty:(int)property withError:(id *)error
{
  error = [ABSGroup propertyKeyForPropertyID:*&property, error];
  cnImpl = [(ABSGroup *)self cnImpl];
  [cnImpl setValue:0 forKey:error];

  addressBook = [(ABSGroup *)self addressBook];
  [addressBook recordUpdated:self];

  return 1;
}

- (void)updateAllValuesWithValuesFromGroup:(id)group
{
  v20 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  if (groupCopy)
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
          cnImpl = [(ABSGroup *)self cnImpl];
          v13 = [groupCopy valueForKey:v11];
          [cnImpl setValue:v13 forKey:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }
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
    cnImpl = [(ABSGroup *)self cnImpl];
    -[ABSGroup setRevertedRecordID:](self, "setRevertedRecordID:", [cnImpl iOSLegacyIdentifier]);

    v7 = 0;
  }

  v9 = v7;
  [(ABSGroup *)self setCnImpl:v7];
}

+ (id)propertyKeyForPropertyID:(int)d
{
  if (d)
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