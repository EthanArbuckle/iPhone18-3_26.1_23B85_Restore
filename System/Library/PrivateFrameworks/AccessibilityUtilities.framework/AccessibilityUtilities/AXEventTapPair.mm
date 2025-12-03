@interface AXEventTapPair
- (id)description;
- (void)dealloc;
@end

@implementation AXEventTapPair

- (void)dealloc
{
  systemClient = self->_systemClient;
  if (systemClient)
  {
    CFRelease(systemClient);
    self->_systemClient = 0;
  }

  v4.receiver = self;
  v4.super_class = AXEventTapPair;
  [(AXEventTapPair *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  priority = [(AXEventTapPair *)self priority];
  identifier = [(AXEventTapPair *)self identifier];
  v6 = [v3 stringWithFormat:@"EventTap: %d - %@", priority, identifier];

  return v6;
}

@end