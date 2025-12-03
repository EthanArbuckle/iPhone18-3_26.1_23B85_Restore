@interface __NSArray0
- (id)objectAtIndex:(unint64_t)index;
@end

@implementation __NSArray0

- (id)objectAtIndex:(unint64_t)index
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = _os_log_pack_size();
  v5 = _os_log_pack_fill();
  *v5 = 136315394;
  *(v5 + 4) = "[__NSArray0 objectAtIndex:]";
  *(v5 + 12) = 2048;
  *(v5 + 14) = index;
  v6 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[__NSArray0 objectAtIndex:]", index);
  v7 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v6) osLogPack:0 size:v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v4];
  objc_exception_throw(v7);
}

@end