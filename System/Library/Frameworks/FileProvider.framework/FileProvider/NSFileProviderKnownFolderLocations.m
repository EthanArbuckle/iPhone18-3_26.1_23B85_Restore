@interface NSFileProviderKnownFolderLocations
- (NSFileProviderKnownFolderLocations)init;
- (NSFileProviderKnownFolderLocations)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)providedKnownFolders;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSFileProviderKnownFolderLocations

- (NSFileProviderKnownFolderLocations)init
{
  v3.receiver = self;
  v3.super_class = NSFileProviderKnownFolderLocations;
  result = [(NSFileProviderKnownFolderLocations *)&v3 init];
  if (result)
  {
    result->_shouldCreateBinaryCompatibilitySymlink = 1;
  }

  return result;
}

- (NSFileProviderKnownFolderLocations)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NSFileProviderKnownFolderLocations;
  v5 = [(NSFileProviderKnownFolderLocations *)&v13 init];
  if (v5)
  {
    v5->_shouldCreateBinaryCompatibilitySymlink = [v4 decodeBoolForKey:@"_shouldCreateBinaryCompatibilitySymlink"];
    v6 = knownFolderLocationConcreteClasses();
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"_desktopLocation"];
    desktopLocation = v5->_desktopLocation;
    v5->_desktopLocation = v7;

    v9 = knownFolderLocationConcreteClasses();
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"_documentsLocation"];
    documentsLocation = v5->_documentsLocation;
    v5->_documentsLocation = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  shouldCreateBinaryCompatibilitySymlink = self->_shouldCreateBinaryCompatibilitySymlink;
  v5 = a3;
  [v5 encodeBool:shouldCreateBinaryCompatibilitySymlink forKey:@"_shouldCreateBinaryCompatibilitySymlink"];
  [v5 encodeObject:self->_desktopLocation forKey:@"_desktopLocation"];
  [v5 encodeObject:self->_documentsLocation forKey:@"_documentsLocation"];
}

- (unint64_t)providedKnownFolders
{
  desktopLocation = self->_desktopLocation;
  v3 = desktopLocation == 0;
  v4 = desktopLocation != 0;
  v5 = 2;
  if (!v3)
  {
    v5 = 3;
  }

  if (self->_documentsLocation)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

- (id)description
{
  v2 = 78;
  if (self->_shouldCreateBinaryCompatibilitySymlink)
  {
    v2 = 89;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<KFLocations desktop:%@ documents:%@ lnk:%c>", self->_desktopLocation, self->_documentsLocation, v2];
}

@end