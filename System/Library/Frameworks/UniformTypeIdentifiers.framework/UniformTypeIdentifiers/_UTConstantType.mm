@interface _UTConstantType
+ (Ivar)_validateThisClass;
+ (objc_ivar)_validateThisClass;
+ (void)_validateThisClass;
- (BOOL)_isRealized;
- (BOOL)conformsToType:(id)type;
- (id)_preferredTagOfClass:(id)class;
- (id)_typeRecord;
- (id)debugDescription;
- (id)supertypes;
- (id)tags;
- (unint64_t)_getEnclosureColors:(UTHardwareColor *)colors count:(unint64_t)count;
- (void)_unrealize;
@end

@implementation _UTConstantType

- (id)_typeRecord
{
  os_unfair_recursive_lock_lock_with_options();
  p_typeRecord = &self->super._typeRecord;
  typeRecord = self->super._typeRecord;
  v5 = MEMORY[0x1E695E738];
  if (!typeRecord)
  {
    v6 = [MEMORY[0x1E69636B0] typeRecordWithIdentifier:self->_fields.identifier];
    v7 = *p_typeRecord;
    *p_typeRecord = v6;

    _UTDetachTypeRecords(&self->super._typeRecord, 1);
    typeRecord = *p_typeRecord;
    if (!*p_typeRecord)
    {
      __UNIFORM_TYPE_IDENTIFIERS_FAILED_TO_REALIZE_A_COMPILE_TIME_CONSTANT_TYPE_OBJECT__(self);
      objc_storeStrong(&self->super._typeRecord, *v5);
      typeRecord = *p_typeRecord;
    }
  }

  v8 = typeRecord;
  v9 = v8;
  if (v8 == *v5)
  {

    v9 = 0;
  }

  os_unfair_recursive_lock_unlock();

  return v9;
}

+ (void)_validateThisClass
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = UniformTypeIdentifiers::CoreTypes::log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    Name = class_getName(self);
    v20 = 2082;
    v21 = "{Constant=^v{Fields=@b2b1b1b4[7c]}}";
    _os_log_impl(&dword_1AC1AE000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s instance C structure encoding: %{public}s", buf, 0x16u);
  }

  for (i = self; i && i != objc_opt_class(); i = class_getSuperclass(i))
  {
    *buf = 0;
    v5 = class_copyIvarList(i, buf);
    if (v5)
    {
      if (*buf)
      {
        operator new();
      }

      free(v5);
    }
  }

  v6 = std::__stable_sort<std::_ClassicAlgPolicy,+[_UTConstantType _validateThisClass]::$_0 &,std::__wrap_iter<objc_ivar **>>(0, 0, 0, 0, 0);
  v7 = UniformTypeIdentifiers::CoreTypes::log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = class_getName(self);
    *buf = 136446210;
    Name = v8;
    _os_log_impl(&dword_1AC1AE000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s subclass ivar encoding:", buf, 0xCu);
  }

  v10 = UniformTypeIdentifiers::CoreTypes::log(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    InstanceSize = class_getInstanceSize(self);
    *buf = 134217984;
    Name = InstanceSize;
    _os_log_impl(&dword_1AC1AE000, v10, OS_LOG_TYPE_DEFAULT, "   Size: %zu bytes", buf, 0xCu);
  }

  InstanceVariable = class_getInstanceVariable(self, "_fields");
  if (!InstanceVariable)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UTCoreTypes.mm" lineNumber:356 description:{@"Failed to find %s::_fields ivar description.", class_getName(self)}];
  }

  Offset = ivar_getOffset(InstanceVariable);
  if (Offset != 16)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UTCoreTypes.mm" lineNumber:362 description:{@"Offset of %s::_fields is %zu at runtime, but we expected %zu during compilation. UTType may have had ivars added unintentionally.", class_getName(self), Offset, 16}];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)conformsToType:(id)type
{
  if (self == type)
  {
    return 1;
  }

  if ((*(&self->_fields + 8) & 8) != 0)
  {
    identifier = self->_fields.identifier;
    identifier = [type identifier];
    v3 = _UTIdentifiersAreEqual(identifier, identifier);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UTConstantType;
    return [(UTType *)&v7 conformsToType:?];
  }

  return v3;
}

- (id)supertypes
{
  if ((*(&self->_fields + 8) & 8) != 0)
  {
    supertypes = [MEMORY[0x1E695DFD8] set];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = _UTConstantType;
    supertypes = [(UTType *)&v4 supertypes];
  }

  return supertypes;
}

- (id)tags
{
  if ((*(&self->_fields + 8) & 4) != 0)
  {
    tags = MEMORY[0x1E695E0F8];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = _UTConstantType;
    tags = [(UTType *)&v5 tags];
  }

  return tags;
}

- (unint64_t)_getEnclosureColors:(UTHardwareColor *)colors count:(unint64_t)count
{
  if ((*(&self->_fields + 8) & 3) == 2 || (*(&self->_fields + 8) & 4) != 0)
  {
    return 0;
  }

  v9 = v4;
  v10 = v5;
  v8.receiver = self;
  v8.super_class = _UTConstantType;
  return [(UTType *)&v8 _getEnclosureColors:colors count:count];
}

- (BOOL)_isRealized
{
  os_unfair_recursive_lock_lock_with_options();
  typeRecord = self->super._typeRecord;
  os_unfair_recursive_lock_unlock();
  return typeRecord != 0;
}

- (void)_unrealize
{
  os_unfair_recursive_lock_lock_with_options();
  typeRecord = self->super._typeRecord;
  self->super._typeRecord = 0;

  os_unfair_recursive_lock_unlock();
}

- (id)_preferredTagOfClass:(id)class
{
  if ([class isEqual:@"public.filename-extension"])
  {
    if (_UTAlwaysUseSlowPathForPreferredExtension == 1)
    {
      selfCopy = self;
      v8 = &selfCopy;
LABEL_20:
      v8->super_class = _UTConstantType;
      [(objc_super *)v8 _preferredTagOfClass:class, v10.receiver, v10.super_class, v11.receiver, v11.super_class, v12.receiver];
      goto LABEL_21;
    }

    v5 = (*(&self->_fields + 8) & 3) != 1 && (*(&self->_fields + 8) & 4) == 0;
    if (v5 && strncmp(self->_fields.preferredExtension, "\x01none", 7uLL))
    {
      if (self->_fields.preferredExtension[0])
      {
        v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:self->_fields.preferredExtension length:strnlen(self->_fields.preferredExtension encoding:7uLL) freeWhenDone:{4, 0}];
        goto LABEL_22;
      }

      v12.receiver = self;
      v8 = &v12;
      goto LABEL_20;
    }

LABEL_16:
    v6 = 0;
    goto LABEL_22;
  }

  if ([class isEqual:@"public.mime-type"])
  {
    if ((*(&self->_fields + 8) & 3) == 1 || (*(&self->_fields + 8) & 4) != 0)
    {
      goto LABEL_16;
    }

    [(UTType *)&v11 _preferredTagOfClass:class, v10.receiver, v10.super_class, self, _UTConstantType, v12.receiver];
  }

  else
  {
    [(UTType *)&v10 _preferredTagOfClass:class, self, _UTConstantType, v11.receiver, v11.super_class, v12.receiver];
  }

  v6 = LABEL_21:;
LABEL_22:

  return v6;
}

- (id)debugDescription
{
  if (qword_1ED40DC38 != -1)
  {
    dispatch_once(&qword_1ED40DC38, &__block_literal_global_44);
  }

  if (_MergedGlobals_3 == 1)
  {
    v3 = *(&self->_fields + 8) & 3;
    v4 = &stru_1F20ECC30;
    if (v3 == 2)
    {
      v4 = @"hw=no, ";
    }

    if (v3 == 1)
    {
      v5 = @"hw=yes, ";
    }

    else
    {
      v5 = v4;
    }

    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    Class = object_getClass(self);
    identifier = self->_fields.identifier;
    _isRealized = [(_UTConstantType *)self _isRealized];
    v10 = *(&self->_fields + 8);
    _constantIndex = [(UTType *)self _constantIndex];
    v12 = @"yes";
    if ((v10 & 8) != 0)
    {
      v13 = @"yes";
    }

    else
    {
      v13 = @"no";
    }

    if ((v10 & 4) != 0)
    {
      v14 = @"no";
    }

    else
    {
      v14 = @"yes";
    }

    if (!_isRealized)
    {
      v12 = @"no";
    }

    v15 = [v6 initWithFormat:@"<%@ %p> { id=%@, r=%@, t=%@, r=%@, %@idx=%li }", Class, self, identifier, v12, v14, v13, v5, _constantIndex];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = _UTConstantType;
    v15 = [(UTType *)&v17 debugDescription];
  }

  return v15;
}

+ (Ivar)_validateThisClass
{
  v91 = a5;
  if (a5)
  {
    v11 = result;
    while (a4 > a7 && v91 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v12 = 0;
      v13 = -a4;
      while (1)
      {
        v14 = v11[v12];
        Offset = ivar_getOffset(*a2);
        result = ivar_getOffset(v14);
        if (Offset < result)
        {
          break;
        }

        ++v12;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v17 = &v11[v12];
      v18 = v91;
      v88 = v11;
      v89 = a3;
      v87 = &v11[v12];
      if (-v13 >= v91)
      {
        if (v13 == -1)
        {
          v83 = v11[v12];
          v11[v12] = *a2;
          *a2 = v83;
          return result;
        }

        v29 = -v13 / 2;
        v30 = &v11[v29];
        v21 = a2;
        if (a2 != a3)
        {
          v31 = a3 - a2;
          v21 = a2;
          do
          {
            v32 = &v21[v31 >> 1];
            v34 = *v32;
            v33 = v32 + 1;
            v35 = v30[v12];
            v36 = ivar_getOffset(v34);
            v37 = ivar_getOffset(v35);
            if (v36 >= v37)
            {
              v31 >>= 1;
            }

            else
            {
              v31 += ~(v31 >> 1);
            }

            if (v36 < v37)
            {
              v21 = v33;
            }
          }

          while (v31);
          v29 = -v13 / 2;
          v18 = v91;
        }

        v19 = v21 - a2;
        v22 = &v30[v12];
      }

      else
      {
        v19 = v91 / 2;
        v20 = v11;
        v21 = &a2[v91 / 2];
        v22 = a2;
        v23 = a2 - v20 - v12 * 8;
        if (v23)
        {
          v86 = a6;
          v24 = v23 >> 3;
          v22 = v17;
          do
          {
            v25 = &v22[v24 >> 1];
            v27 = *v25;
            v26 = v25 + 1;
            v28 = ivar_getOffset(*v21);
            if (v28 < ivar_getOffset(v27))
            {
              v24 >>= 1;
            }

            else
            {
              v22 = v26;
              v24 += ~(v24 >> 1);
            }
          }

          while (v24);
          v19 = v91 / 2;
          a6 = v86;
          v18 = v91;
        }

        v29 = (v22 - v88 - v12 * 8) >> 3;
      }

      v38 = v21;
      v39 = a2 - v22;
      if (a2 != v22)
      {
        v38 = v22;
        v40 = v21 - a2;
        if (v21 != a2)
        {
          if (v22 + 1 == a2)
          {
            v41 = *v22;
            v42 = a2;
            v43 = v21 - a2;
            v44 = v19;
            v45 = v29;
            memmove(v22, v42, v43);
            v29 = v45;
            v19 = v44;
            v38 = (v22 + v40);
            *(v22 + v40) = v41;
            v18 = v91;
          }

          else if (a2 + 1 == v21)
          {
            v46 = *(v21 - 1);
            v38 = v22 + 1;
            if (v21 - 1 != v22)
            {
              v47 = v19;
              v48 = v29;
              memmove(v22 + 1, v22, (v21 - 1) - v22);
              v29 = v48;
              v19 = v47;
            }

            *v22 = v46;
          }

          else
          {
            v49 = v39 >> 3;
            if (v39 >> 3 == v40 >> 3)
            {
              v50 = v22 + 1;
              v51 = a2 + 1;
              do
              {
                v52 = *(v50 - 1);
                *(v50 - 1) = *(v51 - 1);
                *(v51 - 1) = v52;
                if (v50 == a2)
                {
                  break;
                }

                ++v50;
              }

              while (v51++ != v21);
              v38 = a2;
            }

            else
            {
              v54 = v40 >> 3;
              v55 = v39 >> 3;
              do
              {
                v56 = v55;
                v55 = v54;
                v54 = v56 % v54;
              }

              while (v54);
              v57 = &v22[v55];
              do
              {
                v59 = *--v57;
                v58 = v59;
                v60 = (v57 + v39);
                v61 = v57;
                do
                {
                  v62 = v60;
                  *v61 = *v60;
                  v63 = &v60[v49];
                  v64 = __OFSUB__(v49, v21 - v60);
                  v66 = v49 - (v21 - v60);
                  v65 = (v66 < 0) ^ v64;
                  v60 = &v22[v66];
                  if (v65)
                  {
                    v60 = v63;
                  }

                  v61 = v62;
                }

                while (v60 != v57);
                *v62 = v58;
              }

              while (v57 != v22);
              v38 = (v22 + v40);
            }
          }
        }
      }

      a4 = -(v29 + v13);
      v67 = v18 - v19;
      if (v29 + v19 >= v18 - (v29 + v19) - v13)
      {
        v69 = v29;
        v70 = v19;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,+[_UTConstantType _validateThisClass]::$_0 &,std::__wrap_iter<objc_ivar **>>(v38, v21, v89, a4, v67, a6, a7);
        v21 = v22;
        v67 = v70;
        a4 = v69;
        a3 = v38;
        v68 = v87;
      }

      else
      {
        result = std::__inplace_merge<std::_ClassicAlgPolicy,+[_UTConstantType _validateThisClass]::$_0 &,std::__wrap_iter<objc_ivar **>>(&v88[v12], v22, v38, v29, v19, a6, a7);
        v68 = v38;
        a3 = v89;
      }

      v91 = v67;
      a2 = v21;
      v11 = v68;
      if (!v67)
      {
        return result;
      }
    }

    if (a4 <= v91)
    {
      if (a2 != v11)
      {
        v76 = -a6;
        v77 = a6;
        v78 = v11;
        do
        {
          v79 = *v78++;
          *v77++ = v79;
          v76 -= 8;
        }

        while (v78 != a2);
        while (a2 != a3)
        {
          v80 = *a6;
          v81 = ivar_getOffset(*a2);
          result = ivar_getOffset(v80);
          if (v81 >= result)
          {
            v82 = a6;
          }

          else
          {
            v82 = a2;
          }

          a2 += v81 < result;
          a6 += v81 >= result;
          *v11++ = *v82;
          if (v77 == a6)
          {
            return result;
          }
        }

        return memmove(v11, a6, -(a6 + v76));
      }
    }

    else if (a2 != a3)
    {
      v71 = 0;
      do
      {
        a6[v71] = a2[v71];
        ++v71;
      }

      while (&a2[v71] != a3);
      v72 = &a6[v71];
      while (a2 != v11)
      {
        v73 = *(a2 - 1);
        v74 = ivar_getOffset(*(v72 - 1));
        result = ivar_getOffset(v73);
        if (v74 >= result)
        {
          v75 = v72;
        }

        else
        {
          v75 = a2;
        }

        if (v74 >= result)
        {
          --v72;
        }

        else
        {
          --a2;
        }

        *--a3 = *(v75 - 1);
        if (v72 == a6)
        {
          return result;
        }
      }

      if (v72 != a6)
      {
        v84 = 0x1FFFFFFFFFFFFFFFLL;
        do
        {
          v85 = *--v72;
          a3[v84--] = v85;
        }

        while (v72 != a6);
      }
    }
  }

  return result;
}

+ (objc_ivar)_validateThisClass
{
  if (a3)
  {
    v4 = a4;
    v6 = result;
    if (a3 == 1)
    {
LABEL_9:
      *v4 = *v6;
      return result;
    }

    if (a3 == 2)
    {
      v8 = a2 - 1;
      v9 = *result;
      Offset = ivar_getOffset(*(a2 - 1));
      result = ivar_getOffset(v9);
      if (Offset >= result)
      {
        v11 = v6;
      }

      else
      {
        v11 = v8;
      }

      *v4++ = *v11;
      if (Offset >= result)
      {
        v6 = v8;
      }

      goto LABEL_9;
    }

    if (a3 > 8)
    {
      v23 = &result[a3 >> 1];
      std::__stable_sort<std::_ClassicAlgPolicy,+[_UTConstantType _validateThisClass]::$_0 &,std::__wrap_iter<objc_ivar **>>(result, v23, a3 >> 1, a4, a3 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,+[_UTConstantType _validateThisClass]::$_0 &,std::__wrap_iter<objc_ivar **>>(&v6[a3 >> 1], a2, a3 - (a3 >> 1), &v4[a3 >> 1], a3 - (a3 >> 1));
      v24 = &v6[a3 >> 1];
      while (v24 != a2)
      {
        v25 = *v6;
        v26 = ivar_getOffset(*v24);
        result = ivar_getOffset(v25);
        if (v26 >= result)
        {
          v27 = v6;
        }

        else
        {
          v27 = v24;
        }

        v24 += v26 < result;
        v6 += v26 >= result;
        *v4++ = *v27;
        if (v6 == v23)
        {
          while (v24 != a2)
          {
            v29 = *v24++;
            *v4++ = v29;
          }

          return result;
        }
      }

      while (v6 != v23)
      {
        v28 = *v6++;
        *v4++ = v28;
      }
    }

    else if (result != a2)
    {
      v12 = result + 1;
      *a4 = *result;
      if (result + 1 != a2)
      {
        v13 = 0;
        v14 = a4;
        do
        {
          v15 = v14;
          v16 = *v14++;
          v17 = ivar_getOffset(*v12);
          result = ivar_getOffset(v16);
          v18 = v14;
          if (v17 < result)
          {
            v15[1] = *v15;
            v18 = v4;
            if (v15 != v4)
            {
              v19 = v13;
              while (1)
              {
                v18 = (v4 + v19);
                v20 = *(v4 + v19 - 8);
                v21 = ivar_getOffset(*v12);
                result = ivar_getOffset(v20);
                if (v21 >= result)
                {
                  break;
                }

                *v18 = *(v18 - 1);
                v19 -= 8;
                if (!v19)
                {
                  v18 = v4;
                  break;
                }
              }
            }
          }

          v22 = *v12++;
          *v18 = v22;
          v13 += 8;
        }

        while (v12 != a2);
      }
    }
  }

  return result;
}

@end