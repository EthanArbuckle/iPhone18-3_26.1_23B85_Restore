@interface NSKeyedArchiver(VCKeyedArchiverExtensions)
+ (id)newSecureArchivedDataWithRootObject:()VCKeyedArchiverExtensions;
@end

@implementation NSKeyedArchiver(VCKeyedArchiverExtensions)

+ (id)newSecureArchivedDataWithRootObject:()VCKeyedArchiverExtensions
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v5 = [objc_alloc(MEMORY[0x1E696ACC8]) initForWritingWithMutableData:v4];
  [v5 setRequiresSecureCoding:1];
  [v5 encodeObject:a3 forKey:*MEMORY[0x1E696A508]];
  [v5 finishEncoding];

  return v4;
}

@end