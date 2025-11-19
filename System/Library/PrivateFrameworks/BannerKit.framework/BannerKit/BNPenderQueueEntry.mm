@interface BNPenderQueueEntry
- (BNPenderQueueEntry)initWithPender:(id)a3;
@end

@implementation BNPenderQueueEntry

- (BNPenderQueueEntry)initWithPender:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(BNPenderQueueEntry *)a2 initWithPender:?];
  }

  v12.receiver = self;
  v12.super_class = BNPenderQueueEntry;
  v7 = [(BNPenderQueueEntry *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_pender, a3);
    v9 = [MEMORY[0x1E696AFB0] UUID];
    entryIdentifier = v8->_entryIdentifier;
    v8->_entryIdentifier = v9;
  }

  return v8;
}

- (void)initWithPender:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BNPenderQueue.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"pender"}];
}

@end