@interface CNHandleBlockingTestDouble
- (BOOL)isHandleBlocked:(id)a3;
- (CNHandleBlockingTestDouble)init;
- (void)setBlocked:(BOOL)a3 forHandle:(id)a4;
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

- (BOOL)isHandleBlocked:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() normalizeHandle:v4];

  LOBYTE(self) = [(NSMutableSet *)self->_handles containsObject:v5];
  return self;
}

- (void)setBlocked:(BOOL)a3 forHandle:(id)a4
{
  v4 = a3;
  v6 = a4;
  v8 = [objc_opt_class() normalizeHandle:v6];

  handles = self->_handles;
  if (v4)
  {
    [(NSMutableSet *)handles addObject:v8];
  }

  else
  {
    [(NSMutableSet *)handles removeObject:v8];
  }
}

@end