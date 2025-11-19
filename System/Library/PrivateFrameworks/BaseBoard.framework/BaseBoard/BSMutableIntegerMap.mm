@interface BSMutableIntegerMap
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation BSMutableIntegerMap

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [BSIntegerMap allocWithZone:?];
  v6 = [(NSMapTable *)self->super._mapTable copyWithZone:a3];
  v7 = [(BSIntegerMap *)&v5->super.isa _initWithMapTable:v6 zeroIndexValue:self->super._zeroIndexValue];

  return v7;
}

@end