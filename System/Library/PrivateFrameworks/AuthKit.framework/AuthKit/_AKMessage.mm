@interface _AKMessage
+ (id)messageFromTransportRepresentation:(id)a3;
+ (unint64_t)typeForMessageWithTransportRepresentation:(id)a3;
- (_AKMessage)init;
- (unint64_t)type;
@end

@implementation _AKMessage

+ (unint64_t)typeForMessageWithTransportRepresentation:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [location[0] objectForKeyedSubscript:@"aktyp"];
  v5 = [v4 unsignedIntegerValue];
  _objc_release(v4);
  objc_storeStrong(location, 0);
  return v5;
}

+ (id)messageFromTransportRepresentation:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = objc_alloc_init(objc_opt_class());
  v3 = [location[0] mutableCopy];
  v4 = v7[1];
  v7[1] = v3;
  _objc_release(v4);
  v6 = _objc_retain(v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (_AKMessage)init
{
  v9 = a2;
  v10 = 0;
  v8.receiver = self;
  v8.super_class = _AKMessage;
  v10 = [(_AKMessage *)&v8 init];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    properties = v10->_properties;
    v10->_properties = v2;
    _objc_release(properties);
    v7 = +[NSUUID UUID];
    v6 = [(NSUUID *)v7 UUIDString];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    _objc_release(v6);
    _objc_release(v7);
  }

  v5 = _objc_retain(v10);
  objc_storeStrong(&v10, 0);
  return v5;
}

- (unint64_t)type
{
  v3 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:@"aktyp"];
  v4 = [v3 unsignedIntegerValue];
  _objc_release(v3);
  return v4;
}

@end