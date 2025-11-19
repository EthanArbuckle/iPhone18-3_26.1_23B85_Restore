@interface SKUniform
+ (SKUniform)uniformWithName:(NSString *)name;
+ (SKUniform)uniformWithName:(NSString *)name float:(float)value;
+ (SKUniform)uniformWithName:(NSString *)name floatMatrix2:(GLKMatrix2)value;
+ (SKUniform)uniformWithName:(NSString *)name floatMatrix3:(GLKMatrix3 *)value;
+ (SKUniform)uniformWithName:(NSString *)name floatMatrix4:(GLKMatrix4 *)value;
+ (SKUniform)uniformWithName:(NSString *)name floatVector2:(GLKVector2)value;
+ (SKUniform)uniformWithName:(NSString *)name floatVector3:(GLKVector3)value;
+ (SKUniform)uniformWithName:(NSString *)name floatVector4:(GLKVector4)value;
+ (SKUniform)uniformWithName:(NSString *)name matrixFloat2x2:(matrix_float2x2)value;
+ (SKUniform)uniformWithName:(NSString *)name matrixFloat3x3:(matrix_float3x3)value;
+ (SKUniform)uniformWithName:(NSString *)name matrixFloat4x4:(matrix_float4x4)value;
+ (SKUniform)uniformWithName:(NSString *)name texture:(SKTexture *)texture;
+ (SKUniform)uniformWithName:(NSString *)name vectorFloat2:(vector_float2)value;
+ (SKUniform)uniformWithName:(NSString *)name vectorFloat3:(vector_float3)value;
+ (SKUniform)uniformWithName:(NSString *)name vectorFloat4:(vector_float4)value;
- (BOOL)isEqualToUniform:(id)a3;
- (GLKMatrix2)floatMatrix2Value;
- (GLKMatrix3)floatMatrix3Value;
- (GLKMatrix4)floatMatrix4Value;
- (GLKVector3)floatVector3Value;
- (GLKVector4)floatVector4Value;
- (SKTexture)textureValue;
- (SKUniform)initWithCoder:(id)a3;
- (SKUniform)initWithName:(NSString *)name;
- (SKUniform)initWithName:(NSString *)name float:(float)value;
- (SKUniform)initWithName:(NSString *)name floatMatrix2:(GLKMatrix2)value;
- (SKUniform)initWithName:(NSString *)name floatMatrix3:(GLKMatrix3 *)value;
- (SKUniform)initWithName:(NSString *)name floatMatrix4:(GLKMatrix4 *)value;
- (SKUniform)initWithName:(NSString *)name floatVector2:(GLKVector2)value;
- (SKUniform)initWithName:(NSString *)name floatVector3:(GLKVector3)value;
- (SKUniform)initWithName:(NSString *)name floatVector4:(GLKVector4)value;
- (SKUniform)initWithName:(NSString *)name matrixFloat2x2:(matrix_float2x2)value;
- (SKUniform)initWithName:(NSString *)name matrixFloat3x3:(matrix_float3x3)value;
- (SKUniform)initWithName:(NSString *)name matrixFloat4x4:(matrix_float4x4)value;
- (SKUniform)initWithName:(NSString *)name texture:(SKTexture *)texture;
- (SKUniform)initWithName:(NSString *)name vectorFloat2:(vector_float2)value;
- (SKUniform)initWithName:(NSString *)name vectorFloat3:(vector_float3)value;
- (SKUniform)initWithName:(NSString *)name vectorFloat4:(vector_float4)value;
- (float)floatValue;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (matrix_float2x2)matrixFloat2x2Value;
- (matrix_float3x3)matrixFloat3x3Value;
- (matrix_float4x4)matrixFloat4x4Value;
- (vector_float2)vectorFloat2Value;
- (vector_float3)vectorFloat3Value;
- (vector_float4)vectorFloat4Value;
- (void)_addTargetShader:(id)a3;
- (void)_propagateChange;
- (void)_removeTargetShader:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setFloatValue:(float)floatValue;
- (void)setFloatVector2Value:(GLKVector2)floatVector2Value;
- (void)setFloatVector3Value:(GLKVector3)floatVector3Value;
- (void)setFloatVector4Value:(GLKVector4)floatVector4Value;
- (void)setMatrixFloat2x2Value:(matrix_float2x2)matrixFloat2x2Value;
- (void)setMatrixFloat3x3Value:(matrix_float3x3)matrixFloat3x3Value;
- (void)setMatrixFloat4x4Value:(matrix_float4x4)matrixFloat4x4Value;
- (void)setTextureValue:(SKTexture *)textureValue;
- (void)setVectorFloat2Value:(vector_float2)vectorFloat2Value;
- (void)setVectorFloat3Value:(vector_float3)vectorFloat3Value;
- (void)setVectorFloat4Value:(vector_float4)vectorFloat4Value;
@end

@implementation SKUniform

- (id)description
{
  v3 = 0;
  type = self->_type;
  if (type > 4)
  {
    if (type > 6)
    {
      if (type == 7)
      {
        v45 = MEMORY[0x277CCACA8];
        [(SKUniform *)self matrixFloat4x4Value];
        v85 = v46;
        [(SKUniform *)self matrixFloat4x4Value];
        v78 = v47;
        [(SKUniform *)self matrixFloat4x4Value];
        v76 = v48;
        [(SKUniform *)self matrixFloat4x4Value];
        v75 = v49;
        [(SKUniform *)self matrixFloat4x4Value];
        v74 = v50;
        [(SKUniform *)self matrixFloat4x4Value];
        v73 = v51;
        [(SKUniform *)self matrixFloat4x4Value];
        v53 = v52;
        [(SKUniform *)self matrixFloat4x4Value];
        v55 = v54;
        [(SKUniform *)self matrixFloat4x4Value];
        v57 = v56;
        [(SKUniform *)self matrixFloat4x4Value];
        v59 = v58;
        [(SKUniform *)self matrixFloat4x4Value];
        v61 = v60;
        [(SKUniform *)self matrixFloat4x4Value];
        v63 = v62;
        [(SKUniform *)self matrixFloat4x4Value];
        v65 = v64;
        [(SKUniform *)self matrixFloat4x4Value];
        v67 = v66;
        [(SKUniform *)self matrixFloat4x4Value];
        v72 = v68;
        [(SKUniform *)self matrixFloat4x4Value];
        v3 = [v45 stringWithFormat:@"\n\t{%.3f, %.3f, %.3f, %.3f, \n \t{%.3f, %.3f, %.3f, %.3f, \n \t{%.3f, %.3f, %.3f, %.3f, \n \t{%.3f, %.3f, %.3f, %.3f, }", *&v85, *&v78, *&v76, *&v75, *&v74, *&v73, *&v53, *&v55, *&v57, *&v59, *&v61, *&v63, *&v65, *&v67, v72, v69];
        v5 = @"FloatMatrix4";
      }

      else
      {
        v5 = 0;
        if (type == 8)
        {
          v32 = [(SKUniform *)self textureValue];
          if (v32)
          {
            v33 = [(SKUniform *)self textureValue];
            v3 = [v33 description];
          }

          else
          {
            v3 = @"<nil>";
          }

          v5 = @"Texture";
        }
      }
    }

    else
    {
      v10 = MEMORY[0x277CCACA8];
      if (type == 5)
      {
        [(SKUniform *)self matrixFloat2x2Value];
        v37 = v36;
        [(SKUniform *)self matrixFloat2x2Value];
        v39 = v38;
        [(SKUniform *)self matrixFloat2x2Value];
        v83 = v40;
        [(SKUniform *)self matrixFloat2x2Value];
        v3 = [v10 stringWithFormat:@"\n\t{%.3f, %.3f, \n \t%.3f, %.3f}", *&v37, *&v39, v83, v41];
        v5 = @"FloatMatrix2";
      }

      else
      {
        [(SKUniform *)self matrixFloat3x3Value];
        v12 = v11;
        [(SKUniform *)self matrixFloat3x3Value];
        v14 = v13;
        [(SKUniform *)self matrixFloat3x3Value];
        v16 = v15;
        [(SKUniform *)self matrixFloat3x3Value];
        v18 = v17;
        [(SKUniform *)self matrixFloat3x3Value];
        v20 = v19;
        [(SKUniform *)self matrixFloat3x3Value];
        v22 = v21;
        [(SKUniform *)self matrixFloat3x3Value];
        v24 = v23;
        [(SKUniform *)self matrixFloat3x3Value];
        v86 = v25;
        [(SKUniform *)self matrixFloat3x3Value];
        v3 = [v10 stringWithFormat:@"\n\t{%.3f, %.3f, %.3f, \n \t%.3f, %.3f %.3f, \n \t%.3f, %.3f %.3f}", *&v12, *&v14, *&v16, *&v18, *&v20, *&v22, *&v24, v86, v26];
        v5 = @"FloatMatrix3";
      }
    }
  }

  else
  {
    if (type > 2)
    {
      v27 = MEMORY[0x277CCACA8];
      if (type == 3)
      {
        [(SKUniform *)self vectorFloat3Value];
        v84 = v42;
        [(SKUniform *)self vectorFloat3Value];
        v80 = v43;
        [(SKUniform *)self vectorFloat3Value];
        v9 = [v27 stringWithFormat:@"{%.3f, %.3f, %.3f}", v84, v80, v44];
        v5 = @"FloatVector3";
      }

      else
      {
        [(SKUniform *)self vectorFloat4Value];
        v82 = v28;
        [(SKUniform *)self vectorFloat4Value];
        v79 = v29;
        [(SKUniform *)self vectorFloat4Value];
        v77 = v30;
        [(SKUniform *)self vectorFloat4Value];
        v9 = [v27 stringWithFormat:@"{%.3f, %.3f, %.3f, %.3f}", v82, v79, v77, v31];
        v5 = @"FloatVector4";
      }
    }

    else if (type == 1)
    {
      v34 = MEMORY[0x277CCACA8];
      [(SKUniform *)self floatValue];
      v9 = [v34 stringWithFormat:@"%.3f", v35];
      v5 = @"Float";
    }

    else
    {
      v5 = 0;
      if (type != 2)
      {
        goto LABEL_22;
      }

      v6 = MEMORY[0x277CCACA8];
      [(SKUniform *)self vectorFloat2Value];
      v81 = v7;
      [(SKUniform *)self vectorFloat2Value];
      v9 = [v6 stringWithFormat:@"{%.3f, %.3f}", v81, v8];
      v5 = @"FloatVector2";
    }

    v3 = v9;
  }

LABEL_22:
  v70 = [MEMORY[0x277CCACA8] stringWithFormat:@"<SKUniform> type:'%@' value:%@", v5, v3];

  return v70;
}

- (SKUniform)initWithName:(NSString *)name
{
  v5 = name;
  v9.receiver = self;
  v9.super_class = SKUniform;
  v6 = [(SKUniform *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 0;
    [(SKUniform *)v6 set_seed:1];
    objc_storeStrong(&v7->_name, name);
  }

  return v7;
}

- (SKUniform)initWithName:(NSString *)name float:(float)value
{
  v6 = name;
  v7 = [(SKUniform *)self initWithName:v6];
  v9 = v7;
  if (v7)
  {
    *&v8 = value;
    [(SKUniform *)v7 setFloatValue:v8];
  }

  return v9;
}

- (SKUniform)initWithName:(NSString *)name texture:(SKTexture *)texture
{
  v6 = name;
  v7 = texture;
  v8 = [(SKUniform *)self initWithName:v6];
  v9 = v8;
  if (v8)
  {
    [(SKUniform *)v8 setTextureValue:v7];
  }

  return v9;
}

- (SKUniform)initWithName:(NSString *)name vectorFloat2:(vector_float2)value
{
  v6 = name;
  v7 = [(SKUniform *)self initWithName:v6];
  v8 = v7;
  if (v7)
  {
    [(SKUniform *)v7 setVectorFloat2Value:*&value];
  }

  return v8;
}

- (SKUniform)initWithName:(NSString *)name vectorFloat3:(vector_float3)value
{
  v10 = v4;
  v6 = name;
  v7 = [(SKUniform *)self initWithName:v6];
  v8 = v7;
  if (v7)
  {
    [(SKUniform *)v7 setVectorFloat3Value:v10];
  }

  return v8;
}

- (SKUniform)initWithName:(NSString *)name vectorFloat4:(vector_float4)value
{
  v9 = *value.i64;
  v5 = name;
  v6 = [(SKUniform *)self initWithName:v5];
  v7 = v6;
  if (v6)
  {
    [(SKUniform *)v6 setVectorFloat4Value:v9];
  }

  return v7;
}

- (SKUniform)initWithName:(NSString *)name matrixFloat2x2:(matrix_float2x2)value
{
  v4 = *&value.columns[1];
  v5 = *value.columns;
  v7 = name;
  v8 = [(SKUniform *)self initWithName:v7];
  v9 = v8;
  if (v8)
  {
    [(SKUniform *)v8 setMatrixFloat2x2Value:v5, v4];
  }

  return v9;
}

- (SKUniform)initWithName:(NSString *)name matrixFloat3x3:(matrix_float3x3)value
{
  v10 = *value.columns[1].i64;
  v11 = *value.columns[2].i64;
  v9 = *value.columns[0].i64;
  v5 = name;
  v6 = [(SKUniform *)self initWithName:v5];
  v7 = v6;
  if (v6)
  {
    [(SKUniform *)v6 setMatrixFloat3x3Value:v9, v10, v11];
  }

  return v7;
}

- (SKUniform)initWithName:(NSString *)name matrixFloat4x4:(matrix_float4x4)value
{
  v11 = *value.columns[2].i64;
  v12 = *value.columns[3].i64;
  v9 = *value.columns[0].i64;
  v10 = *value.columns[1].i64;
  v5 = name;
  v6 = [(SKUniform *)self initWithName:v5];
  v7 = v6;
  if (v6)
  {
    [(SKUniform *)v6 setMatrixFloat4x4Value:v9, v10, v11, v12];
  }

  return v7;
}

- (SKUniform)initWithName:(NSString *)name floatVector2:(GLKVector2)value
{
  v6 = v5;
  v7 = v4;
  v9 = name;
  v10 = [(SKUniform *)self initWithName:v9];
  v13 = v10;
  if (v10)
  {
    LODWORD(v11) = v7;
    LODWORD(v12) = v6;
    [(SKUniform *)v10 setFloatVector2Value:v11, v12];
  }

  return v13;
}

- (SKUniform)initWithName:(NSString *)name floatVector3:(GLKVector3)value
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v11 = name;
  v12 = [(SKUniform *)self initWithName:v11];
  v16 = v12;
  if (v12)
  {
    LODWORD(v13) = v9;
    LODWORD(v14) = v8;
    LODWORD(v15) = v7;
    [(SKUniform *)v12 setFloatVector3Value:v13, v14, v15];
  }

  return v16;
}

- (SKUniform)initWithName:(NSString *)name floatVector4:(GLKVector4)value
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v13 = name;
  v14 = [(SKUniform *)self initWithName:v13];
  v19 = v14;
  if (v14)
  {
    LODWORD(v15) = v11;
    LODWORD(v16) = v10;
    LODWORD(v17) = v9;
    LODWORD(v18) = v8;
    [(SKUniform *)v14 setFloatVector4Value:v15, v16, v17, v18];
  }

  return v19;
}

- (SKUniform)initWithName:(NSString *)name floatMatrix2:(GLKMatrix2)value
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v13 = name;
  v14 = [(SKUniform *)self initWithName:v13];
  v19 = v14;
  if (v14)
  {
    LODWORD(v15) = v11;
    LODWORD(v16) = v10;
    LODWORD(v17) = v9;
    LODWORD(v18) = v8;
    [(SKUniform *)v14 setFloatMatrix2Value:v15, v16, v17, v18];
  }

  return v19;
}

- (SKUniform)initWithName:(NSString *)name floatMatrix3:(GLKMatrix3 *)value
{
  v6 = name;
  v7 = [(SKUniform *)self initWithName:v6];
  v8 = v7;
  if (v7)
  {
    v9 = *&value->m[4];
    v11[0] = *&value->m00;
    v11[1] = v9;
    m22 = value->m22;
    [(SKUniform *)v7 setFloatMatrix3Value:v11];
  }

  return v8;
}

- (SKUniform)initWithName:(NSString *)name floatMatrix4:(GLKMatrix4 *)value
{
  v6 = name;
  v7 = [(SKUniform *)self initWithName:v6];
  v8 = v7;
  if (v7)
  {
    v9 = *&value->m[4];
    v12[0] = *&value->m00;
    v12[1] = v9;
    v10 = *&value->m[12];
    v12[2] = *&value->m[8];
    v12[3] = v10;
    [(SKUniform *)v7 setFloatMatrix4Value:v12];
  }

  return v8;
}

+ (SKUniform)uniformWithName:(NSString *)name
{
  v3 = name;
  v4 = [objc_alloc(objc_opt_class()) initWithName:v3];

  return v4;
}

+ (SKUniform)uniformWithName:(NSString *)name float:(float)value
{
  v5 = name;
  v6 = objc_alloc(objc_opt_class());
  *&v7 = value;
  v8 = [v6 initWithName:v5 float:v7];

  return v8;
}

+ (SKUniform)uniformWithName:(NSString *)name vectorFloat2:(vector_float2)value
{
  v5 = name;
  v6 = [objc_alloc(objc_opt_class()) initWithName:v5 vectorFloat2:*&value];

  return v6;
}

+ (SKUniform)uniformWithName:(NSString *)name vectorFloat3:(vector_float3)value
{
  v8 = v4;
  v5 = name;
  v6 = [objc_alloc(objc_opt_class()) initWithName:v5 vectorFloat3:v8];

  return v6;
}

+ (SKUniform)uniformWithName:(NSString *)name vectorFloat4:(vector_float4)value
{
  v7 = *value.i64;
  v4 = name;
  v5 = [objc_alloc(objc_opt_class()) initWithName:v4 vectorFloat4:v7];

  return v5;
}

+ (SKUniform)uniformWithName:(NSString *)name matrixFloat2x2:(matrix_float2x2)value
{
  v4 = *&value.columns[1];
  v5 = *value.columns;
  v6 = name;
  v7 = [objc_alloc(objc_opt_class()) initWithName:v6 matrixFloat2x2:{v5, v4}];

  return v7;
}

+ (SKUniform)uniformWithName:(NSString *)name matrixFloat3x3:(matrix_float3x3)value
{
  v8 = *value.columns[1].i64;
  v9 = *value.columns[2].i64;
  v7 = *value.columns[0].i64;
  v4 = name;
  v5 = [objc_alloc(objc_opt_class()) initWithName:v4 matrixFloat3x3:{v7, v8, v9}];

  return v5;
}

+ (SKUniform)uniformWithName:(NSString *)name matrixFloat4x4:(matrix_float4x4)value
{
  v10 = *value.columns[3].i64;
  v8 = *value.columns[1].i64;
  v9 = *value.columns[2].i64;
  v7 = *value.columns[0].i64;
  v4 = name;
  v5 = [objc_alloc(objc_opt_class()) initWithName:v4 matrixFloat4x4:{v7, v8, v9, v10}];

  return v5;
}

+ (SKUniform)uniformWithName:(NSString *)name floatVector2:(GLKVector2)value
{
  v6 = v5;
  v7 = v4;
  v8 = name;
  v9 = objc_alloc(objc_opt_class());
  LODWORD(v10) = v7;
  LODWORD(v11) = v6;
  v12 = [v9 initWithName:v8 floatVector2:{v10, v11}];

  return v12;
}

+ (SKUniform)uniformWithName:(NSString *)name floatVector3:(GLKVector3)value
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = name;
  v11 = objc_alloc(objc_opt_class());
  LODWORD(v12) = v9;
  LODWORD(v13) = v8;
  LODWORD(v14) = v7;
  v15 = [v11 initWithName:v10 floatVector3:{v12, v13, v14}];

  return v15;
}

+ (SKUniform)uniformWithName:(NSString *)name floatVector4:(GLKVector4)value
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v12 = name;
  v13 = objc_alloc(objc_opt_class());
  LODWORD(v14) = v11;
  LODWORD(v15) = v10;
  LODWORD(v16) = v9;
  LODWORD(v17) = v8;
  v18 = [v13 initWithName:v12 floatVector4:{v14, v15, v16, v17}];

  return v18;
}

+ (SKUniform)uniformWithName:(NSString *)name floatMatrix2:(GLKMatrix2)value
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v12 = name;
  v13 = objc_alloc(objc_opt_class());
  LODWORD(v14) = v11;
  LODWORD(v15) = v10;
  LODWORD(v16) = v9;
  LODWORD(v17) = v8;
  v18 = [v13 initWithName:v12 floatMatrix2:{v14, v15, v16, v17}];

  return v18;
}

+ (SKUniform)uniformWithName:(NSString *)name floatMatrix3:(GLKMatrix3 *)value
{
  v5 = name;
  v6 = objc_alloc(objc_opt_class());
  v7 = *&value->m[4];
  v10[0] = *&value->m00;
  v10[1] = v7;
  m22 = value->m22;
  v8 = [v6 initWithName:v5 floatMatrix3:v10];

  return v8;
}

+ (SKUniform)uniformWithName:(NSString *)name floatMatrix4:(GLKMatrix4 *)value
{
  v5 = name;
  v6 = objc_alloc(objc_opt_class());
  v7 = *&value->m[4];
  v11[0] = *&value->m00;
  v11[1] = v7;
  v8 = *&value->m[12];
  v11[2] = *&value->m[8];
  v11[3] = v8;
  v9 = [v6 initWithName:v5 floatMatrix4:v11];

  return v9;
}

+ (SKUniform)uniformWithName:(NSString *)name texture:(SKTexture *)texture
{
  v5 = name;
  v6 = texture;
  v7 = [objc_alloc(objc_opt_class()) initWithName:v5 texture:v6];

  return v7;
}

- (GLKVector3)floatVector3Value
{
  v2 = [(SKUniform *)self vectorFloat3Value];
  for (i = 0; i != 3; ++i)
  {
    *v6 = v4;
    *(&v6[2] + i + 1) = *(v6 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
  }

  *&result.x = v2;
  result.z = v3;
  return result;
}

- (GLKVector4)floatVector4Value
{
  v2 = [(SKUniform *)self vectorFloat4Value];
  for (i = 0; i != 4; ++i)
  {
    *v6 = v4;
    v6[i + 4] = *(v6 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
  }

  *&result.v[2] = v3;
  *&result.x = v2;
  return result;
}

- (GLKMatrix2)floatMatrix2Value
{
  v2 = [(SKUniform *)self matrixFloat2x2Value];
  __break(1u);
  *&result.m[2] = v3;
  *&result.m00 = v2;
  return result;
}

- (GLKMatrix3)floatMatrix3Value
{
  [(SKUniform *)self matrixFloat3x3Value];
  v5 = 0;
  v9[0] = v4;
  v9[1] = v6;
  v9[2] = v7;
  for (i = 1; ; ++i)
  {
    *(&retstr->m00 + v5) = v4;
    v4 = v9[i];
    v5 += 3;
  }
}

- (GLKMatrix4)floatMatrix4Value
{
  [(SKUniform *)self matrixFloat4x4Value];
  v5 = 0;
  v10[0] = v4;
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  for (i = 1; ; ++i)
  {
    *(&retstr->m00 + v5) = v4;
    v4 = v10[i];
    v5 += 4;
  }
}

- (void)setFloatVector2Value:(GLKVector2)floatVector2Value
{
  v5 = 0;
  v6 = 0.0;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = v6;
    *(&v9 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v5 & 1))) = v3;
    v5 = 1;
    v6 = v9;
    v3 = v4;
    v7 = 0;
  }

  while ((v8 & 1) != 0);
  [(SKUniform *)self setVectorFloat2Value:*&floatVector2Value, v9];
}

- (void)setFloatVector3Value:(GLKVector3)floatVector3Value
{
  v6 = 0;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v7 = 0uLL;
  do
  {
    v8 = *(&v11 + v6);
    v10 = v7;
    *(&v10 & 0xFFFFFFFFFFFFFFF3 | (4 * (v6 & 3))) = v8;
    v9 = v10;
    HIDWORD(v9) = HIDWORD(v7);
    ++v6;
    v7 = v9;
  }

  while (v6 != 3);
  [(SKUniform *)self setVectorFloat3Value:*&floatVector3Value.x, *&floatVector3Value.v[2]];
}

- (void)setFloatVector4Value:(GLKVector4)floatVector4Value
{
  v7 = 0;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v8 = 0uLL;
  do
  {
    v9 = *(&v11 + v7);
    v10 = v8;
    *(&v10 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3))) = v9;
    v8 = v10;
    ++v7;
  }

  while (v7 != 4);
  [(SKUniform *)self setVectorFloat4Value:*&floatVector4Value.x, *&floatVector4Value.v[2], *&v10];
}

- (vector_float2)vectorFloat2Value
{
  if (self->_type)
  {
    return *&self->_value._floatValue;
  }

  else
  {
    self->_type = 2;
    result = 0;
    *&self->_value._floatValue = 0;
  }

  return result;
}

- (vector_float3)vectorFloat3Value
{
  if (!self->_type)
  {
    self->_type = 3;
    *&self->_value._floatValue = 0u;
  }

  result.i64[1] = a2;
  result.i64[0] = self;
  return result;
}

- (vector_float4)vectorFloat4Value
{
  if (self->_type)
  {
    return *&self->_value._floatValue;
  }

  else
  {
    self->_type = 4;
    result = 0uLL;
    *&self->_value._floatValue = 0u;
  }

  return result;
}

- (matrix_float2x2)matrixFloat2x2Value
{
  if (!self->_type)
  {
    self->_type = 5;
    *&self->_value._floatValue = *MEMORY[0x277D860A8];
  }

  v2 = *&self->_value._floatValue;
  isa = self[1].super.isa;
  result.columns[1] = isa;
  result.columns[0] = v2;
  return result;
}

- (matrix_float3x3)matrixFloat3x3Value
{
  if (!self->_type)
  {
    self->_type = 6;
    v2 = MEMORY[0x277D860B0];
    v3 = *(MEMORY[0x277D860B0] + 16);
    *&self->_value._floatValue = *MEMORY[0x277D860B0];
    *&self[1]._type = v3;
    *&self[1]._seed = *(v2 + 32);
  }

  v4 = *&self->_value._floatValue;
  v5 = *&self[1]._type;
  v6 = *&self[1]._seed;
  result.columns[2] = v6;
  result.columns[1] = v5;
  result.columns[0] = v4;
  return result;
}

- (matrix_float4x4)matrixFloat4x4Value
{
  if (!self->_type)
  {
    self->_type = 7;
    v2 = *(MEMORY[0x277D860B8] + 16);
    v4 = *(MEMORY[0x277D860B8] + 32);
    v3 = *(MEMORY[0x277D860B8] + 48);
    *&self->_value._floatValue = *MEMORY[0x277D860B8];
    *&self[1]._type = v2;
    *&self[1]._seed = v4;
    *&self[1]._targetShaders = v3;
  }

  v5 = *&self->_value._floatValue;
  v6 = *&self[1]._type;
  v7 = *&self[1]._seed;
  v8 = *&self[1]._targetShaders;
  result.columns[3] = v8;
  result.columns[2] = v7;
  result.columns[1] = v6;
  result.columns[0] = v5;
  return result;
}

- (void)setVectorFloat2Value:(vector_float2)vectorFloat2Value
{
  if (!self->_type)
  {
    self->_type = 2;
  }

  *&self->_value._floatValue = vectorFloat2Value;
  [(SKUniform *)self set_seed:[(SKUniform *)self _seed]+ 1];

  [(SKUniform *)self _propagateChange];
}

- (void)setVectorFloat3Value:(vector_float3)vectorFloat3Value
{
  if (!self->_type)
  {
    self->_type = 3;
  }

  *&self->_value._floatValue = v3;
  [(SKUniform *)self set_seed:[(SKUniform *)self _seed:vectorFloat3Value.i64[0]]+ 1];

  [(SKUniform *)self _propagateChange];
}

- (void)setVectorFloat4Value:(vector_float4)vectorFloat4Value
{
  if (!self->_type)
  {
    self->_type = 4;
  }

  *&self->_value._floatValue = vectorFloat4Value;
  [(SKUniform *)self set_seed:[(SKUniform *)self _seed]+ 1];

  [(SKUniform *)self _propagateChange];
}

- (void)setMatrixFloat2x2Value:(matrix_float2x2)matrixFloat2x2Value
{
  if (!self->_type)
  {
    self->_type = 5;
  }

  *&self->_value._floatValue = matrixFloat2x2Value.columns[0];
  self[1].super.isa = matrixFloat2x2Value.columns[1];
  [(SKUniform *)self set_seed:[(SKUniform *)self _seed]+ 1];

  [(SKUniform *)self _propagateChange];
}

- (void)setMatrixFloat3x3Value:(matrix_float3x3)matrixFloat3x3Value
{
  if (!self->_type)
  {
    self->_type = 6;
  }

  *&self->_value._floatValue = matrixFloat3x3Value.columns[0];
  *&self[1]._type = matrixFloat3x3Value.columns[1];
  *&self[1]._seed = matrixFloat3x3Value.columns[2];
  [(SKUniform *)self set_seed:[(SKUniform *)self _seed]+ 1];

  [(SKUniform *)self _propagateChange];
}

- (void)setMatrixFloat4x4Value:(matrix_float4x4)matrixFloat4x4Value
{
  if (!self->_type)
  {
    self->_type = 7;
  }

  *&self->_value._floatValue = matrixFloat4x4Value.columns[0];
  *&self[1]._type = matrixFloat4x4Value.columns[1];
  *&self[1]._seed = matrixFloat4x4Value.columns[2];
  *&self[1]._targetShaders = matrixFloat4x4Value.columns[3];
  [(SKUniform *)self set_seed:[(SKUniform *)self _seed]+ 1];

  [(SKUniform *)self _propagateChange];
}

- (void)setTextureValue:(SKTexture *)textureValue
{
  v4 = textureValue;
  if (!self->_type)
  {
    self->_type = 8;
    v5 = self->_textureValue;
    self->_textureValue = 0;
  }

  v6 = self->_textureValue;
  self->_textureValue = v4;

  [(SKUniform *)self set_seed:[(SKUniform *)self _seed]+ 1];

  [(SKUniform *)self _propagateChange];
}

- (SKTexture)textureValue
{
  if (!self->_type)
  {
    self->_type = 8;
    textureValue = self->_textureValue;
    self->_textureValue = 0;
  }

  v4 = self->_textureValue;

  return v4;
}

- (void)setFloatValue:(float)floatValue
{
  if (!self->_type)
  {
    self->_type = 1;
    textureValue = self->_textureValue;
    self->_textureValue = 0;
  }

  self->_value._floatValue = floatValue;
  [(SKUniform *)self set_seed:[(SKUniform *)self _seed]+ 1];

  [(SKUniform *)self _propagateChange];
}

- (float)floatValue
{
  if (self->_type)
  {
    return self->_value._floatValue;
  }

  self->_type = 1;
  self->_value._floatValue = 0.0;
  return 0.0;
}

- (SKUniform)initWithCoder:(id)a3
{
  v87[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(SKUniform *)self set_seed:0];
  self->_type = [v4 decodeIntegerForKey:@"_type"];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
  name = self->_name;
  self->_name = v5;

  type = self->_type;
  if (type > 4)
  {
    if (type > 6)
    {
      if (type == 7)
      {
        v66 = MEMORY[0x277CBEB98];
        v82[0] = objc_opt_class();
        v82[1] = objc_opt_class();
        v82[2] = objc_opt_class();
        v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:3];
        v68 = [v66 setWithArray:v67];
        v69 = [v4 decodeObjectOfClasses:v68 forKey:@"_floatMatrix4Value"];

        v70 = 0;
        for (i = 0; i != 4; ++i)
        {
          for (j = 0; j != 4; ++j)
          {
            v73 = [v69 objectAtIndexedSubscript:v70 + j];
            [v73 floatValue];
            *(&self->_value._floatValue + 4 * i + (j & 3)) = v74;
          }

          v70 += 4;
        }
      }

      else if (type == 8)
      {
        v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_textureValue"];
        textureValue = self->_textureValue;
        self->_textureValue = v39;
      }
    }

    else if (type == 5)
    {
      v42 = MEMORY[0x277CBEB98];
      v84[0] = objc_opt_class();
      v84[1] = objc_opt_class();
      v84[2] = objc_opt_class();
      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:3];
      v44 = [v42 setWithArray:v43];
      v45 = [v4 decodeObjectOfClasses:v44 forKey:@"_floatMatrix2Value"];

      v46 = 0;
      v47 = 1;
      do
      {
        v48 = 0;
        v49 = v47;
        v50 = 2 * v46;
        v51 = 1;
        v52 = &self->_value + 2 * v46;
        do
        {
          v53 = v51;
          v54 = [v45 objectAtIndexedSubscript:v48 | v50];
          [v54 floatValue];
          v52[v48 & 1]._floatValue = v55;

          v51 = 0;
          v48 = 1;
        }

        while ((v53 & 1) != 0);
        v47 = 0;
        v46 = 1;
      }

      while ((v49 & 1) != 0);
    }

    else
    {
      v16 = MEMORY[0x277CBEB98];
      v83[0] = objc_opt_class();
      v83[1] = objc_opt_class();
      v83[2] = objc_opt_class();
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:3];
      v18 = [v16 setWithArray:v17];
      v19 = [v4 decodeObjectOfClasses:v18 forKey:@"_floatMatrix3Value"];

      v20 = 0;
      for (k = 0; k != 3; ++k)
      {
        for (m = 0; m != 3; ++m)
        {
          v23 = [v19 objectAtIndexedSubscript:v20 + m];
          [v23 floatValue];
          v25 = m;
          if ((m & 0xFFFFFFFE) != 0)
          {
            v25 = 2;
          }

          *(&self->_value._floatValue + 4 * k + v25) = v24;
        }

        v20 += 3;
      }
    }
  }

  else if (type > 2)
  {
    v26 = MEMORY[0x277CBEB98];
    if (type == 3)
    {
      v86[0] = objc_opt_class();
      v86[1] = objc_opt_class();
      v86[2] = objc_opt_class();
      v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:3];
      v57 = [v26 setWithArray:v56];
      v58 = [v4 decodeObjectOfClasses:v57 forKey:@"_floatVector3Value"];

      v59 = [v58 objectAtIndexedSubscript:0];
      [v59 floatValue];
      v81 = v60;
      v61 = [v58 objectAtIndexedSubscript:1];
      [v61 floatValue];
      v78 = v62;
      v63 = [v58 objectAtIndexedSubscript:2];
      [v63 floatValue];
      v64 = v81;
      DWORD1(v64) = v78;
      DWORD2(v64) = v65;
      *&self->_value._floatValue = v64;
    }

    else
    {
      v85[0] = objc_opt_class();
      v85[1] = objc_opt_class();
      v85[2] = objc_opt_class();
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:3];
      v28 = [v26 setWithArray:v27];
      v29 = [v4 decodeObjectOfClasses:v28 forKey:@"_floatVector3Value"];

      v30 = [v29 objectAtIndexedSubscript:0];
      [v30 floatValue];
      v80 = v31;
      v32 = [v29 objectAtIndexedSubscript:1];
      [v32 floatValue];
      v77 = v33;
      v34 = [v29 objectAtIndexedSubscript:2];
      [v34 floatValue];
      v76 = v35;
      v36 = [v29 objectAtIndexedSubscript:3];
      [v36 floatValue];
      *&v37 = __PAIR64__(v77, v80);
      *(&v37 + 1) = __PAIR64__(v38, v76);
      *&self->_value._floatValue = v37;
    }
  }

  else if (type == 1)
  {
    [v4 decodeFloatForKey:@"_floatValue"];
    self->_value._floatValue = v41;
  }

  else if (type == 2)
  {
    v8 = MEMORY[0x277CBEB98];
    v87[0] = objc_opt_class();
    v87[1] = objc_opt_class();
    v87[2] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:3];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_floatVector2Value"];

    v12 = [v11 objectAtIndexedSubscript:0];
    [v12 floatValue];
    v79 = v13;
    v14 = [v11 objectAtIndexedSubscript:1];
    [v14 floatValue];
    *&self->_value._floatValue = __PAIR64__(v15, v79);
  }

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v48[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 encodeObject:self->_name forKey:@"_name"];
  [v4 encodeInteger:self->_type forKey:@"_type"];
  type = self->_type;
  if (type <= 4)
  {
    if (type > 2)
    {
      *&v5 = self->_value._floatValue;
      if (type == 3)
      {
        v35 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
        v47[0] = v35;
        LODWORD(v36) = *(&self->_value + 1);
        v37 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
        v47[1] = v37;
        LODWORD(v38) = self[1].super.isa;
        v39 = [MEMORY[0x277CCABB0] numberWithFloat:v38];
        v47[2] = v39;
        v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];
        [v4 encodeObject:v40 forKey:@"_floatVector3Value"];
      }

      else
      {
        v17 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
        v46[0] = v17;
        LODWORD(v18) = *(&self->_value + 1);
        v19 = [MEMORY[0x277CCABB0] numberWithFloat:{v18, v17}];
        v46[1] = v19;
        LODWORD(v20) = self[1].super.isa;
        v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
        v46[2] = v21;
        LODWORD(v22) = HIDWORD(self[1].super.isa);
        v23 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
        v46[3] = v23;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:4];
        [v4 encodeObject:v24 forKey:@"_floatVector4Value"];
      }
    }

    else if (type == 1)
    {
      *&v5 = self->_value._floatValue;
      [v4 encodeFloat:@"_floatValue" forKey:v5];
    }

    else if (type == 2)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithFloat:*&self->_value._floatValue];
      v48[0] = v7;
      LODWORD(v8) = *(&self->_value + 1);
      v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
      v48[1] = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
      [v4 encodeObject:v10 forKey:@"_floatVector2Value"];
    }

    goto LABEL_31;
  }

  if (type <= 6)
  {
    if (type == 5)
    {
      v11 = [MEMORY[0x277CBEB18] array];
      v26 = 0;
      p_value = &self->_value;
      v28 = 1;
      do
      {
        v29 = 0;
        v30 = v28;
        v31 = 1;
        v32 = &p_value[2 * v26];
        do
        {
          v33 = v31;
          LODWORD(v25) = v32[v29 & 1];
          v34 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
          [v11 addObject:v34];

          v31 = 0;
          v29 = 1;
        }

        while ((v33 & 1) != 0);
        v28 = 0;
        v26 = 1;
      }

      while ((v30 & 1) != 0);
      [v4 encodeObject:v11 forKey:@"_floatMatrix2Value"];
    }

    else
    {
      v11 = [MEMORY[0x277CBEB18] array];
      v13 = 0;
      v14 = &self->_value;
      do
      {
        for (i = 0; i != 3; ++i)
        {
          LODWORD(v12) = v14[4 * v13 + (i & 3)];
          v16 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
          [v11 addObject:v16];
        }

        ++v13;
      }

      while (v13 != 3);
      [v4 encodeObject:v11 forKey:@"_floatMatrix3Value"];
    }

LABEL_30:

    goto LABEL_31;
  }

  if (type == 7)
  {
    v11 = [MEMORY[0x277CBEB18] array];
    v42 = 0;
    v43 = &self->_value;
    do
    {
      for (j = 0; j != 4; ++j)
      {
        LODWORD(v41) = v43[4 * v42 + (j & 3)];
        v45 = [MEMORY[0x277CCABB0] numberWithFloat:v41];
        [v11 addObject:v45];
      }

      ++v42;
    }

    while (v42 != 4);
    [v4 encodeObject:v11 forKey:@"_floatMatrix4Value"];
    goto LABEL_30;
  }

  if (type == 8)
  {
    [v4 encodeObject:self->_textureValue forKey:@"_textureValue"];
  }

LABEL_31:
}

- (BOOL)isEqualToUniform:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_44;
  }

  if (![(NSString *)self->_name isEqualToString:v4[1].i64[0]])
  {
    goto LABEL_45;
  }

  type = self->_type;
  if (type != v4->i64[1])
  {
    goto LABEL_45;
  }

  if (type > 4)
  {
    if (type <= 6)
    {
      if (type == 5)
      {
        v19 = 0;
        v20 = 1;
LABEL_35:
        v21 = 0;
        v22 = v20;
        v23 = v4[3].i64[v19];
        v24 = *(&self->_value._floatValue + v19);
        v25 = 1;
        while (1)
        {
          v26 = v25;
          v32 = v23;
          v27 = *(&v32 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v21 & 1)));
          v31 = v24;
          if ((COERCE_UNSIGNED_INT(v27 - *(&v31 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v21 & 1)))) & 0x60000000) != 0)
          {
            break;
          }

          v25 = 0;
          v21 = 1;
          if ((v26 & 1) == 0)
          {
            v20 = 0;
            v19 = 1;
            if (v22)
            {
              goto LABEL_35;
            }

            goto LABEL_44;
          }
        }
      }

      else
      {
        v8 = 0;
LABEL_13:
        v9 = 0;
        v10 = v4[v8 + 3];
        v11 = *(&self->_value._floatValue + v8);
        while (1)
        {
          v34 = v10;
          v12 = *(&v34 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)));
          v33 = v11;
          if ((COERCE_UNSIGNED_INT(v12 - *(&v33 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)))) & 0x60000000) != 0)
          {
            break;
          }

          if (++v9 == 3)
          {
            if (++v8 != 3)
            {
              goto LABEL_13;
            }

            goto LABEL_44;
          }
        }
      }

      goto LABEL_45;
    }

    if (type == 8)
    {
      if (![(SKTexture *)self->_textureValue isEqualToTexture:v4[2].i64[0]])
      {
        goto LABEL_45;
      }
    }

    else if (type == 7)
    {
      v14 = 0;
LABEL_26:
      v15 = 0;
      v16 = v4[v14 + 3];
      v17 = *(&self->_value._floatValue + v14);
      while (1)
      {
        v36 = v16;
        v18 = *(&v36 & 0xFFFFFFFFFFFFFFF3 | (4 * (v15 & 3)));
        v35 = v17;
        if ((COERCE_UNSIGNED_INT(v18 - *(&v35 & 0xFFFFFFFFFFFFFFF3 | (4 * (v15 & 3)))) & 0x60000000) != 0)
        {
          goto LABEL_45;
        }

        if (++v15 == 4)
        {
          if (++v14 != 4)
          {
            goto LABEL_26;
          }

          goto LABEL_44;
        }
      }
    }

    goto LABEL_44;
  }

  if (type > 2)
  {
    if (type == 3)
    {
      v28 = vsubq_f32(*&self->_value._floatValue, v4[3]);
      if ((v28.i32[0] & 0x60000000) != 0 || (v28.i32[1] & 0x60000000) != 0)
      {
        goto LABEL_45;
      }

      v7 = v28.f32[2];
    }

    else
    {
      v13 = vsubq_f32(*&self->_value._floatValue, v4[3]);
      if ((v13.i32[0] & 0x60000000) != 0 || (v13.i32[1] & 0x60000000) != 0 || (v13.i32[2] & 0x60000000) != 0)
      {
        goto LABEL_45;
      }

      v7 = v13.f32[3];
    }

    goto LABEL_32;
  }

  if (type == 1)
  {
    v7 = self->_value._floatValue - v4[3].f32[0];
LABEL_32:
    if ((LODWORD(v7) & 0x60000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_45:
    v29 = 0;
    goto LABEL_46;
  }

  if (type == 2)
  {
    v6 = vsub_f32(*&self->_value._floatValue, *v4[3].f32);
    if ((v6.i32[0] & 0x60000000) != 0)
    {
      goto LABEL_45;
    }

    v7 = v6.f32[1];
    goto LABEL_32;
  }

LABEL_44:
  v29 = 1;
LABEL_46:

  return v29;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SKUniform);
  v4->_type = self->_type;
  v5 = *&self->_value._floatValue;
  v6 = *&self[1]._type;
  v7 = *&self[1]._targetShaders;
  *&v4[1]._seed = *&self[1]._seed;
  *&v4[1]._targetShaders = v7;
  *&v4->_value._floatValue = v5;
  *&v4[1]._type = v6;
  objc_storeStrong(&v4->_textureValue, self->_textureValue);
  v8 = [(SKUniform *)self name];
  name = v4->_name;
  v4->_name = v8;

  return v4;
}

- (void)_propagateChange
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_targetShaders;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v7 + 1) + 8 * v5) targetShader];
        [v6 _setUniformsDirty];

        ++v5;
      }

      while (v3 != v5);
      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (void)_addTargetShader:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  targetShaders = self->_targetShaders;
  if (!targetShaders)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = self->_targetShaders;
    self->_targetShaders = v6;

    targetShaders = self->_targetShaders;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = targetShaders;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = [*(*(&v14 + 1) + 8 * v11) targetShader];
      v13 = v12 == v4;

      if (v13)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:

    v8 = objc_opt_new();
    [(NSMutableArray *)v8 setTargetShader:v4];
    [(NSMutableArray *)self->_targetShaders addObject:v8];
  }
}

- (void)_removeTargetShader:(id)a3
{
  v4 = a3;
  targetShaders = self->_targetShaders;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__SKUniform__removeTargetShader___block_invoke;
  v7[3] = &unk_27830FFE0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(NSMutableArray *)targetShaders enumerateObjectsUsingBlock:v7];
}

void __33__SKUniform__removeTargetShader___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 targetShader];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    [*(*(a1 + 40) + 40) removeObjectAtIndex:a3];
    *a4 = 1;
  }
}

@end