@interface MPMediaLibraryConnectionAssertion
- (id)_initWithMediaLibrary:(id)a3 identifier:(id)a4;
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

- (id)_initWithMediaLibrary:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MPMediaLibraryConnectionAssertion;
  v9 = [(MPMediaLibraryConnectionAssertion *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_library, a3);
    v11 = [v8 copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;
  }

  return v10;
}

@end