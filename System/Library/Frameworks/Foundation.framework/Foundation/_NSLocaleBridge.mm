@interface _NSLocaleBridge
- (id)_prefForKey:(id)a3;
@end

@implementation _NSLocaleBridge

- (id)_prefForKey:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = _NSLocaleBridge;
  return [(_NSLocaleBridge *)&v4 _prefForKey:a3];
}

@end