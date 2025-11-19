@interface KSXMLAttributes
- (void)writeAttributes:(id)a3;
@end

@implementation KSXMLAttributes

- (void)writeAttributes:(id)a3
{
  v7 = a3;
  if ([(NSMutableArray *)self->_attributes count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSMutableArray *)self->_attributes objectAtIndex:v4];
      v6 = [(NSMutableArray *)self->_attributes objectAtIndex:v4 + 1];
      [v7 writeAttribute:v5 value:v6];

      v4 += 2;
    }

    while (v4 < [(NSMutableArray *)self->_attributes count]);
  }
}

@end