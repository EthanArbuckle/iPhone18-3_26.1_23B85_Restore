@interface CMFallStats
- (CMFallStats)initWithBufferAndLength:(char *)a3 length:(unint64_t)a4;
- (CMFallStats)initWithCoder:(id)a3;
- (CMFallStats)initWithData:(id)a3;
- (NSString)description;
- (id)itemsIterator;
- (void)_decodeMeta;
- (void)dealloc;
@end

@implementation CMFallStats

- (CMFallStats)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = CMFallStats;
  v4 = [(CMFallStats *)&v10 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_data = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"kCMFallStatsCodingKeyData");
    objc_msgSend__decodeMeta(v4, v7, v8);
  }

  return v4;
}

- (CMFallStats)initWithData:(id)a3
{
  if (!objc_msgSend_length(a3, a2, a3))
  {
    return 0;
  }

  v11.receiver = self;
  v11.super_class = CMFallStats;
  v7 = [(CMFallStats *)&v11 init];
  if (v7)
  {
    v7->_data = objc_msgSend_copy(a3, v5, v6);
    objc_msgSend__decodeMeta(v7, v8, v9);
  }

  return v7;
}

- (CMFallStats)initWithBufferAndLength:(char *)a3 length:(unint64_t)a4
{
  if (!a3)
  {
    return 0;
  }

  v11.receiver = self;
  v11.super_class = CMFallStats;
  v7 = [(CMFallStats *)&v11 init];
  if (v7)
  {
    v7->_data = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v6, a3, a4);
    objc_msgSend__decodeMeta(v7, v8, v9);
  }

  return v7;
}

- (id)itemsIterator
{
  v3 = [CMFallStatsItemsIterator alloc];
  v5 = objc_msgSend_initWithData_(v3, v4, self->_data);

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMFallStats;
  [(CMFallStats *)&v3 dealloc];
}

- (void)_decodeMeta
{
  v13 = *MEMORY[0x1E69E9840];
  self->_iOStime = 0.0;
  self->_fallType = 0;
  self->_isNearFall = 0;
  if (self->_data)
  {
    sub_19B508C1C(v12, a2);
    v5 = objc_msgSend_bytes(self->_data, v3, v4);
    v8 = objc_msgSend_length(self->_data, v6, v7);
    v11[0] = &unk_1F0E2B6E0;
    v11[1] = v5;
    v11[2] = v8;
    if (sub_19B508D38(v12, v11))
    {
      sub_19B508B88(&v10, v12);
    }

    sub_19B508C60(v12);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v3, v6, @"%@, Time,%.3lf,Type,CMFallStats,fallType,%d,isNearFall,%d", v5, *&self->_iOStime, self->_fallType, self->_isNearFall);
}

@end