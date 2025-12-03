@interface NSString
+ (NSString)stringWithFileSystemRepresentation:(const char *)representation;
+ (NSString)stringWithFileSystemRepresentation:(const char *)representation length:(unint64_t)length;
- (BOOL)containsDotDotPathComponents;
@end

@implementation NSString

+ (NSString)stringWithFileSystemRepresentation:(const char *)representation length:(unint64_t)length
{
  v6 = +[NSFileManager defaultManager];
  v7 = [v6 stringWithFileSystemRepresentation:representation length:length];

  return v7;
}

+ (NSString)stringWithFileSystemRepresentation:(const char *)representation
{
  v4 = strlen(representation);

  return [NSString stringWithFileSystemRepresentation:representation length:v4];
}

- (BOOL)containsDotDotPathComponents
{
  [(NSString *)self pathComponents];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v9 + 1) + 8 * i) isEqualToString:{@"..", v9}])
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

@end