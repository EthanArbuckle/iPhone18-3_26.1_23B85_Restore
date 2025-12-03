@interface MTRUnitTestingClusterTestEventEvent
- (MTRUnitTestingClusterTestEventEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRUnitTestingClusterTestEventEvent

- (MTRUnitTestingClusterTestEventEvent)init
{
  v14.receiver = self;
  v14.super_class = MTRUnitTestingClusterTestEventEvent;
  v2 = [(MTRUnitTestingClusterTestEventEvent *)&v14 init];
  v3 = v2;
  if (v2)
  {
    arg1 = v2->_arg1;
    v2->_arg1 = &unk_284C3E588;

    arg2 = v3->_arg2;
    v3->_arg2 = &unk_284C3E588;

    arg3 = v3->_arg3;
    v3->_arg3 = &unk_284C3E588;

    v7 = objc_opt_new();
    arg4 = v3->_arg4;
    v3->_arg4 = v7;

    array = [MEMORY[0x277CBEA60] array];
    arg5 = v3->_arg5;
    v3->_arg5 = array;

    array2 = [MEMORY[0x277CBEA60] array];
    arg6 = v3->_arg6;
    v3->_arg6 = array2;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRUnitTestingClusterTestEventEvent);
  arg1 = [(MTRUnitTestingClusterTestEventEvent *)self arg1];
  [(MTRUnitTestingClusterTestEventEvent *)v4 setArg1:arg1];

  arg2 = [(MTRUnitTestingClusterTestEventEvent *)self arg2];
  [(MTRUnitTestingClusterTestEventEvent *)v4 setArg2:arg2];

  arg3 = [(MTRUnitTestingClusterTestEventEvent *)self arg3];
  [(MTRUnitTestingClusterTestEventEvent *)v4 setArg3:arg3];

  arg4 = [(MTRUnitTestingClusterTestEventEvent *)self arg4];
  [(MTRUnitTestingClusterTestEventEvent *)v4 setArg4:arg4];

  arg5 = [(MTRUnitTestingClusterTestEventEvent *)self arg5];
  [(MTRUnitTestingClusterTestEventEvent *)v4 setArg5:arg5];

  arg6 = [(MTRUnitTestingClusterTestEventEvent *)self arg6];
  [(MTRUnitTestingClusterTestEventEvent *)v4 setArg6:arg6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: arg1:%@ arg2:%@; arg3:%@; arg4:%@; arg5:%@; arg6:%@; >", v5, self->_arg1, self->_arg2, self->_arg3, self->_arg4, self->_arg5, self->_arg6];;

  return v6;
}

@end