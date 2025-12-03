@interface CNHandleBlockingTestDouble
- (BOOL)isHandleBlocked:(id)blocked;
- (CNHandleBlockingTestDouble)init;
- (void)setBlocked:(BOOL)blocked forHandle:(id)handle;
@end

@implementation CNHandleBlockingTestDouble

- (CNHandleBlockingTestDouble)init
{
  v7.receiver = self;
  v7.super_class = CNHandleBlockingTestDouble;
  v2 = [(CNHandleBlockingTestDouble *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    handles = v2->_handles;
    v2->_handles = v3;

    v5 = v2;
  }

  return v2;
}

- (BOOL)isHandleBlocked:(id)blocked
{
  blockedCopy = blocked;
  v5 = [objc_opt_class() normalizeHandle:blockedCopy];

  LOBYTE(self) = [(NSMutableSet *)self->_handles containsObject:v5];
  return self;
}

- (void)setBlocked:(BOOL)blocked forHandle:(id)handle
{
  blockedCopy = blocked;
  handleCopy = handle;
  v8 = [objc_opt_class() normalizeHandle:handleCopy];

  handles = self->_handles;
  if (blockedCopy)
  {
    [(NSMutableSet *)handles addObject:v8];
  }

  else
  {
    [(NSMutableSet *)handles removeObject:v8];
  }
}

@end