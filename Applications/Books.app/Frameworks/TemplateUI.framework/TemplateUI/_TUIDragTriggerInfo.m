@interface _TUIDragTriggerInfo
- (_TUIDragTriggerInfo)initWithActionObject:(id)a3 behavior:(id)a4 arguments:(id)a5;
@end

@implementation _TUIDragTriggerInfo

- (_TUIDragTriggerInfo)initWithActionObject:(id)a3 behavior:(id)a4 arguments:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _TUIDragTriggerInfo;
  v12 = [(_TUIDragTriggerInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_actionObject, a3);
    objc_storeStrong(&v13->_behavior, a4);
    objc_storeStrong(&v13->_arguments, a5);
  }

  return v13;
}

@end