@interface MCPeerIDInternal
- (MCPeerIDInternal)initWithIDString:(id)a3 pid64:(unint64_t)a4 displayName:(id)a5;
- (void)dealloc;
@end

@implementation MCPeerIDInternal

- (MCPeerIDInternal)initWithIDString:(id)a3 pid64:(unint64_t)a4 displayName:(id)a5
{
  v10.receiver = self;
  v10.super_class = MCPeerIDInternal;
  v8 = [(MCPeerIDInternal *)&v10 init];
  if (v8)
  {
    v8->_idString = [a3 copy];
    v8->_pid64 = a4;
    v8->_displayName = [a5 copy];
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