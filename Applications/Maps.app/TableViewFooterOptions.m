@interface TableViewFooterOptions
+ (id)defaultRAPUserContentOptions;
- (TableViewFooterOptions)init;
- (id)_defaultRAPUserContentLabelText;
- (id)_defaultRAPUserContentLinkText;
@end

@implementation TableViewFooterOptions

- (id)_defaultRAPUserContentLinkText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[RAP] See how your data is managed…" value:@"localized string not found" table:0];

  return v3;
}

- (id)_defaultRAPUserContentLabelText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Legal RAP String" value:@"localized string not found" table:0];

  return v3;
}

- (TableViewFooterOptions)init
{
  v9.receiver = self;
  v9.super_class = TableViewFooterOptions;
  v2 = [(TableViewFooterOptions *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(TableViewFooterOptions *)v2 _defaultRAPUserContentLabelText];
    labelText = v3->_labelText;
    v3->_labelText = v4;

    v6 = [(TableViewFooterOptions *)v3 _defaultRAPUserContentLinkText];
    linkText = v3->_linkText;
    v3->_linkText = v6;
  }

  return v3;
}

+ (id)defaultRAPUserContentOptions
{
  v2 = objc_alloc_init(TableViewFooterOptions);

  return v2;
}

@end