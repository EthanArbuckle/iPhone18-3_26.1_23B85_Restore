@interface IMLibraryFragmentFilter
+ ($FC6CD60A160A1F368FF8D6A73B0F18B7)fragmentFilterSpecificationForDocumentLength:(SEL)a3 librarySpecification:(int64_t)a4;
- (BOOL)containsDocumentWithIdentifier:(id)a3;
- (IMLibraryFragmentFilter)initWithCoder:(id)a3;
- (IMLibraryFragmentFilter)initWithFilterSpecification:(id *)a3;
- (id)candidateIdentifiersForQuery:(id)a3;
- (void)addDocument:(id)a3 withIdentifier:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMLibraryFragmentFilter

- (IMLibraryFragmentFilter)initWithFilterSpecification:(id *)a3
{
  v9.receiver = self;
  v9.super_class = IMLibraryFragmentFilter;
  v4 = [(IMLibraryFragmentFilter *)&v9 init];
  if (v4)
  {
    v5 = +[NSMutableDictionary dictionary];
    identifiedDocuments = v4->_identifiedDocuments;
    v4->_identifiedDocuments = v5;

    v7 = *&a3->var0;
    v4->_specification.windowWidth = a3->var2;
    *&v4->_specification.loadFactor = v7;
  }

  return v4;
}

- (void)dealloc
{
  identifiedDocuments = self->_identifiedDocuments;
  self->_identifiedDocuments = 0;

  v4.receiver = self;
  v4.super_class = IMLibraryFragmentFilter;
  [(IMLibraryFragmentFilter *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [NSData dataWithBytes:&self->_specification length:24];
  [v4 encodeObject:v5 forKey:@"specification"];
  [v4 encodeObject:self->_identifiedDocuments forKey:@"identifiedDocuements"];
}

- (IMLibraryFragmentFilter)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IMLibraryFragmentFilter;
  v5 = [(IMLibraryFragmentFilter *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"specification"];
    [v6 getBytes:&v5->_specification length:24];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v7, v8, objc_opt_class(), 0];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"identifiedDocuements"];
    identifiedDocuments = v5->_identifiedDocuments;
    v5->_identifiedDocuments = v10;
  }

  return v5;
}

+ ($FC6CD60A160A1F368FF8D6A73B0F18B7)fragmentFilterSpecificationForDocumentLength:(SEL)a3 librarySpecification:(int64_t)a4
{
  var0 = a5->var0;
  retstr->var0.var0 = a4;
  retstr->var0.var1 = var0;
  *&retstr->var0.var2 = *&a5->var1;
  return result;
}

- (void)addDocument:(id)a3 withIdentifier:(id)a4
{
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [v6 length];
  if (v8)
  {
    v12 = *&self->_specification.loadFactor;
    *&v13 = self->_specification.windowWidth;
    [v8 fragmentFilterSpecificationForDocumentLength:v9 librarySpecification:&v12];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v10 = [IMDocumentFragmentFilter alloc];
  v12 = v14;
  v13 = v15;
  v11 = [(IMDocumentFragmentFilter *)v10 initWithDocument:v6 filterSpecification:&v12];
  [(IMLibraryFragmentFilter *)self addFilter:v11 withIdentifier:v7];
}

- (BOOL)containsDocumentWithIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_identifiedDocuments objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)candidateIdentifiersForQuery:(id)a3
{
  v4 = a3;
  v5 = [[NSMutableSet alloc] initWithCapacity:{-[NSMutableDictionary count](self->_identifiedDocuments, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_identifiedDocuments;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_identifiedDocuments objectForKey:v11, v14];
        if ([v12 mightContainFragment:v4])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

@end