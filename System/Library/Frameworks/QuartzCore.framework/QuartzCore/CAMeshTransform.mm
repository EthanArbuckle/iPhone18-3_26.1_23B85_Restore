@interface CAMeshTransform
+ (CAMeshTransform)meshTransformWithVertexCount:(unint64_t)count vertices:(const CAMeshVertex *)vertices faceCount:(unint64_t)faceCount faces:(const CAMeshFace *)faces depthNormalization:(id)normalization;
+ (void)CAMLParserEndElement:(id)element content:(id)content;
+ (void)CAMLParserStartElement:(id)element;
- (BOOL)_constructWithData:(id)data;
- (CAMeshFace)faceAtIndex:(SEL)index;
- (CAMeshTransform)initWithCoder:(id)coder;
- (CAMeshTransform)initWithVertexCount:(unint64_t)count vertices:(const CAMeshVertex *)vertices faceCount:(unint64_t)faceCount faces:(const CAMeshFace *)faces depthNormalization:(id)normalization;
- (CAMeshVertex)vertexAtIndex:(SEL)index;
- (NSString)depthNormalization;
- (Object)CA_copyRenderValue;
- (id)CA_interpolateValue:(id)value byFraction:(float)fraction;
- (id)CA_interpolateValues:(id)values :(id)a4 :(id)a5 interpolator:(const ValueInterpolator *)interpolator;
- (id)_data;
- (id)_init;
- (id)_initWithMeshTransform:(id)transform;
- (id)_subdivideToDepth:(int64_t)depth;
- (id)inverseMesh;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)CA_copyNumericValue:(double *)value;
- (unint64_t)CA_numericValueCount;
- (void)dealloc;
- (void)encodeWithCAMLWriter:(id)writer;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CAMeshTransform

- (id)CA_interpolateValues:(id)values :(id)a4 :(id)a5 interpolator:(const ValueInterpolator *)interpolator
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (values)
  {
    v7 = *(values + 1);
  }

  else
  {
    v7 = 0;
  }

  impl = self->_impl;
  v9 = *(a4 + 1);
  if (a5)
  {
    a5 = *(a5 + 1);
  }

  v13[0] = 0;
  CA::Render::mix_objects(v13, v7, impl, v9, a5, interpolator);
  v10 = interpolatedMeshTransform(a4, v13[0]);
  v11 = v13[0];
  if (v13[0] && atomic_fetch_add(v13[0] + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v11 + 16))(v11);
  }

  return v10;
}

+ (void)CAMLParserEndElement:(id)element content:(id)content
{
  elementValue = [element elementValue];
  if (elementValue && !elementValue[1] && ([elementValue _constructWithData:{objc_msgSend(content, "dataUsingEncoding:", 4)}] & 1) == 0)
  {

    [element setElementValue:0];
  }
}

+ (void)CAMLParserStartElement:(id)element
{
  v4 = [element attributeForKey:@"src" remove:1];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v4 relativeToURL:{objc_msgSend(element, "baseURL")}];
    if (v5)
    {
      v6 = v5;
      v7 = [element willLoadResourceFromURL:v5];
      if (v7 && (v8 = v7, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [element setElementValue:v8];
      }

      else
      {
        v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v6];
        if (v9)
        {
          v10 = v9;
          _init = [[CAMeshTransform alloc] _init];
          if ([_init _constructWithData:v10])
          {

            if (_init)
            {
              [element setElementValue:_init];
              [element didLoadResource:_init fromURL:v6];
            }
          }

          else
          {
          }
        }
      }
    }
  }

  elementValue = [element elementValue];
  if (!elementValue)
  {
    elementValue = [[CAMeshTransform alloc] _init];
    [element setElementValue:elementValue];
  }

  v13 = [element attributeForKey:@"subdivisionSteps" remove:1];
  if (v13)
  {
    *(elementValue + 3) = [v13 intValue];
  }

  v14 = [element attributeForKey:@"replicatesEdges" remove:1];
  if (v14)
  {
    *(elementValue + 32) = [v14 BOOLValue];
  }

  v15 = [element attributeForKey:@"preallocatesBounds" remove:1];
  if (v15)
  {
    *(elementValue + 33) = [v15 BOOLValue];
  }

  v16 = [element attributeForKey:@"depthNormalization" remove:1];
  if (v16)
  {
    setDepthNormalization(elementValue, v16);
  }

  v17 = *(elementValue + 1);
  if (v17)
  {
    v17[12] = vmovn_s64(*(elementValue + 1));
    v17[13].i8[4] = *(elementValue + 32);
    v17[13].i8[5] = *(elementValue + 33);
  }
}

+ (CAMeshTransform)meshTransformWithVertexCount:(unint64_t)count vertices:(const CAMeshVertex *)vertices faceCount:(unint64_t)faceCount faces:(const CAMeshFace *)faces depthNormalization:(id)normalization
{
  v7 = [[self alloc] initWithVertexCount:count vertices:vertices faceCount:faceCount faces:faces depthNormalization:normalization];

  return v7;
}

- (id)CA_interpolateValue:(id)value byFraction:(float)fraction
{
  v10 = *MEMORY[0x1E69E9840];
  v9.var0 = fraction;
  memset(&v9.var1, 0, 112);
  v8 = 0;
  CA::Render::mix_objects(&v8, self->_impl, *(value + 1), &v9);
  v5 = interpolatedMeshTransform(value, v8);
  v6 = v8;
  if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v6 + 16))(v6);
  }

  return v5;
}

- (void)encodeWithCAMLWriter:(id)writer
{
  v5 = [writer URLStringForResource:self];
  if (v5)
  {

    [writer setElementAttribute:v5 forKey:@"src"];
  }

  else
  {
    if (self->_normalization != 1)
    {
      [writer setElementAttribute:-[CAMeshTransform depthNormalization](self forKey:{"depthNormalization"), @"depthNormalization"}];
    }

    if ((self->_subdivisionSteps & 0x8000000000000000) == 0)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%d", self->_subdivisionSteps];
      [writer setElementAttribute:v6 forKey:@"subdivisionSteps"];
    }

    if (self->_replicatesEdges)
    {
      [writer setElementAttribute:@"1" forKey:@"replicatesEdges"];
    }

    if (self->_preallocatesBounds)
    {
      [writer setElementAttribute:@"1" forKey:@"preallocatesBounds"];
    }

    _data = [(CAMeshTransform *)self _data];
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:_data encoding:4];
    [writer setElementContent:v8];
  }
}

- (CAMeshTransform)initWithCoder:(id)coder
{
  _init = [(CAMeshTransform *)self _init];
  if (_init)
  {
    if ([coder containsValueForKey:@"subdivisionSteps"])
    {
      _init->_subdivisionSteps = [coder decodeIntForKey:@"subdivisionSteps"];
    }

    if ([coder containsValueForKey:@"replicatesEdges"])
    {
      _init->_replicatesEdges = [coder decodeBoolForKey:@"replicatesEdges"];
    }

    if ([coder containsValueForKey:@"preallocatesBounds"])
    {
      _init->_preallocatesBounds = [coder decodeBoolForKey:@"preallocatesBounds"];
    }

    v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"meshData"];
    if (v5 && [(CAMeshTransform *)_init _constructWithData:v5])
    {
      v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"depthNormalization"];
      setDepthNormalization(_init, v6);
    }

    else
    {

      return 0;
    }
  }

  return _init;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:-[CAMeshTransform _data](self forKey:{"_data"), @"meshData"}];
  if (self->_normalization != 1)
  {
    [coder encodeObject:-[CAMeshTransform depthNormalization](self forKey:{"depthNormalization"), @"depthNormalization"}];
  }

  if ((self->_subdivisionSteps & 0x8000000000000000) == 0)
  {
    [coder encodeInt:? forKey:?];
  }

  if (self->_replicatesEdges)
  {
    [coder encodeBool:1 forKey:@"replicatesEdges"];
  }

  if (self->_preallocatesBounds)
  {

    [coder encodeBool:1 forKey:@"preallocatesBounds"];
  }
}

- (id)inverseMesh
{
  _init = [objc_alloc(objc_opt_class()) _init];
  v4 = CA::Render::MeshTransform::retain_inverse_mesh(self->_impl);
  *(_init + 8) = v4;
  if (v4)
  {
    v5 = *(v4 + 25);
    *(_init + 16) = *(v4 + 24);
    *(_init + 24) = v5;
    *(_init + 32) = *(v4 + 108);
    *(_init + 33) = *(v4 + 109);
  }

  return _init;
}

- (id)_subdivideToDepth:(int64_t)depth
{
  selfCopy = self;
  v4 = CA::Render::MeshTransform::retain_subdivided_mesh(self->_impl, depth);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (v4 != selfCopy->_impl)
  {
    _init = [objc_alloc(objc_opt_class()) _init];
    if (atomic_fetch_add(v5 + 2, 1u))
    {
      v7 = *(v5 + 25);
      *(_init + 16) = *(v5 + 24);
      *(_init + 24) = v7;
      *(_init + 32) = *(v5 + 108);
      *(_init + 33) = *(v5 + 109);
      v8 = v5;
    }

    else
    {
      v8 = 0;
      atomic_fetch_add(v5 + 2, 0xFFFFFFFF);
    }

    *(_init + 8) = v8;
    selfCopy = _init;
  }

  if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 16))(v5);
  }

  return selfCopy;
}

- (id)_data
{
  v21 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(0, 0);
  v4 = impl[3];
  if (impl[4] != v4)
  {
    v5 = 0;
    v6 = 16;
    do
    {
      v7 = CACreateStringWithFloatArray(v4 + v6 - 16, 2uLL, 1.0e-10);
      v8 = CACreateStringWithFloatArray(impl[3] + v6, 3uLL, 1.0e-10);
      CFStringAppendFormat(Mutable, 0, @"[%@] [%@] v ", v7, v8);
      CFRelease(v8);
      CFRelease(v7);
      ++v5;
      v4 = impl[3];
      v6 += 32;
    }

    while (v5 < (impl[4] - v4) >> 5);
  }

  v9 = impl[6];
  if (impl[7] != v9)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v19 = vcvtq_f32_u32(*(v9 + 16 * v11));
      v12 = (impl[9] + v10);
      v13 = v12[5];
      v20[0] = v12[1];
      v20[1] = v13;
      v14 = v12[13];
      v20[2] = v12[9];
      v20[3] = v14;
      v15 = CACreateStringWithFloatArray(&v19, 4uLL, 1.0e-10);
      v16 = CACreateStringWithFloatArray(v20, 4uLL, 1.0e-10);
      CFStringAppendFormat(Mutable, 0, @"[%@] [%@] f ", v15, v16);
      CFRelease(v16);
      CFRelease(v15);
      ++v11;
      v9 = impl[6];
      v10 += 64;
    }

    while (v11 < (impl[7] - v9) >> 4);
  }

  v17 = [(__CFString *)Mutable dataUsingEncoding:4];
  CFRelease(Mutable);
  return v17;
}

- (BOOL)_constructWithData:(id)data
{
  v89 = *MEMORY[0x1E69E9840];
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v5 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xD0uLL, 0xDEEC3011uLL);
  if (!v5)
  {
    return v5;
  }

  v6 = v5;
  *(v5 + 2) = 1;
  ++dword_1ED4EAAC4;
  *v5 = &unk_1EF2010D8;
  *(v5 + 12) = 35;
  *(v5 + 24) = 0u;
  v74 = (v5 + 24);
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 84) = 0u;
  *(v5 + 100) = 0xFFFFFFFFLL;
  *(v5 + 54) = 0;
  *(v5 + 25) = 0;
  v7 = [data length];
  bytes = [data bytes];
  v76 = bytes;
  if (v7 < 1)
  {
    goto LABEL_72;
  }

  v9 = bytes;
  v10 = 0;
  v11 = -bytes;
  v75 = -bytes;
  while (2)
  {
    v12 = &bytes[v11];
    while (1)
    {
      v13 = *bytes;
      if (v13 <= 0x2E)
      {
        if (((1 << v13) & 0x100100003600) != 0)
        {
          goto LABEL_12;
        }

        if (((1 << v13) & 0x680000000000) != 0)
        {
          goto LABEL_15;
        }
      }

      v14 = v13 - 48;
      if (v14 > 0x39)
      {
        goto LABEL_26;
      }

      if (((1 << (v13 - 48)) & 0x280000000000) == 0)
      {
        break;
      }

LABEL_12:
      v76 = ++bytes;
      if (++v12 >= v7)
      {
        goto LABEL_72;
      }
    }

    if (((1 << (v13 - 48)) & 0x2000000020003FFLL) == 0)
    {
      if (v14 == 54)
      {
        if (v10 == 4 || v10 == 8)
        {
          v79 = 0u;
          v80 = 0u;
          v15 = 0.0;
          *buf = 0u;
          v78 = 0u;
          if (v10 == 8)
          {
            v16 = *&v83;
            v17 = *(&v83 + 1);
            *&buf[4] = v16;
            *(&v78 + 1) = v17;
            v18 = *&v84;
            *(&v79 + 1) = v18;
            v15 = *(&v84 + 1);
          }

          v19 = v81.f64[0];
          v20 = v81.f64[1];
          v21 = v82.f64[0];
          v22 = v82.f64[1];
          *(&v80 + 1) = v15;
          v23 = v6[7];
          v24 = v6[8];
          if (v23 >= v24)
          {
            v73 = v82.f64[1];
            v32 = v6[6];
            v33 = (v23 - *&v32) >> 4;
            v34 = v33 + 1;
            if ((v33 + 1) >> 60)
            {
              std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
            }

            v35 = v24 - *&v32;
            if (v35 >> 3 > v34)
            {
              v34 = v35 >> 3;
            }

            if (v35 >= 0x7FFFFFFFFFFFFFF0)
            {
              v36 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v36 = v34;
            }

            if (v36)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Render::MeshFace>>(v36);
            }

            v41 = (16 * v33);
            *v41 = v19;
            v41[1] = v20;
            v41[2] = v21;
            v41[3] = v73;
            v25 = 16 * v33 + 16;
            v42 = v6[6];
            v43 = *&v6[7] - v42;
            v44 = (16 * v33 - v43);
            memcpy(v44, v42, v43);
            v45 = v6[6];
            v6[6] = v44;
            v6[7] = v25;
            v6[8] = 0;
            if (v45)
            {
              operator delete(v45);
            }
          }

          else
          {
            *v23 = v19;
            v23[1] = v20;
            v25 = (v23 + 4);
            v23[2] = v21;
            v23[3] = v22;
          }

          v46 = 0;
          v6[7] = v25;
          v47 = v6[10];
          do
          {
            v48 = v6[11];
            if (v47 >= v48)
            {
              v49 = v6[9];
              v50 = (v47 - *&v49) >> 4;
              if ((v50 + 1) >> 60)
              {
                std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
              }

              v51 = v48 - *&v49;
              v52 = v51 >> 3;
              if (v51 >> 3 <= (v50 + 1))
              {
                v52 = v50 + 1;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v53 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v53 = v52;
              }

              if (v53)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Render::MeshFace>>(v53);
              }

              v54 = (16 * v50);
              *v54 = *&buf[v46];
              v47 = (16 * v50 + 16);
              v55 = v6[9];
              v56 = *&v6[10] - v55;
              v57 = 16 * v50 - v56;
              memcpy(v54 - v56, v55, v56);
              v58 = v6[9];
              v6[9] = v57;
              v6[10] = v47;
              v6[11] = 0;
              if (v58)
              {
                operator delete(v58);
              }

              v11 = v75;
            }

            else
            {
              *v47++ = *&buf[v46];
            }

            v6[10] = v47;
            v46 += 16;
          }

          while (v46 != 64);
          v10 = 0;
LABEL_71:
          bytes = ++v76;
          goto LABEL_17;
        }

        if (x_log_get_api::once[0] != -1)
        {
          dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
        }

        v71 = x_log_get_api::log;
        if (!os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_81;
        }

        *buf = 0;
        v68 = "Invalid number of arguments to 'f' mesh operator";
      }

      else
      {
LABEL_26:
        if (v13 != 118)
        {
          if (x_log_get_api::once[0] != -1)
          {
            dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
          }

          v66 = x_log_get_api::log;
          if (!os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_81;
          }

          v67 = *v76;
          *buf = 67109120;
          *&buf[4] = v67;
          v68 = "Invalid mesh operator: %c";
          v69 = v66;
          v70 = 8;
          goto LABEL_88;
        }

        if (v10 == 5)
        {
          v26 = vcvt_f32_f64(v81);
          v27 = vcvt_f32_f64(v82);
          v28 = *&v83;
          v29 = v6[4];
          v30 = v6[5];
          if (v29 >= *&v30)
          {
            v37 = (v29 - *v74) >> 5;
            v38 = v37 + 1;
            if ((v37 + 1) >> 59)
            {
              std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
            }

            v39 = *&v30 - *v74;
            if (v39 >> 4 > v38)
            {
              v38 = v39 >> 4;
            }

            if (v39 >= 0x7FFFFFFFFFFFFFE0)
            {
              v40 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v40 = v38;
            }

            if (v40)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Render::MeshVertex>>(v40);
            }

            v59 = 32 * v37;
            *v59 = v26;
            *(v59 + 8) = 0;
            *(v59 + 16) = v27;
            *(v59 + 24) = v28;
            *(v59 + 28) = 1065353216;
            v60 = v6[3];
            v61 = v6[4];
            v62 = 32 * v37 + v60 - v61;
            if (v60 != v61)
            {
              v63 = (v59 + v60 - v61);
              do
              {
                v64 = *v60;
                v65 = *(v60 + 1);
                v60 += 32;
                *v63 = v64;
                v63[1] = v65;
                v63 += 2;
              }

              while (v60 != v61);
              v60 = *v74;
            }

            v31 = v59 + 32;
            v6[3] = v62;
            v6[4] = (v59 + 32);
            v6[5] = 0;
            if (v60)
            {
              operator delete(v60);
            }
          }

          else
          {
            *v29 = v26;
            v29[1] = 0;
            v29[2] = v27;
            v29[3].f32[0] = v28;
            v31 = &v29[4];
            v29[3].i32[1] = 1065353216;
          }

          v10 = 0;
          v6[4] = v31;
          goto LABEL_71;
        }

        if (x_log_get_api::once[0] != -1)
        {
          dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
        }

        v71 = x_log_get_api::log;
        if (!os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_81;
        }

        *buf = 0;
        v68 = "Invalid number of arguments to 'v' mesh operator";
      }

LABEL_87:
      v69 = v71;
      v70 = 2;
LABEL_88:
      _os_log_error_impl(&dword_183AA6000, v69, OS_LOG_TYPE_ERROR, v68, buf, v70);
LABEL_81:
      (*(*v6 + 8))(v6);
      LOBYTE(v5) = 0;
      return v5;
    }

LABEL_15:
    if (v10 == 16)
    {
      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v71 = x_log_get_api::log;
      if (!os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_81;
      }

      *buf = 0;
      v68 = "Invalid number of numeric values in mesh";
      goto LABEL_87;
    }

    v81.f64[v10++] = x_strtod(bytes, &v76, &v9[v7]);
    bytes = v76;
LABEL_17:
    if (bytes - v9 < v7)
    {
      continue;
    }

    break;
  }

LABEL_72:
  self->_impl = v6;
  v6[12] = vmovn_s64(*&self->_normalization);
  v6[13].i8[4] = self->_replicatesEdges;
  v6[13].i8[5] = self->_preallocatesBounds;
  LOBYTE(v5) = 1;
  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CAMutableMeshTransform alloc];

  return [(CAMeshTransform *)v4 _initWithMeshTransform:self];
}

- (unint64_t)CA_copyNumericValue:(double *)value
{
  impl = self->_impl;
  v6 = impl[3];
  v5 = impl[4];
  v7 = impl[6];
  v8 = impl[7];
  LODWORD(v3) = *(impl + 24);
  v9 = v3;
  v10 = *(impl + 25);
  value[2] = v9;
  value[3] = v10;
  LOBYTE(v9) = *(impl + 108);
  LOBYTE(v10) = *(impl + 109);
  value[4] = *&v9;
  value[5] = *&v10;
  v11 = value + 6;
  v13 = v5 - v6;
  v12 = v13 == 0;
  v14 = v13 >> 5;
  v15 = (v13 >> 5);
  v16 = (v8 - v7) >> 4;
  *value = v15;
  value[1] = v16;
  if (!v12)
  {
    if (v14 <= 1)
    {
      v14 = 1;
    }

    v17 = (v6 + 24);
    do
    {
      v18 = vcvtq_f64_f32(*(v17 - 2));
      *v11 = vcvtq_f64_f32(*(v17 - 6));
      *(v11 + 1) = v18;
      v19 = *v17;
      v17 += 8;
      v20 = v11 + 5;
      v11[4] = v19;
      v11 += 5;
      --v14;
    }

    while (v14);
    v11 = v20;
  }

  if (v8 != v7)
  {
    if (v16 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = (v8 - v7) >> 4;
    }

    v22 = (v7 + 8);
    do
    {
      v23 = *(v22 - 1);
      v24.i64[0] = v23;
      v24.i64[1] = HIDWORD(v23);
      v25 = vcvtq_f64_u64(v24);
      v26 = v11 + 4;
      v24.i64[0] = *v22;
      v24.i64[1] = HIDWORD(*v22);
      *v11 = v25;
      *(v11 + 1) = vcvtq_f64_u64(v24);
      v22 += 2;
      v11 += 4;
      --v21;
    }

    while (v21);
    v11 = v26;
  }

  return v11 - value;
}

- (unint64_t)CA_numericValueCount
{
  impl = self->_impl;
  v3 = impl[4] - impl[3];
  return (v3 >> 3) + (v3 >> 5) + ((impl[7] - impl[6]) >> 2) + 6;
}

- (Object)CA_copyRenderValue
{
  result = self->_impl;
  if (result)
  {
    p_var1 = &result->var1;
    if (!atomic_fetch_add(&result->var1.var0.var0, 1u))
    {
      result = 0;
      atomic_fetch_add(&p_var1->var0.var0, 0xFFFFFFFF);
    }
  }

  return result;
}

- (NSString)depthNormalization
{
  v2 = self->_normalization - 2;
  if (v2 > 4)
  {
    return @"none";
  }

  else
  {
    return *(&off_1E6DEC8C0 + v2);
  }
}

- (CAMeshFace)faceAtIndex:(SEL)index
{
  v4 = 0;
  v5 = *&self->var0[2];
  v6 = *(v5 + 48);
  v7 = *(v5 + 72);
  *&retstr->var1[2] = 0;
  *retstr->var0 = *(v6 + 16 * a4);
  *retstr->var1 = 0;
  var1 = retstr->var1;
  v9 = v7 + (a4 << 6) + 4;
  do
  {
    var1[v4] = *(v9 + 1 * v4);
    ++v4;
  }

  while (v4 != 4);
  return self;
}

- (CAMeshVertex)vertexAtIndex:(SEL)index
{
  v4 = (*(*&self->var0.y + 24) + 32 * a4);
  v5 = vcvtq_f64_f32(v4[2]);
  retstr->var0 = vcvtq_f64_f32(*v4);
  *&retstr->var1.x = v5;
  retstr->var1.z = v4[3].f32[0];
  return self;
}

- (id)_initWithMeshTransform:(id)transform
{
  _init = [(CAMeshTransform *)self _init];
  if (_init)
  {
    v5 = *(transform + 1);
    if (!v5)
    {
      goto LABEL_7;
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v6 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xD0uLL, 0xDEEC3011uLL);
    if (v6)
    {
      v7 = CA::Render::MeshTransform::MeshTransform(v6, v5);
      v8 = *(v7 + 24);
      v9 = *(v7 + 25);
      _init[1] = v7;
      _init[2] = v8;
      _init[3] = v9;
      *(_init + 32) = *(v7 + 108);
      *(_init + 33) = *(v7 + 109);
    }

    else
    {
LABEL_7:

      return 0;
    }
  }

  return _init;
}

- (CAMeshTransform)initWithVertexCount:(unint64_t)count vertices:(const CAMeshVertex *)vertices faceCount:(unint64_t)faceCount faces:(const CAMeshFace *)faces depthNormalization:(id)normalization
{
  _init = [(CAMeshTransform *)self _init];
  if (_init)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v13 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xD0uLL, 0xDEEC3011uLL);
    if (v13)
    {
      v14 = v13;
      CA::Render::MeshTransform::MeshTransform(v13, count, faceCount, -1);
      if (count)
      {
        p_z = &vertices->var1.z;
        v16 = (*&v14[3] + 28);
        do
        {
          v17 = *(p_z - 2);
          *(v16 - 7) = vcvt_f32_f64(*(p_z - 4));
          *(v16 - 3) = vcvt_f32_f64(v17);
          v18 = *p_z;
          p_z += 5;
          v19 = v18;
          *(v16 - 1) = v19;
          *v16 = 1.0;
          v16 += 8;
          --count;
        }

        while (count);
      }

      if (faceCount)
      {
        v20 = 0;
        v21 = v14[6];
        v22 = *&v14[9] + 4;
        do
        {
          for (i = 0; i != 4; ++i)
          {
            *(*&v21 + i * 4) = faces->var0[i];
            *(v22 + 1 * i) = faces->var1[i];
          }

          ++v20;
          v22 += 64;
          ++faces;
          *&v21 += 16;
        }

        while (v20 != faceCount);
      }

      setDepthNormalization(_init, normalization);
      v14[1].i32[1] &= 0xFFFFD4FF;
      *(_init + 1) = v14;
      v14[12] = vmovn_s64(*(_init + 1));
      v14[13].i8[4] = *(_init + 32);
      v14[13].i8[5] = *(_init + 33);
    }

    else
    {

      return 0;
    }
  }

  return _init;
}

- (id)_init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = CAMeshTransform;
  result = [(CAMeshTransform *)&v3 init];
  if (result)
  {
    *(result + 1) = xmmword_183E20F60;
  }

  return result;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl && atomic_fetch_add(impl + 2, 0xFFFFFFFF) == 1)
  {
    (*(*impl + 16))(impl, a2);
  }

  v4.receiver = self;
  v4.super_class = CAMeshTransform;
  [(CAMeshTransform *)&v4 dealloc];
}

@end