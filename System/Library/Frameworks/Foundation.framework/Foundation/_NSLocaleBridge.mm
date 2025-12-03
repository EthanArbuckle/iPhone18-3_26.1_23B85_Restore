@interface _NSLocaleBridge
- (id)_prefForKey:(id)key;
@end

@implementation _NSLocaleBridge

- (id)_prefForKey:(id)key
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = _NSLocaleBridge;
  return [(_NSLocaleBridge *)&v4 _prefForKey:key];
}

@end