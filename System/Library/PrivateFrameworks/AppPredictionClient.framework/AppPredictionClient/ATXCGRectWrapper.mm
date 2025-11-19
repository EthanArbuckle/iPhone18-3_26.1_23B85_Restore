@interface ATXCGRectWrapper
- (ATXCGRectWrapper)initWithCGRect:(CGRect)a3;
- (ATXCGRectWrapper)initWithCoder:(id)a3;
- (ATXCGRectWrapper)initWithProto:(id)a3;
- (ATXCGRectWrapper)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXCGRectWrapper:(id)a3;
- (CGRect)rect;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXCGRectWrapper

- (id)proto
{
  v3 = objc_opt_new();
  [(ATXCGRectWrapper *)self rect];
  [(ATXPBCGRectWrapper *)v3 setX:v4];
  [(ATXCGRectWrapper *)self rect];
  [(ATXPBCGRectWrapper *)v3 setY:v5];
  [(ATXCGRectWrapper *)self rect];
  [(ATXPBCGRectWrapper *)v3 setWidth:v6];
  [(ATXCGRectWrapper *)self rect];
  [(ATXPBCGRectWrapper *)v3 setHeight:v7];

  return v3;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (ATXCGRectWrapper)initWithCGRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = ATXCGRectWrapper;
  result = [(ATXCGRectWrapper *)&v8 init];
  if (result)
  {
    result->_rect.origin.x = x;
    result->_rect.origin.y = y;
    result->_rect.size.width = width;
    result->_rect.size.height = height;
  }

  return result;
}

- (ATXCGRectWrapper)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBCGRectWrapper alloc] initWithData:v4];

    self = [(ATXCGRectWrapper *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXCGRectWrapper)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = __atxlog_handle_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(ATXCGRectWrapper *)self initWithProto:v11];
    }

    goto LABEL_7;
  }

  v5 = v4;
  v6 = [(ATXPBCGRectWrapper *)v5 x];
  v7 = [(ATXPBCGRectWrapper *)v5 y];
  v8 = [(ATXPBCGRectWrapper *)v5 width];
  v9 = [(ATXPBCGRectWrapper *)v5 height];

  self = [(ATXCGRectWrapper *)self initWithCGRect:v6, v7, v8, v9];
  v10 = self;
LABEL_8:

  return v10;
}

- (id)encodeAsProto
{
  v2 = [(ATXCGRectWrapper *)self proto];
  v3 = [v2 data];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXCGRectWrapper *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXCGRectWrapper)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69C5D78];
  v5 = a3;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"protobufData" withCoder:v5 expectNonNull:0 errorDomain:@"com.apple.ATXCGRectWrapper" errorCode:-1 logHandle:0];

  v7 = [(ATXCGRectWrapper *)self initWithProtoData:v6];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXCGRectWrapper *)self isEqualToATXCGRectWrapper:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXCGRectWrapper:(id)a3
{
  [a3 rect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;

  return CGRectEqualToRect(*&x, *&v5);
}

- (unint64_t)hash
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  v8 = -x;
  if (x >= 0.0)
  {
    v8 = self->_rect.origin.x;
  }

  *v3.i64 = floor(v8 + 0.5);
  v9 = (v8 - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = vnegq_f64(v10);
  v12 = vbslq_s8(v11, v4, v3);
  v13 = 2654435761u * *v12.i64;
  v14 = v13 + v9;
  if (v9 <= 0.0)
  {
    v14 = 2654435761u * *v12.i64;
  }

  v15 = v13 - fabs(v9);
  if (v9 >= 0.0)
  {
    v15 = v14;
  }

  if (y < 0.0)
  {
    y = -y;
  }

  *v12.i64 = floor(y + 0.5);
  v16 = (y - *v12.i64) * 1.84467441e19;
  *v4.i64 = *v12.i64 - trunc(*v12.i64 * 5.42101086e-20) * 1.84467441e19;
  v17 = vbslq_s8(v11, v4, v12);
  v18 = 2654435761u * *v17.i64;
  v19 = v18 + v16;
  if (v16 <= 0.0)
  {
    v19 = 2654435761u * *v17.i64;
  }

  v20 = v18 - fabs(v16);
  if (v16 >= 0.0)
  {
    v20 = v19;
  }

  width = self->_rect.size.width;
  height = self->_rect.size.height;
  if (width < 0.0)
  {
    width = -width;
  }

  *v4.i64 = floor(width + 0.5);
  v23 = (width - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v4.i64[0] = vbslq_s8(v11, v5, v4).i64[0];
  v24 = 2654435761u * *v4.i64;
  v25 = v24 + v23;
  if (v23 <= 0.0)
  {
    v25 = 2654435761u * *v4.i64;
  }

  v26 = v24 - fabs(v23);
  if (v23 >= 0.0)
  {
    v26 = v25;
  }

  v27 = -height;
  if (height >= 0.0)
  {
    v27 = self->_rect.size.height;
  }

  *v2.i64 = floor(v27 + 0.5);
  v28 = (v27 - *v2.i64) * 1.84467441e19;
  *v17.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v2.i64[0] = vbslq_s8(v11, v17, v2).i64[0];
  v29 = 2654435761u * *v2.i64;
  v30 = v29 + v28;
  if (v28 <= 0.0)
  {
    v30 = 2654435761u * *v2.i64;
  }

  v31 = v29 - fabs(v28);
  if (v28 >= 0.0)
  {
    v31 = v30;
  }

  return v31 - (v26 - (v20 - v15 + 32 * v15) + 32 * (v20 - v15 + 32 * v15)) + 32 * (v26 - (v20 - v15 + 32 * v15) + 32 * (v20 - v15 + 32 * v15));
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "%@: tried to initialize with a non-ATXPBCGRectWrapper proto", &v5, 0xCu);
}

@end