@interface NSURLFileTypeMappings
+ (id)sharedMappings;
- (id)MIMETypeForExtension:(id)a3;
- (id)extensionsForMIMEType:(id)a3;
- (id)preferredExtensionForMIMEType:(id)a3;
@end

@implementation NSURLFileTypeMappings

+ (id)sharedMappings
{
  if (_MergedGlobals_124 != -1)
  {
    dispatch_once(&_MergedGlobals_124, &__block_literal_global_53);
  }

  return qword_1ED43FC28;
}

NSURLFileTypeMappings *__39__NSURLFileTypeMappings_sharedMappings__block_invoke()
{
  result = objc_alloc_init(NSURLFileTypeMappings);
  qword_1ED43FC28 = result;
  return result;
}

- (id)MIMETypeForExtension:(id)a3
{
  v4 = [a3 lowercaseString];
  result = [&unk_1EEF5A4F8 objectForKey:v4];
  if (!result && self && v4)
  {
    v6 = [(objc_class *)UTTypeClass() typeWithFilenameExtension:v4];

    return [v6 preferredMIMEType];
  }

  return result;
}

- (id)preferredExtensionForMIMEType:(id)a3
{
  v4 = [a3 lowercaseString];
  result = [objc_msgSend(&unk_1EEF5A520 objectForKey:{v4), "objectAtIndex:", 0}];
  if (!result && self && v4)
  {
    v6 = [(objc_class *)UTTypeClass() typeWithMIMEType:v4];

    return [v6 preferredFilenameExtension];
  }

  return result;
}

- (id)extensionsForMIMEType:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v4 = [a3 lowercaseString];
  result = [&unk_1EEF5A548 objectForKey:v4];
  if (!result && self && v4)
  {
    result = [-[objc_class typeWithMIMEType:](UTTypeClass() typeWithMIMEType:{v4), "preferredFilenameExtension"}];
    if (result)
    {
      v6[0] = result;
      return [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    }
  }

  return result;
}

@end