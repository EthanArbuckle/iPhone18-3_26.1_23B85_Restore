@interface NSXPCListenerEndpoint(BaseBoard)
- (id)initWithBSXPCCoder:()BaseBoard;
- (uint64_t)initWithXPCDictionary:()BaseBoard;
- (void)encodeWithBSXPCCoder:()BaseBoard;
- (void)encodeWithXPCDictionary:()BaseBoard;
@end

@implementation NSXPCListenerEndpoint(BaseBoard)

- (uint64_t)initWithXPCDictionary:()BaseBoard
{
  v2 = [BSXPCCoder coderWithMessage:?];
  v3 = [self initWithBSXPCCoder:v2];

  return v3;
}

- (void)encodeWithXPCDictionary:()BaseBoard
{
  v2 = [BSXPCCoder coderWithMessage:?];
  [self encodeWithBSXPCCoder:?];
}

- (void)encodeWithBSXPCCoder:()BaseBoard
{
  v5 = a3;
  _endpoint = [self _endpoint];
  [v5 encodeXPCObject:_endpoint forKey:@"endpt"];
}

- (id)initWithBSXPCCoder:()BaseBoard
{
  v4 = [a3 decodeXPCObjectOfType:MEMORY[0x1E69E9E90] forKey:@"endpt"];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696B0E0]);
    [v5 _setEndpoint:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end