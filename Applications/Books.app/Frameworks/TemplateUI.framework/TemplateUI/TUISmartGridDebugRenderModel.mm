@interface TUISmartGridDebugRenderModel
+ (id)renderModelWithSize:(CGSize)a3 columnSystem:(ColumnSystem *)a4 identifier:(id)a5 transform:(CGAffineTransform *)a6;
@end

@implementation TUISmartGridDebugRenderModel

+ (id)renderModelWithSize:(CGSize)a3 columnSystem:(ColumnSystem *)a4 identifier:(id)a5 transform:(CGAffineTransform *)a6
{
  height = a3.height;
  width = a3.width;
  v10 = a5;
  v11 = [[_TUISmartGridDebugLayerConfiguration alloc] initWithSize:a4 columnSystem:width, height];
  v12 = [[TUIRenderModelLayer alloc] initWithSubmodels:0 config:v11 erasableInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  v13 = [v10 tui_identifierByAppendingString:@"debug"];
  v14 = [TUILayerContainerView renderModelWithLayerModel:v12 identifier:v13];

  v15 = [[TUIRenderModelTransform alloc] initWithSubmodel:v14];
  [(TUIRenderModelTransform *)v15 setSize:width, height];
  [(TUIRenderModelTransform *)v15 setCenter:width * 0.5, height * 0.5];
  v16 = *&a6->c;
  v18[0] = *&a6->a;
  v18[1] = v16;
  v18[2] = *&a6->tx;
  [(TUIRenderModelTransform *)v15 setTransform:v18];
  [(TUIRenderModelTransform *)v15 setZIndex:1000];

  return v15;
}

@end