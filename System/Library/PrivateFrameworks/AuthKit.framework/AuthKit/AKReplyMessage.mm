@interface AKReplyMessage
- (AKReplyMessage)init;
- (BOOL)didSucceed;
- (NSError)error;
- (id)description;
- (void)setDidSucceed:(BOOL)a3;
- (void)setError:(id)a3;
- (void)setReplyToID:(id)a3;
- (void)setReturnData:(id)a3;
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

- (void)setReplyToID:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSMutableDictionary *)v4->super._properties setObject:location[0] forKeyedSubscript:@"akrid"];
  objc_storeStrong(location, 0);
}

- (BOOL)didSucceed
{
  v3 = [(NSMutableDictionary *)self->super._properties objectForKeyedSubscript:@"aksuc"];
  v4 = [v3 BOOLValue];
  _objc_release(v3);
  return v4;
}

- (void)setDidSucceed:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
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

- (void)setError:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v3 = [location[0] ac_secureCodingError];
    v4 = [NSKeyedArchiver archivedDataWithRootObject:"archivedDataWithRootObject:requiringSecureCoding:error:" requiringSecureCoding:? error:?];
    _objc_release(v3);
    [(NSMutableDictionary *)v6->super._properties setObject:v4 forKeyedSubscript:@"akerd"];
    objc_storeStrong(&v4, 0);
  }

  else
  {
    [(NSMutableDictionary *)v6->super._properties removeObjectForKey:@"akerd"];
  }

  objc_storeStrong(location, 0);
}

- (void)setReturnData:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    [(NSMutableDictionary *)v4->super._properties setObject:location[0] forKeyedSubscript:@"akret"];
  }

  else
  {
    [(NSMutableDictionary *)v4->super._properties removeObjectForKey:@"akret"];
  }

  objc_storeStrong(location, 0);
}

- (id)description
{
  v16 = self;
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

  v7 = v16;
  v11 = [(_AKMessage *)v16 identifier];
  v10 = [(AKReplyMessage *)v16 replyToID];
  v4 = [(AKReplyMessage *)v16 didSucceed];
  v5 = @"YES";
  if ((v4 & 1) == 0)
  {
    v5 = @"NO";
  }

  v8 = v5;
  v9 = [(AKReplyMessage *)v16 error];
  v12 = [NSString stringWithFormat:@"\nAKReplyMessage <%p> {\nInternal ID: %@, \nReply-To: %@, \nSuccess: %@, \nError: %@, \nRD: %@ }", v7, v11, v10, v8, v9, location[0]];
  _objc_release(v9);
  _objc_release(v10);
  _objc_release(v11);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);

  return v12;
}

@end