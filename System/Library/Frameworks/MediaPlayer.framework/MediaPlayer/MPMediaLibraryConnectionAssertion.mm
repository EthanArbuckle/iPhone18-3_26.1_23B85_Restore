@interface MPMediaLibraryConnectionAssertion
- (id)_initWithMediaLibrary:(id)library identifier:(id)identifier;
- (void)dealloc;
@end

@implementation MPMediaLibraryConnectionAssertion

- (void)dealloc
{
  [(MPMediaLibrary *)self->_library _removeConnectionAssertion:self];
  v3.receiver = self;
  v3.super_class = MPMediaLibraryConnectionAssertion;
  [(MPMediaLibraryConnectionAssertion *)&v3 dealloc];
}

- (id)_initWithMediaLibrary:(id)library identifier:(id)identifier
{
  libraryCopy = library;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = MPMediaLibraryConnectionAssertion;
  v9 = [(MPMediaLibraryConnectionAssertion *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_library, library);
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;
  }

  return v10;
}

@end