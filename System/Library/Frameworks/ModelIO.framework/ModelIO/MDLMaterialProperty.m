@interface MDLMaterialProperty
+ (__n128)_decodeMatrixPropertyWithCoder:(void *)a3 forKey:(void *)a4;
+ (__n128)_decodeVectorWithCoder:(id)a3 forKey:(uint64_t)a4;
+ (id)decodeMaterialPropertyWithCoder:(id)a3 forKey:(id)a4 allocator:(id)a5;
- (CGColorRef)color;
- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic;
- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic URL:(NSURL *)URL;
- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic color:(CGColorRef)color;
- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic float2:(vector_float2)value;
- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic float3:(vector_float3)value;
- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic float4:(vector_float4)value;
- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic float:(float)value;
- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic matrix4x4:(matrix_float4x4)value;
- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic string:(NSString *)string;
- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic textureSampler:(MDLTextureSampler *)textureSampler;
- (MDLMaterialProperty)initWithName:(id)a3 buffer:(id)a4;
- (MDLMaterialProperty)initWithName:(id)a3 buffer:(id)a4 stride:(unint64_t)a5;
- (MDLMaterialProperty)initWithName:(id)a3 semantic:(unint64_t)a4 float4WithSRGBA:;
- (MDLTextureSampler)textureSamplerValue;
- (NSString)stringValue;
- (NSURL)URLValue;
- (__n128)setMatrix4x4Value:(__n128)a3;
- (float)floatValue;
- (float)luminance;
- (id)copyWithZone:(_NSZone *)a3;
- (matrix_float4x4)matrix4x4;
- (vector_float2)float2Value;
- (vector_float3)float3Value;
- (vector_float4)float4Value;
- (void)_encodeMatrixPropertyWithCoder:(id)a3 forKey:(id)a4;
- (void)_encodeVector:(id)a3 withCoder:(id)a4 forKey:;
- (void)clear;
- (void)dealloc;
- (void)encodeMaterialPropertyWithCoder:(id)a3 forKey:(id)a4 allocator:(id)a5;
- (void)setColor:(CGColorRef)color;
- (void)setFloat3Value:(vector_float3)float3Value;
- (void)setFloat4Value:(vector_float4)float4Value;
- (void)setFloatValue:(float)floatValue;
- (void)setMatrix4x4:(matrix_float4x4)matrix4x4;
- (void)setName:(NSString *)name;
- (void)setProperties:(MDLMaterialProperty *)property;
- (void)setStringValue:(NSString *)stringValue;
- (void)setTextureSamplerValue:(MDLTextureSampler *)textureSamplerValue;
- (void)setURLValue:(NSURL *)URLValue;
@end

@implementation MDLMaterialProperty

- (MDLTextureSampler)textureSamplerValue
{
  WeakRetained = objc_loadWeakRetained(&self->_overrider);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_overrider);
    v7 = objc_msgSend_textureSamplerValue(v4, v5, v6);
  }

  else
  {
    v7 = self->_textureSampler;
  }

  return v7;
}

- (void)clear
{
  string = self->_string;
  self->_string = 0;

  name = self->_name;
  self->_name = 0;

  url = self->_url;
  self->_url = 0;

  textureSampler = self->_textureSampler;
  self->_textureSampler = 0;

  self->_color = 0;
  *&self->_anon_40[32] = 0u;
  *&self->_anon_40[48] = 0u;
  *self->_anon_40 = 0u;
  *&self->_anon_40[16] = 0u;
  *self->_float = 0u;
  self->_semantic = 0x8000;
  objc_storeWeak(&self->_node, 0);
  objc_storeWeak(&self->_overrider, 0);

  objc_storeWeak(&self->_overridee, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_string, v11, a3);
  v13 = *(v10 + 8);
  *(v10 + 8) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_name, v14, a3);
  v16 = *(v10 + 16);
  *(v10 + 16) = v15;

  v18 = objc_msgSend_copyWithZone_(self->_url, v17, a3);
  v19 = *(v10 + 24);
  *(v10 + 24) = v18;

  objc_storeStrong((v10 + 32), self->_textureSampler);
  *(v10 + 48) = *self->_float;
  v20 = *self->_anon_40;
  v21 = *&self->_anon_40[16];
  v22 = *&self->_anon_40[48];
  *(v10 + 96) = *&self->_anon_40[32];
  *(v10 + 112) = v22;
  *(v10 + 64) = v20;
  *(v10 + 80) = v21;
  *(v10 + 152) = self->_semantic;
  *(v10 + 192) = self->_type;
  objc_msgSend_setColor_(v10, v23, self->_color);
  return v10;
}

- (void)setName:(NSString *)name
{
  v4 = name;
  v6 = v4;
  if (v4)
  {
    v4 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v4, v4);
  }

  v5 = self->_name;
  self->_name = v4;
}

- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic
{
  v6 = name;
  objc_msgSend_clear(self, v7, v8);
  v21.receiver = self;
  v21.super_class = MDLMaterialProperty;
  v10 = [(MDLMaterialProperty *)&v21 init];
  if (v10)
  {
    if (v6)
    {
      v11 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v9, v6);
      v12 = v10->_name;
      v10->_name = v11;
    }

    v10->_semantic = semantic;
    v13 = MEMORY[0x277D860B8];
    v14 = *(MEMORY[0x277D860B8] + 16);
    *v10->_anon_40 = *MEMORY[0x277D860B8];
    *&v10->_anon_40[16] = v14;
    v15 = *(v13 + 48);
    *&v10->_anon_40[32] = *(v13 + 32);
    *&v10->_anon_40[48] = v15;
    *v10->_float = 0;
    *&v10->_float[8] = 0;
    textureSampler = v10->_textureSampler;
    v10->_textureSampler = 0;

    url = v10->_url;
    v10->_url = 0;

    string = v10->_string;
    v10->_string = 0;

    v10->_type = 5;
    buffer = v10->_buffer;
    v10->_buffer = 0;

    objc_storeWeak(&v10->_node, 0);
    objc_storeWeak(&v10->_overridee, 0);
    objc_storeWeak(&v10->_overrider, 0);
    v10->_isDefaultValue = 1;
  }

  return v10;
}

- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic float:(float)value
{
  v7 = name;
  objc_msgSend_clear(self, v8, v9);
  v11 = objc_msgSend_initWithName_semantic_(self, v10, v7, semantic);
  v12 = v11;
  if (v11)
  {
    *(v11 + 48) = LODWORD(value);
    *(v11 + 192) = 5;
  }

  return v12;
}

- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic float2:(vector_float2)value
{
  v8 = name;
  objc_msgSend_clear(self, v9, v10);
  v12 = objc_msgSend_initWithName_semantic_(self, v11, v8, semantic);
  v14 = v12;
  if (v12)
  {
    *&v13 = value;
    *(v12 + 48) = v13;
    *(v12 + 192) = 6;
  }

  return v14;
}

- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic float3:(vector_float3)value
{
  v16 = v5;
  v8 = name;
  objc_msgSend_clear(self, v9, v10);
  v12 = objc_msgSend_initWithName_semantic_(self, v11, v8, semantic);
  v13 = v12;
  if (v12)
  {
    v14 = v16;
    HIDWORD(v14) = 0;
    *(v12 + 48) = v14;
    *(v12 + 192) = 7;
  }

  return v13;
}

- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic float4:(vector_float4)value
{
  v7 = name;
  objc_msgSend_clear(self, v8, v9);
  v11 = objc_msgSend_initWithName_semantic_(self, v10, v7, semantic);
  v12 = v11;
  if (v11)
  {
    v11[3] = value;
    v11[12].i64[0] = 8;
  }

  return v12;
}

- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic matrix4x4:(matrix_float4x4)value
{
  v7 = name;
  objc_msgSend_clear(self, v8, v9);
  v11 = objc_msgSend_initWithName_semantic_(self, v10, v7, semantic);
  v12 = v11;
  if (v11)
  {
    v11[1] = value;
    v11[3].columns[0].i64[0] = 9;
  }

  return v12;
}

- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic URL:(NSURL *)URL
{
  v8 = name;
  v9 = URL;
  objc_msgSend_clear(self, v10, v11);
  v13 = objc_msgSend_initWithName_semantic_(self, v12, v8, semantic);
  v14 = v13;
  if (v13)
  {
    objc_storeStrong((v13 + 24), URL);
    v14->_type = 2;
  }

  return v14;
}

- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic string:(NSString *)string
{
  v8 = name;
  v9 = string;
  objc_msgSend_clear(self, v10, v11);
  v15 = objc_msgSend_initWithName_semantic_(self, v12, v8, semantic);
  if (v15)
  {
    v16 = objc_msgSend_copy(v9, v13, v14);
    v17 = v15->_string;
    v15->_string = v16;

    v15->_type = 1;
  }

  return v15;
}

- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic textureSampler:(MDLTextureSampler *)textureSampler
{
  v8 = name;
  v9 = textureSampler;
  objc_msgSend_clear(self, v10, v11);
  v13 = objc_msgSend_initWithName_semantic_(self, v12, v8, semantic);
  v14 = v13;
  if (v13)
  {
    objc_storeStrong((v13 + 32), textureSampler);
    v14->_type = 3;
  }

  return v14;
}

- (MDLMaterialProperty)initWithName:(id)a3 semantic:(unint64_t)a4 float4WithSRGBA:
{
  v14 = v4;
  v7 = a3;
  objc_msgSend_clear(self, v8, v9);
  v11 = objc_msgSend_initWithName_semantic_(self, v10, v7, a4);
  v12 = v11;
  if (v11)
  {
    *(v11 + 48) = v14;
    *(v11 + 192) = 8;
  }

  return v12;
}

- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic color:(CGColorRef)color
{
  v8 = name;
  objc_msgSend_clear(self, v9, v10);
  v12 = objc_msgSend_initWithName_semantic_(self, v11, v8, semantic);
  if (v12)
  {
    v12->_color = CGColorCreateCopy(color);
    v12->_type = 4;
  }

  return v12;
}

- (MDLMaterialProperty)initWithName:(id)a3 buffer:(id)a4 stride:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  objc_msgSend_clear(self, v10, v11);
  v13 = objc_msgSend_initWithName_semantic_(self, v12, v8, 32769);
  v14 = v13;
  if (v13)
  {
    objc_storeStrong((v13 + 136), a4);
    v14->_stride = a5;
    v14->_type = 10;
  }

  return v14;
}

- (MDLMaterialProperty)initWithName:(id)a3 buffer:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_msgSend_clear(self, v9, v10);
  v14 = objc_msgSend_initWithName_semantic_(self, v11, v7, 32769);
  if (v14)
  {
    if (objc_msgSend_type(v8, v12, v13) != 3)
    {
      v15 = NSStringFromSelector(a2);
      v16 = MEMORY[0x277CBEAD8];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      objc_msgSend_raise_format_(v16, v19, @"ModelIOException", @"[%@ %@]: value.type must be MDLMeshBufferTypeCustom", v18, v15);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v14->_buffer, a4);
    }

    else
    {
      NSLog(&cfstr_MdlmeshbufferI.isa);
    }

    v14->_stride = 0;
    v14->_type = 10;
  }

  return v14;
}

- (void)dealloc
{
  color = self->_color;
  if (color)
  {
    CFRelease(color);
    self->_color = 0;
  }

  v4.receiver = self;
  v4.super_class = MDLMaterialProperty;
  [(MDLMaterialProperty *)&v4 dealloc];
}

- (void)setProperties:(MDLMaterialProperty *)property
{
  v14 = property;
  if (self != v14)
  {
    objc_msgSend_clear(self, v4, v5);
    name = v14->_name;
    if (name)
    {
      v8 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v6, name);
      v9 = self->_name;
      self->_name = v8;
    }

    self->_semantic = v14->_semantic;
    v10 = *v14->_anon_40;
    v11 = *&v14->_anon_40[16];
    v12 = *&v14->_anon_40[48];
    *&self->_anon_40[32] = *&v14->_anon_40[32];
    *&self->_anon_40[48] = v12;
    *self->_anon_40 = v10;
    *&self->_anon_40[16] = v11;
    *self->_float = *v14->_float;
    objc_storeStrong(&self->_textureSampler, v14->_textureSampler);
    objc_storeStrong(&self->_url, v14->_url);
    objc_storeStrong(&self->_string, v14->_string);
    self->_type = v14->_type;
    self->_isDefaultValue = v14->_isDefaultValue;
    objc_msgSend_setColor_(self, v13, v14->_color);
  }
}

- (CGColorRef)color
{
  WeakRetained = objc_loadWeakRetained(&self->_overrider);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_overrider);
    color = objc_msgSend_color(v4, v5, v6);
  }

  else
  {
    color = self->_color;
  }

  return color;
}

- (void)setColor:(CGColorRef)color
{
  v5 = self->_color;
  if (v5)
  {
    CFRelease(v5);
    self->_color = 0;
  }

  if (color)
  {
    self->_color = CGColorCreateCopy(color);
  }

  self->_isDefaultValue = 0;
}

- (NSString)stringValue
{
  WeakRetained = objc_loadWeakRetained(&self->_overrider);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_overrider);
    v7 = objc_msgSend_stringValue(v4, v5, v6);
  }

  else
  {
    v7 = self->_string;
  }

  return v7;
}

- (void)setStringValue:(NSString *)stringValue
{
  objc_storeStrong(&self->_string, stringValue);
  self->_type = 1;
  self->_isDefaultValue = 0;
}

- (NSURL)URLValue
{
  WeakRetained = objc_loadWeakRetained(&self->_overrider);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_overrider);
    v7 = objc_msgSend_URLValue(v4, v5, v6);
  }

  else
  {
    v7 = self->_url;
  }

  return v7;
}

- (void)setURLValue:(NSURL *)URLValue
{
  objc_storeStrong(&self->_url, URLValue);
  self->_type = 2;
  self->_isDefaultValue = 0;
}

- (void)setTextureSamplerValue:(MDLTextureSampler *)textureSamplerValue
{
  objc_storeStrong(&self->_textureSampler, textureSamplerValue);
  self->_type = 3;
  self->_isDefaultValue = 0;
}

- (float)floatValue
{
  WeakRetained = objc_loadWeakRetained(&self->_overrider);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_overrider);
    objc_msgSend_floatValue(v4, v5, v6);
    v8 = v7;
  }

  else
  {
    v8 = *self->_float;
  }

  return v8;
}

- (void)setFloatValue:(float)floatValue
{
  *self->_float = floatValue;
  self->_type = 5;
  self->_isDefaultValue = 0;
}

- (float)luminance
{
  WeakRetained = objc_loadWeakRetained(&self->_overrider);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_overrider);
    objc_msgSend_luminance(v4, v5, v6);
    v8 = v7;

    return v8;
  }

  type = self->_type;
  v8 = 0.0;
  if (type > 6)
  {
    if ((type - 7) < 2)
    {
      v11 = vmulq_f64(vcvtq_f64_f32(*self->_float), xmmword_239F9B940);
      return COERCE_FLOAT(*&self->_float[8]) + 0.072187 + v11.f64[1] + v11.f64[0];
    }

    return v8;
  }

  if (type != 4)
  {
    if (type == 5)
    {
      return *self->_float;
    }

    if (type == 6)
    {
      return vaddv_f32(*self->_float) * 0.5;
    }

    return v8;
  }

  color = self->_color;

  return sub_239E848C4(color);
}

- (vector_float2)float2Value
{
  WeakRetained = objc_loadWeakRetained(&self->_overrider);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_overrider);
    objc_msgSend_float2Value(v4, v5, v6);
    v8 = v7;
  }

  else
  {
    v8 = *self->_float;
  }

  return v8;
}

- (vector_float3)float3Value
{
  WeakRetained = objc_loadWeakRetained(&self->_overrider);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_overrider);
    objc_msgSend_float3Value(v4, v5, v6);
  }

  else
  {
    v9 = *self->_float;
  }

  result.i64[1] = v8;
  result.i64[0] = v7;
  return result;
}

- (void)setFloat3Value:(vector_float3)float3Value
{
  HIDWORD(v3) = *&self->_float[12];
  *self->_float = v3;
  self->_type = 7;
  self->_isDefaultValue = 0;
}

- (vector_float4)float4Value
{
  WeakRetained = objc_loadWeakRetained(&self->_overrider);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_overrider);
    objc_msgSend_float4Value(v4, v5, v6);
    v9 = v7;
  }

  else
  {
    v9 = *self->_float;
  }

  return v9;
}

- (void)setFloat4Value:(vector_float4)float4Value
{
  *self->_float = float4Value;
  self->_type = 8;
  self->_isDefaultValue = 0;
}

- (matrix_float4x4)matrix4x4
{
  WeakRetained = objc_loadWeakRetained(&self->_overrider);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_overrider);
    objc_msgSend_matrix4x4(v4, v5, v6);
    v17 = v8;
    v18 = v7;
    v15 = v10;
    v16 = v9;
  }

  else
  {
    v17 = *&self->_anon_40[16];
    v18 = *self->_anon_40;
    v15 = *&self->_anon_40[48];
    v16 = *&self->_anon_40[32];
  }

  v12 = v17;
  v11 = v18;
  v14 = v15;
  v13 = v16;
  result.columns[3] = v14;
  result.columns[2] = v13;
  result.columns[1] = v12;
  result.columns[0] = v11;
  return result;
}

- (__n128)setMatrix4x4Value:(__n128)a3
{
  result[4] = a2;
  result[5] = a3;
  result[6] = a4;
  result[7] = a5;
  result[12].n128_u64[0] = 9;
  result[11].n128_u8[8] = 0;
  return result;
}

- (void)_encodeVector:(id)a3 withCoder:(id)a4 forKey:
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = v4;
  objc_msgSend_encodeBytes_length_forKey_(a3, a2, &v6, 16, a4);
  v5 = *MEMORY[0x277D85DE8];
}

+ (__n128)_decodeVectorWithCoder:(id)a3 forKey:(uint64_t)a4
{
  v9 = 0;
  v5 = a3;
  v7 = objc_msgSend_decodeBytesForKey_returnedLength_(v5, v6, a4, &v9);
  result.n128_u64[0] = 0;
  if (v9 == 16)
  {
    return *v7;
  }

  return result;
}

- (void)_encodeMatrixPropertyWithCoder:(id)a3 forKey:(id)a4
{
  v23 = a3;
  v6 = a4;
  v19 = *self->_anon_40;
  v8 = objc_msgSend_stringByAppendingString_(v6, v7, @".column0");
  objc_msgSend__encodeVector_withCoder_forKey_(self, v9, v23, v8, *&v19);

  v20 = *&self->_anon_40[16];
  v11 = objc_msgSend_stringByAppendingString_(v6, v10, @".column1");
  objc_msgSend__encodeVector_withCoder_forKey_(self, v12, v23, v11, *&v20);

  v21 = *&self->_anon_40[32];
  v14 = objc_msgSend_stringByAppendingString_(v6, v13, @".column2");
  objc_msgSend__encodeVector_withCoder_forKey_(self, v15, v23, v14, *&v21);

  v22 = *&self->_anon_40[48];
  v17 = objc_msgSend_stringByAppendingString_(v6, v16, @".column3");
  objc_msgSend__encodeVector_withCoder_forKey_(self, v18, v23, v17, *&v22);
}

+ (__n128)_decodeMatrixPropertyWithCoder:(void *)a3 forKey:(void *)a4
{
  v6 = a3;
  v7 = a4;
  v9 = objc_msgSend_stringByAppendingString_(v7, v8, @".column0");
  objc_msgSend__decodeVectorWithCoder_forKey_(a1, v10, v6, v9);
  v22 = v11;

  v13 = objc_msgSend_stringByAppendingString_(v7, v12, @".column1");;
  objc_msgSend__decodeVectorWithCoder_forKey_(a1, v14, v6, v13);

  v16 = objc_msgSend_stringByAppendingString_(v7, v15, @".column2");
  objc_msgSend__decodeVectorWithCoder_forKey_(a1, v17, v6, v16);

  v19 = objc_msgSend_stringByAppendingString_(v7, v18, @".column3");
  objc_msgSend__decodeVectorWithCoder_forKey_(a1, v20, v6, v19);

  return v22;
}

- (void)encodeMaterialPropertyWithCoder:(id)a3 forKey:(id)a4 allocator:(id)a5
{
  v41 = a3;
  v8 = a4;
  v9 = a5;
  string = self->_string;
  v12 = objc_msgSend_stringByAppendingString_(v8, v11, @".string");
  objc_msgSend_encodeObject_forKey_(v41, v13, string, v12);

  name = self->_name;
  v16 = objc_msgSend_stringByAppendingString_(v8, v15, @".name");
  objc_msgSend_encodeObject_forKey_(v41, v17, name, v16);

  url = self->_url;
  v20 = objc_msgSend_stringByAppendingString_(v8, v19, @".url");
  objc_msgSend_encodeObject_forKey_(v41, v21, url, v20);

  v40 = *self->_float;
  v23 = objc_msgSend_stringByAppendingString_(v8, v22, @".vector");
  objc_msgSend__encodeVector_withCoder_forKey_(self, v24, v41, v23, *&v40);

  v26 = objc_msgSend_stringByAppendingString_(v8, v25, @".matrix");
  objc_msgSend__encodeMatrixPropertyWithCoder_forKey_(self, v27, v41, v26);

  buffer = self->_buffer;
  v30 = objc_msgSend_stringByAppendingString_(v8, v29, @".buffer");
  objc_msgSend_encodeBuffer_withCoder_forKey_(v9, v31, buffer, v41, v30);

  stride = self->_stride;
  v34 = objc_msgSend_stringByAppendingString_(v8, v33, @".stride");
  objc_msgSend_encodeInteger_forKey_(v41, v35, stride, v34);

  semantic = self->_semantic;
  v38 = objc_msgSend_stringByAppendingString_(v8, v37, @".semantic");
  objc_msgSend_encodeInteger_forKey_(v41, v39, semantic, v38);
}

+ (id)decodeMaterialPropertyWithCoder:(id)a3 forKey:(id)a4 allocator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MDLMaterialProperty);
  v12 = objc_opt_class();
  v14 = objc_msgSend_stringByAppendingString_(v9, v13, @".string");
  v16 = objc_msgSend_decodeObjectOfClass_forKey_(v8, v15, v12, v14);
  string = v11->_string;
  v11->_string = v16;

  v18 = objc_opt_class();
  v20 = objc_msgSend_stringByAppendingString_(v9, v19, @".name");
  v22 = objc_msgSend_decodeObjectOfClass_forKey_(v8, v21, v18, v20);
  name = v11->_name;
  v11->_name = v22;

  v24 = objc_opt_class();
  v26 = objc_msgSend_stringByAppendingString_(v9, v25, @".url");
  v28 = objc_msgSend_decodeObjectOfClass_forKey_(v8, v27, v24, v26);
  url = v11->_url;
  v11->_url = v28;

  v31 = objc_msgSend_stringByAppendingString_(v9, v30, @".vector");
  objc_msgSend__decodeVectorWithCoder_forKey_(a1, v32, v8, v31);
  *v11->_float = v33;

  v35 = objc_msgSend_stringByAppendingString_(v9, v34, @".matrix");
  objc_msgSend__decodeMatrixPropertyWithCoder_forKey_(a1, v36, v8, v35);
  *v11->_anon_40 = v37;
  *&v11->_anon_40[16] = v38;
  *&v11->_anon_40[32] = v39;
  *&v11->_anon_40[48] = v40;

  v42 = objc_msgSend_stringByAppendingString_(v9, v41, @".buffer");
  v44 = objc_msgSend_decodeBufferWithCoder_forKey_(v10, v43, v8, v42);
  buffer = v11->_buffer;
  v11->_buffer = v44;

  v47 = objc_msgSend_stringByAppendingString_(v9, v46, @".stride");
  v11->_stride = objc_msgSend_decodeIntegerForKey_(v8, v48, v47);

  v11->_semantic = objc_msgSend_decodeIntegerForKey_(v8, v49, @".semantic");

  return v11;
}

- (void)setMatrix4x4:(matrix_float4x4)matrix4x4
{
  *&self[1].super.isa = matrix4x4.columns[0];
  *&self[1]._name = matrix4x4.columns[1];
  *&self[1]._textureSampler = matrix4x4.columns[2];
  *self[1]._float = matrix4x4.columns[3];
}

@end