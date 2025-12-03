@interface AVAction
+ (id)actionWithHandler:(id)handler;
+ (id)actionWithTitle:(id)title image:(id)image identifier:(id)identifier handler:(id)handler;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AVAction

+ (id)actionWithTitle:(id)title image:(id)image identifier:(id)identifier handler:(id)handler
{
  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___AVAction;
  handlerCopy = handler;
  v10 = objc_msgSendSuper2(&v12, sel_actionWithTitle_image_identifier_handler_, title, image, identifier, handlerCopy);
  [v10 setLocalHandler:{handlerCopy, v12.receiver, v12.super_class}];

  return v10;
}

+ (id)actionWithHandler:(id)handler
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AVAction;
  handlerCopy = handler;
  v4 = objc_msgSendSuper2(&v6, sel_actionWithHandler_, handlerCopy);
  [v4 setLocalHandler:{handlerCopy, v6.receiver, v6.super_class}];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  title = [(AVAction *)self title];
  image = [(AVAction *)self image];
  identifier = [(AVAction *)self identifier];
  localHandler = [(AVAction *)self localHandler];
  v9 = [v4 actionWithTitle:title image:image identifier:identifier handler:localHandler];

  contextMenu = [(AVAction *)self contextMenu];
  [v9 setContextMenu:contextMenu];

  [v9 setAttributes:{-[AVAction attributes](self, "attributes")}];
  discoverabilityTitle = [(AVAction *)self discoverabilityTitle];
  [v9 setDiscoverabilityTitle:discoverabilityTitle];

  [v9 setState:{-[AVAction state](self, "state")}];
  tintColor = [(AVAction *)self tintColor];
  [v9 setTintColor:tintColor];

  accessibilityHint = [(AVAction *)self accessibilityHint];
  [v9 setAccessibilityHint:accessibilityHint];

  accessibilityLabel = [(AVAction *)self accessibilityLabel];
  [v9 setAccessibilityLabel:accessibilityLabel];

  accessibilityIdentifier = [(AVAction *)self accessibilityIdentifier];
  [v9 setAccessibilityIdentifier:accessibilityIdentifier];

  return v9;
}

@end