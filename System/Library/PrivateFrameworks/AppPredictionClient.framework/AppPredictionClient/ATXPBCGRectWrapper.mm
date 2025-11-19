@interface ATXPBCGRectWrapper
- (BOOL)isEqual:(id)a3;
- (double)copyTo:(uint64_t)a1;
- (double)height;
- (double)mergeFrom:(uint64_t)a1;
- (double)width;
- (double)x;
- (double)y;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)setHeight:(uint64_t)result;
- (uint64_t)setWidth:(uint64_t)result;
- (uint64_t)setX:(uint64_t)result;
- (uint64_t)setY:(uint64_t)result;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBCGRectWrapper

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBCGRectWrapper;
  v4 = [(ATXPBCGRectWrapper *)&v8 description];
  v5 = [(ATXPBCGRectWrapper *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_x];
  [v3 setObject:v4 forKey:@"x"];

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_y];
  [v3 setObject:v5 forKey:@"y"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_width];
  [v3 setObject:v6 forKey:@"width"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_height];
  [v3 setObject:v7 forKey:@"height"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteDoubleField();
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 3) = *&self->_x;
  *(result + 4) = *&self->_y;
  *(result + 2) = *&self->_width;
  *(result + 1) = *&self->_height;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && self->_x == v4[3] && self->_y == v4[4] && self->_width == v4[2] && self->_height == v4[1];

  return v5;
}

- (unint64_t)hash
{
  x = self->_x;
  v7 = -x;
  if (x >= 0.0)
  {
    v7 = self->_x;
  }

  *v3.i64 = floor(v7 + 0.5);
  v8 = (v7 - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = vnegq_f64(v9);
  v3.i64[0] = vbslq_s8(v10, v4, v3).i64[0];
  v11 = 2654435761u * *v3.i64;
  v12 = v11 + v8;
  if (v8 <= 0.0)
  {
    v12 = 2654435761u * *v3.i64;
  }

  v13 = v11 - fabs(v8);
  if (v8 >= 0.0)
  {
    v13 = v12;
  }

  y = self->_y;
  if (y < 0.0)
  {
    y = -y;
  }

  *v4.i64 = floor(y + 0.5);
  v15 = (y - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v16 = vbslq_s8(v10, v5, v4);
  v17 = 2654435761u * *v16.i64;
  v18 = v17 + v15;
  if (v15 <= 0.0)
  {
    v18 = 2654435761u * *v16.i64;
  }

  v19 = v17 - fabs(v15);
  v20 = v15 < 0.0;
  width = self->_width;
  if (!v20)
  {
    v19 = v18;
  }

  if (width < 0.0)
  {
    width = -width;
  }

  *v16.i64 = floor(width + 0.5);
  v22 = (width - *v16.i64) * 1.84467441e19;
  *v5.i64 = *v16.i64 - trunc(*v16.i64 * 5.42101086e-20) * 1.84467441e19;
  v23 = vbslq_s8(v10, v5, v16);
  v24 = 2654435761u * *v23.i64;
  v25 = v24 + v22;
  if (v22 <= 0.0)
  {
    v25 = 2654435761u * *v23.i64;
  }

  v26 = v24 - fabs(v22);
  if (v22 >= 0.0)
  {
    v26 = v25;
  }

  height = self->_height;
  if (height < 0.0)
  {
    height = -height;
  }

  *v2.i64 = floor(height + 0.5);
  v28 = (height - *v2.i64) * 1.84467441e19;
  *v23.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v2.i64[0] = vbslq_s8(v10, v23, v2).i64[0];
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

  return v19 ^ v13 ^ v26 ^ v31;
}

- (double)copyTo:(uint64_t)a1
{
  if (a1)
  {
    *(a2 + 24) = *(a1 + 24);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 16) = *(a1 + 16);
    result = *(a1 + 8);
    *(a2 + 8) = result;
  }

  return result;
}

- (double)mergeFrom:(uint64_t)a1
{
  if (a1)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    result = *(a2 + 8);
    *(a1 + 8) = result;
  }

  return result;
}

- (double)x
{
  if (a1)
  {
    return OUTLINED_FUNCTION_1_14(a1, 24);
  }

  else
  {
    return OUTLINED_FUNCTION_0_18();
  }
}

- (uint64_t)setX:(uint64_t)result
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

- (double)y
{
  if (a1)
  {
    return OUTLINED_FUNCTION_1_14(a1, 32);
  }

  else
  {
    return OUTLINED_FUNCTION_0_18();
  }
}

- (uint64_t)setY:(uint64_t)result
{
  if (result)
  {
    *(result + 32) = a2;
  }

  return result;
}

- (double)width
{
  if (a1)
  {
    return OUTLINED_FUNCTION_1_14(a1, 16);
  }

  else
  {
    return OUTLINED_FUNCTION_0_18();
  }
}

- (uint64_t)setWidth:(uint64_t)result
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

- (double)height
{
  if (a1)
  {
    return OUTLINED_FUNCTION_1_14(a1, 8);
  }

  else
  {
    return OUTLINED_FUNCTION_0_18();
  }
}

- (uint64_t)setHeight:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

@end