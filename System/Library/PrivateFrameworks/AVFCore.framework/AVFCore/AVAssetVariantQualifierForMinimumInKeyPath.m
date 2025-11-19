@interface AVAssetVariantQualifierForMinimumInKeyPath
- (AVAssetVariantQualifierForMinimumInKeyPath)initWithCoder:(id)a3;
- (AVAssetVariantQualifierForMinimumInKeyPath)initWithFigAssetVariantQualifierForMinimumInKeyPath:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVAssetVariantQualifierForMinimumInKeyPath

- (AVAssetVariantQualifierForMinimumInKeyPath)initWithFigAssetVariantQualifierForMinimumInKeyPath:(id)a3
{
  v17.receiver = self;
  v17.super_class = AVAssetVariantQualifierForMinimumInKeyPath;
  v5 = [(AVAssetVariantQualifier *)&v17 initWithVariant:0];
  if (v5)
  {
    if (!-[AVAssetVariantQualifierForMinimumInKeyPath _validateKeyPath:](v5, "_validateKeyPath:", [a3 _keyPath]))
    {
      v7 = v5;
      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D940];
      v10 = [a3 _keyPath];
      v16 = [v8 exceptionWithName:v9 reason:AVMethodExceptionReasonWithObjectAndSelector(v5 userInfo:{a2, @"invalid KeyPath entered: %@", v11, v12, v13, v14, v15, v10), 0}];
      objc_exception_throw(v16);
    }

    v5->_figAssetVariantQualifier = a3;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AVAssetVariantQualifierForMinimumInKeyPath alloc];
  figAssetVariantQualifier = self->_figAssetVariantQualifier;

  return [(AVAssetVariantQualifierForMinimumInKeyPath *)v4 initWithFigAssetVariantQualifierForMinimumInKeyPath:figAssetVariantQualifier];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetVariantQualifierForMinimumInKeyPath;
  [(AVAssetVariantQualifier *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v12.receiver), 0}];
    objc_exception_throw(v11);
  }

  v12.receiver = self;
  v12.super_class = AVAssetVariantQualifierForMinimumInKeyPath;
  [(AVAssetVariantQualifier *)&v12 encodeWithCoder:a3];
  [a3 encodeObject:self->_figAssetVariantQualifier forKey:@"keyPath"];
}

- (AVAssetVariantQualifierForMinimumInKeyPath)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v8 = self;
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v9, v10, v11, v12, v13, v15.receiver), 0}];
    objc_exception_throw(v14);
  }

  v15.receiver = self;
  v15.super_class = AVAssetVariantQualifierForMinimumInKeyPath;
  v6 = [(AVAssetVariantQualifier *)&v15 initWithCoder:a3];
  if (v6)
  {
    v6->_figAssetVariantQualifier = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"keyPath"];
  }

  return v6;
}

@end