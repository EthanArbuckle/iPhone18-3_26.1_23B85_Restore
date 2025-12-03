@interface _GCDeviceSpatialComponent
- (_GCDeviceSpatialComponent)init;
- (_GCDeviceSpatialComponent)initWithIdentifier:(id)identifier facade:(id)facade;
@end

@implementation _GCDeviceSpatialComponent

- (_GCDeviceSpatialComponent)initWithIdentifier:(id)identifier facade:(id)facade
{
  facadeCopy = facade;
  v13.receiver = self;
  v13.super_class = _GCDeviceSpatialComponent;
  identifierCopy = identifier;
  v8 = [(_GCDeviceSpatialComponent *)&v13 init];
  v9 = [identifierCopy copyWithZone:{0, v13.receiver, v13.super_class}];

  identifier = v8->_identifier;
  v8->_identifier = v9;

  facade = v8->_facade;
  v8->_facade = facadeCopy;

  return v8;
}

- (_GCDeviceSpatialComponent)init
{
  [(_GCDeviceSpatialComponent *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end