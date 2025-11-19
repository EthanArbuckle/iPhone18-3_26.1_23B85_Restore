@interface NSURL(UTAdditions)
- (id)URLByAppendingPathComponent:()UTAdditions conformingToType:;
- (void)URLByAppendingPathExtensionForType:()UTAdditions;
@end

@implementation NSURL(UTAdditions)

- (id)URLByAppendingPathComponent:()UTAdditions conformingToType:
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"UTAdditions.mm" lineNumber:151 description:{@"Invalid parameter not satisfying: %@", @"partialName != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  [v14 handleFailureInMethod:a2 object:a1 file:@"UTAdditions.mm" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"contentType != nil"}];

LABEL_3:
  v10 = [v7 stringByAppendingPathExtensionForType:v9];
  v11 = [a1 URLByAppendingPathComponent:v10 isDirectory:{objc_msgSend(v9, "conformsToType:", &off_1ED40C660)}];

  return v11;
}

- (void)URLByAppendingPathExtensionForType:()UTAdditions
{
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"UTAdditions.mm" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"contentType != nil"}];
  }

  v6 = [a1 lastPathComponent];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 stringByAppendingPathExtensionForType:v5];

    v9 = [v5 conformsToType:&off_1ED40C660];
    v10 = [a1 URLByDeletingLastPathComponent];
    v7 = [v10 URLByAppendingPathComponent:v8 isDirectory:v9];
  }

  if (v7)
  {
    a1 = v7;
  }

  v11 = a1;

  return a1;
}

@end