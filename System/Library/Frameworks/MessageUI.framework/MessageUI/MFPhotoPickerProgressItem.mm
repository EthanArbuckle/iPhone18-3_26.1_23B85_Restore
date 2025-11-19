@interface MFPhotoPickerProgressItem
- (id)description;
@end

@implementation MFPhotoPickerProgressItem

- (id)description
{
  v14.receiver = self;
  v14.super_class = MFPhotoPickerProgressItem;
  v3 = [(MFPhotoPickerProgressItem *)&v14 description];
  v4 = [v3 mutableCopy];

  v5 = MEMORY[0x1E696AEC0];
  [(MFPhotoPickerProgressItem *)self progress];
  v7 = [v5 stringWithFormat:@" progress: %f ", v6];
  [v4 appendString:v7];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"imageRequestID: %d ", -[MFPhotoPickerProgressItem imageRequestID](self, "imageRequestID")];
  [v4 appendString:v8];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [(MFPhotoPickerProgressItem *)self exportSession];
  v11 = [v9 stringWithFormat:@"exportSession: %@", v10];
  [v4 appendString:v11];

  v12 = [v4 copy];

  return v12;
}

@end