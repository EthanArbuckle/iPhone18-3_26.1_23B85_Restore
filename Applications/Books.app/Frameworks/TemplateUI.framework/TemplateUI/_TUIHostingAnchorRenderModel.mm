@interface _TUIHostingAnchorRenderModel
- (_TUIHostingAnchorRenderModel)initWithIdentifier:(id)a3 submodel:(id)a4 hostingIdentifier:(id)a5 hostingProperties:(id)a6;
@end

@implementation _TUIHostingAnchorRenderModel

- (_TUIHostingAnchorRenderModel)initWithIdentifier:(id)a3 submodel:(id)a4 hostingIdentifier:(id)a5 hostingProperties:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = _TUIHostingAnchorRenderModel;
  v13 = [(TUIRenderModelView *)&v16 initWithReuseIdentifier:@"TUIReuseIdentifierHostingAnchorView" identifier:a3 submodel:a4];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_hostingIdentifier, a5);
    objc_storeStrong(&v14->_hostingProperties, a6);
  }

  return v14;
}

@end