@interface _MXExtensionContainingAppProxy
- (_MXExtensionContainingAppProxy)initWithContainingAppIdentifer:(id)a3;
@end

@implementation _MXExtensionContainingAppProxy

- (_MXExtensionContainingAppProxy)initWithContainingAppIdentifer:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _MXExtensionContainingAppProxy;
  v5 = [(_MXExtensionContainingAppProxy *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    containingAppIdentifer = v5->_containingAppIdentifer;
    v5->_containingAppIdentifer = v6;

    v8 = [MEMORY[0x1E695DFA8] set];
    extensionNonUIIdentifiers = v5->_extensionNonUIIdentifiers;
    v5->_extensionNonUIIdentifiers = v8;

    v10 = [MEMORY[0x1E695DFA8] set];
    extensionUIIdentifiers = v5->_extensionUIIdentifiers;
    v5->_extensionUIIdentifiers = v10;
  }

  return v5;
}

@end