@interface RAPLayoutItem
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RAPLayoutItem

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(NSString *)self->_displayText copy];
  [v4 setDisplayText:v5];

  v6 = [(NSString *)self->_placeholderText copy];
  [v4 setPlaceholderText:v6];

  v7 = [(NSNumber *)self->_ordinal copy];
  [v4 setOrdinal:v7];

  v8 = [(NSNumber *)self->_fieldType copy];
  [v4 setFieldType:v8];

  return v4;
}

@end