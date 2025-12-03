@interface AKReplyMessage
- (AKReplyMessage)init;
- (BOOL)didSucceed;
- (NSError)error;
- (id)description;
- (void)setDidSucceed:(BOOL)succeed;
- (void)setError:(id)error;
- (void)setReplyToID:(id)d;
- (void)setReturnData:(id)data;
@end

@implementation AKReplyMessage

- (AKReplyMessage)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = AKReplyMessage;
  v6 = [(_AKMessage *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    [(NSMutableDictionary *)v6->super._properties setObject:&off_100338F98 forKeyedSubscript:@"aktyp"];
  }

  v3 = _objc_retain(v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (void)setReplyToID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  [(NSMutableDictionary *)selfCopy->super._properties setObject:location[0] forKeyedSubscript:@"akrid"];
  objc_storeStrong(location, 0);
}

- (BOOL)didSucceed
{
  v3 = [(NSMutableDictionary *)self->super._properties objectForKeyedSubscript:@"aksuc"];
  bOOLValue = [v3 BOOLValue];
  _objc_release(v3);
  return bOOLValue;
}

- (void)setDidSucceed:(BOOL)succeed
{
  v3 = [NSNumber numberWithBool:succeed];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v3);
}

- (NSError)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(NSMutableDictionary *)self->super._properties objectForKeyedSubscript:@"akerd"];
  if (location[0])
  {
    v4 = [NSSet setWithObject:objc_opt_class()];
    v6 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:"_strictlyUnarchivedObjectOfClasses:fromData:error:" fromData:? error:?];
    _objc_release(v4);
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v6;

  return v2;
}

- (void)setError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  if (location[0])
  {
    ac_secureCodingError = [location[0] ac_secureCodingError];
    v4 = [NSKeyedArchiver archivedDataWithRootObject:"archivedDataWithRootObject:requiringSecureCoding:error:" requiringSecureCoding:? error:?];
    _objc_release(ac_secureCodingError);
    [(NSMutableDictionary *)selfCopy->super._properties setObject:v4 forKeyedSubscript:@"akerd"];
    objc_storeStrong(&v4, 0);
  }

  else
  {
    [(NSMutableDictionary *)selfCopy->super._properties removeObjectForKey:@"akerd"];
  }

  objc_storeStrong(location, 0);
}

- (void)setReturnData:(id)data
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  if (location[0])
  {
    [(NSMutableDictionary *)selfCopy->super._properties setObject:location[0] forKeyedSubscript:@"akret"];
  }

  else
  {
    [(NSMutableDictionary *)selfCopy->super._properties removeObjectForKey:@"akret"];
  }

  objc_storeStrong(location, 0);
}

- (id)description
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  v14 = [(NSMutableDictionary *)self->super._properties objectForKeyedSubscript:@"akret"];
  if (v14)
  {
    v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v14 length]);
    v2 = [NSString stringWithFormat:@"NSData <%@ bytes>", v13];
    v3 = location[0];
    location[0] = v2;
    _objc_release(v3);
    _objc_release(v13);
  }

  else
  {
    objc_storeStrong(location, @"(none)");
  }

  v7 = selfCopy;
  identifier = [(_AKMessage *)selfCopy identifier];
  replyToID = [(AKReplyMessage *)selfCopy replyToID];
  didSucceed = [(AKReplyMessage *)selfCopy didSucceed];
  v5 = @"YES";
  if ((didSucceed & 1) == 0)
  {
    v5 = @"NO";
  }

  v8 = v5;
  error = [(AKReplyMessage *)selfCopy error];
  v12 = [NSString stringWithFormat:@"\nAKReplyMessage <%p> {\nInternal ID: %@, \nReply-To: %@, \nSuccess: %@, \nError: %@, \nRD: %@ }", v7, identifier, replyToID, v8, error, location[0]];
  _objc_release(error);
  _objc_release(replyToID);
  _objc_release(identifier);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);

  return v12;
}

@end