@interface CLGatheringBleAdvertisement
- (BOOL)isEqual:(id)a3;
- (CLGatheringBleAdvertisement)initWithAddress:(id)a3 contactId:(id)a4 flags:(int64_t)a5 eFlags:(int64_t)a6 authTag:(id)a7 iTag:(id)a8 rssi:(int64_t)a9 count:(int64_t)a10 unixTime:(double)a11;
- (CLGatheringBleAdvertisement)initWithAddress:(id)a3 withAuthTag:(id)a4 withRssi:(int64_t)a5 withCount:(int64_t)a6 withTime:(double)a7;
- (CLGatheringBleAdvertisement)initWithCoder:(id)a3;
- (CLGatheringBleAdvertisement)initWithData:(id)a3;
- (CLGatheringBleAdvertisement)initWithPersistenceBytes:(id *)a3;
- (id)encodedBytes;
- (id)getDateString:(double)a3;
- (id)hexString:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLGatheringBleAdvertisement

- (CLGatheringBleAdvertisement)initWithAddress:(id)a3 withAuthTag:(id)a4 withRssi:(int64_t)a5 withCount:(int64_t)a6 withTime:(double)a7
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3 && a4)
  {
    if ((a5 & 0x80000000) == 0)
    {
      if (qword_1EAFE46D8 != -1)
      {
        dispatch_once(&qword_1EAFE46D8, &unk_1F0E6D4C0);
      }

      v13 = qword_1EAFE4710;
      if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v27 = a5;
        _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEBUG, "CLGatheringBleAdvertisement has RSSI %d!", buf, 8u);
      }

      v14 = sub_19B87DD40();
      if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D8 != -1)
        {
          dispatch_once(&qword_1EAFE46D8, &unk_1F0E6D4C0);
        }

        v24 = 67109120;
        v25 = a5;
        v15 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "[CLGatheringBleAdvertisement initWithAddress:withAuthTag:withRssi:withCount:withTime:]", "CoreLocation: %s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }
      }
    }

    v23.receiver = self;
    v23.super_class = CLGatheringBleAdvertisement;
    v16 = [(CLGatheringBleAdvertisement *)&v23 init];
    if (v16)
    {
      v16->_address = [a3 copy];
      v16->_authTag = [a4 copy];
      v17 = -80;
      if (a5 < 0)
      {
        v17 = a5;
      }

      v16->_rssi = v17;
      v16->_count = a6;
      v16->_unixTime = a7;
    }
  }

  else
  {
    if (qword_1EAFE46D8 != -1)
    {
      dispatch_once(&qword_1EAFE46D8, &unk_1F0E6D4C0);
    }

    v18 = qword_1EAFE4710;
    if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_ERROR, "CLGatheringBleAdvertisement cannot init if address is NULL!", buf, 2u);
    }

    v19 = sub_19B87DD40();
    if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D8 != -1)
      {
        dispatch_once(&qword_1EAFE46D8, &unk_1F0E6D4C0);
      }

      LOWORD(v24) = 0;
      v20 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLGatheringBleAdvertisement initWithAddress:withAuthTag:withRssi:withCount:withTime:]", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    v16 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v16;
}

- (CLGatheringBleAdvertisement)initWithAddress:(id)a3 contactId:(id)a4 flags:(int64_t)a5 eFlags:(int64_t)a6 authTag:(id)a7 iTag:(id)a8 rssi:(int64_t)a9 count:(int64_t)a10 unixTime:(double)a11
{
  v37 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if ((a9 & 0x80000000) == 0)
    {
      if (qword_1EAFE46D8 != -1)
      {
        dispatch_once(&qword_1EAFE46D8, &unk_1F0E6D4C0);
      }

      v19 = qword_1EAFE4710;
      if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v36 = a9;
        _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEBUG, "CLGatheringBleAdvertisement has RSSI %d!", buf, 8u);
      }

      v20 = sub_19B87DD40();
      if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D8 != -1)
        {
          dispatch_once(&qword_1EAFE46D8, &unk_1F0E6D4C0);
        }

        v33 = 67109120;
        v34 = a9;
        v21 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "[CLGatheringBleAdvertisement initWithAddress:contactId:flags:eFlags:authTag:iTag:rssi:count:unixTime:]", "CoreLocation: %s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }
    }

    v32.receiver = self;
    v32.super_class = CLGatheringBleAdvertisement;
    v22 = [(CLGatheringBleAdvertisement *)&v32 init];
    if (v22)
    {
      v22->_address = [a3 copy];
      if (a4)
      {
        v23 = [a4 copy];
      }

      else
      {
        v23 = 0;
      }

      v22->_contactId = v23;
      v22->_flags = a5;
      v22->_eFlags = a6;
      if (a7)
      {
        v27 = [a7 copy];
      }

      else
      {
        v27 = 0;
      }

      v22->_authTag = v27;
      if (a8)
      {
        v28 = [a8 copy];
      }

      else
      {
        v28 = 0;
      }

      v29 = -80;
      if (a9 < 0)
      {
        v29 = a9;
      }

      v22->_iTag = v28;
      v22->_rssi = v29;
      v22->_count = a10;
      v22->_unixTime = a11;
    }
  }

  else
  {
    if (qword_1EAFE46D8 != -1)
    {
      dispatch_once(&qword_1EAFE46D8, &unk_1F0E6D4C0);
    }

    v24 = qword_1EAFE4710;
    if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_ERROR, "CLGatheringBleAdvertisement cannot init if address is NULL!", buf, 2u);
    }

    v25 = sub_19B87DD40();
    if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D8 != -1)
      {
        dispatch_once(&qword_1EAFE46D8, &unk_1F0E6D4C0);
      }

      LOWORD(v33) = 0;
      v26 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLGatheringBleAdvertisement initWithAddress:contactId:flags:eFlags:authTag:iTag:rssi:count:unixTime:]", "CoreLocation: %s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }
    }

    v22 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v22;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLGatheringBleAdvertisement;
  [(CLGatheringBleAdvertisement *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  address = self->_address;
  v6 = [a3 address];

  return [(NSData *)address isEqualToData:v6];
}

- (id)hexString:(id)a3
{
  if (!a3 || ![a3 length] || !objc_msgSend(a3, "bytes"))
  {
    return &stru_1F0E6F140;
  }

  v4 = 2 * [a3 length];
  v5 = malloc_type_malloc(v4 | 1, 0x100004077774924uLL);
  v5[v4] = 0;
  v6 = [a3 bytes];
  if ([a3 length])
  {
    v7 = 0;
    v8 = v5;
    do
    {
      sprintf(v8, "%02X", *(v6 + v7++));
      v8 += 2;
    }

    while ([a3 length] > v7);
  }

  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v5 length:v4 encoding:1 freeWhenDone:1];

  return v9;
}

- (id)getDateString:(double)a3
{
  if (qword_1ED519298 != -1)
  {
    dispatch_once(&qword_1ED519298, &unk_1F0E6D4A0);
  }

  v4 = qword_1ED519290;
  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:a3];

  return [v4 stringFromDate:v5];
}

- (CLGatheringBleAdvertisement)initWithData:(id)a3
{
  if ([a3 length] != 84)
  {
    return 0;
  }

  [a3 bytes];

  return MEMORY[0x1EEE66B58](self, sel_initWithPersistenceBytes_);
}

- (CLGatheringBleAdvertisement)initWithPersistenceBytes:(id *)a3
{
  v14.receiver = self;
  v14.super_class = CLGatheringBleAdvertisement;
  v4 = [(CLGatheringBleAdvertisement *)&v14 init];
  if (v4)
  {
    *(v4 + 1) = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3->var1 length:6];
    if (a3->var2[0])
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a3->var2];
    }

    else
    {
      v5 = 0;
    }

    *(v4 + 2) = v5;
    var5 = a3->var5;
    v7 = *&a3->var3;
    *&v8 = v7;
    *(&v8 + 1) = SHIDWORD(v7);
    *(v4 + 24) = v8;
    if (var5)
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&a3->var5 length:3];
    }

    else
    {
      v9 = 0;
    }

    *(v4 + 5) = v9;
    if (a3->var6)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&a3->var6 length:3];
    }

    else
    {
      v10 = 0;
    }

    *(v4 + 6) = v10;
    var8 = a3->var8;
    if (var8 >= 0)
    {
      var8 = -80;
    }

    var7 = a3->var7;
    *(v4 + 7) = var8;
    *(v4 + 8) = var7;
    *(v4 + 9) = *&a3->var0;
  }

  return v4;
}

- (id)encodedBytes
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  [(NSData *)self->_address getBytes:v5 + 8 length:6, 0];
  [(NSString *)self->_contactId getCString:v5 | 0xE maxLength:50 encoding:4];
  *&v6 = vand_s8(vmovn_s64(*&self->_flags), 0xFF000000FFLL);
  [(NSData *)self->_authTag getBytes:&v6 + 8 length:3];
  [(NSData *)self->_iTag getBytes:&v6 + 12 length:3];
  HIWORD(v7) = SLOBYTE(self->_rssi);
  LOWORD(v7) = self->_count;
  *v5 = self->_unixTime;
  result = [MEMORY[0x1E695DEF0] dataWithBytes:v5 length:84];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_address forKey:@"Address"];
  [a3 encodeObject:self->_contactId forKey:@"ContactId"];
  [a3 encodeInteger:self->_flags forKey:@"Flags"];
  [a3 encodeInteger:self->_eFlags forKey:@"EncryptedFlags"];
  [a3 encodeObject:self->_authTag forKey:@"AuthTag"];
  [a3 encodeObject:self->_iTag forKey:@"IntegrityTag"];
  [a3 encodeInteger:self->_rssi forKey:@"RSSI"];
  [a3 encodeInteger:self->_count forKey:@"Count"];
  unixTime = self->_unixTime;

  [a3 encodeDouble:@"Date" forKey:unixTime];
}

- (CLGatheringBleAdvertisement)initWithCoder:(id)a3
{
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"Address"];
  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"ContactId"];
  v7 = [a3 decodeIntegerForKey:@"Flags"];
  v8 = [a3 decodeIntegerForKey:@"EncryptedFlags"];
  v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"AuthTag"];
  v10 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"IntegrityTag"];
  v11 = [a3 decodeIntegerForKey:@"RSSI"];
  v12 = [a3 decodeIntegerForKey:@"Count"];
  [a3 decodeDoubleForKey:@"Date"];
  return [(CLGatheringBleAdvertisement *)self initWithAddress:v5 contactId:v6 flags:v7 eFlags:v8 authTag:v9 iTag:v10 rssi:v11 count:v12 unixTime:?];
}

@end