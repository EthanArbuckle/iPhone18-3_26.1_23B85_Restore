@interface NSCoder(SafeDecode)
- (id)fp_safeDecodeNSDictionaryForKey:()SafeDecode;
@end

@implementation NSCoder(SafeDecode)

- (id)fp_safeDecodeNSDictionaryForKey:()SafeDecode
{
  v11[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v11[2] = objc_opt_class();
  v11[3] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
  v7 = [v4 setWithArray:v6];

  v8 = [self decodeDictionaryWithKeysOfClasses:v7 objectsOfClasses:v7 forKey:v5];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end