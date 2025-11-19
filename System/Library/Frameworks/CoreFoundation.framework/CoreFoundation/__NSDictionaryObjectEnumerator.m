@interface __NSDictionaryObjectEnumerator
- (id)nextObject;
@end

@implementation __NSDictionaryObjectEnumerator

- (id)nextObject
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = __NSDictionaryObjectEnumerator;
  result = [(__NSFastEnumerationEnumerator *)&v5 nextObject];
  if (result)
  {
    result = [self->super._origObj objectForKey:result];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

@end