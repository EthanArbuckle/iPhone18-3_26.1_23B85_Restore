@interface AVCRTCPSourceDescription
- (AVCRTCPSourceDescription)initWithRTCPPacket:(tagRTCPPACKET *)a3;
- (id)description;
- (void)dealloc;
@end

@implementation AVCRTCPSourceDescription

- (AVCRTCPSourceDescription)initWithRTCPPacket:(tagRTCPPACKET *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = AVCRTCPSourceDescription;
  v4 = [(AVCRTCPPacket *)&v7 initWithRTCPPacket:?];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3->var1.var2.var1.var0;
    v4->_text = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&a3->var1.var5.var0.var1 + 2 length:a3->var1.var2.var1.var1 encoding:1];
  }

  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = AVCRTCPSourceDescription;
  [(AVCRTCPSourceDescription *)&v3 dealloc];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = AVCRTCPSourceDescription;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, type:%u, text:%@", -[AVCRTCPPacket description](&v3, sel_description), -[AVCRTCPSourceDescription type](self, "type"), -[AVCRTCPSourceDescription text](self, "text")];
}

@end