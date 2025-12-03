@interface VSHash
- (CC_SHA256state_st)ctx;
- (NSData)finalData;
- (VSHash)init;
- (void)dealloc;
- (void)setCtx:(CC_SHA256state_st *)ctx;
- (void)updateWithData:(id)data;
- (void)updateWithDate:(id)date;
- (void)updateWithInteger:(int64_t)integer;
- (void)updateWithString:(id)string;
- (void)updateWithUUID:(id)d;
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
    finalData = [(VSHash *)self finalData];
  }

  v4.receiver = self;
  v4.super_class = VSHash;
  [(VSHash *)&v4 dealloc];
}

- (void)updateWithData:(id)data
{
  dataCopy = data;
  if ([(VSHash *)self isFinalized])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Cannot update a hash that has been finalized."];
  }

  bytes = [dataCopy bytes];
  v6 = [dataCopy length];

  CC_SHA256_Update(&self->_ctx, bytes, v6);
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

- (void)setCtx:(CC_SHA256state_st *)ctx
{
  v3 = *ctx->count;
  v4 = *&ctx->hash[2];
  *&self->_ctx.hash[6] = *&ctx->hash[6];
  *&self->_ctx.hash[2] = v4;
  *self->_ctx.count = v3;
  v5 = *&ctx->wbuf[2];
  v6 = *&ctx->wbuf[6];
  v7 = *&ctx->wbuf[10];
  *&self->_ctx.wbuf[14] = *&ctx->wbuf[14];
  *&self->_ctx.wbuf[10] = v7;
  *&self->_ctx.wbuf[6] = v6;
  *&self->_ctx.wbuf[2] = v5;
}

- (void)updateWithString:(id)string
{
  stringCopy = string;
  uTF8String = [string UTF8String];
  if (uTF8String)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:uTF8String length:strlen(uTF8String)];
    [(VSHash *)self updateWithData:v7];
  }
}

- (void)updateWithDate:(id)date
{
  [date timeIntervalSinceReferenceDate];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", v4];
  [(VSHash *)self updateWithString:v5];
}

- (void)updateWithInteger:(int64_t)integer
{
  integer = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", integer];
  [(VSHash *)self updateWithString:integer];
}

- (void)updateWithUUID:(id)d
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v5[1] = 0;
  [d getUUIDBytes:v5];
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v5 length:16];
  [(VSHash *)self updateWithData:v4];
}

@end