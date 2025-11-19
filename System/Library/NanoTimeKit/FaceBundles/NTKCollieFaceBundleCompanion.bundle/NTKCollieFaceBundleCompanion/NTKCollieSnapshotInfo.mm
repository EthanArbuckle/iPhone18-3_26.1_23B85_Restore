@interface NTKCollieSnapshotInfo
+ (id)snapshotInfoWithStyleName:(id)a3 resourceDirectory:(id)a4 poseType:(unint64_t)a5 size:(CGSize)a6;
- (BOOL)equalsStyleName:(id)a3 resourceDirectory:(id)a4 poseType:(unint64_t)a5 size:(CGSize)a6;
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (NTKCollieSnapshotInfo)initWithStyleName:(id)a3 resourceDirectory:(id)a4 poseType:(unint64_t)a5 size:(CGSize)a6;
@end

@implementation NTKCollieSnapshotInfo

- (NTKCollieSnapshotInfo)initWithStyleName:(id)a3 resourceDirectory:(id)a4 poseType:(unint64_t)a5 size:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v12 = a3;
  v13 = a4;
  v19.receiver = self;
  v19.super_class = NTKCollieSnapshotInfo;
  v14 = [(NTKCollieSnapshotInfo *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_styleName, a3);
    objc_storeStrong(&v15->_resourceDirectory, a4);
    v15->_poseType = a5;
    v15->_size.width = width;
    v15->_size.height = height;
    v16 = objc_opt_new();
    completions = v15->_completions;
    v15->_completions = v16;
  }

  return v15;
}

+ (id)snapshotInfoWithStyleName:(id)a3 resourceDirectory:(id)a4 poseType:(unint64_t)a5 size:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v10 = a4;
  v11 = a3;
  v12 = [[NTKCollieSnapshotInfo alloc] initWithStyleName:v11 resourceDirectory:v10 poseType:a5 size:width, height];

  return v12;
}

- (BOOL)equalsStyleName:(id)a3 resourceDirectory:(id)a4 poseType:(unint64_t)a5 size:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v11 = a3;
  v12 = a4;
  v15 = 0;
  if (self->_poseType == a5 && self->_size.width == width && self->_size.height == height)
  {
    if ([(NSString *)self->_styleName isEqualToString:v11])
    {
      resourceDirectory = self->_resourceDirectory;
      if (resourceDirectory == v12 || [(NSString *)resourceDirectory isEqualToString:v12])
      {
        v15 = 1;
      }
    }
  }

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NTKCollieSnapshotInfo *)self equalsStyleName:*(v4 + 1) resourceDirectory:*(v4 + 2) poseType:*(v4 + 3) size:v4[5], v4[6]];
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