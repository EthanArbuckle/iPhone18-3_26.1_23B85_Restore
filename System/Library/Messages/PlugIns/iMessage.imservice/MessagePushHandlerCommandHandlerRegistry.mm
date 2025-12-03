@interface MessagePushHandlerCommandHandlerRegistry
- (id)noopHandlerForCommand:(id)command;
@end

@implementation MessagePushHandlerCommandHandlerRegistry

- (id)noopHandlerForCommand:(id)command
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_41120;
  v6[3] = &unk_112B58;
  commandCopy = command;
  v3 = commandCopy;
  v4 = objc_retainBlock(v6);

  return v4;
}

@end