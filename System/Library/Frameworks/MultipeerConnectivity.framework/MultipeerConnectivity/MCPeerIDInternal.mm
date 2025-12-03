@interface MCPeerIDInternal
- (MCPeerIDInternal)initWithIDString:(id)string pid64:(unint64_t)pid64 displayName:(id)name;
- (void)dealloc;
@end

@implementation MCPeerIDInternal

- (MCPeerIDInternal)initWithIDString:(id)string pid64:(unint64_t)pid64 displayName:(id)name
{
  v10.receiver = self;
  v10.super_class = MCPeerIDInternal;
  v8 = [(MCPeerIDInternal *)&v10 init];
  if (v8)
  {
    v8->_idString = [string copy];
    v8->_pid64 = pid64;
    v8->_displayName = [name copy];
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MCPeerIDInternal;
  [(MCPeerIDInternal *)&v3 dealloc];
}

@end