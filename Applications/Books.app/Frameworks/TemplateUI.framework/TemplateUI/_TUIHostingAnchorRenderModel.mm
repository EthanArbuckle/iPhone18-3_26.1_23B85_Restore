@interface _TUIHostingAnchorRenderModel
- (_TUIHostingAnchorRenderModel)initWithIdentifier:(id)identifier submodel:(id)submodel hostingIdentifier:(id)hostingIdentifier hostingProperties:(id)properties;
@end

@implementation _TUIHostingAnchorRenderModel

- (_TUIHostingAnchorRenderModel)initWithIdentifier:(id)identifier submodel:(id)submodel hostingIdentifier:(id)hostingIdentifier hostingProperties:(id)properties
{
  hostingIdentifierCopy = hostingIdentifier;
  propertiesCopy = properties;
  v16.receiver = self;
  v16.super_class = _TUIHostingAnchorRenderModel;
  v13 = [(TUIRenderModelView *)&v16 initWithReuseIdentifier:@"TUIReuseIdentifierHostingAnchorView" identifier:identifier submodel:submodel];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_hostingIdentifier, hostingIdentifier);
    objc_storeStrong(&v14->_hostingProperties, properties);
  }

  return v14;
}

@end