@interface TUISmartGridDebugRenderModel
+ (id)renderModelWithSize:(CGSize)size columnSystem:(ColumnSystem *)system identifier:(id)identifier transform:(CGAffineTransform *)transform;
@end

@implementation TUISmartGridDebugRenderModel

+ (id)renderModelWithSize:(CGSize)size columnSystem:(ColumnSystem *)system identifier:(id)identifier transform:(CGAffineTransform *)transform
{
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  height = [[_TUISmartGridDebugLayerConfiguration alloc] initWithSize:system columnSystem:width, height];
  v12 = [[TUIRenderModelLayer alloc] initWithSubmodels:0 config:height erasableInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  v13 = [identifierCopy tui_identifierByAppendingString:@"debug"];
  v14 = [TUILayerContainerView renderModelWithLayerModel:v12 identifier:v13];

  v15 = [[TUIRenderModelTransform alloc] initWithSubmodel:v14];
  [(TUIRenderModelTransform *)v15 setSize:width, height];
  [(TUIRenderModelTransform *)v15 setCenter:width * 0.5, height * 0.5];
  v16 = *&transform->c;
  v18[0] = *&transform->a;
  v18[1] = v16;
  v18[2] = *&transform->tx;
  [(TUIRenderModelTransform *)v15 setTransform:v18];
  [(TUIRenderModelTransform *)v15 setZIndex:1000];

  return v15;
}

@end