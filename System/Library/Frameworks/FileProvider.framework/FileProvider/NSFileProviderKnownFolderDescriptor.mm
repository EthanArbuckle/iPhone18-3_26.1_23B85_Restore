@interface NSFileProviderKnownFolderDescriptor
- (NSFileProviderKnownFolderDescriptor)initWithCoder:(id)coder;
- (NSFileProviderKnownFolderDescriptor)initWithKnownFolder:(id)folder logicalLocation:(id)location detachOptions:(unint64_t)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSFileProviderKnownFolderDescriptor

- (NSFileProviderKnownFolderDescriptor)initWithKnownFolder:(id)folder logicalLocation:(id)location detachOptions:(unint64_t)options
{
  folderCopy = folder;
  locationCopy = location;
  v14.receiver = self;
  v14.super_class = NSFileProviderKnownFolderDescriptor;
  v11 = [(NSFileProviderKnownFolderDescriptor *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_knownFolder, folder);
    objc_storeStrong(&v12->_logicalLocation, location);
    v12->_detachOptions = options;
  }

  return v12;
}

- (NSFileProviderKnownFolderDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = NSFileProviderKnownFolderDescriptor;
  v5 = [(NSFileProviderKnownFolderDescriptor *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_knownFolder"];
    knownFolder = v5->_knownFolder;
    v5->_knownFolder = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_logicalLocation"];
    logicalLocation = v5->_logicalLocation;
    v5->_logicalLocation = v8;

    v5->_detachOptions = [coderCopy decodeIntegerForKey:@"_detachOptions"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  knownFolder = self->_knownFolder;
  coderCopy = coder;
  [coderCopy encodeObject:knownFolder forKey:@"_knownFolder"];
  [coderCopy encodeObject:self->_logicalLocation forKey:@"_logicalLocation"];
  [coderCopy encodeInteger:self->_detachOptions forKey:@"_detachOptions"];
}

@end