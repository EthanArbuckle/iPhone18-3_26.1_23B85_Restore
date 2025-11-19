@interface SCNActionMove
+ (id)moveByX:(double)a3 y:(double)a4 z:(double)a5 duration:(double)a6;
+ (id)moveToX:(double)a3 y:(double)a4 z:(double)a5 duration:(double)a6;
- (SCNActionMove)init;
- (SCNActionMove)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)parameters;
- (id)reversedAction;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCNActionMove

- (SCNActionMove)init
{
  v3.receiver = self;
  v3.super_class = SCNActionMove;
  if ([(SCNAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (SCNActionMove)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SCNActionMove;
  if ([(SCNAction *)&v4 initWithCoder:?])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SCNActionMove;
  [(SCNAction *)&v5 encodeWithCoder:?];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", self->_mycaction->var19), @"_lastRatio"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", *&self->_mycaction[1].var2), @"_posTarget.x"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", *(&self->_mycaction[1].var2 + 1)), @"_posTarget.y"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", *&self->_mycaction[1].var3), @"_posTarget.z"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", *&self->_mycaction[1].var4), @"_posTargetReversed.x"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", *(&self->_mycaction[1].var4 + 1)), @"_posTargetReversed.y"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", *&self->_mycaction[1].var5), @"_posTargetReversed.z"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", *&self->_mycaction[1].var0), @"_posStart.x"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", *(&self->_mycaction[1].var0 + 1)), @"_posStart.y"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", *&self->_mycaction[1].var1), @"_posStart.z"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", LOBYTE(self->_mycaction[1].var6)), @"_isReversed"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", BYTE1(self->_mycaction[1].var6)), @"_isRelative"}];
}

+ (id)moveByX:(double)a3 y:(double)a4 z:(double)a5 duration:(double)a6
{
  v10 = objc_alloc_init(SCNActionMove);
  v11 = a3;
  *&v10->_mycaction[1].var2 = v11;
  v12 = a4;
  *(&v10->_mycaction[1].var2 + 1) = v12;
  v13 = a5;
  *&v10->_mycaction[1].var3 = v13;
  *&v10->_mycaction[1].var4 = -v11;
  *(&v10->_mycaction[1].var4 + 1) = -v12;
  *&v10->_mycaction[1].var5 = -v13;
  LOWORD(v10->_mycaction[1].var6) = 256;
  [(SCNAction *)v10 setDuration:a6];
  return v10;
}

+ (id)moveToX:(double)a3 y:(double)a4 z:(double)a5 duration:(double)a6
{
  v10 = objc_alloc_init(SCNActionMove);
  v11 = a3;
  *&v10->_mycaction[1].var2 = v11;
  v12 = a4;
  *(&v10->_mycaction[1].var2 + 1) = v12;
  v13 = a5;
  *&v10->_mycaction[1].var3 = v13;
  *&v10->_mycaction[1].var4 = v11;
  *(&v10->_mycaction[1].var4 + 1) = v12;
  *&v10->_mycaction[1].var5 = v13;
  BYTE1(v10->_mycaction[1].var6) = 0;
  [(SCNAction *)v10 setDuration:a6];
  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = SCNActionMove;
  result = [(SCNAction *)&v7 copyWithZone:a3];
  mycaction = self->_mycaction;
  v6 = *(result + 2);
  *(v6 + 144) = mycaction->var19;
  *(v6 + 176) = *&mycaction[1].var2;
  *(*(result + 2) + 192) = *&self->_mycaction[1].var4;
  *(*(result + 2) + 160) = *&self->_mycaction[1].var0;
  *(*(result + 2) + 208) = LOWORD(self->_mycaction[1].var6);
  return result;
}

- (id)reversedAction
{
  v3 = MEMORY[0x21CF072F0](self, a2);
  v10.receiver = self;
  v10.super_class = SCNActionMove;
  v4 = [(SCNAction *)&v10 copyWithZone:v3];
  mycaction = self->_mycaction;
  v6 = v4[2];
  *(v6 + 144) = mycaction->var19;
  *(v6 + 176) = *&mycaction[1].var4;
  *(v4[2] + 192) = *&self->_mycaction[1].var2;
  *(v4[2] + 160) = *&self->_mycaction[1].var0;
  v7 = self->_mycaction;
  v8 = v4[2];
  *(v8 + 209) = BYTE1(v7[1].var6);
  *(v8 + 208) = LOBYTE(v7[1].var6) ^ 1;
  return v4;
}

- (id)parameters
{
  v7[3] = *MEMORY[0x277D85DE8];
  LODWORD(v2) = self->_mycaction[1].var2;
  v7[0] = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  LODWORD(v4) = HIDWORD(self->_mycaction[1].var2);
  v7[1] = [MEMORY[0x277CCABB0] numberWithFloat:{v4, v7[0]}];
  LODWORD(v5) = self->_mycaction[1].var3;
  v7[2] = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  return [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
}

@end