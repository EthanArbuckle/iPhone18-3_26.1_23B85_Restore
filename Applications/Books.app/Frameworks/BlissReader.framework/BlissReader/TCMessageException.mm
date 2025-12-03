@interface TCMessageException
+ (id)exceptionWithMessage:(TCTaggedMessageStructure *)message;
+ (id)exceptionWithUntaggedMessage:(id)message;
+ (id)nsError:(id)error domain:(id)domain;
+ (void)initialize;
+ (void)raise:(TCTaggedMessageStructure *)raise;
+ (void)raiseUntaggedMessage:(id)message;
- (TCMessageException)initWithMessage:(TCTaggedMessageStructure *)message;
- (TCMessageException)initWithUntaggedMessage:(id)message;
- (void)dealloc;
@end

@implementation TCMessageException

+ (void)initialize
{
  if (objc_opt_class() == self && (byte_567974 & 1) == 0)
  {
    byte_567974 = 1;

    objc_opt_class();
  }
}

- (TCMessageException)initWithMessage:(TCTaggedMessageStructure *)message
{
  v6.receiver = self;
  v6.super_class = TCMessageException;
  v4 = [(TCMessageException *)&v6 initWithName:@"TCMessageException" reason:0 userInfo:0];
  if (v4)
  {
    v4->m_entry = [[TCMessageEntry alloc] initWithTag:message->var0 affectedObject:0 text:message->var1 parameters:&v7];
  }

  return v4;
}

- (TCMessageException)initWithUntaggedMessage:(id)message
{
  v6.receiver = self;
  v6.super_class = TCMessageException;
  v4 = [(TCMessageException *)&v6 initWithName:@"TCMessageException" reason:0 userInfo:0];
  if (v4)
  {
    v4->m_entry = [[TCMessageEntry alloc] initWithTag:0xFFFFFFFFLL affectedObject:0 text:message parameters:&v7];
  }

  return v4;
}

+ (id)exceptionWithMessage:(TCTaggedMessageStructure *)message
{
  v4 = [[self alloc] initWithName:@"TCMessageException" reason:0 userInfo:0];
  if (v4)
  {
    v4[5] = [[TCMessageEntry alloc] initWithTag:message->var0 affectedObject:0 text:message->var1 parameters:&v6];
  }

  return v4;
}

+ (id)exceptionWithUntaggedMessage:(id)message
{
  v4 = [[self alloc] initWithName:@"TCMessageException" reason:0 userInfo:0];
  if (v4)
  {
    v4[5] = [[TCMessageEntry alloc] initWithTag:0xFFFFFFFFLL affectedObject:0 text:message parameters:&v6];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TCMessageException;
  [(TCMessageException *)&v3 dealloc];
}

+ (void)raise:(TCTaggedMessageStructure *)raise
{
  v4 = [TCMessageException exceptionWithName:@"TCMessageException" reason:0 userInfo:0];
  v4->m_entry = [[TCMessageEntry alloc] initWithTag:raise->var0 affectedObject:0 text:raise->var1 parameters:&v5];
  [(TCMessageException *)v4 raise];
}

+ (void)raiseUntaggedMessage:(id)message
{
  v4 = [TCMessageException exceptionWithName:@"TCMessageException" reason:0 userInfo:0];
  v4->m_entry = [[TCMessageEntry alloc] initWithTag:0xFFFFFFFFLL affectedObject:0 text:message parameters:&v5];
  [(TCMessageException *)v4 raise];
}

+ (id)nsError:(id)error domain:(id)domain
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [objc_msgSend(error "getEntry")];
    v7 = [objc_msgSend(error "getEntry")];
  }

  else
  {
    v8 = TCUnknownProblemMessage;
    v9 = [objc_msgSend(error "name")];
    v7 = 0;
    v10 = TCOutOfMemoryMessage;
    if (!v9)
    {
      v10 = v8;
    }

    v6 = *(v10 + 8);
  }

  if ([v6 isEqualToString:@"TCUserCancelled"])
  {
    v11 = 0;
    domain = NSCocoaErrorDomain;
    v7 = 3072;
  }

  else
  {
    v11 = [NSDictionary dictionaryWithObjectsAndKeys:v6, NSLocalizedDescriptionKey, 0];
  }

  userInfo = [error userInfo];
  v13 = objc_opt_class();
  result = [userInfo objectForKeyedSubscript:NSStringFromClass(v13)];
  if (!result)
  {

    return [NSError errorWithDomain:domain code:v7 userInfo:v11];
  }

  return result;
}

@end