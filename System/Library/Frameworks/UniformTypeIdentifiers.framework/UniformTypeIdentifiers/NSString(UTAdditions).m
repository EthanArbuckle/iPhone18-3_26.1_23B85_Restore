@interface NSString(UTAdditions)
- (id)stringByAppendingPathComponent:()UTAdditions conformingToType:;
- (id)stringByAppendingPathExtensionForType:()UTAdditions;
@end

@implementation NSString(UTAdditions)

- (id)stringByAppendingPathComponent:()UTAdditions conformingToType:
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
    [v13 handleFailureInMethod:a2 object:a1 file:@"UTAdditions.mm" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"partialName != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  [v14 handleFailureInMethod:a2 object:a1 file:@"UTAdditions.mm" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"contentType != nil"}];

LABEL_3:
  v10 = [v7 stringByAppendingPathExtensionForType:v9];
  v11 = [a1 stringByAppendingPathComponent:v10];

  return v11;
}

- (id)stringByAppendingPathExtensionForType:()UTAdditions
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"UTAdditions.mm" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"contentType != nil"}];
  }

  v6 = objc_autoreleasePoolPush();
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  range = xmmword_1AC1BBD70;
  _CFGetPathExtensionRangesFromPathComponent();
  v7 = v18[5];
  if (!v7)
  {
    v8 = [v5 preferredFilenameExtension];
    v9 = v18[5];
    v18[5] = v8;

    v7 = v18[5];
    if ((v5 & 0x8000000000000000) == 0 && !v7)
    {
      v10 = [v5 _typeRecord];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __63__NSString_UTAdditions__stringByAppendingPathExtensionForType___block_invoke;
      v15[3] = &unk_1E796F018;
      v15[4] = &v17;
      [v10 enumeratePedigreeWithBlock:v15];

      v7 = v18[5];
    }

    if (!v7)
    {
      goto LABEL_9;
    }
  }

  if (([v7 isEqual:0] & 1) == 0)
  {
    v11 = [a1 stringByAppendingPathExtension:v18[5]];
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  _Block_object_dispose(&v17, 8);
  objc_autoreleasePoolPop(v6);
  if (!v11)
  {
    v11 = [a1 copy];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end