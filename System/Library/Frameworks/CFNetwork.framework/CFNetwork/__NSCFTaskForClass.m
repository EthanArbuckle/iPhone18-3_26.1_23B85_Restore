@interface __NSCFTaskForClass
- (void)dealloc;
@end

@implementation __NSCFTaskForClass

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, 0, 8);
    objc_setProperty_atomic(self, v3, 0, 16);
    objc_setProperty_atomic(self, v4, 0, 24);
    objc_setProperty_atomic(self, v5, 0, 32);
    objc_setProperty_atomic(self, v6, 0, 40);
    objc_setProperty_atomic_copy(self, v7, 0, 48);
    objc_setProperty_atomic(self, v8, 0, 56);
    objc_setProperty_atomic(self, v9, 0, 64);
    objc_setProperty_atomic_copy(self, v10, 0, 72);
    objc_setProperty_atomic(self, v11, 0, 80);
  }

  group = self->_group;
  if (group)
  {

    self->_group = 0;
  }

  v13.receiver = self;
  v13.super_class = __NSCFTaskForClass;
  [(__NSCFTaskForClass *)&v13 dealloc];
}

@end