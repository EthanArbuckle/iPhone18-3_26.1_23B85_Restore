@interface NSFoundationBundle
@end

@implementation NSFoundationBundle

NSBundle *___NSFoundationBundle_block_invoke()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = [NSBundle bundleForClass:objc_opt_self()];
  qword_1ED43F9E8 = v0;
  result = +[NSBundle mainBundle];
  if (v0 == result)
  {
    v2 = [NSBundle bundleWithPath:@"/System/Frameworks/Foundation.framework"];
    qword_1ED43F9E8 = v2;
    if (!v2 || (v3 = v2, result = +[NSBundle mainBundle], v3 == result))
    {
      v4 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 1);
      v9 = 0u;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      result = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v8 count:16];
      if (result)
      {
        v5 = result;
        v6 = *v10;
LABEL_7:
        v7 = 0;
        while (1)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          result = +[NSBundle bundleWithPath:](NSBundle, "bundleWithPath:", [*(*(&v9 + 1) + 8 * v7) stringByAppendingPathComponent:@"Frameworks/Foundation.framework"]);
          qword_1ED43F9E8 = result;
          if (result)
          {
            break;
          }

          if (v5 == ++v7)
          {
            result = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v8 count:16];
            v5 = result;
            if (result)
            {
              goto LABEL_7;
            }

            return result;
          }
        }
      }
    }
  }

  return result;
}

@end