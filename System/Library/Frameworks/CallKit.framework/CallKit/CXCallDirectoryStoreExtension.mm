@interface CXCallDirectoryStoreExtension
- (CXCallDirectoryStoreExtension)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CXCallDirectoryStoreExtension

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(CXCallDirectoryStoreExtension *)self identifier];
  primaryKey = [(CXCallDirectoryStoreExtension *)self primaryKey];
  priority = [(CXCallDirectoryStoreExtension *)self priority];
  state = [(CXCallDirectoryStoreExtension *)self state];
  stateLastModified = [(CXCallDirectoryStoreExtension *)self stateLastModified];
  v10 = [v3 stringWithFormat:@"<%@ %p: identifier=%@ primaryKey=%lld priority=%lld state=%ld stateLastModified=%@>", v4, self, identifier, primaryKey, priority, state, stateLastModified];

  return v10;
}

- (CXCallDirectoryStoreExtension)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CXCallDirectoryStoreExtension *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_identifier);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = NSStringFromSelector(sel_primaryKey);
    v5->_primaryKey = [coderCopy decodeInt64ForKey:v10];

    v11 = NSStringFromSelector(sel_priority);
    v5->_priority = [coderCopy decodeInt64ForKey:v11];

    v12 = NSStringFromSelector(sel_state);
    v5->_state = [coderCopy decodeIntegerForKey:v12];

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_stateLastModified);
    v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];
    stateLastModified = v5->_stateLastModified;
    v5->_stateLastModified = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(CXCallDirectoryStoreExtension *)self identifier];
  v6 = NSStringFromSelector(sel_identifier);
  [coderCopy encodeObject:identifier forKey:v6];

  primaryKey = [(CXCallDirectoryStoreExtension *)self primaryKey];
  v8 = NSStringFromSelector(sel_primaryKey);
  [coderCopy encodeInt64:primaryKey forKey:v8];

  priority = [(CXCallDirectoryStoreExtension *)self priority];
  v10 = NSStringFromSelector(sel_priority);
  [coderCopy encodeInt64:priority forKey:v10];

  state = [(CXCallDirectoryStoreExtension *)self state];
  v12 = NSStringFromSelector(sel_state);
  [coderCopy encodeInteger:state forKey:v12];

  stateLastModified = [(CXCallDirectoryStoreExtension *)self stateLastModified];
  v13 = NSStringFromSelector(sel_stateLastModified);
  [coderCopy encodeObject:stateLastModified forKey:v13];
}

@end