@interface NSFileProviderKnownFolderDescriptor
- (NSFileProviderKnownFolderDescriptor)initWithCoder:(id)a3;
- (NSFileProviderKnownFolderDescriptor)initWithKnownFolder:(id)a3 logicalLocation:(id)a4 detachOptions:(unint64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSFileProviderKnownFolderDescriptor

- (NSFileProviderKnownFolderDescriptor)initWithKnownFolder:(id)a3 logicalLocation:(id)a4 detachOptions:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = NSFileProviderKnownFolderDescriptor;
  v11 = [(NSFileProviderKnownFolderDescriptor *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_knownFolder, a3);
    objc_storeStrong(&v12->_logicalLocation, a4);
    v12->_detachOptions = a5;
  }

  return v12;
}

- (NSFileProviderKnownFolderDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NSFileProviderKnownFolderDescriptor;
  v5 = [(NSFileProviderKnownFolderDescriptor *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_knownFolder"];
    knownFolder = v5->_knownFolder;
    v5->_knownFolder = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_logicalLocation"];
    logicalLocation = v5->_logicalLocation;
    v5->_logicalLocation = v8;

    v5->_detachOptions = [v4 decodeIntegerForKey:@"_detachOptions"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  knownFolder = self->_knownFolder;
  v5 = a3;
  [v5 encodeObject:knownFolder forKey:@"_knownFolder"];
  [v5 encodeObject:self->_logicalLocation forKey:@"_logicalLocation"];
  [v5 encodeInteger:self->_detachOptions forKey:@"_detachOptions"];
}

@end