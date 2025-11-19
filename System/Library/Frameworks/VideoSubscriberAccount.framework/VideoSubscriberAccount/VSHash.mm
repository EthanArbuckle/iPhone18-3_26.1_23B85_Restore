@interface VSHash
- (CC_SHA256state_st)ctx;
- (NSData)finalData;
- (VSHash)init;
- (void)dealloc;
- (void)setCtx:(CC_SHA256state_st *)a3;
- (void)updateWithData:(id)a3;
- (void)updateWithDate:(id)a3;
- (void)updateWithInteger:(int64_t)a3;
- (void)updateWithString:(id)a3;
- (void)updateWithUUID:(id)a3;
@end

@implementation VSHash

- (VSHash)init
{
  v5.receiver = self;
  v5.super_class = VSHash;
  v2 = [(VSHash *)&v5 init];
  v3 = v2;
  if (v2)
  {
    CC_SHA256_Init(&v2->_ctx);
  }

  return v3;
}

- (void)dealloc
{
  if (!self->_finalized)
  {
    v3 = [(VSHash *)self finalData];
  }

  v4.receiver = self;
  v4.super_class = VSHash;
  [(VSHash *)&v4 dealloc];
}

- (void)updateWithData:(id)a3
{
  v4 = a3;
  if ([(VSHash *)self isFinalized])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Cannot update a hash that has been finalized."];
  }

  v5 = [v4 bytes];
  v6 = [v4 length];

  CC_SHA256_Update(&self->_ctx, v5, v6);
}

- (NSData)finalData
{
  v8 = *MEMORY[0x277D85DE8];
  if (![(VSHash *)self isFinalized])
  {
    [(VSHash *)self setFinalized:1];
    CC_SHA256_Final(md, &self->_ctx);
    v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:md length:32];
    finalData = self->_finalData;
    self->_finalData = v3;
  }

  v5 = self->_finalData;

  return v5;
}

- (CC_SHA256state_st)ctx
{
  v3 = *&self->wbuf[8];
  v4 = *self[1].count;
  *&retstr->wbuf[6] = *&self->wbuf[12];
  *&retstr->wbuf[10] = v4;
  *&retstr->wbuf[14] = *&self[1].hash[2];
  v5 = *self->wbuf;
  *retstr->count = *&self->hash[4];
  *&retstr->hash[2] = v5;
  *&retstr->hash[6] = *&self->wbuf[4];
  *&retstr->wbuf[2] = v3;
  return self;
}

- (void)setCtx:(CC_SHA256state_st *)a3
{
  v3 = *a3->count;
  v4 = *&a3->hash[2];
  *&self->_ctx.hash[6] = *&a3->hash[6];
  *&self->_ctx.hash[2] = v4;
  *self->_ctx.count = v3;
  v5 = *&a3->wbuf[2];
  v6 = *&a3->wbuf[6];
  v7 = *&a3->wbuf[10];
  *&self->_ctx.wbuf[14] = *&a3->wbuf[14];
  *&self->_ctx.wbuf[10] = v7;
  *&self->_ctx.wbuf[6] = v6;
  *&self->_ctx.wbuf[2] = v5;
}

- (void)updateWithString:(id)a3
{
  v5 = a3;
  v6 = [a3 UTF8String];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v6 length:strlen(v6)];
    [(VSHash *)self updateWithData:v7];
  }
}

- (void)updateWithDate:(id)a3
{
  [a3 timeIntervalSinceReferenceDate];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", v4];
  [(VSHash *)self updateWithString:v5];
}

- (void)updateWithInteger:(int64_t)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a3];
  [(VSHash *)self updateWithString:v4];
}

- (void)updateWithUUID:(id)a3
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v5[1] = 0;
  [a3 getUUIDBytes:v5];
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v5 length:16];
  [(VSHash *)self updateWithData:v4];
}

@end