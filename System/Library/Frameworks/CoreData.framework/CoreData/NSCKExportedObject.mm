@interface NSCKExportedObject
+ (NSString)entityPath;
- (int64_t)changeType;
- (unint64_t)type;
- (void)setChangeType:(int64_t)type;
- (void)setType:(unint64_t)type;
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
  typeNum = [(NSCKExportedObject *)self typeNum];

  return [typeNum unsignedIntegerValue];
}

- (void)setType:(unint64_t)type
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];

  [(NSCKExportedObject *)self setTypeNum:v4];
}

- (int64_t)changeType
{
  changeTypeNum = [(NSCKExportedObject *)self changeTypeNum];

  return [changeTypeNum unsignedIntegerValue];
}

- (void)setChangeType:(int64_t)type
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:type];

  [(NSCKExportedObject *)self setChangeTypeNum:v4];
}

@end