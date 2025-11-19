@interface NSKnownKeysDictionary
+ (NSArray)classesForArchiving;
@end

@implementation NSKnownKeysDictionary

+ (NSArray)classesForArchiving
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

@end