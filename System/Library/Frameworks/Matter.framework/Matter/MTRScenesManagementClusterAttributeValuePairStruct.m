@interface MTRScenesManagementClusterAttributeValuePairStruct
- (MTRScenesManagementClusterAttributeValuePairStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRScenesManagementClusterAttributeValuePairStruct

- (MTRScenesManagementClusterAttributeValuePairStruct)init
{
  v14.receiver = self;
  v14.super_class = MTRScenesManagementClusterAttributeValuePairStruct;
  v2 = [(MTRScenesManagementClusterAttributeValuePairStruct *)&v14 init];
  v3 = v2;
  if (v2)
  {
    attributeID = v2->_attributeID;
    v2->_attributeID = &unk_284C3E588;

    valueUnsigned8 = v3->_valueUnsigned8;
    v3->_valueUnsigned8 = 0;

    valueSigned8 = v3->_valueSigned8;
    v3->_valueSigned8 = 0;

    valueUnsigned16 = v3->_valueUnsigned16;
    v3->_valueUnsigned16 = 0;

    valueSigned16 = v3->_valueSigned16;
    v3->_valueSigned16 = 0;

    valueUnsigned32 = v3->_valueUnsigned32;
    v3->_valueUnsigned32 = 0;

    valueSigned32 = v3->_valueSigned32;
    v3->_valueSigned32 = 0;

    valueUnsigned64 = v3->_valueUnsigned64;
    v3->_valueUnsigned64 = 0;

    valueSigned64 = v3->_valueSigned64;
    v3->_valueSigned64 = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRScenesManagementClusterAttributeValuePairStruct);
  v5 = [(MTRScenesManagementClusterAttributeValuePairStruct *)self attributeID];
  [(MTRScenesManagementClusterAttributeValuePairStruct *)v4 setAttributeID:v5];

  v6 = [(MTRScenesManagementClusterAttributeValuePairStruct *)self valueUnsigned8];
  [(MTRScenesManagementClusterAttributeValuePairStruct *)v4 setValueUnsigned8:v6];

  v7 = [(MTRScenesManagementClusterAttributeValuePairStruct *)self valueSigned8];
  [(MTRScenesManagementClusterAttributeValuePairStruct *)v4 setValueSigned8:v7];

  v8 = [(MTRScenesManagementClusterAttributeValuePairStruct *)self valueUnsigned16];
  [(MTRScenesManagementClusterAttributeValuePairStruct *)v4 setValueUnsigned16:v8];

  v9 = [(MTRScenesManagementClusterAttributeValuePairStruct *)self valueSigned16];
  [(MTRScenesManagementClusterAttributeValuePairStruct *)v4 setValueSigned16:v9];

  v10 = [(MTRScenesManagementClusterAttributeValuePairStruct *)self valueUnsigned32];
  [(MTRScenesManagementClusterAttributeValuePairStruct *)v4 setValueUnsigned32:v10];

  v11 = [(MTRScenesManagementClusterAttributeValuePairStruct *)self valueSigned32];
  [(MTRScenesManagementClusterAttributeValuePairStruct *)v4 setValueSigned32:v11];

  v12 = [(MTRScenesManagementClusterAttributeValuePairStruct *)self valueUnsigned64];
  [(MTRScenesManagementClusterAttributeValuePairStruct *)v4 setValueUnsigned64:v12];

  v13 = [(MTRScenesManagementClusterAttributeValuePairStruct *)self valueSigned64];
  [(MTRScenesManagementClusterAttributeValuePairStruct *)v4 setValueSigned64:v13];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: attributeID:%@ valueUnsigned8:%@; valueSigned8:%@; valueUnsigned16:%@; valueSigned16:%@; valueUnsigned32:%@; valueSigned32:%@; valueUnsigned64:%@; valueSigned64:%@; >", v5, self->_attributeID, self->_valueUnsigned8, self->_valueSigned8, self->_valueUnsigned16, self->_valueSigned16, self->_valueUnsigned32, self->_valueSigned32, self->_valueUnsigned64, self->_valueSigned64];;

  return v6;
}

@end