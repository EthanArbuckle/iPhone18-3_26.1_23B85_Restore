@interface NSCKExportOperation
+ (NSString)entityPath;
- (unint64_t)status;
- (void)setStatus:(unint64_t)a3;
@end

@implementation NSCKExportOperation

+ (NSString)entityPath
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = +[PFCloudKitMetadataModel ancillaryModelNamespace];
  v4 = objc_opt_class();
  return [v2 stringWithFormat:@"%@/%@", v3, NSStringFromClass(v4)];
}

- (unint64_t)status
{
  v2 = [(NSCKExportOperation *)self statusNum];

  return [v2 unsignedIntegerValue];
}

- (void)setStatus:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];

  [(NSCKExportOperation *)self setStatusNum:v4];
}

@end