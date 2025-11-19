@interface UIImagePickerController(MessageUI)
+ (id)mf_systemImagePickerWithSourceType:()MessageUI;
@end

@implementation UIImagePickerController(MessageUI)

+ (id)mf_systemImagePickerWithSourceType:()MessageUI
{
  v4 = objc_alloc_init(MEMORY[0x1E69DCAD0]);
  [v4 setSourceType:a3];
  v5 = [MEMORY[0x1E69DCAD0] availableMediaTypesForSourceType:a3];
  [v4 setMediaTypes:v5];

  [v4 setAllowsEditing:0];
  v6 = objc_alloc(MEMORY[0x1E695DF90]);
  v7 = [v4 _properties];
  v8 = [v6 initWithDictionary:v7];

  v9 = *MEMORY[0x1E695E4D0];
  [v8 setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E69DE9D0]];
  [v8 setObject:v9 forKey:*MEMORY[0x1E69DE8D8]];
  [v8 setObject:*MEMORY[0x1E6987320] forKey:*MEMORY[0x1E69DE9C8]];
  [v4 _setProperties:v8];
  [v4 _setImagePickerSavingOptions:6];
  [v4 _setConvertAutoloopsToGIF:1];

  return v4;
}

@end