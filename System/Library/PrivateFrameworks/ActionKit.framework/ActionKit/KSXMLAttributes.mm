@interface KSXMLAttributes
- (void)writeAttributes:(id)attributes;
@end

@implementation KSXMLAttributes

- (void)writeAttributes:(id)attributes
{
  attributesCopy = attributes;
  if ([(NSMutableArray *)self->_attributes count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSMutableArray *)self->_attributes objectAtIndex:v4];
      v6 = [(NSMutableArray *)self->_attributes objectAtIndex:v4 + 1];
      [attributesCopy writeAttribute:v5 value:v6];

      v4 += 2;
    }

    while (v4 < [(NSMutableArray *)self->_attributes count]);
  }
}

@end