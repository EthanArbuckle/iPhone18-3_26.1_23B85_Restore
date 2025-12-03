@interface THGlossaryDividerRep
- (void)didUpdateLayer:(id)layer;
- (void)updateLayerGeometryFromLayout:(id)layout;
@end

@implementation THGlossaryDividerRep

- (void)updateLayerGeometryFromLayout:(id)layout
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  -[THGlossaryDividerRep computeDirectLayerFrame:andTransform:basedOnLayoutGeometry:](self, "computeDirectLayerFrame:andTransform:basedOnLayoutGeometry:", &v11, &v8, [-[THGlossaryDividerRep layout](self "layout")]);
  *(&v12 + 1) = ceil(*(&v12 + 1));
  v5 = v8;
  v6 = v9;
  v7 = v10;
  [(THGlossaryDividerRep *)self antiAliasDefeatLayerFrame:&v11 forTransform:&v5];
  v5 = v8;
  v6 = v9;
  v7 = v10;
  [layout setIfDifferentFrame:&v5 orTransform:{v11, v12}];
}

- (void)didUpdateLayer:(id)layer
{
  v4.receiver = self;
  v4.super_class = THGlossaryDividerRep;
  [(THGlossaryDividerRep *)&v4 didUpdateLayer:?];
  [layer setBackgroundColor:{objc_msgSend(objc_msgSend(+[TSUColor blackColor](TSUColor, "blackColor"), "colorWithAlphaComponent:", 0.150000006), "CGColor")}];
}

@end