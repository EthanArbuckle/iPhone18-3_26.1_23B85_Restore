@interface _MTLDebugCommandEncoder
- (void)IOLog:(id)a3;
- (void)kprintf:(id)a3;
@end

@implementation _MTLDebugCommandEncoder

- (void)kprintf:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:a3 arguments:&v6];
  v5 = [v4 dataUsingEncoding:4 allowLossyConversion:1];
  -[_MTLDebugCommandEncoder kprintfBytes:length:](self, "kprintfBytes:length:", [v5 bytes], objc_msgSend(v5, "length"));
}

- (void)IOLog:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:a3 arguments:&v6];
  v5 = [v4 dataUsingEncoding:4 allowLossyConversion:1];
  -[_MTLDebugCommandEncoder IOLogBytes:length:](self, "IOLogBytes:length:", [v5 bytes], objc_msgSend(v5, "length"));
}

@end