@interface FPPathComponentDisplayMetadata
- (FPPathComponentDisplayMetadata)initWithCoder:(id)coder;
- (FPPathComponentDisplayMetadata)initWithURL:(id)l displayName:(id)name suffix:(id)suffix bundleID:(id)d bundleURL:(id)rL;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPPathComponentDisplayMetadata

- (FPPathComponentDisplayMetadata)initWithURL:(id)l displayName:(id)name suffix:(id)suffix bundleID:(id)d bundleURL:(id)rL
{
  lCopy = l;
  nameCopy = name;
  suffixCopy = suffix;
  dCopy = d;
  rLCopy = rL;
  v21.receiver = self;
  v21.super_class = FPPathComponentDisplayMetadata;
  v17 = [(FPPathComponentDisplayMetadata *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_URL, l);
    objc_storeStrong(&v18->_displayName, name);
    objc_storeStrong(&v18->_suffix, suffix);
    objc_storeStrong(&v18->_bundleID, d);
    objc_storeStrong(&v18->_bundleURL, rL);
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  URL = self->_URL;
  coderCopy = coder;
  [coderCopy encodeObject:URL forKey:@"URL"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_suffix forKey:@"suffix"];
  [coderCopy encodeObject:self->_bundleID forKey:@"bundleID"];
  [coderCopy encodeObject:self->_bundleURL forKey:@"bundleURL"];
}

- (FPPathComponentDisplayMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleURL"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suffix"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];

  v10 = [(FPPathComponentDisplayMetadata *)self initWithURL:v5 displayName:v7 suffix:v8 bundleID:v9 bundleURL:v6];
  return v10;
}

@end