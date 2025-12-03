@interface _TUIDragTriggerInfo
- (_TUIDragTriggerInfo)initWithActionObject:(id)object behavior:(id)behavior arguments:(id)arguments;
@end

@implementation _TUIDragTriggerInfo

- (_TUIDragTriggerInfo)initWithActionObject:(id)object behavior:(id)behavior arguments:(id)arguments
{
  objectCopy = object;
  behaviorCopy = behavior;
  argumentsCopy = arguments;
  v15.receiver = self;
  v15.super_class = _TUIDragTriggerInfo;
  v12 = [(_TUIDragTriggerInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_actionObject, object);
    objc_storeStrong(&v13->_behavior, behavior);
    objc_storeStrong(&v13->_arguments, arguments);
  }

  return v13;
}

@end