@interface CKDPStreamingAssetFooter
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)statusAsString:(int)a3;
- (int)StringAsStatus:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPStreamingAssetFooter

- (id)statusAsString:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"TERMINATED_BY_UPLOADER";
    }

    else
    {
      v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"(unknown: %i)", a3);
    }
  }

  else
  {
    v4 = @"COMPLETED";
  }

  return v4;
}

- (int)StringAsStatus:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"COMPLETED"))
  {
    isEqualToString = 0;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v3, v5, @"TERMINATED_BY_UPLOADER");
  }

  return isEqualToString;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = CKDPStreamingAssetFooter;
  v4 = [(CKDPStreamingAssetFooter *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v5 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2);
  status = self->_status;
  if (status)
  {
    if (status == 1)
    {
      v7 = @"TERMINATED_BY_UPLOADER";
      objc_msgSend_setObject_forKey_(v5, v4, @"TERMINATED_BY_UPLOADER", @"status");
    }

    else
    {
      v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v4, @"(unknown: %i)", self->_status);
      objc_msgSend_setObject_forKey_(v5, v8, v7, @"status");
    }
  }

  else
  {
    v7 = @"COMPLETED";
    objc_msgSend_setObject_forKey_(v5, v4, @"COMPLETED", @"status");
  }

  md5 = self->_md5;
  if (md5)
  {
    objc_msgSend_setObject_forKey_(v5, v9, md5, @"md5");
  }

  return v5;
}

- (BOOL)readFrom:(id)a3
{
  v5 = objc_msgSend_position(a3, a2, a3);
  if (v5 < objc_msgSend_length(a3, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a3, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v61 = 0;
        v13 = objc_msgSend_position(a3, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a3, v14, v15) && (v18 = objc_msgSend_position(a3, v16, v17) + 1, v18 <= objc_msgSend_length(a3, v19, v20)))
        {
          v21 = objc_msgSend_data(a3, v16, v17);
          v24 = objc_msgSend_position(a3, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v61, v24, 1);

          v28 = objc_msgSend_position(a3, v26, v27);
          objc_msgSend_setPosition_(a3, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a3, v16, v17);
        }

        v12 |= (v61 & 0x7F) << v10;
        if ((v61 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a3, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a3, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v54 = PBReaderReadData();
        md5 = self->_md5;
        self->_md5 = v54;
      }

      else if (v32 == 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        while (1)
        {
          v62 = 0;
          v36 = objc_msgSend_position(a3, v32, v9) + 1;
          if (v36 >= objc_msgSend_position(a3, v37, v38) && (v41 = objc_msgSend_position(a3, v39, v40) + 1, v41 <= objc_msgSend_length(a3, v42, v43)))
          {
            v44 = objc_msgSend_data(a3, v39, v40);
            v47 = objc_msgSend_position(a3, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, &v62, v47, 1);

            v51 = objc_msgSend_position(a3, v49, v50);
            objc_msgSend_setPosition_(a3, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a3, v39, v40);
          }

          v35 |= (v62 & 0x7F) << v33;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            v53 = 0;
            goto LABEL_34;
          }
        }

        v53 = objc_msgSend_hasError(a3, v32, v9) ? 0 : v35;
LABEL_34:
        self->_status = v53;
      }

      else
      {
        v56 = PBReaderSkipValueWithTag();
        if (!v56)
        {
          return v56;
        }
      }

      v57 = objc_msgSend_position(a3, v32, v9);
    }

    while (v57 < objc_msgSend_length(a3, v58, v59));
  }

  LOBYTE(v56) = objc_msgSend_hasError(a3, v8, v9) ^ 1;
  return v56;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  status = self->_status;
  v6 = v4;
  PBDataWriterWriteInt32Field();
  if (!self->_md5)
  {
    __assert_rtn("[CKDPStreamingAssetFooter writeTo:]", "CKDPStreamingAssetFooter.m", 91, "nil != self->_md5");
  }

  PBDataWriterWriteDataField();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  *(v10 + 16) = self->_status;
  v12 = objc_msgSend_copyWithZone_(self->_md5, v11, a3);
  v13 = *(v10 + 8);
  *(v10 + 8) = v12;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && self->_status == *(v4 + 4))
  {
    md5 = self->_md5;
    v9 = v4[1];
    if (md5 | v9)
    {
      isEqual = objc_msgSend_isEqual_(md5, v7, v9);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (void)mergeFrom:(id)a3
{
  self->_status = *(a3 + 4);
  v3 = *(a3 + 1);
  if (v3)
  {
    objc_msgSend_setMd5_(self, a2, v3);
  }
}

@end