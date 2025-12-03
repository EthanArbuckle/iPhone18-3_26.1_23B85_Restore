@interface AXUIHoverTextAlertStyleProvider
- (CGSize)alertBackgroundSizeForType:(unint64_t)type;
- (_TtC17HoverTextUIServer31AXUIHoverTextAlertStyleProvider)init;
@end

@implementation AXUIHoverTextAlertStyleProvider

- (CGSize)alertBackgroundSizeForType:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AXUIHoverTextAlertStyleProvider();
  [(AXUIHoverTextAlertStyleProvider *)&v7 alertBackgroundSizeForType:type];
  v6 = v5 * 1.5;
  result.height = v4;
  result.width = v6;
  return result;
}

- (_TtC17HoverTextUIServer31AXUIHoverTextAlertStyleProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AXUIHoverTextAlertStyleProvider();
  return [(AXUIHoverTextAlertStyleProvider *)&v3 init];
}

@end