@interface NSExpressionDescription
- (NSExpressionDescription)init;
- (NSExpressionDescription)initWithCoder:(id)coder;
- (NSString)attributeValueClassName;
- (NSString)valueTransformerName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_writeIntoData:(id)data propertiesDict:(id)dict uniquedPropertyNames:(id)names uniquedStrings:(id)strings uniquedData:(id)uniquedData entitiesSlots:(id)slots fetchRequests:(id)requests;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setExpression:(NSExpression *)expression;
- (void)setUnderlyingAttribute:(void *)result;
@end

@implementation NSExpressionDescription

- (NSExpressionDescription)init
{
  v5.receiver = self;
  v5.super_class = NSExpressionDescription;
  v2 = [(NSPropertyDescription *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NSPropertyDescription *)v2 _setEntitysReferenceID:-1];
    [(NSPropertyDescription *)v3 setReadOnly:1];
    v3->_reservedtype1_1 = 0;
    v3->_reservedtype1_2 = 0;
    v3->_reservedtype1_3 = 0;
    v3->_reservedtype1_4 = 0;
    v3->_reservedtype1_5 = 0;
    v3->_reservedtype1_6 = 0;
    v3->_reservedtype2_1 = 0;
    v3->_reservedtype2_2 = 0;
    v3->_underlyingAttribute = 0;
  }

  return v3;
}

- (void)dealloc
{
  self->_expression = 0;

  self->_underlyingAttribute = 0;
  v3.receiver = self;
  v3.super_class = NSExpressionDescription;
  [(NSPropertyDescription *)&v3 dealloc];
}

- (NSExpressionDescription)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = NSExpressionDescription;
  v4 = [(NSPropertyDescription *)&v8 initWithCoder:?];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v4->_expression = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"NSExpression"}];
    v4->_expressionResultType = [coder decodeIntegerForKey:@"NSExpressionType"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NSExpressionDescription;
  [(NSPropertyDescription *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->_expression forKey:@"NSExpression"];
  [coder encodeInteger:self->_expressionResultType forKey:@"NSExpressionType"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NSExpressionDescription;
  v4 = [(NSPropertyDescription *)&v6 copyWithZone:zone];
  if (v4)
  {
    v4[19] = [(NSExpression *)self->_expression copy];
    v4[20] = self->_expressionResultType;
    v4[18] = self->_underlyingAttribute;
  }

  return v4;
}

- (void)setExpression:(NSExpression *)expression
{
  if (self->_expression != expression)
  {
    v5 = expression;

    self->_expression = expression;
  }
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(<%@ : %p>), name %@, expression %@, resultType %lu, userInfo %@", objc_opt_class(), self, -[NSPropertyDescription name](self, "name"), -[NSExpressionDescription expression](self, "expression"), -[NSExpressionDescription expressionResultType](self, "expressionResultType"), -[NSPropertyDescription userInfo](self, "userInfo")];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (void)setUnderlyingAttribute:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = result[18];
    if (v4 != a2)
    {

      result = a2;
      v3[18] = result;
    }
  }

  return result;
}

- (NSString)attributeValueClassName
{
  if (self)
  {
    self = self->_underlyingAttribute;
  }

  return [(NSExpressionDescription *)self attributeValueClassName];
}

- (NSString)valueTransformerName
{
  if (self)
  {
    self = self->_underlyingAttribute;
  }

  return [(NSExpressionDescription *)self valueTransformerName];
}

- (void)_writeIntoData:(id)data propertiesDict:(id)dict uniquedPropertyNames:(id)names uniquedStrings:(id)strings uniquedData:(id)uniquedData entitiesSlots:(id)slots fetchRequests:(id)requests
{
  _writeInt32IntoData(data, 0);
  v16 = [data length] - 4;
  v18.receiver = self;
  v18.super_class = NSExpressionDescription;
  [(NSPropertyDescription *)&v18 _appendPropertyFieldsToData:data propertiesDict:dict uniquedPropertyNames:names uniquedStrings:strings uniquedData:uniquedData entitiesSlots:slots];
  _writeInt32IntoData(data, self->_expressionResultType);
  _writeInt32IntoData(data, [objc_msgSend(uniquedData objectForKey:{self->_expression), "unsignedIntegerValue"}]);
  v17 = bswap32([data length] - v16);
  [data replaceBytesInRange:v16 withBytes:{4, &v17}];
}

@end