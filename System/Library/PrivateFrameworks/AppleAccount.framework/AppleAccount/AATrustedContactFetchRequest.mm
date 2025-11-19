@interface AATrustedContactFetchRequest
- (AATrustedContactFetchRequest)initWithCoder:(id)a3;
- (AATrustedContactFetchRequest)initWithContactType:(unint64_t)a3 cachePolicy:(unint64_t)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)includeContactsWithStatus:(int64_t)a3;
@end

@implementation AATrustedContactFetchRequest

- (AATrustedContactFetchRequest)initWithContactType:(unint64_t)a3 cachePolicy:(unint64_t)a4
{
  v11.receiver = self;
  v11.super_class = AATrustedContactFetchRequest;
  v6 = [(AATrustedContactFetchRequest *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_contactType = a3;
    v6->_cachePolicy = a4;
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    includedStatuses = v7->_includedStatuses;
    v7->_includedStatuses = v8;

    v7->_shouldLookUpContactInAddressBook = 1;
  }

  return v7;
}

- (AATrustedContactFetchRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AATrustedContactFetchRequest *)self init];
  if (v5)
  {
    v5->_contactType = [v4 decodeIntegerForKey:@"_contactType"];
    v5->_cachePolicy = [v4 decodeIntegerForKey:@"_cachePolicy"];
    v5->_shouldLookUpContactInAddressBook = [v4 decodeBoolForKey:@"_shouldLookUpContactInAddressBook"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_includedStatuses"];
    if (v9)
    {
      v10 = [MEMORY[0x1E695DFA8] setWithSet:v9];
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    }

    includedStatuses = v5->_includedStatuses;
    v5->_includedStatuses = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  contactType = self->_contactType;
  v5 = a3;
  [v5 encodeInteger:contactType forKey:@"_contactType"];
  [v5 encodeObject:self->_includedStatuses forKey:@"_includedStatuses"];
  [v5 encodeInteger:self->_cachePolicy forKey:@"_cachePolicy"];
  [v5 encodeBool:self->_shouldLookUpContactInAddressBook forKey:@"_shouldLookUpContactInAddressBook"];
}

- (void)includeContactsWithStatus:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v4 = [(AATrustedContactFetchRequest *)self includedStatuses];
  [v4 addObject:v5];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AATrustedContactFetchRequest *)self contactType];
  v5 = [(AATrustedContactFetchRequest *)self includedStatuses];
  v6 = [(AATrustedContactFetchRequest *)self cachePolicy];
  v7 = [(AATrustedContactFetchRequest *)self shouldLookUpContactInAddressBook];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"<TrustedContactFetchRequest: contactType: %ld, includedStatuses: %@, cachePolicy: %ld, shouldLookupAddressBook: %@>", v4, v5, v6, v8];

  return v9;
}

@end