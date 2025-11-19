@interface _GCDeviceSpatialComponent
- (_GCDeviceSpatialComponent)init;
- (_GCDeviceSpatialComponent)initWithIdentifier:(id)a3 facade:(id)a4;
@end

@implementation _GCDeviceSpatialComponent

- (_GCDeviceSpatialComponent)initWithIdentifier:(id)a3 facade:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = _GCDeviceSpatialComponent;
  v7 = a3;
  v8 = [(_GCDeviceSpatialComponent *)&v13 init];
  v9 = [v7 copyWithZone:{0, v13.receiver, v13.super_class}];

  identifier = v8->_identifier;
  v8->_identifier = v9;

  facade = v8->_facade;
  v8->_facade = v6;

  return v8;
}

- (_GCDeviceSpatialComponent)init
{
  [(_GCDeviceSpatialComponent *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end