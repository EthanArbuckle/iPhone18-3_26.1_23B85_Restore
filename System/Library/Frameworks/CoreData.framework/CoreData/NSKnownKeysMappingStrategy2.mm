@interface NSKnownKeysMappingStrategy2
- (id)_setupForKeys:(id *)a3 count:(unint64_t)a4 table:(void *)a5 inData:(id)a6;
@end

@implementation NSKnownKeysMappingStrategy2

- (id)_setupForKeys:(id *)a3 count:(unint64_t)a4 table:(void *)a5 inData:(id)a6
{
  self->super._length = a4;
  self->super._keys = a3;
  self->super._table = a5;
  *&self->super._cd_rc = a6;
  return self;
}

@end