@interface _NSGenerationTokenMapEntry
- (void)dealloc;
@end

@implementation _NSGenerationTokenMapEntry

- (void)dealloc
{
  self->_token = 0;
  v3.receiver = self;
  v3.super_class = _NSGenerationTokenMapEntry;
  [(_NSGenerationTokenMapEntry *)&v3 dealloc];
}

@end