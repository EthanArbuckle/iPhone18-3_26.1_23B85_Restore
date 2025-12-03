@interface NSURLFileTypeMappings
+ (id)sharedMappings;
- (id)MIMETypeForExtension:(id)extension;
- (id)extensionsForMIMEType:(id)type;
- (id)preferredExtensionForMIMEType:(id)type;
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

- (id)MIMETypeForExtension:(id)extension
{
  lowercaseString = [extension lowercaseString];
  result = [&unk_1EEF5A4F8 objectForKey:lowercaseString];
  if (!result && self && lowercaseString)
  {
    v6 = [(objc_class *)UTTypeClass() typeWithFilenameExtension:lowercaseString];

    return [v6 preferredMIMEType];
  }

  return result;
}

- (id)preferredExtensionForMIMEType:(id)type
{
  lowercaseString = [type lowercaseString];
  result = [objc_msgSend(&unk_1EEF5A520 objectForKey:{lowercaseString), "objectAtIndex:", 0}];
  if (!result && self && lowercaseString)
  {
    v6 = [(objc_class *)UTTypeClass() typeWithMIMEType:lowercaseString];

    return [v6 preferredFilenameExtension];
  }

  return result;
}

- (id)extensionsForMIMEType:(id)type
{
  v6[1] = *MEMORY[0x1E69E9840];
  lowercaseString = [type lowercaseString];
  result = [&unk_1EEF5A548 objectForKey:lowercaseString];
  if (!result && self && lowercaseString)
  {
    result = [-[objc_class typeWithMIMEType:](UTTypeClass() typeWithMIMEType:{lowercaseString), "preferredFilenameExtension"}];
    if (result)
    {
      v6[0] = result;
      return [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    }
  }

  return result;
}

@end