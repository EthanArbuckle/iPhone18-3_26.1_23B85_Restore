@interface AATrustedContactFetchRequest
- (AATrustedContactFetchRequest)initWithCoder:(id)coder;
- (AATrustedContactFetchRequest)initWithContactType:(unint64_t)type cachePolicy:(unint64_t)policy;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)includeContactsWithStatus:(int64_t)status;
@end

@implementation AATrustedContactFetchRequest

- (AATrustedContactFetchRequest)initWithContactType:(unint64_t)type cachePolicy:(unint64_t)policy
{
  v11.receiver = self;
  v11.super_class = AATrustedContactFetchRequest;
  v6 = [(AATrustedContactFetchRequest *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_contactType = type;
    v6->_cachePolicy = policy;
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    includedStatuses = v7->_includedStatuses;
    v7->_includedStatuses = v8;

    v7->_shouldLookUpContactInAddressBook = 1;
  }

  return v7;
}

- (AATrustedContactFetchRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AATrustedContactFetchRequest *)self init];
  if (v5)
  {
    v5->_contactType = [coderCopy decodeIntegerForKey:@"_contactType"];
    v5->_cachePolicy = [coderCopy decodeIntegerForKey:@"_cachePolicy"];
    v5->_shouldLookUpContactInAddressBook = [coderCopy decodeBoolForKey:@"_shouldLookUpContactInAddressBook"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_includedStatuses"];
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

- (void)encodeWithCoder:(id)coder
{
  contactType = self->_contactType;
  coderCopy = coder;
  [coderCopy encodeInteger:contactType forKey:@"_contactType"];
  [coderCopy encodeObject:self->_includedStatuses forKey:@"_includedStatuses"];
  [coderCopy encodeInteger:self->_cachePolicy forKey:@"_cachePolicy"];
  [coderCopy encodeBool:self->_shouldLookUpContactInAddressBook forKey:@"_shouldLookUpContactInAddressBook"];
}

- (void)includeContactsWithStatus:(int64_t)status
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:status];
  includedStatuses = [(AATrustedContactFetchRequest *)self includedStatuses];
  [includedStatuses addObject:v5];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  contactType = [(AATrustedContactFetchRequest *)self contactType];
  includedStatuses = [(AATrustedContactFetchRequest *)self includedStatuses];
  cachePolicy = [(AATrustedContactFetchRequest *)self cachePolicy];
  shouldLookUpContactInAddressBook = [(AATrustedContactFetchRequest *)self shouldLookUpContactInAddressBook];
  v8 = @"NO";
  if (shouldLookUpContactInAddressBook)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"<TrustedContactFetchRequest: contactType: %ld, includedStatuses: %@, cachePolicy: %ld, shouldLookupAddressBook: %@>", contactType, includedStatuses, cachePolicy, v8];

  return v9;
}

@end