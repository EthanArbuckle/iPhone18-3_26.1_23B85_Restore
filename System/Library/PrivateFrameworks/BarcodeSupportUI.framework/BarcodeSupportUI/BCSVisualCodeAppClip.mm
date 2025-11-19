@interface BCSVisualCodeAppClip
- (BCSVisualCodeAppClip)initWithCoder:(id)a3;
- (BCSVisualCodeAppClip)initWithPayloadString:(id)a3 version:(unint64_t)a4;
- (BCSVisualCodeAppClip)initWithRawPayload:(id)a3 version:(unint64_t)a4;
- (CGRect)boundingBox;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCSVisualCodeAppClip

- (BCSVisualCodeAppClip)initWithPayloadString:(id)a3 version:(unint64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = BCSVisualCodeAppClip;
  v7 = [(BCSVisualCodeAppClip *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    payloadString = v7->_payloadString;
    v7->_payloadString = v8;

    v7->_codeVersion = a4;
    v10 = v7;
  }

  return v7;
}

- (BCSVisualCodeAppClip)initWithRawPayload:(id)a3 version:(unint64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = BCSVisualCodeAppClip;
  v7 = [(BCSVisualCodeAppClip *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    rawDataPayload = v7->_rawDataPayload;
    v7->_rawDataPayload = v8;

    v7->_codeVersion = a4;
    v10 = v7;
  }

  return v7;
}

- (CGRect)boundingBox
{
  v25[5] = *MEMORY[0x277D85DE8];
  [(BCSVisualCode *)self topLeft];
  v4 = v3;
  v6 = v5;
  [(BCSVisualCode *)self topRight];
  v24 = v7;
  v25[0] = v8;
  [(BCSVisualCode *)self bottomLeft];
  v25[1] = v9;
  v25[2] = v10;
  [(BCSVisualCode *)self bottomRight];
  v11 = 0;
  v25[3] = v12;
  v25[4] = v13;
  v14 = v4;
  v15 = v6;
  do
  {
    v16 = *&v23[v11 * 8 + 16];
    v17 = *&v25[v11];
    if (v4 >= v16)
    {
      v4 = *&v23[v11 * 8 + 16];
    }

    if (v14 < v16)
    {
      v14 = *&v23[v11 * 8 + 16];
    }

    if (v6 >= v17)
    {
      v6 = *&v25[v11];
    }

    if (v15 < v17)
    {
      v15 = *&v25[v11];
    }

    v11 += 2;
  }

  while (v11 != 6);
  v18 = *MEMORY[0x277D85DE8];
  v19 = v14 - v4;
  v20 = v15 - v6;
  v21 = v4;
  v22 = v6;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  payloadString = self->_payloadString;
  v5 = a3;
  [v5 encodeObject:payloadString forKey:@"payloadString"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_codeVersion];
  [v5 encodeObject:v6 forKey:@"codeVersion"];

  [v5 encodeObject:self->_rawDataPayload forKey:@"rawDataPayload"];
  v7 = MEMORY[0x277CCAE60];
  [(BCSVisualCode *)self topLeft];
  v26[0] = v8;
  v26[1] = v9;
  v10 = [v7 valueWithBytes:v26 objCType:"{CGPoint=dd}"];
  [v5 encodeObject:v10 forKey:@"topLeft"];

  v11 = MEMORY[0x277CCAE60];
  [(BCSVisualCode *)self topRight];
  v25[0] = v12;
  v25[1] = v13;
  v14 = [v11 valueWithBytes:v25 objCType:"{CGPoint=dd}"];
  [v5 encodeObject:v14 forKey:@"topRight"];

  v15 = MEMORY[0x277CCAE60];
  [(BCSVisualCode *)self bottomRight];
  v24[0] = v16;
  v24[1] = v17;
  v18 = [v15 valueWithBytes:v24 objCType:"{CGPoint=dd}"];
  [v5 encodeObject:v18 forKey:@"bottomRight"];

  v19 = MEMORY[0x277CCAE60];
  [(BCSVisualCode *)self bottomLeft];
  v23[0] = v20;
  v23[1] = v21;
  v22 = [v19 valueWithBytes:v23 objCType:"{CGPoint=dd}"];
  [v5 encodeObject:v22 forKey:@"bottomLeft"];
}

- (BCSVisualCodeAppClip)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"codeVersion"];
  v6 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"payloadString"];
  if (v6)
  {
    v7 = -[BCSVisualCodeAppClip initWithPayloadString:version:]([BCSVisualCodeAppClip alloc], "initWithPayloadString:version:", v6, [v5 unsignedIntegerValue]);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"rawDataPayload"];
  if (v8)
  {
    v9 = -[BCSVisualCodeAppClip initWithRawPayload:version:]([BCSVisualCodeAppClip alloc], "initWithRawPayload:version:", v8, [v5 unsignedIntegerValue]);

    v7 = v9;
  }

  v10 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"topLeft"];
  [v10 CGPointValue];
  [(BCSVisualCode *)v7 setTopLeft:?];

  v11 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"topRight"];
  [v11 CGPointValue];
  [(BCSVisualCode *)v7 setTopRight:?];

  v12 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"bottomRight"];
  [v12 CGPointValue];
  [(BCSVisualCode *)v7 setBottomRight:?];

  v13 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"bottomLeft"];
  [v13 CGPointValue];
  [(BCSVisualCode *)v7 setBottomLeft:?];

  return v7;
}

@end