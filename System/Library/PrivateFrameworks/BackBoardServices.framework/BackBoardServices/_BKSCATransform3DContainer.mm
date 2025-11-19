@interface _BKSCATransform3DContainer
+ (id)protobufSchema;
- (CATransform3D)transform;
- (_BKSCATransform3DContainer)init;
- (_BKSCATransform3DContainer)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setTransform:(CATransform3D *)a3;
@end

@implementation _BKSCATransform3DContainer

- (void)setTransform:(CATransform3D *)a3
{
  v3 = *&a3->m11;
  v4 = *&a3->m13;
  v5 = *&a3->m21;
  *&self->_transform.m23 = *&a3->m23;
  *&self->_transform.m21 = v5;
  *&self->_transform.m13 = v4;
  *&self->_transform.m11 = v3;
  v6 = *&a3->m31;
  v7 = *&a3->m33;
  v8 = *&a3->m41;
  *&self->_transform.m43 = *&a3->m43;
  *&self->_transform.m41 = v8;
  *&self->_transform.m33 = v7;
  *&self->_transform.m31 = v6;
}

- (CATransform3D)transform
{
  v3 = *&self->m34;
  *&retstr->m31 = *&self->m32;
  *&retstr->m33 = v3;
  v4 = *&self->m44;
  *&retstr->m41 = *&self->m42;
  *&retstr->m43 = v4;
  v5 = *&self->m14;
  *&retstr->m11 = *&self->m12;
  *&retstr->m13 = v5;
  v6 = *&self->m24;
  *&retstr->m21 = *&self->m22;
  *&retstr->m23 = v6;
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v14 = 0;
  v6 = [MEMORY[0x1E698E750] encodeObject:self error:&v14];
  v7 = v14;
  v8 = [v6 copy];

  if (!v8)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"transform container encode error: %@", v7];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v16 = v11;
      v17 = 2114;
      v18 = v13;
      v19 = 2048;
      v20 = self;
      v21 = 2114;
      v22 = @"BKSTouchEventService.m";
      v23 = 1024;
      v24 = 100;
      v25 = 2114;
      v26 = v10;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B4D18);
  }

  [v5 encodeObject:v8 forKey:@"backboarddSelfData"];

  v9 = *MEMORY[0x1E69E9840];
}

- (_BKSCATransform3DContainer)initWithCoder:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backboarddSelfData"];

  if (!v5)
  {
    v7 = BKLogEventDelivery();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_186345000, v7, OS_LOG_TYPE_ERROR, "transform container data decode failure", buf, 2u);
    }

    goto LABEL_8;
  }

  v11 = 0;
  v6 = [MEMORY[0x1E698E750] decodeObjectOfClass:objc_opt_class() fromData:v5 error:&v11];
  v7 = v11;
  if (!v6)
  {
    v8 = BKLogEventDelivery();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v7;
      _os_log_error_impl(&dword_186345000, v8, OS_LOG_TYPE_ERROR, "transform container protobuf decode failure: %{public}@", buf, 0xCu);
    }

LABEL_8:
    v6 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (_BKSCATransform3DContainer)init
{
  v3.receiver = self;
  v3.super_class = _BKSCATransform3DContainer;
  result = [(_BKSCATransform3DContainer *)&v3 init];
  if (result)
  {
    result->_transform.m11 = 1.0;
    *&result->_transform.m12 = 0u;
    *&result->_transform.m14 = 0u;
    result->_transform.m22 = 1.0;
    *&result->_transform.m23 = 0u;
    *&result->_transform.m31 = 0u;
    result->_transform.m33 = 1.0;
    *&result->_transform.m34 = 0u;
    *&result->_transform.m42 = 0u;
    result->_transform.m44 = 1.0;
  }

  return result;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44___BKSCATransform3DContainer_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (protobufSchema_onceToken_13467 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_13467, block);
  }

  v2 = protobufSchema_schema_13468;

  return v2;
}

@end