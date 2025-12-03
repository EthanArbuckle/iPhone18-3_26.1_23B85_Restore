@interface NSKnownKeysMappingStrategy2
- (id)_setupForKeys:(id *)keys count:(unint64_t)count table:(void *)table inData:(id)data;
@end

@implementation NSKnownKeysMappingStrategy2

- (id)_setupForKeys:(id *)keys count:(unint64_t)count table:(void *)table inData:(id)data
{
  self->super._length = count;
  self->super._keys = keys;
  self->super._table = table;
  *&self->super._cd_rc = data;
  return self;
}

@end