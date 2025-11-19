@interface AKCommandMessage
- (AKCommandMessage)init;
- (id)description;
- (unint64_t)command;
- (void)setArgument:(id)a3;
- (void)setCommand:(unint64_t)a3;
@end

@implementation AKCommandMessage

- (AKCommandMessage)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = AKCommandMessage;
  v6 = [(_AKMessage *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    [(NSMutableDictionary *)v6->super._properties setObject:&off_100338F80 forKeyedSubscript:@"aktyp"];
  }

  v3 = _objc_retain(v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (unint64_t)command
{
  v3 = [(NSMutableDictionary *)self->super._properties objectForKeyedSubscript:@"akcmd"];
  v4 = [v3 unsignedIntegerValue];
  _objc_release(v3);
  return v4;
}

- (void)setCommand:(unint64_t)a3
{
  v3 = [NSNumber numberWithUnsignedInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v3);
}

- (void)setArgument:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSMutableDictionary *)v4->super._properties setObject:location[0] forKeyedSubscript:@"akarg"];
  objc_storeStrong(location, 0);
}

- (id)description
{
  v6 = [(_AKMessage *)self identifier];
  v5 = [NSNumber numberWithUnsignedInteger:[(AKCommandMessage *)self command]];
  v4 = [(AKCommandMessage *)self argument];
  v7 = [NSString stringWithFormat:@"\nAKCommandMessage <%p> {\nInternal ID: %@, \nCommand: %@, \nArgument: %@ }", self, v6, v5, v4];
  _objc_release(v4);
  _objc_release(v5);
  _objc_release(v6);

  return v7;
}

@end