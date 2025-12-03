@interface VN1vLyVSh30UQ26TGBoV8MHv
- (BOOL)hasAdjustmentForKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (VN1vLyVSh30UQ26TGBoV8MHv)initWithCoder:(id)coder;
- (VN1vLyVSh30UQ26TGBoV8MHv)initWithOriginatingRequestSpecifier:(id)specifier adjustments:(id)adjustments;
- (id)description;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VN1vLyVSh30UQ26TGBoV8MHv

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = VN1vLyVSh30UQ26TGBoV8MHv;
  coderCopy = coder;
  [(VNObservation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_adjustments forKey:{@"adjustments", v5.receiver, v5.super_class}];
}

- (VN1vLyVSh30UQ26TGBoV8MHv)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = VN1vLyVSh30UQ26TGBoV8MHv;
  v5 = [(VNObservation *)&v15 initWithCoder:coderCopy];
  if (v5 && (v6 = objc_alloc(MEMORY[0x1E695DFD8]), v7 = objc_opt_class(), v8 = objc_opt_class(), v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}], objc_msgSend(coderCopy, "decodeObjectOfClasses:forKey:", v9, @"adjustments"), v10 = objc_claimAutoreleasedReturnValue(), adjustments = v5->_adjustments, v5->_adjustments = v10, adjustments, v12 = v5->_adjustments, v9, !v12))
  {
    v13 = 0;
  }

  else
  {
    v13 = v5;
  }

  return v13;
}

- (id)vn_cloneObject
{
  v7.receiver = self;
  v7.super_class = VN1vLyVSh30UQ26TGBoV8MHv;
  vn_cloneObject = [(VNObservation *)&v7 vn_cloneObject];
  if (vn_cloneObject)
  {
    v4 = [(NSDictionary *)self->_adjustments copy];
    v5 = vn_cloneObject[12];
    vn_cloneObject[12] = v4;
  }

  return vn_cloneObject;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = VN1vLyVSh30UQ26TGBoV8MHv;
  v4 = [(VNObservation *)&v9 description];
  adjustmentKeys = [(VN1vLyVSh30UQ26TGBoV8MHv *)self adjustmentKeys];
  v6 = [adjustmentKeys componentsJoinedByString:{@", "}];
  v7 = [v3 stringWithFormat:@"%@ [%@]", v4, v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSDictionary *)self->_adjustments isEqualToDictionary:equalCopy->_adjustments];
  }

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = VN1vLyVSh30UQ26TGBoV8MHv;
  return [(NSDictionary *)self->_adjustments hash]^ __ROR8__([(VNObservation *)&v3 hash], 51);
}

- (BOOL)hasAdjustmentForKey:(id)key
{
  v3 = [(NSDictionary *)self->_adjustments objectForKey:key];
  v4 = v3 != 0;

  return v4;
}

- (VN1vLyVSh30UQ26TGBoV8MHv)initWithOriginatingRequestSpecifier:(id)specifier adjustments:(id)adjustments
{
  adjustmentsCopy = adjustments;
  v11.receiver = self;
  v11.super_class = VN1vLyVSh30UQ26TGBoV8MHv;
  v7 = [(VNObservation *)&v11 initWithOriginatingRequestSpecifier:specifier];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:adjustmentsCopy copyItems:1];
    adjustments = v7->_adjustments;
    v7->_adjustments = v8;
  }

  return v7;
}

@end