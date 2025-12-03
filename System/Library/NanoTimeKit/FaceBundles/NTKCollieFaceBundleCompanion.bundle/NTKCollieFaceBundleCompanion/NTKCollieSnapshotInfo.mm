@interface NTKCollieSnapshotInfo
+ (id)snapshotInfoWithStyleName:(id)name resourceDirectory:(id)directory poseType:(unint64_t)type size:(CGSize)size;
- (BOOL)equalsStyleName:(id)name resourceDirectory:(id)directory poseType:(unint64_t)type size:(CGSize)size;
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (NTKCollieSnapshotInfo)initWithStyleName:(id)name resourceDirectory:(id)directory poseType:(unint64_t)type size:(CGSize)size;
@end

@implementation NTKCollieSnapshotInfo

- (NTKCollieSnapshotInfo)initWithStyleName:(id)name resourceDirectory:(id)directory poseType:(unint64_t)type size:(CGSize)size
{
  height = size.height;
  width = size.width;
  nameCopy = name;
  directoryCopy = directory;
  v19.receiver = self;
  v19.super_class = NTKCollieSnapshotInfo;
  v14 = [(NTKCollieSnapshotInfo *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_styleName, name);
    objc_storeStrong(&v15->_resourceDirectory, directory);
    v15->_poseType = type;
    v15->_size.width = width;
    v15->_size.height = height;
    v16 = objc_opt_new();
    completions = v15->_completions;
    v15->_completions = v16;
  }

  return v15;
}

+ (id)snapshotInfoWithStyleName:(id)name resourceDirectory:(id)directory poseType:(unint64_t)type size:(CGSize)size
{
  height = size.height;
  width = size.width;
  directoryCopy = directory;
  nameCopy = name;
  height = [[NTKCollieSnapshotInfo alloc] initWithStyleName:nameCopy resourceDirectory:directoryCopy poseType:type size:width, height];

  return height;
}

- (BOOL)equalsStyleName:(id)name resourceDirectory:(id)directory poseType:(unint64_t)type size:(CGSize)size
{
  height = size.height;
  width = size.width;
  nameCopy = name;
  directoryCopy = directory;
  v15 = 0;
  if (self->_poseType == type && self->_size.width == width && self->_size.height == height)
  {
    if ([(NSString *)self->_styleName isEqualToString:nameCopy])
    {
      resourceDirectory = self->_resourceDirectory;
      if (resourceDirectory == directoryCopy || [(NSString *)resourceDirectory isEqualToString:directoryCopy])
      {
        v15 = 1;
      }
    }
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NTKCollieSnapshotInfo *)self equalsStyleName:*(equalCopy + 1) resourceDirectory:*(equalCopy + 2) poseType:*(equalCopy + 3) size:equalCopy[5], equalCopy[6]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end