@interface ASDTIOA2OffsetStream
- (id)readInputBlock;
- (void)readInputBlock;
@end

@implementation ASDTIOA2OffsetStream

- (id)readInputBlock
{
  v9.receiver = self;
  v9.super_class = ASDTIOA2OffsetStream;
  v3 = [(ASDTExclavesStream *)&v9 readInputBlock];
  v4 = [(ASDTIOA2OffsetStream *)self sampleTimeOffset];
  v5 = ASDTIOA2LogType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ASDTIOA2OffsetStream *)v5 readInputBlock];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__ASDTIOA2OffsetStream_readInputBlock__block_invoke;
  v8[3] = &unk_278CE8D50;
  *&v8[5] = v4;
  v8[4] = v3;
  v6 = MEMORY[0x245CEDA00](v8);

  return v6;
}

uint64_t __38__ASDTIOA2OffsetStream_readInputBlock__block_invoke(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3[11];
  v22 = a3[10];
  v23 = v8;
  v9 = a3[13];
  v24 = a3[12];
  v25 = v9;
  v10 = a3[7];
  v18 = a3[6];
  v19 = v10;
  v11 = a3[9];
  v20 = a3[8];
  v21 = v11;
  v12 = a3[3];
  v16[2] = a3[2];
  v16[3] = v12;
  v13 = a3[5];
  v16[4] = a3[4];
  v17 = v13;
  v14 = a3[1];
  v16[0] = *a3;
  v16[1] = v14;
  *&v17 = *&v17 - *(a1 + 40);
  return (*(*(a1 + 32) + 16))(*(a1 + 32), a2, v16, a4, a5, a6, a7, a8);
}

- (void)readInputBlock
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a2;
  _os_log_debug_impl(&dword_2416BA000, log, OS_LOG_TYPE_DEBUG, "Stream samples offset frames: %1.0lf", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end