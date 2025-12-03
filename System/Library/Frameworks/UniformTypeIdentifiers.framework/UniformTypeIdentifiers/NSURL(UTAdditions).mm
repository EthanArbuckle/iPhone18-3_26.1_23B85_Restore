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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UTAdditions.mm" lineNumber:151 description:{@"Invalid parameter not satisfying: %@", @"partialName != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UTAdditions.mm" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"contentType != nil"}];

LABEL_3:
  v10 = [v7 stringByAppendingPathExtensionForType:v9];
  v11 = [self URLByAppendingPathComponent:v10 isDirectory:{objc_msgSend(v9, "conformsToType:", &off_1ED40C660)}];

  return v11;
}

- (void)URLByAppendingPathExtensionForType:()UTAdditions
{
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UTAdditions.mm" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"contentType != nil"}];
  }

  lastPathComponent = [self lastPathComponent];
  v7 = lastPathComponent;
  if (lastPathComponent)
  {
    v8 = [lastPathComponent stringByAppendingPathExtensionForType:v5];

    v9 = [v5 conformsToType:&off_1ED40C660];
    uRLByDeletingLastPathComponent = [self URLByDeletingLastPathComponent];
    v7 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v8 isDirectory:v9];
  }

  if (v7)
  {
    self = v7;
  }

  selfCopy = self;

  return self;
}

@end