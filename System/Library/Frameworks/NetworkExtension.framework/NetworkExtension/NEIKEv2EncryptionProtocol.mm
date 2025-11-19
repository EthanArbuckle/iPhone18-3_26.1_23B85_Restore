@interface NEIKEv2EncryptionProtocol
- (BOOL)isEqual:(id)a3;
- (NEIKEv2EncryptionProtocol)initWithEncryptionType:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initWithEncryptionWireType:(__int16)a3 keyLength:;
- (uint64_t)blockLength;
- (uint64_t)ivLength;
- (uint64_t)keyMaterialLength;
- (unint64_t)hash;
@end

@implementation NEIKEv2EncryptionProtocol

- (NEIKEv2EncryptionProtocol)initWithEncryptionType:(unint64_t)a3
{
  v3 = self;
  v12 = *MEMORY[0x1E69E9840];
  if (a3 - 1 >= 9)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      String = NEIKEv2EncryptionTypeCreateString(a3);
      v10 = 138412290;
      v11 = String;
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "Invalid NEIKEv2EncryptionType %@", &v10, 0xCu);
    }

    v4 = 0;
  }

  else
  {
    v3 = [(NEIKEv2EncryptionProtocol *)self initWithEncryptionWireType:word_1BAA4E7B4[a3 - 1] keyLength:?];
    v4 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)initWithEncryptionWireType:(__int16)a3 keyLength:
{
  if (result)
  {
    v7.receiver = result;
    v7.super_class = NEIKEv2EncryptionProtocol;
    result = objc_msgSendSuper2(&v7, sel_init);
    if (result)
    {
      *(result + 2) = a2;
      *(result + 4) = a3;
    }

    else
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *v6 = 0;
        _os_log_fault_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_FAULT, "[super init] failed", v6, 2u);
      }

      return 0;
    }
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NEIKEv2EncryptionProtocol allocWithZone:a3];
  if (self)
  {
    wireType = self->_wireType;
    keyLength = self->_keyLength;
  }

  else
  {
    wireType = 0;
    keyLength = 0;
  }

  return [(NEIKEv2EncryptionProtocol *)v4 initWithEncryptionWireType:keyLength keyLength:?];
}

- (unint64_t)hash
{
  if (self)
  {
    return *(self + 16) | (*(self + 8) << 16);
  }

  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && [v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    if (self)
    {
      if (self->_wireType == *(v5 + 2))
      {
        LODWORD(v6) = self->_keyLength;
LABEL_6:
        v7 = v6 == v5[4];
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      v6 = *(v5 + 2);
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v7 = 0;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (id)description
{
  if (!self)
  {
    String = @"Invalid";
LABEL_8:
    v8 = String;
    String = v8;
    goto LABEL_10;
  }

  String = NEIKEv2EncryptionWireTypeCreateString(self->_wireType);
  if (!self->_keyLength)
  {
    goto LABEL_8;
  }

  if (self->_keyLength == 128)
  {
    wireType = self->_wireType;
    v5 = wireType > 0x1E;
    v6 = (1 << wireType) & 0x40101000;
    if (!v5 && v6 != 0)
    {
      goto LABEL_8;
    }
  }

  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%u", String, self->_keyLength];
LABEL_10:
  v9 = v8;

  return v9;
}

- (uint64_t)ivLength
{
  if (result)
  {
    if ((*(result + 16) | 8) == 0x1C)
    {
      return 8;
    }

    else
    {
      return [(NEIKEv2EncryptionProtocol *)result blockLength];
    }
  }

  return result;
}

- (uint64_t)blockLength
{
  v9 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2 > 19)
    {
      if (v2 == 20 || v2 == 28)
      {
LABEL_15:
        result = 0;
        goto LABEL_16;
      }
    }

    else
    {
      if ((v2 - 2) < 2)
      {
        result = 8;
        goto LABEL_16;
      }

      if (v2 == 12)
      {
        result = 16;
        goto LABEL_16;
      }
    }

    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      String = NEIKEv2EncryptionWireTypeCreateString(*(v1 + 16));
      v7 = 138412290;
      v8 = String;
      _os_log_fault_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_FAULT, "Unknown encryption wire type %@", &v7, 0xCu);
    }

    goto LABEL_15;
  }

LABEL_16:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)keyMaterialLength
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2 > 19)
    {
      if (v2 > 29)
      {
        if (v2 != 30)
        {
          if (v2 != 31)
          {
            goto LABEL_15;
          }

LABEL_19:
          result = 36;
          goto LABEL_28;
        }
      }

      else if (v2 != 20)
      {
        if (v2 != 28)
        {
LABEL_15:
          v4 = ne_log_obj();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
          {
            String = NEIKEv2EncryptionWireTypeCreateString(*(v1 + 16));
            v10 = 138412290;
            v11 = String;
            _os_log_fault_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_FAULT, "Unknown encryption wire type %@", &v10, 0xCu);
          }

          goto LABEL_27;
        }

        goto LABEL_19;
      }

      v6 = *(result + 8);
      if (v6 == 128)
      {
        result = 20;
        goto LABEL_28;
      }

      if (v6 == 256)
      {
        goto LABEL_19;
      }

      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    if (v2 == 2)
    {
      result = 8;
      goto LABEL_28;
    }

    if (v2 == 3)
    {
      result = 24;
      goto LABEL_28;
    }

    if (v2 != 12)
    {
      goto LABEL_15;
    }

    v3 = *(result + 8);
    if (v3 == 128)
    {
      result = 16;
      goto LABEL_28;
    }

    if (v3 != 256)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
LABEL_29:
        v8 = NEIKEv2EncryptionWireTypeCreateString(*(v1 + 16));
        v9 = *(v1 + 8);
        v10 = 138412546;
        v11 = v8;
        v12 = 1024;
        v13 = v9;
        _os_log_fault_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_FAULT, "Unsupported %@ key length %u", &v10, 0x12u);
      }

LABEL_27:

      result = 0;
      goto LABEL_28;
    }

    result = 32;
  }

LABEL_28:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

@end