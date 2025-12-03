@interface CKObjCType
+ (id)typeForEncoding:(const char *)encoding;
+ (id)typeForValue:(id)value;
- (CKObjCType)initWithCode:(int64_t)code;
- (NSString)encoding;
- (NSString)name;
- (id)description;
- (unint64_t)flags;
- (unint64_t)size;
@end

@implementation CKObjCType

- (NSString)encoding
{
  objc_msgSend_code(self, a2, v2);
  v6 = @"?";
  switch(@"?")
  {
    case 0uLL:
      objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "c");
      goto LABEL_20;
    case 1uLL:
      objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "s");
      goto LABEL_20;
    case 2uLL:
      objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "i");
      goto LABEL_20;
    case 3uLL:
    case 4uLL:
      objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "q");
      goto LABEL_20;
    case 5uLL:
      objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "C");
      goto LABEL_20;
    case 6uLL:
      objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "S");
      goto LABEL_20;
    case 7uLL:
      objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "I");
      goto LABEL_20;
    case 8uLL:
    case 9uLL:
      objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Q");
      goto LABEL_20;
    case 0xAuLL:
      objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "f");
      goto LABEL_20;
    case 0xBuLL:
      objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "d");
      goto LABEL_20;
    case 0xCuLL:
      objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "B");
      goto LABEL_20;
    case 0xDuLL:
      objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "v");
      goto LABEL_20;
    case 0xEuLL:
      objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "^v");
      goto LABEL_20;
    case 0xFuLL:
      objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "@");
      goto LABEL_20;
    case 0x10uLL:
      objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "#");
      goto LABEL_20;
    case 0x11uLL:
      objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, ":");
      goto LABEL_20;
    case 0x16uLL:
      break;
    case 0x18uLL:
      objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "@?");
      v6 = LABEL_20:;
      break;
    default:
      v7 = MEMORY[0x1E695DF30];
      v8 = *MEMORY[0x1E695D930];
      v9 = objc_msgSend_code(self, v4, v5);
      objc_msgSend_raise_format_(v7, v10, v8, @"Unable to determine encoding for type %zd", v9);
      v6 = @"?";
      break;
  }

  return v6;
}

- (unint64_t)size
{
  code = self->_code;
  if (code > 0x18)
  {
    return 0;
  }

  else
  {
    return qword_1886FE6C0[code];
  }
}

+ (id)typeForEncoding:(const char *)encoding
{
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, encoding);
  v7 = v4;
  v8 = *encoding;
  if (v8 > 0x5A)
  {
    if (*encoding > 0x68u)
    {
      if (*encoding > 0x72u)
      {
        switch(v8)
        {
          case 's':
            v55 = [CKObjCType alloc];
            v11 = objc_msgSend_initWithCode_(v55, v56, 1);
            goto LABEL_63;
          case 'v':
            v45 = [CKObjCType alloc];
            v11 = objc_msgSend_initWithCode_(v45, v46, 13);
            goto LABEL_63;
          case '{':
            v29 = [__CKDynamicObjCType alloc];
            v11 = objc_msgSend_initWithCode_encoding_(v29, v30, 19, v7);
            goto LABEL_63;
        }
      }

      else
      {
        switch(v8)
        {
          case 'i':
            v51 = [CKObjCType alloc];
            v11 = objc_msgSend_initWithCode_(v51, v52, 2);
            goto LABEL_63;
          case 'l':
            v41 = [CKObjCType alloc];
            v11 = objc_msgSend_initWithCode_(v41, v42, 3);
            goto LABEL_63;
          case 'q':
            v14 = [CKObjCType alloc];
            v11 = objc_msgSend_initWithCode_(v14, v15, 4);
            goto LABEL_63;
        }
      }
    }

    else if (*encoding > 0x62u)
    {
      switch(v8)
      {
        case 'c':
          v53 = [CKObjCType alloc];
          v11 = objc_msgSend_initWithCode_(v53, v54, 0);
          goto LABEL_63;
        case 'd':
          v43 = [CKObjCType alloc];
          v11 = objc_msgSend_initWithCode_(v43, v44, 11);
          goto LABEL_63;
        case 'f':
          v27 = [CKObjCType alloc];
          v11 = objc_msgSend_initWithCode_(v27, v28, 10);
          goto LABEL_63;
      }
    }

    else
    {
      switch(v8)
      {
        case '[':
          v49 = [__CKDynamicObjCType alloc];
          v11 = objc_msgSend_initWithCode_encoding_(v49, v50, 18, v7);
          goto LABEL_63;
        case '^':
          v39 = [__CKDynamicObjCType alloc];
          v11 = objc_msgSend_initWithCode_encoding_(v39, v40, 22, v7);
          goto LABEL_63;
        case 'b':
          v9 = [__CKDynamicObjCType alloc];
          v11 = objc_msgSend_initWithCode_encoding_(v9, v10, 21, v7);
          goto LABEL_63;
      }
    }

LABEL_57:
    v65 = [__CKDynamicObjCType alloc];
    v11 = objc_msgSend_initWithCode_encoding_(v65, v66, 23, v7);
    goto LABEL_63;
  }

  if (*encoding > 0x41u)
  {
    if (*encoding > 0x4Bu)
    {
      switch(v8)
      {
        case 'L':
          v63 = [CKObjCType alloc];
          v11 = objc_msgSend_initWithCode_(v63, v64, 8);
          goto LABEL_63;
        case 'Q':
          v59 = [CKObjCType alloc];
          v11 = objc_msgSend_initWithCode_(v59, v60, 9);
          goto LABEL_63;
        case 'S':
          v31 = [CKObjCType alloc];
          v11 = objc_msgSend_initWithCode_(v31, v32, 6);
          goto LABEL_63;
      }
    }

    else
    {
      switch(v8)
      {
        case 'B':
          v61 = [CKObjCType alloc];
          v11 = objc_msgSend_initWithCode_(v61, v62, 12);
          goto LABEL_63;
        case 'C':
          v57 = [CKObjCType alloc];
          v11 = objc_msgSend_initWithCode_(v57, v58, 5);
          goto LABEL_63;
        case 'I':
          v12 = [CKObjCType alloc];
          v11 = objc_msgSend_initWithCode_(v12, v13, 7);
          goto LABEL_63;
      }
    }

    goto LABEL_57;
  }

  if (*encoding <= 0x29u)
  {
    if (v8 == 35)
    {
      v47 = [CKObjCType alloc];
      v11 = objc_msgSend_initWithCode_(v47, v48, 16);
      goto LABEL_63;
    }

    if (v8 == 40)
    {
      v33 = [__CKDynamicObjCType alloc];
      v11 = objc_msgSend_initWithCode_encoding_(v33, v34, 20, v7);
      goto LABEL_63;
    }

    goto LABEL_57;
  }

  if (v8 == 42)
  {
    v37 = [CKObjCType alloc];
    v11 = objc_msgSend_initWithCode_(v37, v38, 14);
    goto LABEL_63;
  }

  if (v8 == 58)
  {
    v35 = [CKObjCType alloc];
    v11 = objc_msgSend_initWithCode_(v35, v36, 17);
    goto LABEL_63;
  }

  if (v8 != 64)
  {
    goto LABEL_57;
  }

  if (objc_msgSend_length(v4, v5, v6) >= 4 && objc_msgSend_characterAtIndex_(v7, v16, 1) == 34)
  {
    v18 = objc_msgSend_length(v7, v16, v17);
    if (objc_msgSend_characterAtIndex_(v7, v19, v18 - 1) == 34)
    {
      v20 = objc_msgSend_length(v7, v16, v17);
      v22 = objc_msgSend_substringWithRange_(v7, v21, 2, v20 - 3);
      v23 = [__CKClassObjCType alloc];
      v24 = NSClassFromString(v22);
      v26 = objc_msgSend_initWithCode_encoding_class_(v23, v25, 15, v7, v24);

      goto LABEL_64;
    }
  }

  if (objc_msgSend_length(v7, v16, v17) >= 2 && objc_msgSend_characterAtIndex_(v7, v67, 1) == 63)
  {
    v68 = [CKObjCType alloc];
    v11 = objc_msgSend_initWithCode_(v68, v69, 24);
  }

  else
  {
    v70 = [CKObjCType alloc];
    v11 = objc_msgSend_initWithCode_(v70, v71, 15);
  }

LABEL_63:
  v26 = v11;
LABEL_64:

  return v26;
}

+ (id)typeForValue:(id)value
{
  v4 = objc_msgSend_objCType(value, a2, value);

  return objc_msgSend_typeForEncoding_(CKObjCType, v3, v4);
}

- (CKObjCType)initWithCode:(int64_t)code
{
  v5.receiver = self;
  v5.super_class = CKObjCType;
  result = [(CKObjCType *)&v5 init];
  if (result)
  {
    result->_code = code;
  }

  return result;
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_name(self, a2, v2);
  v8 = objc_msgSend_encoding(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v4, v9, @"<CKObjCType %p: %@ (%@)>", self, v5, v8);

  return v10;
}

- (NSString)name
{
  v4 = objc_msgSend_code(self, a2, v2);
  if (v4 < 0x19)
  {
    return &off_1E70BEA90[v4]->isa;
  }

  v8 = MEMORY[0x1E695DF30];
  v9 = *MEMORY[0x1E695D930];
  v10 = objc_msgSend_code(self, v5, v6);
  objc_msgSend_raise_format_(v8, v11, v9, @"Unable to determine name for type %zd", v10);
  return @"unknown";
}

- (unint64_t)flags
{
  v3 = objc_msgSend_code(self, a2, v2);
  if (v3 > 0x18)
  {
    return 0;
  }

  else
  {
    return qword_1886FE5F8[v3];
  }
}

@end