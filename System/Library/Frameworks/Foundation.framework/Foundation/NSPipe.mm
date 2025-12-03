@interface NSPipe
+ (NSPipe)allocWithZone:(_NSZone *)zone;
+ (NSPipe)pipe;
- (NSPipe)init;
@end

@implementation NSPipe

+ (NSPipe)pipe
{
  v2 = [objc_allocWithZone(NSPipe) init];

  return v2;
}

- (NSPipe)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSPipe;
  return [(NSPipe *)&v3 init];
}

+ (NSPipe)allocWithZone:(_NSZone *)zone
{
  if (NSPipe == self)
  {
    self = objc_opt_self();
  }

  return NSAllocateObject(self, 0, zone);
}

@end