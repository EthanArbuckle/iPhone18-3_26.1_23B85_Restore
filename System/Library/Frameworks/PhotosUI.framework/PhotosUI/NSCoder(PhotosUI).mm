@interface NSCoder(PhotosUI)
- (double)ph_decodeRectForKey:()PhotosUI;
@end

@implementation NSCoder(PhotosUI)

- (double)ph_decodeRectForKey:()PhotosUI
{
  v4 = a3;
  [a1 decodeRectForKey:v4];
  x = v11.origin.x;
  if (CGRectEqualToRect(v11, *MEMORY[0x1E695F058]))
  {
    v6 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v4];
    if ([v6 isEqualToString:{@"{{inf, inf}, {0, 0}}"}])
    {
      x = *MEMORY[0x1E695F050];
      v7 = *(MEMORY[0x1E695F050] + 8);
      v8 = *(MEMORY[0x1E695F050] + 16);
      v9 = *(MEMORY[0x1E695F050] + 24);
    }
  }

  return x;
}

@end