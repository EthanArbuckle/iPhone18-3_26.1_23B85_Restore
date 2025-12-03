@interface _AKMessage
+ (id)messageFromTransportRepresentation:(id)representation;
+ (unint64_t)typeForMessageWithTransportRepresentation:(id)representation;
- (_AKMessage)init;
- (unint64_t)type;
@end

@implementation _AKMessage

+ (unint64_t)typeForMessageWithTransportRepresentation:(id)representation
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, representation);
  v4 = [location[0] objectForKeyedSubscript:@"aktyp"];
  unsignedIntegerValue = [v4 unsignedIntegerValue];
  _objc_release(v4);
  objc_storeStrong(location, 0);
  return unsignedIntegerValue;
}

+ (id)messageFromTransportRepresentation:(id)representation
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, representation);
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
    uUIDString = [(NSUUID *)v7 UUIDString];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    _objc_release(uUIDString);
    _objc_release(v7);
  }

  v5 = _objc_retain(v10);
  objc_storeStrong(&v10, 0);
  return v5;
}

- (unint64_t)type
{
  v3 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:@"aktyp"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];
  _objc_release(v3);
  return unsignedIntegerValue;
}

@end