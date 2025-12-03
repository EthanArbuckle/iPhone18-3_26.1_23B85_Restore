@interface HKFitzpatrickSkinTypeObject
- (BOOL)isEqual:(id)equal;
- (HKFitzpatrickSkinTypeObject)initWithCoder:(id)coder;
- (id)_initWithSkinType:(int64_t)type;
@end

@implementation HKFitzpatrickSkinTypeObject

- (id)_initWithSkinType:(int64_t)type
{
  v10.receiver = self;
  v10.super_class = HKFitzpatrickSkinTypeObject;
  v4 = [(HKFitzpatrickSkinTypeObject *)&v10 init];
  if (v4)
  {
    v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierFitzpatrickSkinType"];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v7 = [v5 _validateCharacteristic:v6 error:0];

    if (v7)
    {
      typeCopy = type;
    }

    else
    {
      typeCopy = 0;
    }

    v4->_skinType = typeCopy;
  }

  return v4;
}

- (HKFitzpatrickSkinTypeObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HKFitzpatrickSkinTypeObject;
  v5 = [(HKFitzpatrickSkinTypeObject *)&v12 init];
  if (v5)
  {
    v6 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierFitzpatrickSkinType"];
    v7 = [coderCopy decodeIntegerForKey:@"skinType"];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    v9 = [v6 _validateCharacteristic:v8 error:0];

    if (!v9)
    {

      v10 = 0;
      goto LABEL_6;
    }

    v5->_skinType = v7;
  }

  v10 = v5;
LABEL_6:

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    skinType = self->_skinType;
    v6 = skinType == [equalCopy skinType];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end