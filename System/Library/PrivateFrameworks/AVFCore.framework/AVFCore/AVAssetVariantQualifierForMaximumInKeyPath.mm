@interface AVAssetVariantQualifierForMaximumInKeyPath
- (AVAssetVariantQualifierForMaximumInKeyPath)initWithCoder:(id)coder;
- (AVAssetVariantQualifierForMaximumInKeyPath)initWithFigAssetVariantQualifierForMaximumInKeyPath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVAssetVariantQualifierForMaximumInKeyPath

- (AVAssetVariantQualifierForMaximumInKeyPath)initWithFigAssetVariantQualifierForMaximumInKeyPath:(id)path
{
  v17.receiver = self;
  v17.super_class = AVAssetVariantQualifierForMaximumInKeyPath;
  v5 = [(AVAssetVariantQualifier *)&v17 initWithVariant:0];
  if (v5)
  {
    if (!-[AVAssetVariantQualifierForMaximumInKeyPath _validateKeyPath:](v5, "_validateKeyPath:", [path _keyPath]))
    {
      v7 = v5;
      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D940];
      _keyPath = [path _keyPath];
      v16 = [v8 exceptionWithName:v9 reason:AVMethodExceptionReasonWithObjectAndSelector(v5 userInfo:{a2, @"invalid KeyPath entered: %@", v11, v12, v13, v14, v15, _keyPath), 0}];
      objc_exception_throw(v16);
    }

    v5->_figAssetVariantQualifier = path;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AVAssetVariantQualifierForMaximumInKeyPath alloc];
  figAssetVariantQualifier = self->_figAssetVariantQualifier;

  return [(AVAssetVariantQualifierForMaximumInKeyPath *)v4 initWithFigAssetVariantQualifierForMaximumInKeyPath:figAssetVariantQualifier];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetVariantQualifierForMaximumInKeyPath;
  [(AVAssetVariantQualifier *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v12.receiver), 0}];
    objc_exception_throw(v11);
  }

  v12.receiver = self;
  v12.super_class = AVAssetVariantQualifierForMaximumInKeyPath;
  [(AVAssetVariantQualifier *)&v12 encodeWithCoder:coder];
  [coder encodeObject:self->_figAssetVariantQualifier forKey:@"keyPath"];
}

- (AVAssetVariantQualifierForMaximumInKeyPath)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    selfCopy = self;
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v9, v10, v11, v12, v13, v15.receiver), 0}];
    objc_exception_throw(v14);
  }

  v15.receiver = self;
  v15.super_class = AVAssetVariantQualifierForMaximumInKeyPath;
  v6 = [(AVAssetVariantQualifier *)&v15 initWithCoder:coder];
  if (v6)
  {
    v6->_figAssetVariantQualifier = [coder decodeObjectOfClass:objc_opt_class() forKey:@"keyPath"];
  }

  return v6;
}

@end