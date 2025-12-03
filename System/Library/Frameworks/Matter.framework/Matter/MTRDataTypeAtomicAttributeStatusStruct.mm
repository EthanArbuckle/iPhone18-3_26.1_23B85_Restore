@interface MTRDataTypeAtomicAttributeStatusStruct
- (MTRDataTypeAtomicAttributeStatusStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDataTypeAtomicAttributeStatusStruct

- (MTRDataTypeAtomicAttributeStatusStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRDataTypeAtomicAttributeStatusStruct;
  v2 = [(MTRDataTypeAtomicAttributeStatusStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    attributeID = v2->_attributeID;
    v2->_attributeID = &unk_284C3E588;

    statusCode = v3->_statusCode;
    v3->_statusCode = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDataTypeAtomicAttributeStatusStruct);
  attributeID = [(MTRDataTypeAtomicAttributeStatusStruct *)self attributeID];
  [(MTRDataTypeAtomicAttributeStatusStruct *)v4 setAttributeID:attributeID];

  statusCode = [(MTRDataTypeAtomicAttributeStatusStruct *)self statusCode];
  [(MTRDataTypeAtomicAttributeStatusStruct *)v4 setStatusCode:statusCode];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: attributeID:%@ statusCode:%@; >", v5, self->_attributeID, self->_statusCode];;

  return v6;
}

@end