@interface MTRDataTypeTestGlobalStruct
- (MTRDataTypeTestGlobalStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDataTypeTestGlobalStruct

- (MTRDataTypeTestGlobalStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRDataTypeTestGlobalStruct;
  v2 = [(MTRDataTypeTestGlobalStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = &stru_284BD0DD8;

    myBitmap = v3->_myBitmap;
    v3->_myBitmap = 0;

    myEnum = v3->_myEnum;
    v3->_myEnum = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDataTypeTestGlobalStruct);
  name = [(MTRDataTypeTestGlobalStruct *)self name];
  [(MTRDataTypeTestGlobalStruct *)v4 setName:name];

  myBitmap = [(MTRDataTypeTestGlobalStruct *)self myBitmap];
  [(MTRDataTypeTestGlobalStruct *)v4 setMyBitmap:myBitmap];

  myEnum = [(MTRDataTypeTestGlobalStruct *)self myEnum];
  [(MTRDataTypeTestGlobalStruct *)v4 setMyEnum:myEnum];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: name:%@ myBitmap:%@; myEnum:%@; >", v5, self->_name, self->_myBitmap, self->_myEnum];;

  return v6;
}

@end