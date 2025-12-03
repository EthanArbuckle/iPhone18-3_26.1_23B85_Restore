@interface _SFActivityExtensionItemProvider
- (_SFActivityExtensionItemProvider)initWithExtensionItem:(id)item URL:(id)l pageTitle:(id)title webView:(id)view;
- (id)_itemForActivityType:(id)type;
- (id)item;
@end

@implementation _SFActivityExtensionItemProvider

- (_SFActivityExtensionItemProvider)initWithExtensionItem:(id)item URL:(id)l pageTitle:(id)title webView:(id)view
{
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = _SFActivityExtensionItemProvider;
  v12 = [(_SFActivityItemProvider *)&v15 initWithPlaceholderItem:itemCopy URL:l pageTitle:title webView:view];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_extensionItem, item);
  }

  return v13;
}

- (id)item
{
  activityType = [(UIActivityItemProvider *)self activityType];
  v4 = [(_SFActivityExtensionItemProvider *)self _itemForActivityType:activityType];

  return v4;
}

- (id)_itemForActivityType:(id)type
{
  activityType = [(UIActivityItemProvider *)self activityType];
  v5 = [activityType isEqualToString:*MEMORY[0x1E69CDA78]];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = self->_extensionItem;
  }

  return v6;
}

@end