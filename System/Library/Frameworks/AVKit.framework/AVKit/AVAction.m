@interface AVAction
+ (id)actionWithHandler:(id)a3;
+ (id)actionWithTitle:(id)a3 image:(id)a4 identifier:(id)a5 handler:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation AVAction

+ (id)actionWithTitle:(id)a3 image:(id)a4 identifier:(id)a5 handler:(id)a6
{
  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS___AVAction;
  v9 = a6;
  v10 = objc_msgSendSuper2(&v12, sel_actionWithTitle_image_identifier_handler_, a3, a4, a5, v9);
  [v10 setLocalHandler:{v9, v12.receiver, v12.super_class}];

  return v10;
}

+ (id)actionWithHandler:(id)a3
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AVAction;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v6, sel_actionWithHandler_, v3);
  [v4 setLocalHandler:{v3, v6.receiver, v6.super_class}];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();
  v5 = [(AVAction *)self title];
  v6 = [(AVAction *)self image];
  v7 = [(AVAction *)self identifier];
  v8 = [(AVAction *)self localHandler];
  v9 = [v4 actionWithTitle:v5 image:v6 identifier:v7 handler:v8];

  v10 = [(AVAction *)self contextMenu];
  [v9 setContextMenu:v10];

  [v9 setAttributes:{-[AVAction attributes](self, "attributes")}];
  v11 = [(AVAction *)self discoverabilityTitle];
  [v9 setDiscoverabilityTitle:v11];

  [v9 setState:{-[AVAction state](self, "state")}];
  v12 = [(AVAction *)self tintColor];
  [v9 setTintColor:v12];

  v13 = [(AVAction *)self accessibilityHint];
  [v9 setAccessibilityHint:v13];

  v14 = [(AVAction *)self accessibilityLabel];
  [v9 setAccessibilityLabel:v14];

  v15 = [(AVAction *)self accessibilityIdentifier];
  [v9 setAccessibilityIdentifier:v15];

  return v9;
}

@end