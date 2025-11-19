@interface NEIKEv2AuthenticationProtocol
+ (uint64_t)getAlgorithmForRSAPSSParameters:(uint64_t)a1;
- (BOOL)isEqual:(id)a3;
- (NEIKEv2AuthenticationProtocol)initWithDigitalSignature:(unint64_t)a3;
- (NEIKEv2AuthenticationProtocol)initWithMethod:(unint64_t)a3;
- (NEIKEv2AuthenticationProtocol)initWithNonStandardDigitalSignature:(unint64_t)a3;
- (NEIKEv2AuthenticationProtocol)initWithSecurePassword:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (uint64_t)copyHashForDataVector:(uint64_t)a1;
- (uint64_t)hashType;
- (uint64_t)isECDSA;
- (uint64_t)isRSA;
- (uint64_t)signatureAlgorithm;
- (unint64_t)hash;
@end

@implementation NEIKEv2AuthenticationProtocol

- (id)copyWithZone:(_NSZone *)a3
{
  if ([(NEIKEv2AuthenticationProtocol *)self method]== 14)
  {
    v5 = [(NEIKEv2AuthenticationProtocol *)self isNonStandard];
    v6 = [objc_opt_class() allocWithZone:a3];
    v7 = [(NEIKEv2AuthenticationProtocol *)self digitalSignatureAlgorithm];
    if (v5)
    {

      return [v6 initWithNonStandardDigitalSignature:v7];
    }

    else
    {

      return [v6 initWithDigitalSignature:v7];
    }
  }

  else
  {
    v9 = [(NEIKEv2AuthenticationProtocol *)self method];
    v10 = [objc_opt_class() allocWithZone:a3];
    if (v9 == 12)
    {
      v11 = [(NEIKEv2AuthenticationProtocol *)self securePasswordMethod];

      return [v10 initWithSecurePassword:v11];
    }

    else
    {
      v12 = [(NEIKEv2AuthenticationProtocol *)self method];

      return [v10 initWithMethod:v12];
    }
  }
}

- (unint64_t)hash
{
  v3 = [(NEIKEv2AuthenticationProtocol *)self method];
  v4 = v3 + 10000 * [(NEIKEv2AuthenticationProtocol *)self digitalSignatureAlgorithm];
  v5 = v4 + 100000 * [(NEIKEv2AuthenticationProtocol *)self securePasswordMethod];
  v6 = [(NEIKEv2AuthenticationProtocol *)self isNonStandard];
  v7 = 100;
  if (!v6)
  {
    v7 = 0;
  }

  return v5 + v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && [v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(NEIKEv2AuthenticationProtocol *)self method];
    if (v6 == [v5 method] && (v7 = -[NEIKEv2AuthenticationProtocol digitalSignatureAlgorithm](self, "digitalSignatureAlgorithm"), v7 == objc_msgSend(v5, "digitalSignatureAlgorithm")) && (v8 = -[NEIKEv2AuthenticationProtocol securePasswordMethod](self, "securePasswordMethod"), v8 == objc_msgSend(v5, "securePasswordMethod")))
    {
      v9 = [(NEIKEv2AuthenticationProtocol *)self isNonStandard];
      v10 = v9 ^ [v5 isNonStandard] ^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (id)description
{
  if ([(NEIKEv2AuthenticationProtocol *)self method]== 14)
  {
    v3 = [(NEIKEv2AuthenticationProtocol *)self isNonStandard];
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    String = NEIKEv2DigitalSignatureAlgorithmCreateString([(NEIKEv2AuthenticationProtocol *)self digitalSignatureAlgorithm]);
    v6 = String;
    if (v3)
    {
      v7 = [v4 initWithFormat:@"DigitalSignatureNonStandard%@", String];
    }

    else
    {
      v7 = [v4 initWithFormat:@"DigitalSignature%@", String];
    }

    goto LABEL_7;
  }

  if ([(NEIKEv2AuthenticationProtocol *)self method]== 12)
  {
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = NEIKEv2SecurePasswordMethodCreateString([(NEIKEv2AuthenticationProtocol *)self securePasswordMethod]);
    v7 = [v8 initWithFormat:@"SecurePassword%@", v6];
LABEL_7:
    v9 = v7;

    goto LABEL_9;
  }

  v9 = NEIKEv2AuthenticationMethodCreateString([(NEIKEv2AuthenticationProtocol *)self method]);
LABEL_9:

  return v9;
}

- (NEIKEv2AuthenticationProtocol)initWithNonStandardDigitalSignature:(unint64_t)a3
{
  if (a3 - 4 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v4 = [(NEIKEv2AuthenticationProtocol *)self initWithDigitalSignature:?];
    v4->_isNonStandard = 1;
    self = v4;
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NEIKEv2AuthenticationProtocol)initWithSecurePassword:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = NEIKEv2AuthenticationProtocol;
  v4 = [(NEIKEv2AuthenticationProtocol *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_method = 12;
    v4->_securePasswordMethod = a3;
    v6 = v4;
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, "[super init] failed", v9, 2u);
    }
  }

  return v5;
}

- (NEIKEv2AuthenticationProtocol)initWithDigitalSignature:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = NEIKEv2AuthenticationProtocol;
  v4 = [(NEIKEv2AuthenticationProtocol *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_method = 14;
    v4->_digitalSignatureAlgorithm = a3;
    v6 = v4;
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, "[super init] failed", v9, 2u);
    }
  }

  return v5;
}

- (NEIKEv2AuthenticationProtocol)initWithMethod:(unint64_t)a3
{
  p_super = &self->super;
  if (a3 == 14)
  {
    v6 = ne_log_obj();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
LABEL_8:

      goto LABEL_11;
    }

    *buf = 0;
    v7 = "Cannot [NEIKEv2AuthenticationProtocol initWithMethod:DigitalSignature], use initWithDigitalSignature instead";
LABEL_13:
    _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, v7, buf, 2u);
    goto LABEL_8;
  }

  if (a3 == 12)
  {
    v6 = ne_log_obj();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    *buf = 0;
    v7 = "Cannot [NEIKEv2AuthenticationProtocol initWithMethod:GenericSecurePassword], use initWithSecurePassword instead";
    goto LABEL_13;
  }

  v8.receiver = self;
  v8.super_class = NEIKEv2AuthenticationProtocol;
  result = [(NEIKEv2AuthenticationProtocol *)&v8 init];
  if (result)
  {
    result->_method = a3;
    return result;
  }

  p_super = ne_log_obj();
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1BA83C000, p_super, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
  }

LABEL_11:

  return 0;
}

- (uint64_t)isRSA
{
  if (result)
  {
    v1 = result;
    result = [result method];
    if (result != 1)
    {
      if (result == 14)
      {
        v2 = [v1 digitalSignatureAlgorithm];
        if (v2 <= 6 && ((1 << v2) & 0x62) != 0)
        {
          return 1;
        }
      }

      v3 = [v1 method];
      if (v3 == 245)
      {
        return 1;
      }

      else
      {
        return v3 == 14 && ([v1 digitalSignatureAlgorithm] - 9) < 3;
      }
    }
  }

  return result;
}

- (uint64_t)isECDSA
{
  if (a1)
  {
    v2 = [a1 method];
    if ((v2 - 9) >= 3)
    {
      if (v2 == 14)
      {
        v4 = [a1 digitalSignatureAlgorithm];
        v3 = 0x184u >> v4;
        if (v4 >= 9)
        {
          LOBYTE(v3) = 0;
        }
      }

      else
      {
        LOBYTE(v3) = 0;
      }
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

- (uint64_t)hashType
{
  if (result)
  {
    v1 = result;
    result = [result method];
    if (result <= 9)
    {
      if (result == 1)
      {
        return result;
      }

      if (result == 9)
      {
        return 2;
      }

      return 0;
    }

    if (result == 10)
    {
      return 3;
    }

    else
    {
      if (result != 11)
      {
        if (result == 14)
        {
          v2 = [v1 digitalSignatureAlgorithm];
          if ((v2 - 1) < 0xB)
          {
            return qword_1BAA4F640[v2 - 1];
          }
        }

        return 0;
      }

      return 4;
    }
  }

  return result;
}

- (uint64_t)signatureAlgorithm
{
  v2 = [a1 method];
  result = 0;
  if (v2 <= 9)
  {
    if (v2 == 1)
    {
      v5 = MEMORY[0x1E697B180];
      return *v5;
    }

    if (v2 != 9)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (v2 == 10)
  {
    v5 = MEMORY[0x1E697B0F0];
    return *v5;
  }

  if (v2 == 11)
  {
    v5 = MEMORY[0x1E697B0F8];
    return *v5;
  }

  if (v2 != 14)
  {
    return result;
  }

  v4 = [a1 digitalSignatureAlgorithm];
  result = 0;
  if (v4 <= 5)
  {
    if (v4 > 2)
    {
      if (v4 == 3)
      {
        v5 = MEMORY[0x1E697B148];
      }

      else if (v4 == 4)
      {
        v5 = MEMORY[0x1E697B150];
      }

      else
      {
        v5 = MEMORY[0x1E697B190];
      }

      return *v5;
    }

    if (v4 == 1)
    {
      v5 = MEMORY[0x1E697B188];
      return *v5;
    }

    if (v4 != 2)
    {
      return result;
    }

    if (![a1 isNonStandard])
    {
      v5 = MEMORY[0x1E697B108];
      return *v5;
    }

LABEL_12:
    v5 = MEMORY[0x1E697B0E8];
    return *v5;
  }

  if (v4 <= 8)
  {
    if (v4 == 6)
    {
      v5 = MEMORY[0x1E697B198];
    }

    else if (v4 == 7)
    {
      v5 = MEMORY[0x1E697B110];
    }

    else
    {
      v5 = MEMORY[0x1E697B118];
    }

    return *v5;
  }

  switch(v4)
  {
    case 9:
      v5 = MEMORY[0x1E697B1A0];
      return *v5;
    case 10:
      v5 = MEMORY[0x1E697B1A8];
      return *v5;
    case 11:
      v5 = MEMORY[0x1E697B1B0];
      return *v5;
  }

  return result;
}

- (uint64_t)copyHashForDataVector:(uint64_t)a1
{
  v3 = a2;
  v4 = [(NEIKEv2AuthenticationProtocol *)a1 hashType];
  v5 = [NEIKEv2Crypto copyHashForDataVector:v3 hashType:v4];

  return v5;
}

+ (uint64_t)getAlgorithmForRSAPSSParameters:(uint64_t)a1
{
  v47 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = DERParseSequenceToObject(a2, 4u, &NEIKEv2ASN1RSAPSSAlgoParamItemSpecs, &v32, 0x40uLL, 0x40uLL);
  v36 = v3;
  if (v3)
  {
    v27 = v3;
    v22 = ne_log_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    LODWORD(v45) = 67109120;
    DWORD1(v45) = v27;
    v23 = "Could not parse RSA-PSS parameters, error %d";
    goto LABEL_62;
  }

  v4 = NEIKEv2ASN1CheckForNULLItem(&v35, &v36);
  v5 = v36;
  if (v36)
  {
    v22 = ne_log_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    LODWORD(v45) = 67109120;
    DWORD1(v45) = v5;
    v23 = "Could not parse RSA-PSS trailer field parameter, error %d";
    goto LABEL_62;
  }

  if (v4)
  {
    goto LABEL_6;
  }

  v6 = NEIKEv2ASN1DecodeIntegerItem(&v35, &v36);
  v7 = v36;
  if (v36)
  {
    v22 = ne_log_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    LODWORD(v45) = 67109120;
    DWORD1(v45) = v7;
    v23 = "Could not parse RSA-PSS trailer field parameter, error %d";
    goto LABEL_62;
  }

  if (v6 != 1)
  {
    v31 = v6;
    v22 = ne_log_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    LODWORD(v45) = 67109120;
    DWORD1(v45) = v31;
    v23 = "Incorrect RSA-PSS trailer field parameter value %u";
LABEL_62:
    v24 = &v45;
    goto LABEL_63;
  }

LABEL_6:
  v45 = 0u;
  v46 = 0u;
  v8 = DERParseSequenceToObject(&v32, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v45, 0x20uLL, 0x20uLL);
  v36 = v8;
  if (v8)
  {
    v28 = v8;
    v22 = ne_log_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    LODWORD(v43) = 67109120;
    DWORD1(v43) = v28;
    v23 = "Could not parse RSA-PSS HashAlgorithm, error %d";
    goto LABEL_38;
  }

  v9 = NEIKEv2ASN1CheckForNULLItem(&v46, &v36);
  v10 = v36;
  if (v36)
  {
    v22 = ne_log_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    LODWORD(v43) = 67109120;
    DWORD1(v43) = v10;
    v23 = "Could not parse RSA-PSS HashAlgorithm parameters, error %d";
LABEL_38:
    v24 = &v43;
LABEL_63:
    v25 = v22;
    v26 = 8;
    goto LABEL_29;
  }

  if ((v9 & 1) == 0)
  {
    v22 = ne_log_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    LOWORD(v43) = 0;
    v23 = "Unexpected non-NULL HashAlgorithm parameters";
    v24 = &v43;
    goto LABEL_28;
  }

  v43 = 0u;
  v44 = 0u;
  v11 = DERParseSequenceToObject(&v33, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v43, 0x20uLL, 0x20uLL);
  if (v11)
  {
    v29 = v11;
    v22 = ne_log_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    LODWORD(v41) = 67109120;
    DWORD1(v41) = v29;
    v23 = "Could not parse RSA-PSS MaskGenAlgorithm, error %d";
    v24 = &v41;
    goto LABEL_63;
  }

  if (!DEROidCompare(&v43, &oidMfg1))
  {
    v22 = ne_log_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    LOWORD(v41) = 0;
    v23 = "Incorrect RSA-PSS MaskGenAlgorithm.OID";
    v24 = &v41;
    goto LABEL_28;
  }

  v41 = 0u;
  v42 = 0u;
  v12 = DERParseSequenceToObject(&v44, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v41, 0x20uLL, 0x20uLL);
  v36 = v12;
  if (v12)
  {
    v30 = v12;
    v22 = ne_log_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 67109120;
    v38 = v30;
    v23 = "Could not parse RSA-PSS MaskGenAlgorithm parameters, error %d";
    goto LABEL_55;
  }

  v13 = NEIKEv2ASN1CheckForNULLItem(&v42, &v36);
  v14 = v36;
  if (v36)
  {
    v22 = ne_log_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 67109120;
    v38 = v14;
    v23 = "Could not parse RSA-PSS MaskGenAlgorithm.HashAlgorithm parameters, error %d";
    goto LABEL_55;
  }

  if ((v13 & 1) == 0)
  {
    v22 = ne_log_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v23 = "Unexpected non-NULL RSA-PSS MaskGenAlgorithm.HashAlgorithm parameters";
    goto LABEL_27;
  }

  if (!DEROidCompare(&v45, &v41))
  {
    v22 = ne_log_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v23 = "PSA-PSS hash algorithm OIDs do not match";
LABEL_27:
    v24 = buf;
LABEL_28:
    v25 = v22;
    v26 = 2;
LABEL_29:
    _os_log_error_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_ERROR, v23, v24, v26);
    goto LABEL_25;
  }

  if (DEROidCompare(&v45, &oidSha256))
  {
    v15 = 32;
    v16 = 9;
    goto LABEL_21;
  }

  if (DEROidCompare(&v45, &oidSha384))
  {
    v15 = 48;
    v16 = 10;
    goto LABEL_21;
  }

  if (!DEROidCompare(&v45, &oidSha512))
  {
    v22 = ne_log_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
LABEL_25:

      v16 = 0;
      goto LABEL_23;
    }

    *buf = 0;
    v23 = "Unrecognized PSA-PSS hash algorithm OID";
    goto LABEL_27;
  }

  v15 = 64;
  v16 = 11;
LABEL_21:
  v17 = NEIKEv2ASN1DecodeIntegerItem(&v34, &v36);
  v18 = v36;
  if (v36)
  {
    v22 = ne_log_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 67109120;
    v38 = v18;
    v23 = "Could not parse RSA-PSS salt length parameter, error %d";
LABEL_55:
    v24 = buf;
    goto LABEL_63;
  }

  v19 = v17;
  if (v17 != v15)
  {
    v22 = ne_log_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 67109376;
    v38 = v19;
    v39 = 1024;
    v40 = v15;
    v23 = "RSA-PSS salt length %u != expected %u";
    v24 = buf;
    v25 = v22;
    v26 = 14;
    goto LABEL_29;
  }

LABEL_23:
  v20 = *MEMORY[0x1E69E9840];
  return v16;
}

@end