@interface NFCISO7816APDU
- (NFCISO7816APDU)initWithData:(NSData *)data;
- (NFCISO7816APDU)initWithInstructionClass:(uint8_t)instructionClass instructionCode:(uint8_t)instructionCode p1Parameter:(uint8_t)p1Parameter p2Parameter:(uint8_t)p2Parameter data:(NSData *)data expectedResponseLength:(NSInteger)expectedResponseLength;
- (NSData)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation NFCISO7816APDU

- (NFCISO7816APDU)initWithInstructionClass:(uint8_t)instructionClass instructionCode:(uint8_t)instructionCode p1Parameter:(uint8_t)p1Parameter p2Parameter:(uint8_t)p2Parameter data:(NSData *)data expectedResponseLength:(NSInteger)expectedResponseLength
{
  v53 = *MEMORY[0x277D85DE8];
  v15 = data;
  if (!expectedResponseLength || (expectedResponseLength - 65537) <= 0xFFFFFFFFFFFEFFFDLL)
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v23 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v27 = 45;
      if (isMetaClass)
      {
        v27 = 43;
      }

      v23(3, "%c[%{public}s %{public}s]:%i Invalid expectedResponseLength value; should be from 1 to 65536 or -1", v27, ClassName, Name, 33);
    }

    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = object_getClass(self);
      if (class_isMetaClass(v29))
      {
        v30 = 43;
      }

      else
      {
        v30 = 45;
      }

      *buf = 67109890;
      v46 = v30;
      v47 = 2082;
      v48 = object_getClassName(self);
      v49 = 2082;
      v50 = sel_getName(a2);
      v51 = 1024;
      v52 = 33;
      _os_log_impl(&dword_23728C000, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid expectedResponseLength value; should be from 1 to 65536 or -1", buf, 0x22u);
    }

    selfCopy = 0;
    goto LABEL_32;
  }

  v44.receiver = self;
  v44.super_class = NFCISO7816APDU;
  v16 = [(NFCISO7816APDU *)&v44 init];
  if (v16)
  {
    v17 = v16;
    v18 = objc_opt_new();
    buf[0] = instructionClass;
    buf[1] = instructionCode;
    buf[2] = p1Parameter;
    buf[3] = p2Parameter;
    [(NSData *)v18 appendBytes:buf length:4];
    v19 = [(NSData *)v15 length];
    if ([(NSData *)v15 length])
    {
      if (expectedResponseLength > 256 || v19 >= 0x100)
      {
        LOBYTE(v42) = 0;
        HIBYTE(v42) = [(NSData *)v15 length]>> 8;
        v43 = [(NSData *)v15 length];
        v20 = v18;
        v21 = 3;
      }

      else
      {
        LOBYTE(v42) = [(NSData *)v15 length];
        v20 = v18;
        v21 = 1;
      }

      [(NSData *)v20 appendBytes:&v42 length:v21];
      v33 = [(NSData *)v18 length];
      v34 = [(NSData *)v15 length];
      v17->_payloadOffset.location = v33;
      v17->_payloadOffset.length = v34;
      [(NSData *)v18 appendData:v15];
    }

    else
    {
      v32.f64[0] = NAN;
      v32.f64[1] = NAN;
      v17->_payloadOffset = vnegq_f64(v32);
    }

    v17->_le = expectedResponseLength;
    if (expectedResponseLength >= 1)
    {
      v35 = [(NSData *)v15 length];
      if (expectedResponseLength < 257 || v35)
      {
        if (expectedResponseLength > 256 || v19 >= 0x100)
        {
          v42 = bswap32(expectedResponseLength) >> 16;
          v36 = v18;
          v37 = 2;
        }

        else
        {
          LOBYTE(v42) = expectedResponseLength;
          v36 = v18;
          v37 = 1;
        }
      }

      else
      {
        LOBYTE(v42) = 0;
        HIBYTE(v42) = BYTE1(expectedResponseLength);
        v43 = expectedResponseLength;
        v36 = v18;
        v37 = 3;
      }

      [(NSData *)v36 appendBytes:&v42 length:v37];
    }

    fullPacket = v17->_fullPacket;
    v17->_fullPacket = v18;

    self = v17;
    selfCopy = self;
LABEL_32:

    goto LABEL_33;
  }

  selfCopy = 0;
LABEL_33:

  v39 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (NFCISO7816APDU)initWithData:(NSData *)data
{
  v117 = *MEMORY[0x277D85DE8];
  v5 = data;
  v108.receiver = self;
  v108.super_class = NFCISO7816APDU;
  v6 = [(NFCISO7816APDU *)&v108 init];
  if (!v6)
  {
    goto LABEL_14;
  }

  bytes = [(NSData *)v5 bytes];
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  *(v6 + 8) = vnegq_f64(v8);
  *(v6 + 3) = -1;
  if ([(NSData *)v5 length]> 3)
  {
    if ([(NSData *)v5 length]== 4)
    {
      goto LABEL_16;
    }

    v26 = (bytes + 4);
    v27 = [(NSData *)v5 length];
    v28 = (bytes + v27);
    if (v27 < 5)
    {
      v43 = 0;
      v30 = 0;
      v32 = 0;
      v31 = -1;
    }

    else
    {
      v29 = *v26;
      v30 = *v26 == 0;
      if (*v26)
      {
        v26 = (bytes + 5);
        v31 = v29;
LABEL_22:
        v32 = v29 != 0;
        if (v28 - v26 >= v31)
        {
          *(v6 + 1) = &v26[-bytes];
          *(v6 + 2) = v31;
          v26 += v31;
        }

        else if (v28 - v26 >= 1)
        {
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v34 = Logger;
            Class = object_getClass(v6);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(v6);
            Name = sel_getName(a2);
            v38 = 45;
            if (isMetaClass)
            {
              v38 = 43;
            }

            v34(3, "%c[%{public}s %{public}s]:%i Missing data specified by Lc", v38, ClassName, Name, 148);
          }

          v15 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }

          v39 = object_getClass(v6);
          if (class_isMetaClass(v39))
          {
            v40 = 43;
          }

          else
          {
            v40 = 45;
          }

          v41 = object_getClassName(v6);
          v42 = sel_getName(a2);
          *buf = 67109890;
          v110 = v40;
          v111 = 2082;
          v112 = v41;
          v113 = 2082;
          v114 = v42;
          v115 = 1024;
          v116 = 148;
          v20 = "%c[%{public}s %{public}s]:%i Missing data specified by Lc";
          goto LABEL_12;
        }

        v43 = 1;
        goto LABEL_38;
      }

      if (v27 == 5)
      {
        v43 = 0;
        v31 = 0;
        v30 = 0;
        v26 = (bytes + 5);
        v32 = 1;
      }

      else
      {
        if (v27 <= 6)
        {
          v91 = NFLogGetLogger();
          if (v91)
          {
            v92 = v91;
            v93 = object_getClass(v6);
            v94 = class_isMetaClass(v93);
            v95 = object_getClassName(v6);
            v107 = sel_getName(a2);
            v96 = 45;
            if (v94)
            {
              v96 = 43;
            }

            v92(3, "%c[%{public}s %{public}s]:%i Unexpected Lc & Le field combination", v96, v95, v107, 133);
          }

          v15 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }

          v97 = object_getClass(v6);
          if (class_isMetaClass(v97))
          {
            v98 = 43;
          }

          else
          {
            v98 = 45;
          }

          v99 = object_getClassName(v6);
          v100 = sel_getName(a2);
          *buf = 67109890;
          v110 = v98;
          v111 = 2082;
          v112 = v99;
          v113 = 2082;
          v114 = v100;
          v115 = 1024;
          v116 = 133;
          v20 = "%c[%{public}s %{public}s]:%i Unexpected Lc & Le field combination";
          goto LABEL_12;
        }

        v26 = (bytes + 7);
        v31 = __rev16(*(bytes + 5));
        if (v31)
        {
          goto LABEL_22;
        }

        v43 = 0;
        v32 = 0;
        v30 = 1;
      }
    }

LABEL_38:
    if (v26 == v28)
    {
      v55 = [(NSData *)v5 copy];
      v56 = *(v6 + 4);
      *(v6 + 4) = v55;

      if ((v30 || v32) && *(v6 + 1) == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v32)
        {
          v57 = 256;
        }

        else
        {
          v57 = 0x10000;
        }

        if (v31)
        {
          v57 = v31;
        }

        *(v6 + 3) = v57;
      }

      goto LABEL_17;
    }

    v44 = v28 - v26;
    if (v44 == 2)
    {
      if (v32)
      {
        v58 = NFLogGetLogger();
        if (v58)
        {
          v59 = v58;
          v60 = object_getClass(v6);
          v61 = class_isMetaClass(v60);
          v62 = object_getClassName(v6);
          v104 = sel_getName(a2);
          v63 = 45;
          if (v61)
          {
            v63 = 43;
          }

          v59(3, "%c[%{public}s %{public}s]:%i Unexpected short Lc & extended Le combination", v63, v62, v104, 176);
        }

        v15 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }

        v64 = object_getClass(v6);
        if (class_isMetaClass(v64))
        {
          v65 = 43;
        }

        else
        {
          v65 = 45;
        }

        v66 = object_getClassName(v6);
        v67 = sel_getName(a2);
        *buf = 67109890;
        v110 = v65;
        v111 = 2082;
        v112 = v66;
        v113 = 2082;
        v114 = v67;
        v115 = 1024;
        v116 = 176;
        v20 = "%c[%{public}s %{public}s]:%i Unexpected short Lc & extended Le combination";
        goto LABEL_12;
      }

      v79 = *v26;
      *(v6 + 3) = v79 << 8;
      v80 = v26[1] | (v79 << 8);
      v78 = 0x10000;
      if (v80)
      {
        v78 = v80;
      }
    }

    else
    {
      if (v44 != 1)
      {
        v68 = NFLogGetLogger();
        if (v68)
        {
          v69 = v68;
          v70 = object_getClass(v6);
          v71 = class_isMetaClass(v70);
          v72 = object_getClassName(v6);
          v105 = sel_getName(a2);
          v73 = 45;
          if (v71)
          {
            v73 = 43;
          }

          v69(3, "%c[%{public}s %{public}s]:%i Unexpected lc & le field combination", v73, v72, v105, 184);
        }

        v15 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }

        v74 = object_getClass(v6);
        if (class_isMetaClass(v74))
        {
          v75 = 43;
        }

        else
        {
          v75 = 45;
        }

        v76 = object_getClassName(v6);
        v77 = sel_getName(a2);
        *buf = 67109890;
        v110 = v75;
        v111 = 2082;
        v112 = v76;
        v113 = 2082;
        v114 = v77;
        v115 = 1024;
        v116 = 184;
        v20 = "%c[%{public}s %{public}s]:%i Unexpected lc & le field combination";
        goto LABEL_12;
      }

      if (v30)
      {
        v45 = NFLogGetLogger();
        if (v45)
        {
          v46 = v45;
          v47 = object_getClass(v6);
          v48 = class_isMetaClass(v47);
          v49 = object_getClassName(v6);
          v103 = sel_getName(a2);
          v50 = 45;
          if (v48)
          {
            v50 = 43;
          }

          v46(3, "%c[%{public}s %{public}s]:%i Unexpected extended Lc & short Le combination", v50, v49, v103, 170);
        }

        v15 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }

        v51 = object_getClass(v6);
        if (class_isMetaClass(v51))
        {
          v52 = 43;
        }

        else
        {
          v52 = 45;
        }

        v53 = object_getClassName(v6);
        v54 = sel_getName(a2);
        *buf = 67109890;
        v110 = v52;
        v111 = 2082;
        v112 = v53;
        v113 = 2082;
        v114 = v54;
        v115 = 1024;
        v116 = 170;
        v20 = "%c[%{public}s %{public}s]:%i Unexpected extended Lc & short Le combination";
        goto LABEL_12;
      }

      v78 = *v26;
    }

    *(v6 + 3) = v78;
    if (v43 && *(v6 + 1) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v81 = NFLogGetLogger();
      if (v81)
      {
        v82 = v81;
        v83 = object_getClass(v6);
        v84 = class_isMetaClass(v83);
        v85 = object_getClassName(v6);
        v106 = sel_getName(a2);
        v86 = 45;
        if (v84)
        {
          v86 = 43;
        }

        v82(3, "%c[%{public}s %{public}s]:%i Missing data when Lc is > 0", v86, v85, v106, 189);
      }

      v15 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      v87 = object_getClass(v6);
      if (class_isMetaClass(v87))
      {
        v88 = 43;
      }

      else
      {
        v88 = 45;
      }

      v89 = object_getClassName(v6);
      v90 = sel_getName(a2);
      *buf = 67109890;
      v110 = v88;
      v111 = 2082;
      v112 = v89;
      v113 = 2082;
      v114 = v90;
      v115 = 1024;
      v116 = 189;
      v20 = "%c[%{public}s %{public}s]:%i Missing data when Lc is > 0";
      goto LABEL_12;
    }

LABEL_16:
    v22 = [(NSData *)v5 copy];
    v23 = *(v6 + 4);
    *(v6 + 4) = v22;

LABEL_17:
    v21 = v6;
    goto LABEL_18;
  }

  v9 = NFLogGetLogger();
  if (v9)
  {
    v10 = v9;
    v11 = object_getClass(v6);
    v12 = class_isMetaClass(v11);
    v13 = object_getClassName(v6);
    v101 = sel_getName(a2);
    v14 = 45;
    if (v12)
    {
      v14 = 43;
    }

    v10(3, "%c[%{public}s %{public}s]:%i Invalid APDU format", v14, v13, v101, 106);
  }

  v15 = NFSharedLogGetLogger();
  if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_13;
  }

  v16 = object_getClass(v6);
  if (class_isMetaClass(v16))
  {
    v17 = 43;
  }

  else
  {
    v17 = 45;
  }

  v18 = object_getClassName(v6);
  v19 = sel_getName(a2);
  *buf = 67109890;
  v110 = v17;
  v111 = 2082;
  v112 = v18;
  v113 = 2082;
  v114 = v19;
  v115 = 1024;
  v116 = 106;
  v20 = "%c[%{public}s %{public}s]:%i Invalid APDU format";
LABEL_12:
  _os_log_impl(&dword_23728C000, v15, OS_LOG_TYPE_ERROR, v20, buf, 0x22u);
LABEL_13:

LABEL_14:
  v21 = 0;
LABEL_18:

  v24 = *MEMORY[0x277D85DE8];
  return v21;
}

- (NSData)data
{
  location = self->_payloadOffset.location;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSData *)self->_fullPacket subdataWithRange:location, self->_payloadOffset.length, v2];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v5 = objc_opt_new();
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = self->_payloadOffset;
    *(v5 + 24) = self->_le;
    v7 = [(NSData *)self->_fullPacket copyWithZone:zone];
    v8 = v6[4];
    v6[4] = v7;
  }

  return v6;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"["];
  bytes = [(NSData *)self->_fullPacket bytes];
  if ([(NSData *)self->_fullPacket length])
  {
    v5 = 0;
    do
    {
      if ([(NSData *)self->_fullPacket length]- 1 <= v5)
      {
        v6 = @"0x%02X";
      }

      else
      {
        v6 = @"0x%02X, ";
      }

      [v3 appendFormat:v6, bytes[v5++]];
    }

    while ([(NSData *)self->_fullPacket length]> v5);
  }

  [v3 appendString:@"]"];
  v7 = [v3 copy];

  return v7;
}

@end