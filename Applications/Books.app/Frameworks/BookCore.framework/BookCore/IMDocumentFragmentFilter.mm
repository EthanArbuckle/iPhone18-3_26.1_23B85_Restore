@interface IMDocumentFragmentFilter
- (BOOL)mightContainFragment:(id)fragment;
- (IMDocumentFragmentFilter)initWithCoder:(id)coder;
- (IMDocumentFragmentFilter)initWithDocument:(id)document filterSpecification:(id *)specification;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMDocumentFragmentFilter

- (IMDocumentFragmentFilter)initWithDocument:(id)document filterSpecification:(id *)specification
{
  documentCopy = document;
  v19.receiver = self;
  v19.super_class = IMDocumentFragmentFilter;
  v7 = [(IMDocumentFragmentFilter *)&v19 init];
  v8 = v7;
  if (v7)
  {
    v9 = *&specification->var0.var2;
    *&v7->_specification.bloomFilterSpecification.expectedNumberOfInsertions = *&specification->var0.var0;
    *&v7->_specification.bloomFilterSpecification.numberOfHashFunctions = v9;
    v10 = [IMBloomFilter alloc];
    v11 = IMBloomFilterCharacterHashProvider();
    v17 = *&v8->_specification.bloomFilterSpecification.expectedNumberOfInsertions;
    numberOfHashFunctions = v8->_specification.bloomFilterSpecification.numberOfHashFunctions;
    v12 = [(IMBloomFilter *)v10 initWithSpecification:&v17 hashProvider:v11];
    filter = v8->_filter;
    v8->_filter = v12;

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_117650;
    v15[3] = &unk_2CD508;
    v16 = v8;
    IMWithAccessToCharacters(documentCopy, v15);
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBytes:&self->_specification length:32 forKey:@"specification"];
  [coderCopy encodeObject:self->_filter forKey:@"filter"];
}

- (IMDocumentFragmentFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = IMDocumentFragmentFilter;
  v5 = [(IMDocumentFragmentFilter *)&v12 init];
  if (v5)
  {
    v11 = 0;
    v6 = [coderCopy decodeBytesForKey:@"specification" returnedLength:&v11];
    v7 = v6[1];
    *&v5->_specification.bloomFilterSpecification.expectedNumberOfInsertions = *v6;
    *&v5->_specification.bloomFilterSpecification.numberOfHashFunctions = v7;
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filter"];
    filter = v5->_filter;
    v5->_filter = v8;
  }

  return v5;
}

- (BOOL)mightContainFragment:(id)fragment
{
  fragmentCopy = fragment;
  v5 = 1;
  if ([fragmentCopy length] >= self->_specification.windowWidth)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1178D0;
    v7[3] = &unk_2CD530;
    v7[4] = self;
    v7[5] = &v8;
    IMWithAccessToCharacters(fragmentCopy, v7);
    v5 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  return v5 & 1;
}

- (void)dealloc
{
  filter = self->_filter;
  self->_filter = 0;

  v4.receiver = self;
  v4.super_class = IMDocumentFragmentFilter;
  [(IMDocumentFragmentFilter *)&v4 dealloc];
}

@end