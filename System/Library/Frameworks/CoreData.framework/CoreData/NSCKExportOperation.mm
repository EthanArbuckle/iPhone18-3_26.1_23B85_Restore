@interface NSCKExportOperation
+ (NSString)entityPath;
- (unint64_t)status;
- (void)setStatus:(unint64_t)status;
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
  statusNum = [(NSCKExportOperation *)self statusNum];

  return [statusNum unsignedIntegerValue];
}

- (void)setStatus:(unint64_t)status
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:status];

  [(NSCKExportOperation *)self setStatusNum:v4];
}

@end