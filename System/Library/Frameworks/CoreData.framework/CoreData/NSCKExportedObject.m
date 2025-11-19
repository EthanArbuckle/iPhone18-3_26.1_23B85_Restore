@interface NSCKExportedObject
+ (NSString)entityPath;
- (int64_t)changeType;
- (unint64_t)type;
- (void)setChangeType:(int64_t)a3;
- (void)setType:(unint64_t)a3;
@end

@implementation NSCKExportedObject

+ (NSString)entityPath
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = +[PFCloudKitMetadataModel ancillaryModelNamespace];
  v4 = objc_opt_class();
  return [v2 stringWithFormat:@"%@/%@", v3, NSStringFromClass(v4)];
}

- (unint64_t)type
{
  v2 = [(NSCKExportedObject *)self typeNum];

  return [v2 unsignedIntegerValue];
}

- (void)setType:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];

  [(NSCKExportedObject *)self setTypeNum:v4];
}

- (int64_t)changeType
{
  v2 = [(NSCKExportedObject *)self changeTypeNum];

  return [v2 unsignedIntegerValue];
}

- (void)setChangeType:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];

  [(NSCKExportedObject *)self setChangeTypeNum:v4];
}

@end