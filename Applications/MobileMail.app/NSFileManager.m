@interface NSFileManager
- (void)mf_enumerateAtPath:(id)a3 withBlock:(id)a4;
@end

@implementation NSFileManager

- (void)mf_enumerateAtPath:(id)a3 withBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"MFDiskCacheUtilities.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v16 = 0;
  v9 = [(NSFileManager *)self enumeratorAtPath:v7];
  v10 = 0;
  do
  {
    v11 = [v9 nextObject];

    if (!v11)
    {
      break;
    }

    v12 = [v7 stringByAppendingPathComponent:v11];
    v13 = [(NSFileManager *)self attributesOfItemAtPath:v12 error:0];
    v8[2](v8, v12, v13, &v16);
    v14 = v16;

    v10 = v11;
  }

  while ((v14 & 1) == 0);
}

@end