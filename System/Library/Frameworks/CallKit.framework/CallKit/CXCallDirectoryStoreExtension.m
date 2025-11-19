@interface CXCallDirectoryStoreExtension
- (CXCallDirectoryStoreExtension)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CXCallDirectoryStoreExtension

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CXCallDirectoryStoreExtension *)self identifier];
  v6 = [(CXCallDirectoryStoreExtension *)self primaryKey];
  v7 = [(CXCallDirectoryStoreExtension *)self priority];
  v8 = [(CXCallDirectoryStoreExtension *)self state];
  v9 = [(CXCallDirectoryStoreExtension *)self stateLastModified];
  v10 = [v3 stringWithFormat:@"<%@ %p: identifier=%@ primaryKey=%lld priority=%lld state=%ld stateLastModified=%@>", v4, self, v5, v6, v7, v8, v9];

  return v10;
}

- (CXCallDirectoryStoreExtension)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXCallDirectoryStoreExtension *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_identifier);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = NSStringFromSelector(sel_primaryKey);
    v5->_primaryKey = [v4 decodeInt64ForKey:v10];

    v11 = NSStringFromSelector(sel_priority);
    v5->_priority = [v4 decodeInt64ForKey:v11];

    v12 = NSStringFromSelector(sel_state);
    v5->_state = [v4 decodeIntegerForKey:v12];

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_stateLastModified);
    v15 = [v4 decodeObjectOfClass:v13 forKey:v14];
    stateLastModified = v5->_stateLastModified;
    v5->_stateLastModified = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXCallDirectoryStoreExtension *)self identifier];
  v6 = NSStringFromSelector(sel_identifier);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(CXCallDirectoryStoreExtension *)self primaryKey];
  v8 = NSStringFromSelector(sel_primaryKey);
  [v4 encodeInt64:v7 forKey:v8];

  v9 = [(CXCallDirectoryStoreExtension *)self priority];
  v10 = NSStringFromSelector(sel_priority);
  [v4 encodeInt64:v9 forKey:v10];

  v11 = [(CXCallDirectoryStoreExtension *)self state];
  v12 = NSStringFromSelector(sel_state);
  [v4 encodeInteger:v11 forKey:v12];

  v14 = [(CXCallDirectoryStoreExtension *)self stateLastModified];
  v13 = NSStringFromSelector(sel_stateLastModified);
  [v4 encodeObject:v14 forKey:v13];
}

@end