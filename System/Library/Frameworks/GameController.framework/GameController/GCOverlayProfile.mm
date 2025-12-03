@interface GCOverlayProfile
- (GCOverlayProfile)initWithName:(id)name identifier:(id)identifier;
@end

@implementation GCOverlayProfile

- (GCOverlayProfile)initWithName:(id)name identifier:(id)identifier
{
  nameCopy = name;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = GCOverlayProfile;
  v9 = [(GCOverlayProfile *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_identifier, identifier);
  }

  return v10;
}

@end